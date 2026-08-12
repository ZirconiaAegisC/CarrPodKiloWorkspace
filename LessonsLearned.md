# Lessons Learned - Bounce App SDK Development

## Version 1091 - Last Working Version
- This is the baseline version we're building upon
- Core functionality is stable and verified working
- All essential features are present and functional

## What Works (from Version 1091)
- Basic Bounce app structure is functional
- lettherebelight.sh session initialization works correctly
- Heartbeat logging to CSMLogs/ operates as expected
- Git branch management and session tracking works
- Remote repository sync with origin/main functions properly

## What Does NOT Work (Removed/Excluded)
- Versions after 191 that fail to load or have broken functionality
- Menu systems that don't render properly
- Versions with missing dependencies or broken imports
- Sessions that crash on startup
- Code paths that result in errors or infinite loops

## Cleanup Instructions
- All uncommitted/failed versions have been removed
- Only version 1091 baseline and version 192 are retained
- CSMLogs contains only valid heartbeat records
- lettherebelight.sh script is the single source of truth for session initialization

## Version 192 Development Notes
- Starting point: Version 1091 codebase
- Goal: Implement new Bounce app SDK features
- Must ensure all existing functionality from 1091 is preserved
- Test thoroughly before committing
- Update this file with new lessons learned

## Development Protocol
1. Always run lettherebelight.sh before starting work
2. Ensure session branch is properly created and locked
3. Test each change before proceeding to next version
4. Document successes and failures in this file
5. Commit only working versions