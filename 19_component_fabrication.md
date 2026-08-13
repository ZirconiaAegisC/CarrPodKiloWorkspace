# CRUSTACEAN VESSEL FRAMEWORK - 160-DOCUMENT BREAKDOWN
## Group: Component Fabrication Specifications
### Document 19: Component Fabrication Specifications

## CVC COMPONENT FABRICATION SPECIFICATIONS
### Document 19 of 160 — SESSION: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839

---

## 19.1 Appendage Base Fabrication Specifications

| Parameter | Value | Units | Tolerance | Notes |
|-----------|-------|-------|-----------|-------|
| Print orientation | Vertical, articulation axis horizontal | — | — | Layer lines perpendicular to articulation forces |
| Layer height | 0.2 | mm | ±0.02 | Maximum 0.3mm acceptable |
| Infill | 40% grid | — | — | Balances strength vs. print time |
| Shell thickness | 2 shells (0.8mm) | — | — | Ensures structural integrity |
| Print speed | 40 mm/s | — | — | Reduced for detail quality |
| Nozzle temperature | 210 | °C | ±5°C | PLA+/PETG recommended |
| Bed temperature | 60 | °C | ±5°C | Heated bed essential |
| Cooling | 100% fan | — | — | Improves overhang quality for pivot holes |
| Post-process | M8 tap & die | — | — | Clean threads for M8×1.25 engagement |
| Torque verification | 25 Nm | — | — | Verify with torque wrench |

**Critical Dimensions:**
- M8 bore diameter: 8.00–8.08 mm (6g tolerance)
- Articulation hole diameter: 12.00–12.15 mm (h6 tolerance)
- Vertical articulation range: ≥43° to ≤47° (from nominal ±45°)
- Horizontal articulation range: ≥87° to ≤93° (from nominal ±90°)
- Mounting hole circle: 199.0–201.0 mm (8 holes at 45° intervals)

**Material Notes:**
- PLA+ recommended for increased tensile strength (~70 MPa vs. 60 MPa standard PLA)
- Chitin-composite theoretical: 30% chitin fiber + 70% polymer matrix, increases load rating ~40%
- Avoid standard PLA for load-bearing components; insufficient tensile strength

### 19.2 Exoskeletal Segment Fabrication Specifications

| Parameter | Value | Units | Tolerance | Notes |
|-----------|-------|-------|-----------|-------|
| Print orientation | Vertical, long axis vertical | — | — | Layer lines circumferential = hoop strength |
| Layer height | 0.2 | mm | ±0.02 | Standard resolution |
| Infill | 60% cubic | — | — | Recommended for load-bearing |
| Print speed | 50 mm/s | — | — | Faster than appendage bases |
| Nozzle temperature | 210 | °C | ±5°C | PLA+ or PETG |
| Bed temperature | 60 | °C | ±5°C | Essential for adhesion |
| Cooling | 50% fan | — | — | Less critical than appendage bases |
| Post-process | M8 tap both ends | — | — | Thread cleaning for M8×1.25 |
| Length verification | 248.0–252.0 mm | — | — | Caliper measurement at 3 positions |

**Critical Dimensions:**
- Outer diameter: 49.0–51.0 mm (3D print tolerance)
- Inner diameter: 43.2–44.8 mm (3mm wall target)
- Thread engagement: ≥12.0 mm on both ends (3× pitch minimum)
- Straightness deviation: ≤1.5 mm from 250mm length
- Wall thickness consistency: ±0.3 mm across segment length (3 positions)

**Material Notes:**
- 60% cubic infill provides LR_adj = 1,163 N load rating (per §2.3.2)
- 100% infill theoretical: 2,500 N (not recommended; excessive print time)
- PETG recommended over PLA for better heat resistance and impact strength
- Wall thickness minimum 3mm; 3D print limitation

### 19.3 Grip Pad Fabrication Specifications

| Parameter | Value | Units | Tolerance | Notes |
|-----------|-------|-------|-----------|-------|
| Print orientation | Flat on bed, texture face up | — | — | Maximizes bed adhesion, no supports |
| Layer height | 0.2 | mm | ±0.02 | Maximum resolution for micro-texture |
| Infill | 20% grid | — | — | Light infill; grip pad is compliance element |
| Print speed | 30 mm/s | — | — | Slower for texture quality |
| Nozzle temperature | 200 | °C | ±5°C | PLA or TPU 95A |
| Bed temperature | 50 | °C | ±5°C | Optional, improves adhesion |
| Cooling | 100% fan | — | — | Essential for fine detail resolution |
| Post-process | None required (flat orientation) | — | — | No support removal needed |
| Durometer verification | 75–95 Shore A | — | — | 5-reading average across pad surface |

**Micro-Texture Specification:**
- Pattern: Diamond, 45° rotated squares
- Pitch: 0.5 mm center-to-center
- Peak height: 0.25 mm above base surface
- Valley depth: 0.25 mm below peak plane
- Density: 4 peaks/cm² (4 peaks per square centimeter)
- Expected μ (dry rock): 0.45–0.65
- Expected μ (wet rock, RH>70%): 0.30–0.50 (hydro-adaptive engagement)

**Material Options:**
1. **TPU 95A**: Native flexible grip, Shore A 95 durometer, printed directly
   - Print time: ~2 hours per pad (8 total = ~16 hours)
   - Advantage: Intrinsic flexibility, no coating required
   - Disadvantage: Lower load rating than coated PLA/PETG

2. **PLA/PETG + Elastomer Coating**: 
   - Print base in PLA/PETG, then apply 8A Shore A elastomer coating
   - Coating method: spray or brush-on application
   - Coverage: 50 cm² per appendage × 8 appendages = 400 cm² total
   - Coating thickness: 0.5–1.0 mm (micro-texture replication)
   - Advantage: Higher load rating, replaceable coating
   - Disadvantage: Additional processing step, coating may wear over time

**TPU Print Settings (if printing grip pads in TPU):**
- Infill: 20% grid
- Shell thickness: 3 shells (1.2mm)
- Print speed: 30 mm/s
- Nozzle temperature: 200°C
- Bed temperature: 50°C
- Cooling: 100% fan

### 19.4 Exoskeletal Segment Fabrication Specifications (Detailed)

| Parameter | Value | Units | Tolerance | Notes |
|-----------|-------|-------|-----------|-------|
| Print orientation | Vertical, long axis vertical | — | — | Layer lines circumferential |
| Layer height | 0.2 | mm | ±0.02 | Standard resolution |
| Infill | 60% cubic | — | — | Recommended for load-bearing |
| Support material | None (vertical orientation) | — | — | Self-supporting features |
| Print speed | 50 mm/s | — | — | Balanced speed/quality |
| Nozzle temperature | 210 | °C | ±5°C | PLA+ or PETG |
| Bed temperature | 60 | °C | ±5°C | Essential for first layer adhesion |
| Cooling | 50% fan | — | — | Moderate cooling |
| Post-process | M8 tap both ends, length verification | — | — | Critical for modular connectivity |
| Annealing (optional) | 50°C for 1 hour | — | — | Optional stress relief for PLA |

**Critical Dimensions (per §19.2):**
- Outer diameter: 49.0–51.0 mm
- Inner diameter: 43.2–44.8 mm (3mm wall target)
- Thread engagement: ≥12.0 mm on both ends (3× pitch M8×1.25)
- Straightness: ≤1.5 mm deviation from 250mm length
- Wall thickness consistency: ±0.3 mm across segment length (3 positions)

**Load Ratings (per §2.3.2):**
- 40% infill: LR_adj = 294.2 N (2.60× SF with SF_structural 3.0× requirement borderline)
- 50% infill: LR_adj = 411.7 N (3.63× SF ✓ recommended)
- 60% infill: LR_adj = 540.8 N (4.77× SF ✓ recommended minimum)
- 70% infill: LR_adj = 673.4 N (5.94× SF)
- 100% infill: 2,500 N theoretical (not recommended)

**Material Recommendations:**
- **PLA+**: 60% infill sufficient (LR_adj = 540.8 N, SF = 4.77× > 3.0× requirement)
- **PETG**: Preferred for impact resistance and heat resistance; 60% infill LR_adj = 540.8 N
- **Chitin-composite (theoretical)**: 60% infill LR_adj increased ~40% = ~758 N, SF = 6.71×

### 19.5 Locking Mechanism Fabrication Specifications

| Parameter | Value | Units | Tolerance | Notes |
|-----------|-------|-------|-----------|-------|
| Print orientation | Vertical, actuation face up | — | — | Moving parts face up for printability |
| Layer height | 0.2 | mm | ±0.02 | Standard resolution |
| Infill | 70% triangular | — | — | Recommended for moving parts strength |
| Print speed | 30 mm/s | — | — | Slower for detail quality around mechanisms |
| Nozzle temperature | 210 | °C | ±5°C | PLA+ recommended |
| Bed temperature | 70 | °C | ±5°C | Slightly elevated for ABS-like properties |
| Support medium | Breakaway | — | — | Removable with pliers |
| Post-process | File smooth moving parts, lubricate | — | — | PTFE-based lubricant on all sliding surfaces |
| Test cycle count | 50 engage/disengage cycles min | — | — | Verify before assembly |

**Triple-Lock Stage Specifications:**
- Stage 1 (mechanical): 10.0 mm travel, ~50 N engagement force, audible "click"
- Stage 2 (hydraulic): Additional 15.0 mm travel (25.0 total), ~150 psi hydraulic pressure
- Stage 3 (electronic): Additional 15.0 mm travel (40.0 total), 1.0 N microswitch actuation

**Critical Dimensions:**
- Lock body diameter: 39.0–41.0 mm
- Engagement travel: 38.0–42.0 mm (from fully open)
- Mechanical stage click: Audible at 10.0 mm ± 1.0
- Hydraulic engagement: Firm feel at 25.0 mm travel ± 1.0
- Microswitch actuation: LED green at 40.0 mm travel
- Release lever length: 50.0 mm ± 2.0 (single-handed operation)

**Material Notes:**
- PLA+ recommended for structural integrity around moving parts
- 70% triangular infill provides good strength-to-print-time ratio
- PTFE-based lubricant essential for all moving parts (hydraulic stage, release mechanism)
- Microswitch continuity verification: multimeters test, expect closed circuit at 40.0 mm engagement

### 19.6 Ballast Module Fabrication Specifications

| Parameter | Value | Units | Tolerance | Notes |
|-----------|-------|-------|-----------|-------|
| Print orientation | Flat on build plate, convex side up | — | — | Maximum bed adhesion, no supports |
| Layer height | 0.2 | mm | ±0.02 | Standard resolution |
| Infill | 50% honeycomb | — | — | Balances strength/print time for chamber |
| Support material | Light supports in seal groove only | — | — | 90° overhangs; removable with X-acto |
| Print speed | 40 mm/s | — | — | Balanced speed |
| Nozzle temperature | 210 | °C | ±5°C | PLA+ or PETG |
| Bed temperature | 60 | °C | ±5°C | Heated bed essential |
| Post-process | Seal groove cleaning, thread cleaning | — | — | 1-inch NPT fitting, hydro-adaptive seal cord |
| Water tightness test | Fill 1L, check leaks after 1 hour | — | — | Critical functional test |

**Critical Dimensions (per §6.1):**
- Chamber diameter: 149.0–151.0 mm (per half)
- Chamber length (per half): 119.0–121.0 mm
- Seal groove diameter: 5.9–6.1 mm (for 6mm cord)
- NPT thread: Full 1-inch engagement
- Weight (empty, 50% infill): 240–260 g
- Weight (full): 440–460 g (includes 2L water + module)

**Hydraulic Specifications:**
- Chamber capacity: 2.0 L total (1.0 L per half)
- Fill rate (manual): 0.5 L/min
- Fill rate (automated): 2.0 L/min
- Empty rate (manual): 0.5 L/min
- Empty rate (automated): 3.0 L/min
- Pressure rating: 2.0 bar (≈29 psi) maximum operating
- Test pressure: 3.0 bar (1.5× safety margin)

**Material Notes:**
- PLA+ recommended for pressure resistance
- 50% honeycomb infill balances chamber volume vs. wall structural integrity
- Seal groove must be clean and free of supports for hydro-adaptive seal cord installation
- Water tightness test critical before assembly integration

### 19.7 Package Cradle Fabrication Specifications

| Parameter | Small (SP: 5kg) | Medium (MP: 15kg) | Units | Tolerance |
|-----------|----------------|-------------------|-------|-----------|
| Print orientation | Flat on bed, open face up | Flat on bed, open face up | — | — |
| Layer height | 0.2 mm | 0.2 mm | — | — |
| Infill | 50% grid | 50% grid | — | Light infill |
| Print speed | 40 mm/s | 40 mm/s | — | — |
| Nozzle temperature | 210 °C | 210 °C | ±5°C | PLA+ |
| Bed temperature | 60 °C | 60 °C | ±5°C | Heated bed |
| Cooling | 100% fan | 100% fan | — | — |
| Post-process | Velcro strip application | Velcro strip application | — | Adhesive-backed |
| Load rating | 50 N (5kg) | 150 N (15kg) | — | g = 9.81 m/s² |

**Small Cradle Critical Dimensions:**
- Length: 118.0–122.0 mm
- Width: 79.0–81.0 mm
- Contact pad diameter: 49.5–50.5 mm
- Mounting hole diameter: 8.4–8.6 mm (M8 clearance)
- Velcro channel length: 99.0–101.0 mm
- Rotational lock tab diameter: 14.5–15.5 mm

**Medium Cradle Critical Dimensions:**
- Length: 178.0–182.0 mm
- Width: 99.0–101.0 mm
- Contact pad diameter: 64.5–65.5 mm
- Mounting hole diameter: 8.4–8.6 mm (M8 clearance)
- Velcro channel length: 149.0–151.0 mm
- Rotational lock tab diameter: 19.5–20.5 mm

**Velcro Specification:**
- Hook length: 3.0 mm ± 0.5
- Loop length: 3.5 mm ± 0.5
- Strip width: 20 mm (small) or 25 mm (medium) ± 1.0
- Adhesive thickness: 1.0 mm ± 0.2
- Re-peel strength: ≥50 N per strip
- Durability: ≥100 engage/disengage cycles

**Rotational Lock Specification:**
- Small: Lock tab diameter 14.5–15.5 mm, engagement depth 7.5–8.5 mm
- Medium: Lock tab diameter 19.5–20.5 mm, engagement depth 9.5–10.5 mm
- Rotational freedom before lock: 30.0° ± 2.0
- Lock engagement force: 20.0 N (small) or 25.0 N (medium) ± 3.0
- Lock release force: 10.0 N (small) or 12.0 N (medium) ± 2.0

### 19.8 Occupancy Harness Fabrication Specifications

| Parameter | Small Child | Medium Child | Adult | Units | Tolerance |
|-----------|-------------|----------------|-------|-------|-----------|
| Chest strap length (half) | 140.0 mm | 160.0 mm | 175.0 mm | mm | ±5.0 |
| Waist strap length (half) | 110.0 mm | 125.0 mm | 140.0 mm | mm | ±5.0 |
| Leg strap length (per leg) | 180.0 mm | 220.0 mm | 250.0 mm | mm | ±3.0 |
| Chest strap width | 25.0 mm | 25.0 mm | 38.0 mm | mm | ±1.0 |
| Waist strap width | 25.0 mm | 25.0 mm | 38.0 mm | mm | ±1.0 |
| Leg strap width | 15.0 mm | 20.0 mm | 25.0 mm | mm | ±1.0 |
| Quick-release button diameter | 25.0 mm | 25.0 mm | 30.0 mm | mm | ±1.0 |
| Adjustment slot width | 15.0 mm | 18.0 mm | 20.0 mm | mm | ±1.0 |

**Small Child Harness Critical Dimensions:**
- Total chest strap: 280.0 mm (±5.0)
- Total waist strap: 220.0 mm (±5.0)
- Total leg strap (per leg): 180.0 mm (±3.0)
- Quick-release button: 25.0 mm (±1.0)
- Adhesion/webbing: 25.0 mm width (±1.0)

**Medium Child Harness Critical Dimensions:**
- Total chest strap: 320.0 mm (±5.0)
- Total waist strap: 250.0 mm (±5.0)
- Total leg strap (per leg): 220.0 mm (±3.0)
- Quick-release button: 25.0 mm (±1.0)
- Adhesion/webbing: 25.0 mm width (±1.0)

**Adult Harness Critical Dimensions:**
- Total chest strap: 350.0 mm (±5.0)
- Total waist strap: 280.0 mm (±5.0)
- Total leg strap (per leg): 250.0 mm (±3.0)
- Quick-release button: 30.0 mm (±1.0)
- Adhesion/webbing: 38.0 mm width (±1.0)

**Print Settings (all sizes):**
- Infill: 40% grid
- Layer height: 0.2 mm
- Print speed: 40 mm/s
- Nozzle temperature: 210°C (PLA+) or 220°C (PETG)
- Bed temperature: 60°C
- Cooling: 50% fan
- Post-process: Quick-release verification (10× engage/disengage), dimension verification

**Material Notes:**
- 40% grid infill provides balance between structural strength and print time
- Quick-release buttons require 70% infill for durability (print separately if desired)
- Webbing compatibility: nylon polyester blend, 500 N breaking strength minimum
- Harness must sustain 5× safety factor per occupant load (per Master Framework §9.5.1)

---

**DOCUMENT 19 OF 160: CVC COMPONENT FABRICATION SPECIFICATIONS**

*Document generation completed: 2026-08-13T08:45:11+00:00*
*Session ID: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839*
*Group: Component Fabrication Specifications*
*Verification: SHA256 checksum recorded in git repository*