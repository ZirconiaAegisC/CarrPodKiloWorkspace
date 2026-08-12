#!/usr/bin/env bash
# lettherebelight — SESSION INIT SCRIPT (LIGHTWEIGHT)
# "Let there be light" — first command in every Kilo session
# Adjusted for lightweight sessions with large repo access

set -euo pipefail

# ─── CONFIG ──────────────────────────────────────────────────────────────
REPO_URL="${KILO_REPO_URL:-https://github.com/ZirconiaAegisC/CarrPodKiloWorkspace.git}"
REPO_ROOT="${KILO_REPO_ROOT:-$(git rev-parse --show-toplevel 2>/dev/null || pwd)}"
AGENT_ID="${KILO_AGENT_ID:-$(basename "$REPO_ROOT" | sed 's/^agent_//')}"
SESSION_ID="${KILO_SESSION_ID:-${AGENT_ID}}"
TIMESTAMP=$(date -u +%Y%m%d-%H%M%S)
BRANCH_NAME="session/agent_${SESSION_ID}_${TIMESTAMP}"

# ─── COLORS ──────────────────────────────────────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

log() { echo -e "${CYAN}[lettherebelight]${NC} $*"; }
success() { echo -e "${GREEN}[✓]${NC} $*"; }
warn() { echo -e "${YELLOW}[!]${NC} $*"; }
error() { echo -e "${RED}[✗]${NC} $*"; }
banner() { echo -e "\n${MAGENTA}${BOLD}$*${NC}\n"; }

# ─── ERROR HANDLING ─────────────────────────────────────────────────────
cleanup() {
    local exit_code=$?
    if [[ $exit_code -ne 0 ]]; then
        error "lettherebelight FAILED with exit code $exit_code"
    fi
}
trap cleanup EXIT

# ─── STEP -1: DYNAMIC REPO DISCOVERY ────────────────────────────────────
banner "⚡ LET THERE BE LIGHT — SESSION INIT (LIGHTWEIGHT)"

# Discover REPO_ROOT if not provided
if [[ -z "$REPO_ROOT" ]] || [[ ! -d "$REPO_ROOT/.git" ]]; then
    # Try current directory first
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        REPO_ROOT=$(git rev-parse --show-toplevel)
    else
        # Walk up to find .git
        local_dir="$(pwd)"
        while [[ "$local_dir" != "/" ]]; do
            if [[ -d "$local_dir/.git" ]]; then
                REPO_ROOT="$local_dir"
                break
            fi
            local_dir="$(dirname "$local_dir")"
        done
    fi
fi

if [[ -z "$REPO_ROOT" ]] || [[ ! -d "$REPO_ROOT/.git" ]]; then
    error "REPO_ROOT not set and could not discover git repository"
    error "Set KILO_REPO_ROOT or run from inside the CarrPod/KiloWorkspace repository"
    exit 1
fi

# Derive AGENT_ID and SESSION_ID from REPO_ROOT if not provided
if [[ -z "$AGENT_ID" ]]; then
    AGENT_ID=$(basename "$REPO_ROOT" | sed 's/^agent_//')
fi
if [[ -z "$SESSION_ID" ]]; then
    SESSION_ID="$AGENT_ID"
fi

log "Repository: $REPO_ROOT"
log "Agent ID: $AGENT_ID"
log "Session ID: $SESSION_ID"
log "Branch: $BRANCH_NAME"
log "Remote: $REPO_URL"

# ─── STEP 0: REPO VALIDATION ───────────────────────────────────────────
banner "🔍 REPO VALIDATION"

cd "$REPO_ROOT"

# Verify git is available
if ! command -v git >/dev/null 2>&1; then
    error "git is not installed or not in PATH"
    exit 1
fi

# Verify we're in a git repo
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    error "Not inside a git work tree: $REPO_ROOT"
    exit 1
fi

# Verify origin remote exists
if ! git remote get-url origin >/dev/null 2>&1; then
    warn "No 'origin' remote configured"
    warn "Add remote: git remote add origin $REPO_URL"
else
    ORIGIN_URL=$(git remote get-url origin)
    log "Origin URL: $ORIGIN_URL"
    success "Origin configured"
fi

# Check for uncommitted changes
if [[ -n "$(git status --short)" ]]; then
    warn "Uncommitted changes detected in working tree"
fi

# ─── UTILITY: Retry wrapper with exponential backoff ─────────────────────
retry_git() {
    local max_attempts=$1
    local delay=$2
    shift 2
    local attempt=1
    while true; do
        if "$@"; then
            return 0
        fi
        if [[ $attempt -ge $max_attempts ]]; then
            warn "Command failed after $max_attempts attempts: $*"
            return 1
        fi
        warn "Attempt $attempt/$max_attempts failed. Retrying in ${delay}s..."
        sleep "$delay"
        delay=$((delay * 2))
        attempt=$((attempt + 1))
    done
}

# ─── STEP 1: BRANCH LOCK ───────────────────────────────────────────────
banner "🔒 BRANCH LOCK — Checkout main and sync"

# Ensure main branch exists locally
if ! git show-ref --verify --quiet "refs/heads/main"; then
    git fetch origin main:main 2>/dev/null || warn "Could not fetch main from origin"
fi

git checkout main >/dev/null 2>&1 || {
    error "Failed to checkout main branch"
    exit 1
}

# Pull with retry
local_pull() {
    git pull --rebase origin main || {
        warn "Pull with rebase failed. Attempting merge..."
        git merge --abort 2>/dev/null || true
        git rebase --abort 2>/dev/null || true
        git pull origin main || return 1
    }
}

if ! retry_git 3 3 local_pull; then
    warn "Failed to sync with origin/main, proceeding locally"
fi
success "Synced with origin/main (or proceeded locally)"

# Create or checkout session branch
if git show-ref --verify --quiet "refs/heads/$BRANCH_NAME"; then
    warn "Branch $BRANCH_NAME already exists, checking out"
    git checkout "$BRANCH_NAME"
else
    log "Creating branch: $BRANCH_NAME"
    git checkout -b "$BRANCH_NAME"
fi
success "Branch locked: $(git branch --show-current)"

# ─── STEP 2: QUICK HEARTBEAT ───────────────────────────────────────────
banner "💓 HEARTBEAT — Quick write"

mkdir -p "$REPO_ROOT/CSMLogs"
echo "[DIRECTOR-001 | $(date -u)] LIGHTWEIGHT ACTIVE — session $SESSION_ID initiated" > "$REPO_ROOT/CSMLogs/heartbeat-${TIMESTAMP}.txt"

git add "$REPO_ROOT/CSMLogs/heartbeat-${TIMESTAMP}.txt"
if ! git diff --cached --quiet; then
    git commit -m "[DIRECTOR-001] LIGHTWEIGHT HEARTBEAT — session $SESSION_ID" >/dev/null || true
    git push origin "$BRANCH_NAME" 2>/dev/null || warn "Heartbeat push failed (network may be down)"
    success "Heartbeat written"
else
    warn "No changes to commit for heartbeat"
fi

# ─── STEP 3: READ STATE ────────────────────────────────────────────────
banner "📖 READ STATE — Check workspace"

log "Current branch: $(git branch --show-current)"
log "Current directory: $(pwd)"
log "Files: $(ls -la | head -20)"

# ─── STEP 4: SESSION BANNER ────────────────────────────────────────────
banner "✅ LET THERE BE LIGHT — SESSION READY"

cat <<EOF
┌─────────────────────────────────────────────────────────────────────┐
│  KILO LIGHTWEIGHT SESSION — agent_${SESSION_ID}                       │
│  Branch: ${BRANCH_NAME}                                                    │
│  Protocol: SESSION-INIT-light — Fast startup, large repo access      │
│  Remote: $REPO_URL                                                         │
│  Mandate: Quick start, push when ready, access to full repo on demand  │
└─────────────────────────────────────────────────────────────────────┘
EOF

log "Branch: $BRANCH_NAME"
log "Agent: $AGENT_ID | Session: $SESSION_ID"
log "Protocol: Lightweight — Immediate start, push when ready"
log ""
success "lettherebelight complete. Begin operations."

# ─── EXPORT FOR CHILD PROCESSES ────────────────────────────────────────
export LETTHEREBELIGHT_BRANCH="$BRANCH_NAME"
export LETTHEREBELIGHT_SESSION="$SESSION_ID"
export LETTHEREBELIGHT_AGENT="$AGENT_ID"
export LETTHEREBELIGHT_TIMESTAMP="$TIMESTAMP"
export LETTHEREBELIGHT_REPO_ROOT="$REPO_ROOT"