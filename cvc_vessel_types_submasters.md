# CRUSTACEAN VESSEL FRAMEWORK - 17 VESSEL TYPE SUBMASTERS
## Configuration Details, Capacities, and Operational Parameters
## Version 1.0 — SESSION: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839 — BRANCH: session/agent_f73aabf5-ef4a-4165-84f2-b57ce120f839

---

## LEGEND AND NOTATION KEY

| Symbol | Meaning |
|--------|---------|
| SP | Small Package (5kg capacity) |
| MP | Medium Package (15kg capacity) |
| SC | Small Child occupancy (≤12 years, <35kg) |
| MC | Medium Child occupancy (≤14 years, 35-55kg) |
| A  | Single Adult occupancy (1 person) |
| 2A | Two Adult occupancy (2 persons) |
| 3A | Trio Adult occupancy (3 persons) |
| → | Transition between configuration states |
| ✓ | Configuration supported |
| ✗ | Configuration not supported |

---

## VESSEL TYPE CVA-01: CRA-01 CONFIGURATION
### Single-Package, Single-Adult Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 2 × 5kg units
- Medium Packages (MP): 1 × 15kg unit
- Small Children (SC): 0
- Medium Children (MC): 0
- Adults (A): 1 person
- Total Personnel: 1

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 2SP + 1MP distributed across appendages 1-4
- Grip Force Baseline: 120N per appendage (rocky terrain), 180N per appendage (clay-oxalic)
- Active Appendages: 4 of 8 (appendages 1-4 engaged, 5-8 as standby)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 2.8 m/s (unloaded), 2.2 m/s (loaded)
- Clay-Oxalic (CX): V_max = 1.6 m/s (requires 20% grip force increase)
- Jungle (JG): V_max = 2.4 m/s (appendages 1-6 engaged, foliage clearance maintained)
- Cavernous (CR): V_max = 1.4 m/s (vertical face engagement, 4-point minimum)
- Aquatic (AMD-Aqua): V_max = 1.8 m/s (paddling gait, hydro seals engaged)
- Moist (AMD-Moist): V_max = 2.6 m/s (hydro-adaptive seal engagement)
- Dry (AMD-Dry): V_max = 3.0 m/s (optimal conditions, dust-compensated grip)

**LOAD DISTRIBUTION MATHEMATICS:**
```
L_i = (W_total / N_active) × η_i
W_total = 85kg (vessel + 2SP + 1MP + operator)
N_active = 4
η_rocky = 0.92, η_cx = 1.15, η_jg = 0.88, η_cr = 0.95, η_aqua = 0.70, η_moist = 0.82, η_dry = 0.90
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓
- Grip force monitoring at 10Hz sampling rate ✓
- Load redistribution trigger: any appendage force < 70% baseline ✓
- Emergency stabilization: engage appendages 5-8 if appendages 1-4 fail ✓

**PACKAGE SECURING:**
- 2SP: Velcro-secured cradles on appendages 1-2, 2-point engagement each
- 1MP: Locking rail system on appendage 3, 4-point engagement with rotational lock

**OPERATIONAL CHECKLIST:**
- [ ] Appendages 1-4 strain-gauge calibrated
- [ ] 2SP cradles Velcro-secured and locked
- [ ] 1MP locking rail engaged and rotated to lock position
- [ ] Grip force baseline set: 120N (rocky) / 180N (clay-oxalic)
- [ ] Telemetry system active
- [ ] Emergency release manual override tested

---

## VESSEL TYPE CVA-02: CRA-02 CONFIGURATION
### Enhanced Single-Package, Single-Adult Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 3 × 5kg units
- Medium Packages (MP): 1 × 15kg unit
- Small Children (SC): 0
- Medium Children (MC): 0
- Adults (A): 1 person
- Total Personnel: 1

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 3SP + 1MP distributed across appendages 1-5
- Grip Force Baseline: 140N per appendage (rocky terrain), 210N per appendage (clay-oxalic)
- Active Appendages: 5 of 8 (appendages 1-5 engaged, 6-8 as standby)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 2.6 m/s (unloaded), 2.0 m/s (loaded)
- Clay-Oxalic (CX): V_max = 1.5 m/s (requires 25% grip force increase)
- Jungle (JG): V_max = 2.2 m/s (appendages 1-6 engaged)
- Cavernous (CR): V_max = 1.2 m/s (vertical face engagement, 4-point minimum)
- Aquatic (AMD-Aqua): V_max = 1.6 m/s (paddling gait)
- Moist (AMD-Moist): V_max = 2.4 m/s (hydro-adaptive seal engagement)
- Dry (AMD-Dry): V_max = 2.8 m/s (optimal conditions)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 92kg (vessel + 3SP + 1MP + operator)
N_active = 5
η_rocky = 0.90, η_cx = 1.20, η_jg = 0.86, η_cr = 0.93, η_aqua = 0.68, η_moist = 0.80, η_dry = 0.88
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓
- Grip force monitoring at 10Hz sampling rate ✓
- Load redistribution trigger: any appendage force < 65% baseline ✓ (increased from CVA-01 due to additional load)
- Emergency stabilization: engage appendages 6-8 if appendages 1-5 fail ✓

**PACKAGE SECURING:**
- 3SP: Velcro-secured cradles on appendages 1-3, 2-point engagement each
- 1MP: Locking rail system on appendage 4, 4-point engagement with rotational lock
- Appendage 5: Secondary stabilization, no package load

**OPERATIONAL CHECKLIST:**
- [ ] Appendages 1-5 strain-gauge calibrated
- [ ] 3SP cradles Velcro-secured and locked (appendages 1-3)
- [ ] 1MP locking rail engaged and rotated to lock position (appendage 4)
- [ ] Appendage 5 verified as secondary stabilization only
- [ ] Grip force baseline set: 140N (rocky) / 210N (clay-oxalic)
- [ ] Telemetry system active
- [ ] Emergency release manual override tested

---

## VESSEL TYPE CVA-03: CRA-03 CONFIGURATION
### Maximum Package Load, Single-Adult Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 4 × 5kg units
- Medium Packages (MP): 1 × 15kg unit
- Small Children (SC): 0
- Medium Children (MC): 0
- Adults (A): 1 person
- Total Personnel: 1

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 4SP + 1MP distributed across all 8 appendages
- Grip Force Baseline: 160N per appendage (rocky terrain), 240N per appendage (clay-oxalic)
- Active Appendages: 8 of 8 (all appendages engaged)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 2.4 m/s (unloaded), 1.8 m/s (loaded)
- Clay-Oxalic (CX): V_max = 1.4 m/s (requires 30% grip force increase)
- Jungle (JG): V_max = 2.0 m/s (all 8 appendages engaged, reduced velocity due to load)
- Cavernous (CR): V_max = 1.2 m/s (vertical face engagement, all 8 appendages required for 4-point minimum)
- Aquatic (AMD-Aqua): V_max = 1.4 m/s (paddling gait, maximum load)
- Moist (AMD-Moist): V_max = 2.2 m/s (hydro-adaptive seal engagement, all appendages)
- Dry (AMD-Dry): V_max = 2.6 m/s (optimal conditions, all appendages engaged)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 105kg (vessel + 4SP + 1MP + operator)
N_active = 8
η_rocky = 0.88, η_cx = 1.25, η_jg = 0.84, η_cr = 0.92, η_aqua = 0.65, η_moist = 0.78, η_dry = 0.86
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (all 8 appendages provide redundancy)
- Grip force monitoring at 10Hz sampling rate ✓ (increased monitoring due to maximum load)
- Load redistribution trigger: any appendage force < 75% baseline ✓ (stricter threshold due to load density)
- Emergency stabilization: all appendages remain engaged, load redistributed if any fail ✓

**PACKAGE SECURING:**
- 4SP: Velcro-secured cradles on appendages 1-4, 2-point engagement each
- 1MP: Locking rail system on appendage 5, 4-point engagement with rotational lock
- Appendages 6-8: Stabilization only, no package load but engaged for stability

**OPERATIONAL CHECKLIST:**
- [ ] All 8 appendages strain-gauge calibrated
- [ ] 4SP cradles Velcro-secured and locked (appendages 1-4)
- [ ] 1MP locking rail engaged and rotated to lock position (appendage 5)
- [ ] Appendages 6-8 verified as stabilization only, engaged for stability
- [ ] Grip force baseline set: 160N (rocky) / 240N (clay-oxalic)
- [ ] Telemetry system active
- [ ] Emergency release manual override tested
- [ ] All appendages full range of motion verified post-load

---

## VESSEL TYPE CVA-04: CRA-04 CONFIGURATION
### Small Child Occupancy, No Package Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 0
- Medium Packages (MP): 0
- Small Children (SC): 1 child (≤12 years, <35kg)
- Medium Children (MC): 0
- Adults (A): 0
- Total Personnel: 1

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: Child seating cradle on appendage 1, 3-point grip engagement
- Grip Force Baseline: 80N per appendage (rocky terrain), 120N per appendage (clay-oxalic)
- Active Appendages: 1 of 8 (appendage 1 engaged for child seating, 2-8 as standby)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 2.0 m/s (child occupancy, reduced velocity for safety)
- Clay-Oxalic (CX): V_max = 1.5 m/s (requires 15% grip force increase)
- Jungle (JG): V_max = 1.8 m/s (appendages 1-4 engaged, child-safe velocity)
- Cavernous (CR): V_max = 1.0 m/s (vertical face engagement with child safety protocol)
- Aquatic (AMD-Aqua): V_max = 0.8 m/s (child-safe paddling, hydro seals engaged)
- Moist (AMD-Moist): V_max = 1.7 m/s (hydro-adaptive seal engagement)
- Dry (AMD-Dry): V_max = 2.2 m/s (optimal conditions, child-safe velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 65kg (vessel + child 35kg + equipment)
N_active = 1 (primary) + 2 standby (appendages 2-3)
η_rocky = 0.95, η_cx = 1.10, η_jg = 0.92, η_cr = 0.97, η_aqua = 0.60, η_moist = 0.85, η_dry = 0.94
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (appendages 1-3 engaged as child safety triad)
- Grip force monitoring at 10Hz sampling rate ✓ (enhanced monitoring for child safety)
- Load redistribution trigger: any appendage force < 60% baseline ✓ (stricter for child safety)
- Emergency stabilization: engage appendages 2-3 at full capacity if appendage 1 fails ✓

**CHILD SECURING SYSTEM:**
- 3-point harness integrated with appendage 1 cradle
- Harness distributed across shoulders, waist, and between legs
- Release mechanism: single-handed quick-release (emergency), two-handed sustained hold (normal)
- Fall-prevention angle: child harness limits appendage 1 tilt to ≤30° from vertical

**PACKAGE SECURING:** N/A (no packages in this configuration)

**OPERATIONAL CHECKLIST:**
- [ ] Appendage 1 child seating cradle engaged and locked
- [ ] 3-point harness fitted and secured on child
- [ ] Harness quick-release tested (single-handed emergency)
- [ ] Harness sustained-hold verified (two-handed normal operation)
- [ ] Appendage 1 tilt limiter verified (≤30° from vertical)
- [ ] Grip force baseline set: 80N (rocky) / 120N (clay-oxalic)
- [ ] Appendages 2-3 verified as standby safety engagement
- [ ] Telemetry system active with child-presence sensor
- [ ] Emergency release manual override tested

---

## VESSEL TYPE CVA-05: CRA-05 CONFIGURATION
### Enhanced Small Child Occupancy Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 1 × 5kg unit
- Medium Packages (MP): 0
- Small Children (SC): 1 child (≤12 years, <35kg)
- Medium Children (MC): 0
- Adults (A): 0
- Total Personnel: 1

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 1SP + child seating cradle distributed across appendages 1-3
- Grip Force Baseline: 100N per appendage (rocky terrain), 150N per appendage (clay-oxalic)
- Active Appendages: 3 of 8 (appendages 1-3 engaged, child + package distribution)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 1.8 m/s (unloaded child + package, reduced velocity)
- Clay-Oxalic (CX): V_max = 1.3 m/s (requires 20% grip force increase)
- Jungle (JG): V_max = 1.6 m/s (appendages 1-4 engaged, child-safe velocity)
- Cavernous (CR): V_max = 0.9 m/s (vertical face engagement with child safety protocol)
- Aquatic (AMD-Aqua): V_max = 0.7 m/s (child-safe paddling, hydro seals engaged)
- Moist (AMD-Moist): V_max = 1.5 m/s (hydro-adaptive seal engagement)
- Dry (AMD-Dry): V_max = 2.0 m/s (optimal conditions, child-safe velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 78kg (vessel + child 35kg + 1SP 5kg + equipment)
N_active = 3
η_rocky = 0.93, η_cx = 1.18, η_jg = 0.90, η_cr = 0.95, η_aqua = 0.58, η_moist = 0.83, η_dry = 0.92
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (exactly 3 appendages engaged)
- Grip force monitoring at 10Hz sampling rate ✓
- Load redistribution trigger: any appendage force < 55% baseline ✓ (strictest threshold, child + package)
- Emergency stabilization: engage appendages 4-8 at 50% capacity if appendages 1-3 fail ✓

**PACKAGE SECURING:**
- 1SP: Velcro-secured cradle on appendage 1, 2-point engagement
- Child seating: 3-point harness on appendage 1 cradle (shared engagement)
- Appendages 2-3: Package stabilization, no additional load but engaged for triad stability

**OPERATIONAL CHECKLIST:**
- [ ] Appendages 1-3 strain-gauge calibrated
- [ ] 1SP Velcro-secured cradle on appendage 1, 2-point engagement
- [ ] 3-point harness fitted and secured on child
- [ ] Harness quick-release tested (single-handed emergency)
- [ ] Harness sustained-hold verified (two-handed normal operation)
- [ ] Grip force baseline set: 100N (rocky) / 150N (clay-oxalic)
- [ ] Appendages 2-3 verified as package stabilization
- [ ] Telemetry system active with child-presence sensor
- [ ] Emergency release manual override tested

---

## VESSEL TYPE CVA-06: CRA-06 CONFIGURATION
### Maximum Child Occupancy Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 1 × 5kg unit
- Medium Packages (MP): 0
- Small Children (SC): 1 child (≤12 years, <35kg)
- Medium Children (MC): 0
- Adults (A): 0
- Total Personnel: 1

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 1SP + child seating cradle distributed across appendages 1-4
- Grip Force Baseline: 110N per appendage (rocky terrain), 165N per appendage (clay-oxalic)
- Active Appendages: 4 of 8 (appendages 1-4 engaged, child + package + safety distribution)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 1.6 m/s (child + package occupancy, safety-velocity reduced)
- Clay-Oxalic (CX): V_max = 1.1 m/s (requires 25% grip force increase)
- Jungle (JG): V_max = 1.4 m/s (appendages 1-4 engaged, child-safe velocity)
- Cavernous (CR): V_max = 0.8 m/s (vertical face engagement with child safety protocol)
- Aquatic (AMD-Aqua): V_max = 0.6 m/s (child-safe paddling, hydro seals engaged)
- Moist (AMD-Moist): V_max = 1.3 m/s (hydro-adaptive seal engagement)
- Dry (AMD-Dry): V_max = 1.8 m/s (optimal conditions, child-safe velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 85kg (vessel + child 35kg + 1SP 5kg + equipment)
N_active = 4
η_rocky = 0.91, η_cx = 1.22, η_jg = 0.88, η_cr = 0.93, η_aqua = 0.55, η_moist = 0.81, η_dry = 0.89
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (4 appendages engaged provides redundancy)
- Grip force monitoring at 10Hz sampling rate ✓
- Load redistribution trigger: any appendage force < 65% baseline ✓
- Emergency stabilization: engage appendages 5-8 at 60% capacity if appendages 1-4 fail ✓

**PACKAGE SECURING:**
- 1SP: Velcro-secured cradle on appendage 1, 2-point engagement
- Child seating: 3-point harness on appendage 1 cradle (shared engagement pattern)
- Appendages 2-4: Child + package stabilization, engaged for quadruple safety engagement

**OPERATIONAL CHECKLIST:**
- [ ] Appendages 1-4 strain-gauge calibrated
- [ ] 1SP Velcro-secured cradle on appendage 1, 2-point engagement
- [ ] 3-point harness fitted and secured on child
- [ ] Harness quick-release tested (single-handed emergency)
- [ ] Harness sustained-hold verified (two-handed normal operation)
- [ ] Grip force baseline set: 110N (rocky) / 165N (clay-oxalic)
- [ ] Appendages 2-4 verified as child + package stabilization
- [ ] Telemetry system active with child-presence sensor
- [ ] Emergency release manual override tested

---

## VESSEL TYPE CVA-07: CRA-07 CONFIGURATION
### Medium Child Occupancy, Medium Package Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 1 × 5kg unit
- Medium Packages (MP): 1 × 15kg unit
- Small Children (SC): 0
- Medium Children (MC): 1 child (≤14 years, 35-55kg)
- Adults (A): 0
- Total Personnel: 1

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 1SP + 1MP + medium child seating distributed across appendages 1-5
- Grip Force Baseline: 150N per appendage (rocky terrain), 225N per appendage (clay-oxalic)
- Active Appendages: 5 of 8 (appendages 1-5 engaged, medium child + package distribution)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 2.2 m/s (medium child + medium package, reduced velocity for safety)
- Clay-Oxalic (CX): V_max = 1.3 m/s (requires 30% grip force increase)
- Jungle (JG): V_max = 1.9 m/s (appendages 1-5 engaged, child-safe velocity, foliage clearance)
- Cavernous (CR): V_max = 1.1 m/s (vertical face engagement with medium child safety protocol)
- Aquatic (AMD-Aqua): V_max = 1.0 m/s (medium child-safe paddling, hydro seals engaged)
- Moist (AMD-Moist): V_max = 1.7 m/s (hydro-adaptive seal engagement)
- Dry (AMD-Dry): V_max = 2.4 m/s (optimal conditions, medium child-safe velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 110kg (vessel + MC 50kg + 1SP 5kg + 1MP 15kg + equipment)
N_active = 5
η_rocky = 0.90, η_cx = 1.30, η_jg = 0.86, η_cr = 0.91, η_aqua = 0.62, η_moist = 0.79, η_dry = 0.87
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (5 appendages engaged provides significant redundancy)
- Grip force monitoring at 10Hz sampling rate ✓
- Load redistribution trigger: any appendage force < 70% baseline ✓
- Emergency stabilization: engage appendages 6-8 at 65% capacity if appendages 1-5 fail ✓

**MEDIUM CHILD SECURING SYSTEM:**
- 5-point harness integrated with appendage 1-2 cradles
- Harness distributed across shoulders, waist, and between legs (modified for medium child)
- Release mechanism: single-handed quick-release (emergency), two-handed sustained hold (normal)
- Fall-prevention angle: harness limits appendage 1-2 tilt to ≤35° from vertical
- Weight transfer: harness engages appendages 1-2 simultaneously for balanced load distribution

**PACKAGE SECURING:**
- 1SP: Velcro-secured cradle on appendage 1, 2-point engagement
- 1MP: Locking rail system on appendage 3, 4-point engagement with rotational lock
- Appendages 4-5: Medium child stabilization, engaged for balanced triad + package engagement

**OPERATIONAL CHECKLIST:**
- [ ] Appendages 1-5 strain-gauge calibrated
- [ ] 1SP Velcro-secured cradle on appendage 1, 2-point engagement
- [ ] 1MP locking rail engaged and rotated to lock position (appendage 3)
- [ ] Medium 5-point harness fitted and secured on child
- [ ] Harness quick-release tested (single-handed emergency)
- [ ] Harness sustained-hold verified (two-handed normal operation)
- [ ] Harness angle verified (≤35° from vertical for appendages 1-2)
- [ ] Grip force baseline set: 150N (rocky) / 225N (clay-oxalic)
- [ ] Telemetry system active with child-presence sensor
- [ ] Emergency release manual override tested

---

## VESSEL TYPE CVA-08: CRA-08 CONFIGURATION
### Enhanced Medium Child + Medium Package Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 2 × 5kg units
- Medium Packages (MP): 1 × 15kg unit
- Small Children (SC): 0
- Medium Children (MC): 1 child (≤14 years, 35-55kg)
- Adults (A): 0
- Total Personnel: 1

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 2SP + 1MP + 1MC distributed across appendages 1-6
- Grip Force Baseline: 170N per appendage (rocky terrain), 255N per appendage (clay-oxalic)
- Active Appendages: 6 of 8 (appendages 1-6 engaged, medium child + packages + safety pair)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 2.0 m/s (medium child + 2SP + 1MP, reduced velocity for enhanced safety)
- Clay-Oxalic (CX): V_max = 1.2 m/s (requires 35% grip force increase)
- Jungle (JG): V_max = 1.7 m/s (appendages 1-6 engaged, child-safe velocity, foliage clearance)
- Cavernous (CR): V_max = 1.0 m/s (vertical face engagement with medium child + packages protocol)
- Aquatic (AMD-Aqua): V_max = 0.9 m/s (medium child + packages safe paddling, hydro seals engaged)
- Moist (AMD-Moist): V_max = 1.5 m/s (hydro-adaptive seal engagement, all appendages)
- Dry (AMD-Dry): V_max = 2.2 m/s (optimal conditions, enhanced safety velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 125kg (vessel + MC 50kg + 2SP 10kg + 1MP 15kg + equipment)
N_active = 6
η_rocky = 0.88, η_cx = 1.35, η_jg = 0.84, η_cr = 0.89, η_aqua = 0.60, η_moist = 0.77, η_dry = 0.85
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (6 appendages engaged provides robust redundancy)
- Grip force monitoring at 10Hz sampling rate ✓
- Load redistribution trigger: any appendage force < 75% baseline ✓
- Emergency stabilization: engage appendages 7-8 at 70% capacity if appendages 1-6 fail ✓

**PACKAGE AND CHILD SECURING:**
- 2SP: Velcro-secured cradles on appendages 1-2, 2-point engagement each
- 1MP: Locking rail system on appendage 3, 4-point engagement with rotational lock
- 1MC: 5-point harness integrated with appendages 4-5 cradles (modified medium child harness)
- Appendage 6: Secondary stabilization, engaged for triad stability with packages + child

**OPERATIONAL CHECKLIST:**
- [ ] Appendages 1-6 strain-gauge calibrated
- [ ] 2SP Velcro-secured cradles on appendages 1-2, 2-point engagement each
- [ ] 1MP locking rail engaged and rotated to lock position (appendage 3)
- [ ] Medium 5-point harness fitted and secured on child, integrated with appendages 4-5
- [ ] Harness quick-release tested (single-handed emergency)
- [ ] Harness sustained-hold verified (two-handed normal operation)
- [ ] Harness angle verified (≤35° from vertical for appendages 4-5)
- [ ] Grip force baseline set: 170N (rocky) / 255N (clay-oxalic)
- [ ] Telemetry system active with child-presence sensor
- [ ] Emergency release manual override tested

---

## VESSEL TYPE CVA-09: CRA-09 CONFIGURATION
### Maximum Child + Package Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 3 × 5kg units
- Medium Packages (MP): 1 × 15kg unit
- Small Children (SC): 0
- Medium Children (MC): 1 child (≤14 years, 35-55kg)
- Adults (A): 0
- Total Personnel: 1

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 3SP + 1MP + 1MC distributed across all 8 appendages
- Grip Force Baseline: 190N per appendage (rocky terrain), 285N per appendage (clay-oxalic)
- Active Appendages: 8 of 8 (all appendages engaged, maximum load distribution)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 1.8 m/s (maximum child + package load, minimum velocity for safety)
- Clay-Oxalic (CX): V_max = 1.1 m/s (requires 40% grip force increase)
- Jungle (JG): V_max = 1.5 m/s (all 8 appendages engaged, reduced velocity, child-safe)
- Cavernous (CR): V_max = 0.9 m/s (vertical face engagement, all 8 appendages required)
- Aquatic (AMD-Aqua): V_max = 0.8 m/s (maximum load paddling, hydro seals engaged, child safety)
- Moist (AMD-Moist): V_max = 1.3 m/s (hydro-adaptive seal engagement, all appendages)
- Dry (AMD-Dry): V_max = 1.9 m/s (optimal conditions, maximum load, child-safe velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 140kg (vessel + MC 50kg + 3SP 15kg + 1MP 15kg + equipment)
N_active = 8
η_rocky = 0.86, η_cx = 1.40, η_jg = 0.82, η_cr = 0.87, η_aqua = 0.58, η_moist = 0.75, η_dry = 0.83
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (all 8 appendages engaged provides maximum redundancy)
- Grip force monitoring at 10Hz sampling rate ✓ (enhanced monitoring for maximum load)
- Load redistribution trigger: any appendage force < 80% baseline ✓ (strictest threshold, maximum density)
- Emergency stabilization: all appendages remain engaged, load redistributed if any fail ✓

**PACKAGE AND CHILD SECURING:**
- 3SP: Velcro-secured cradles on appendages 1-3, 2-point engagement each
- 1MP: Locking rail system on appendage 4, 4-point engagement with rotational lock
- 1MC: 5-point harness integrated with appendages 5-6 cradles (modified medium child harness)
- Appendages 7-8: Maximum load stabilization, engaged for full 8-point safety engagement

**OPERATIONAL CHECKLIST:**
- [ ] All 8 appendages strain-gauge calibrated
- [ ] 3SP Velcro-secured cradles on appendages 1-3, 2-point engagement each
- [ ] 1MP locking rail engaged and rotated to lock position (appendage 4)
- [ ] Medium 5-point harness fitted and secured on child, integrated with appendages 5-6
- [ ] Harness quick-release tested (single-handed emergency)
- [ ] Harness sustained-hold verified (two-handed normal operation)
- [ ] Harness angle verified (≤35° from vertical for appendages 5-6)
- [ ] Grip force baseline set: 190N (rocky) / 285N (clay-oxalic)
- [ ] Telemetry system active with child-presence sensor
- [ ] Emergency release manual override tested
- [ ] All appendages full range of motion verified post-maximum load

---

## VESSEL TYPE CVA-10: CRA-10 CONFIGURATION
### Single-Adult Occupancy, No Packages

**CAPACITY MATRIX:**
- Small Packages (SP): 0
- Medium Packages (MP): 0
- Small Children (SC): 0
- Medium Children (MC): 0
- Adults (A): 1 person
- Total Personnel: 1

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: Adult seating distributed across appendage 1, 4-point grip engagement
- Grip Force Baseline: 100N per appendage (rocky terrain), 150N per appendage (clay-oxalic)
- Active Appendages: 1 of 8 (appendage 1 engaged for adult seating, 2-8 as standby)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 3.0 m/s (unloaded adult, optimal velocity)
- Clay-Oxalic (CX): V_max = 2.2 m/s (requires 15% grip force increase)
- Jungle (JG): V_max = 2.8 m/s (appendages 1-4 engaged, adult-safe velocity)
- Cavernous (CR): V_max = 2.5 m/s (vertical face engagement, 4-point minimum)
- Aquatic (AMD-Aqua): V_max = 2.5 m/s (paddling gait, hydro seals engaged)
- Moist (AMD-Moist): V_max = 2.8 m/s (hydro-adaptive seal engagement)
- Dry (AMD-Dry): V_max = 3.2 m/s (optimal conditions, maximum velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 75kg (vessel + adult 75kg + equipment)
N_active = 1 (primary) + 3 standby (appendages 2-4)
η_rocky = 0.94, η_cx = 1.12, η_jg = 0.92, η_cr = 0.96, η_aqua = 0.75, η_moist = 0.88, η_dry = 0.95
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (appendages 1-4 engaged as adult safety quartet)
- Grip force monitoring at 10Hz sampling rate ✓
- Load redistribution trigger: any appendage force < 65% baseline ✓
- Emergency stabilization: engage appendages 2-4 at full capacity if appendage 1 fails ✓

**ADULT SEATING SYSTEM:**
- Bench-style seating integrated with appendage 1 cradle
- 4-point restraint system: chest strap, waist strap, and dual leg restraints
- Release mechanism: single-handed quick-release (emergency), two-handed sustained hold (normal)
- Weight distribution: seating engages appendages 1-4 simultaneously for balanced load

**PACKAGE SECURING:** N/A (no packages in this configuration)

**OPERATIONAL CHECKLIST:**
- [ ] Appendage 1 adult seating cradle engaged and locked
- [ ] 4-point restraint system fitted and secured on adult
- [ ] Restraint quick-release tested (single-handed emergency)
- [ ] Restraint sustained-hold verified (two-handed normal operation)
- [ ] Grip force baseline set: 100N (rocky) / 150N (clay-oxalic)
- [ ] Appendages 2-3 verified as standby safety engagement
- [ ] Telemetry system active
- [ ] Emergency release manual override tested

---

## VESSEL TYPE CVA-11: CRA-11 CONFIGURATION
### Enhanced Single-Adult with Small Package Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 1 × 5kg unit
- Medium Packages (MP): 0
- Small Children (SC): 0
- Medium Children (MC): 0
- Adults (A): 1 person
- Total Personnel: 1

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 1SP + adult seating distributed across appendages 1-3
- Grip Force Baseline: 130N per appendage (rocky terrain), 195N per appendage (clay-oxalic)
- Active Appendages: 3 of 8 (appendages 1-3 engaged, package + adult seating distribution)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 2.8 m/s (adult + 1SP, reduced velocity from CVA-10)
- Clay-Oxalic (CX): V_max = 2.0 m/s (requires 20% grip force increase)
- Jungle (JG): V_max = 2.6 m/s (appendages 1-3 engaged, adult-safe velocity)
- Cavernous (CR): V_max = 2.3 m/s (vertical face engagement, 3-point minimum)
- Aquatic (AMD-Aqua): V_max = 2.2 m/s (paddling gait with 1SP)
- Moist (AMD-Moist): V_max = 2.6 m/s (hydro-adaptive seal engagement)
- Dry (AMD-Dry): V_max = 3.0 m/s (optimal conditions, near CVA-10 velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 88kg (vessel + adult 75kg + 1SP 5kg + equipment)
N_active = 3
η_rocky = 0.92, η_cx = 1.17, η_jg = 0.90, η_cr = 0.94, η_aqua = 0.73, η_moist = 0.86, η_dry = 0.93
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (exactly 3 appendages engaged)
- Grip force monitoring at 10Hz sampling rate ✓
- Load redistribution trigger: any appendage force < 60% baseline ✓ (stricter than CVA-10 due to package addition)
- Emergency stabilization: engage appendages 4-8 at 50% capacity if appendages 1-3 fail ✓

**PACKAGE SECURING:**
- 1SP: Velcro-secured cradle on appendage 1, 2-point engagement
- Adult seating: Bench-style on appendage 1 cradle (shared engagement with package)
- Appendages 2-3: Package stabilization, engaged for triad stability with adult seating

**OPERATIONAL CHECKLIST:**
- [ ] Appendages 1-3 strain-gauge calibrated
- [ ] 1SP Velcro-secured cradle on appendage 1, 2-point engagement
- [ ] Adult bench seating fitted and secured, integrated with appendage 1 cradle
- [ ] Grip force baseline set: 130N (rocky) / 195N (clay-oxalic)
- [ ] Appendages 2-3 verified as package stabilization
- [ ] Telemetry system active
- [ ] Emergency release manual override tested

---

## VESSEL TYPE CVA-12: CRA-12 CONFIGURATION
### Maximum Package Load, Single-Adult Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 4 × 5kg units
- Medium Packages (MP): 0
- Small Children (SC): 0
- Medium Children (MC): 0
- Adults (A): 1 person
- Total Personnel: 1

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 4SP distributed across all 8 appendages, adult seating on appendage 1
- Grip Force Baseline: 180N per appendage (rocky terrain), 270N per appendage (clay-oxalic)
- Active Appendages: 8 of 8 (all appendages engaged, maximum package load)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 2.2 m/s (4SP + adult, reduced velocity for maximum load)
- Clay-Oxalic (CX): V_max = 1.4 m/s (requires 45% grip force increase)
- Jungle (JG): V_max = 1.9 m/s (all 8 appendages engaged, reduced velocity, adult-safe)
- Cavernous (CR): V_max = 1.5 m/s (vertical face engagement, all 8 appendages required)
- Aquatic (AMD-Aqua): V_max = 1.6 m/s (paddling gait, maximum package load)
- Moist (AMD-Moist): V_max = 1.8 m/s (hydro-adaptive seal engagement, all appendages)
- Dry (AMD-Dry): V_max = 2.4 m/s (optimal conditions, maximum load, reduced velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 115kg (vessel + adult 75kg + 4SP 20kg + equipment)
N_active = 8
η_rocky = 0.88, η_cx = 1.45, η_jg = 0.84, η_cr = 0.90, η_aqua = 0.62, η_moist = 0.73, η_dry = 0.81
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (all 8 appendages engaged provides maximum redundancy)
- Grip force monitoring at 10Hz sampling rate ✓ (enhanced monitoring for maximum load)
- Load redistribution trigger: any appendage force < 85% baseline ✓ (strictest threshold, maximum package density)
- Emergency stabilization: all appendages remain engaged, load redistributed if any fail ✓

**PACKAGE SECURING:**
- 4SP: Velcro-secured cradles on appendages 1-4, 2-point engagement each
- Appendages 5-8: Adult stabilization only, no package load but engaged for 8-point stability
- Adult seating: Bench-style on appendage 1 cradle (shared engagement with 4SP distribution)

**OPERATIONAL CHECKLIST:**
- [ ] All 8 appendages strain-gauge calibrated
- [ ] 4SP Velcro-secured cradles on appendages 1-4, 2-point engagement each
- [ ] Appendages 5-8 verified as adult stabilization only, engaged for 8-point stability
- [ ] Adult bench seating fitted and secured on appendage 1 cradle
- [ ] Grip force baseline set: 180N (rocky) / 270N (clay-oxalic)
- [ ] Telemetry system active
- [ ] Emergency release manual override tested
- [ ] All appendages full range of motion verified post-maximum load

---

## VESSEL TYPE CVA-13: CRA-13 CONFIGURATION
### Two-Adult Occupancy, No Packages

**CAPACITY MATRIX:**
- Small Packages (SP): 0
- Medium Packages (MP): 0
- Small Children (SC): 0
- Medium Children (MC): 0
- Adults (A): 2 persons
- Total Personnel: 2

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: Two adult seats distributed across appendages 1-4 (dual seating configuration)
- Grip Force Baseline: 150N per appendage (rocky terrain per adult), 225N per appendage (clay-oxalic per adult)
- Active Appendages: 4 of 8 (appendages 1-4 engaged, two-adult seating distribution)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 2.5 m/s (2 adults, reduced velocity from single-adult configurations)
- Clay-Oxalic (CX): V_max = 1.8 m/s (requires 25% grip force increase over CVA-10 baseline)
- Jungle (JG): V_max = 2.2 m/s (appendages 1-4 engaged, two-adult safe velocity, foliage clearance)
- Cavernous (CR): V_max = 1.8 m/s (vertical face engagement, 4-point minimum for two-adult stability)
- Aquatic (AMD-Aqua): V_max = 2.0 m/s (two-adult paddling gait, hydro seals engaged)
- Moist (AMD-Moist): V_max = 2.3 m/s (hydro-adaptive seal engagement, all appendages)
- Dry (AMD-Dry): V_max = 2.7 m/s (optimal conditions, two-adult velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 155kg (vessel + 2 adults 150kg + equipment)
N_active = 4
η_rocky = 0.90, η_cx = 1.25, η_jg = 0.88, η_cr = 0.92, η_aqua = 0.70, η_moist = 0.83, η_dry = 0.91
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (4 appendages engaged provides robust two-adult stability)
- Grip force monitoring at 10Hz sampling rate ✓
- Load redistribution trigger: any appendage force < 70% baseline ✓
- Emergency stabilization: engage appendages 5-8 at 65% capacity if appendages 1-4 fail ✓

**TWO-ADULT SEATING SYSTEM:**
- Dual bench-style seating configured across appendages 1-2 and appendages 3-4
- Interconnected restraint system: each adult has 4-point harness, interconnected at waist level
- Release mechanism: single-handed quick-release per adult (emergency), coordinated two-handed (normal)
- Weight distribution: seating engages appendages 1-4 simultaneously, weight sharing 50/50 between adult positions
- Center of mass monitoring: real-time telemetry alerts if CoM shifts beyond ±5% from center

**PACKAGE SECURING:** N/A (no packages in this configuration)

**OPERATIONAL CHECKLIST:**
- [ ] Appendages 1-4 strain-gauge calibrated
- [ ] Dual bench seating configured across appendages 1-4, 2 adults positioned
- [ ] Interconnected 4-point restraint system (per adult) fitted and secured
- [ ] Restraint quick-release tested per adult (single-handed emergency)
- [ ] Coordinated restraint sustained-hold verified (two-handed normal operation)
- [ ] Weight distribution verified (50/50 between adult positions)
- [ ] Center of mass monitoring calibrated
- [ ] Grip force baseline set: 150N (rocky per adult) / 225N (clay-oxalic per adult)
- [ ] Telemetry system active with CoM monitoring
- [ ] Emergency release manual override tested per adult

---

## VESSEL TYPE CVA-14: CRA-14 CONFIGURATION
### Two-Adult + Medium Package Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 1 × 5kg unit
- Medium Packages (MP): 1 × 15kg unit
- Small Children (SC): 0
- Medium Children (MC): 0
- Adults (A): 2 persons
- Total Personnel: 2

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 1SP + 1MP + two adult seats distributed across appendages 1-6
- Grip Force Baseline: 180N per appendage (rocky terrain, per adult + package), 270N per appendage (clay-oxalic, per adult + package)
- Active Appendages: 6 of 8 (appendages 1-6 engaged, two adults + package distribution)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 2.3 m/s (2 adults + 1SP + 1MP, reduced velocity for combined load)
- Clay-Oxalic (CX): V_max = 1.5 m/s (requires 35% grip force increase over CVA-13 baseline)
- Jungle (JG): V_max = 2.0 m/s (appendages 1-6 engaged, two-adult + package safe velocity, foliage clearance)
- Cavernous (CR): V_max = 1.6 m/s (vertical face engagement, 6-point minimum for two-adult + package)
- Aquatic (AMD-Aqua): V_max = 1.8 m/s (two adults + packages paddling gait, hydro seals engaged)
- Moist (AMD-Moist): V_max = 1.9 m/s (hydro-adaptive seal engagement, all appendages)
- Dry (AMD-Dry): V_max = 2.5 m/s (optimal conditions, two adults + packages, reduced velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 180kg (vessel + 2 adults 150kg + 1SP 5kg + 1MP 15kg + equipment)
N_active = 6
η_rocky = 0.88, η_cx = 1.35, η_jg = 0.86, η_cr = 0.88, η_aqua = 0.68, η_moist = 0.79, η_dry = 0.86
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (6 appendages engaged provides robust two-adult + package stability)
- Grip force monitoring at 10Hz sampling rate ✓
- Load redistribution trigger: any appendage force < 75% baseline ✓
- Emergency stabilization: engage appendages 7-8 at 70% capacity if appendages 1-6 fail ✓

**PACKAGE AND ADULT SECURING:**
- 1SP: Velcro-secured cradle on appendage 1, 2-point engagement
- 1MP: Locking rail system on appendage 3, 4-point engagement with rotational lock
- Two adults: Bench-style seating across appendages 1-2 and appendages 4-5, interconnected 4-point harnesses
- Appendage 6: Secondary stabilization, engaged for triad + adult + package stability

**OPERATIONAL CHECKLIST:**
- [ ] Appendages 1-6 strain-gauge calibrated
- [ ] 1SP Velcro-secured cradle on appendage 1, 2-point engagement
- [ ] 1MP locking rail engaged and rotated to lock position (appendage 3)
- [ ] Dual bench seating configured across appendages 1-2 and appendages 4-5, 2 adults positioned
- [ ] Interconnected 4-point restraint system (per adult) fitted and secured
- [ ] Restraint quick-release tested per adult (single-handed emergency)
- [ ] Grip force baseline set: 180N (rocky, per adult + package) / 270N (clay-oxalic, per adult + package)
- [ ] Telemetry system active with CoM monitoring
- [ ] Emergency release manual override tested per adult

---

## VESSEL TYPE CVA-15: CRA-15 CONFIGURATION
### Two-Adult + Maximum Package Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 3 × 5kg units
- Medium Packages (MP): 1 × 15kg unit
- Small Children (SC): 0
- Medium Children (MC): 0
- Adults (A): 2 persons
- Total Personnel: 2

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 3SP + 1MP + two adult seats distributed across all 8 appendages
- Grip Force Baseline: 200N per appendage (rocky terrain, per adult + package max), 300N per appendage (clay-oxalic, per adult + package max)
- Active Appendages: 8 of 8 (all appendages engaged, maximum adult + package load)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 2.0 m/s (2 adults + 3SP + 1MP, minimum velocity for maximum load stability)
- Clay-Oxalic (CX): V_max = 1.2 m/s (requires 50% grip force increase over CVA-13 baseline)
- Jungle (JG): V_max = 1.7 m/s (all 8 appendages engaged, reduced velocity, two-adult + package safe)
- Cavernous (CR): V_max = 1.4 m/s (vertical face engagement, all 8 appendages required for 8-point stability)
- Aquatic (AMD-Aqua): V_max = 1.5 m/s (two adults + maximum paddling, hydro seals engaged, reduced velocity)
- Moist (AMD-Moist): V_max = 1.6 m/s (hydro-adaptive seal engagement, all appendages)
- Dry (AMD-Dry): V_max = 2.2 m/s (optimal conditions, maximum load, reduced velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 195kg (vessel + 2 adults 150kg + 3SP 15kg + 1MP 15kg + equipment)
N_active = 8
η_rocky = 0.86, η_cx = 1.50, η_jg = 0.82, η_cr = 0.86, η_aqua = 0.60, η_moist = 0.72, η_dry = 0.79
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (all 8 appendages engaged provides maximum two-adult + package redundancy)
- Grip force monitoring at 10Hz sampling rate ✓ (enhanced monitoring for maximum combined load)
- Load redistribution trigger: any appendage force < 80% baseline ✓ (stricter threshold, maximum combined density)
- Emergency stabilization: all appendages remain engaged, load redistributed if any fail ✓

**PACKAGE AND ADULT SECURING:**
- 3SP: Velcro-secured cradles on appendages 1-3, 2-point engagement each
- 1MP: Locking rail system on appendage 4, 4-point engagement with rotational lock
- Two adults: Bench-style seating across appendages 5-8, interconnected 4-point harnesses
- Appendages 1-4: Package distribution, engaged for 8-point stability with adult seating on 5-8

**OPERATIONAL CHECKLIST:**
- [ ] All 8 appendages strain-gauge calibrated
- [ ] 3SP Velcro-secured cradles on appendages 1-3, 2-point engagement each
- [ ] 1MP locking rail engaged and rotated to lock position (appendage 4)
- [ ] Two adults bench seating configured across appendages 5-8, interconnected 4-point harnesses
- [ ] Interconnected 4-point restraint system (per adult) fitted and secured
- [ ] Restraint quick-release tested per adult (single-handed emergency)
- [ ] Grip force baseline set: 200N (rocky, per adult + package max) / 300N (clay-oxalic, per adult + package max)
- [ ] Telemetry system active with CoM monitoring
- [ ] Emergency release manual override tested per adult
- [ ] All appendages full range of motion verified post-maximum load

---

## VESSEL TYPE CVA-16: CRA-16 CONFIGURATION
### Three-Adult (Trio) Occupancy, No Packages

**CAPACITY MATRIX:**
- Small Packages (SP): 0
- Medium Packages (MP): 0
- Small Children (SC): 0
- Medium Children (MC): 0
- Adults (A): 3 persons (trio)
- Total Personnel: 3

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: Three adult seats distributed across appendages 1-6 (trio seating configuration)
- Grip Force Baseline: 180N per appendage (rocky terrain, per adult), 270N per appendage (clay-oxalic, per adult)
- Active Appendages: 6 of 8 (appendages 1-6 engaged, trio adult seating distribution, appendages 7-8 standby)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 2.3 m/s (3 adults, reduced velocity from two-adult configurations)
- Clay-Oxalic (CX): V_max = 1.7 m/s (requires 30% grip force increase over CVA-13 baseline)
- Jungle (JG): V_max = 2.0 m/s (appendages 1-6 engaged, trio-adult safe velocity, foliage clearance)
- Cavernous (CR): V_max = 1.9 m/s (vertical face engagement, 6-point minimum for trio-adult stability)
- Aquatic (AMD-Aqua): V_max = 2.1 m/s (three-adult paddling gait, hydro seals engaged)
- Moist (AMD-Moist): V_max = 2.4 m/s (hydro-adaptive seal engagement, all appendages)
- Dry (AMD-Dry): V_max = 2.8 m/s (optimal conditions, trio-adult velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 230kg (vessel + 3 adults 225kg + equipment)
N_active = 6
η_rocky = 0.89, η_cx = 1.30, η_jg = 0.87, η_cr = 0.90, η_aqua = 0.72, η_moist = 0.85, η_dry = 0.93
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (6 appendages engaged provides trio-adult stability with redundancy)
- Grip force monitoring at 10Hz sampling rate ✓
- Load redistribution trigger: any appendage force < 75% baseline ✓
- Emergency stabilization: engage appendages 7-8 at 80% capacity if appendages 1-6 fail ✓

**THREE-ADULT (TRIO) SEATING SYSTEM:**
- Trio bench-style seating configured across appendages 1-2, appendages 3-4, and appendages 5-6
- Individual 4-point harnesses for each adult, interconnected at waist and shoulder levels
- Release mechanism: single-handed quick-release per adult (emergency), coordinated three-handed (normal)
- Weight distribution: seating engages appendages 1-6 simultaneously, weight sharing 33/33/34 between adult positions
- Center of mass monitoring: real-time telemetry alerts if CoM shifts beyond ±3% from center (trio configuration more sensitive)
- Triangular formation: adult positions arranged in triangle for optimal weight distribution across appendages 1-6

**PACKAGE SECURING:** N/A (no packages in this configuration)

**OPERATIONAL CHECKLIST:**
- [ ] Appendages 1-6 strain-gauge calibrated
- [ ] Trio bench seating configured across appendages 1-6, 3 adults positioned
- [ ] Individual 4-point harnesses for each adult fitted and secured
- [ ] Harnesses interconnected at waist and shoulder levels
- [ ] Quick-release tested per adult (single-handed emergency)
- [ ] Coordinated three-handed sustained-hold verified (normal operation)
- [ ] Weight distribution verified (33/33/34 between adult positions)
- [ ] Center of mass monitoring calibrated (±3% threshold for trio configuration)
- [ ] Grip force baseline set: 180N (rocky, per adult) / 270N (clay-oxalic, per adult)
- [ ] Telemetry system active with CoM monitoring
- [ ] Emergency release manual override tested per adult

---

## VESSEL TYPE CVA-17: CRA-17 CONFIGURATION
### Three-Adult (Trio) + Maximum Package Configuration

**CAPACITY MATRIX:**
- Small Packages (SP): 2 × 5kg units
- Medium Packages (MP): 0
- Small Children (SC): 0
- Medium Children (MC): 0
- Adults (A): 3 persons (trio)
- Total Personnel: 3

**APPENDAGE ENGAGEMENT CONFIGURATION:**
- Primary Load: 2SP + three adult seats distributed across all 8 appendages
- Grip Force Baseline: 220N per appendage (rocky terrain, per adult + package max), 330N per appendage (clay-oxalic, per adult + package max)
- Active Appendages: 8 of 8 (all appendages engaged, trio adults + maximum package load)

**TERRAIN PERFORMANCE:**
- Rocky (RT): V_max = 1.9 m/s (3 adults + 2SP, minimum velocity for maximum combined stability)
- Clay-Oxalic (CX): V_max = 1.3 m/s (requires 55% grip force increase over CVA-16 baseline)
- Jungle (JG): V_max = 1.5 m/s (all 8 appendages engaged, reduced velocity, trio-adult + packages safe)
- Cavernous (CR): V_max = 1.3 m/s (vertical face engagement, all 8 appendages required for 8-point trio + package stability)
- Aquatic (AMD-Aqua): V_max = 1.4 m/s (three adults + maximum paddling, hydro seals engaged, reduced velocity)
- Moist (AMD-Moist): V_max = 1.5 m/s (hydro-adaptive seal engagement, all appendages)
- Dry (AMD-Dry): V_max = 2.0 m/s (optimal conditions, maximum combined load, reduced velocity)

**LOAD DISTRIBUTION MATHEMATICS:**
```
W_total = 255kg (vessel + 3 adults 225kg + 2SP 10kg + equipment)
N_active = 8
η_rocky = 0.85, η_cx = 1.55, η_jg = 0.81, η_cr = 0.84, η_aqua = 0.58, η_moist = 0.70, η_dry = 0.77
```

**STABILITY CRITERIA:**
- Minimum 3-point engagement maintained at all times ✓ (all 8 appendages engaged provides maximum trio + package redundancy)
- Grip force monitoring at 10Hz sampling rate ✓ (enhanced monitoring for maximum combined load)
- Load redistribution trigger: any appendage force < 85% baseline ✓ (strictest threshold, maximum combined density)
- Emergency stabilization: all appendages remain engaged, load redistributed if any fail ✓

**PACKAGE AND TRIO ADULT SECURING:**
- 2SP: Velcro-secured cradles on appendages 1-2, 2-point engagement each
- Three adults: Bench-style seating across appendages 3-8, individual 4-point harnesses for each adult
- Harnesses interconnected at waist and shoulder levels (trio configuration)
- Release mechanism: single-handed quick-release per adult (emergency), coordinated three-handed (normal)
- Weight distribution: seating engages appendages 3-8 simultaneously, weight sharing 20/20/20/13.3/13.3/13.3 across appendages 3-8
- Center of mass monitoring: real-time telemetry alerts if CoM shifts beyond ±3% from center (trio + package configuration most sensitive)

**OPERATIONAL CHECKLIST:**
- [ ] All 8 appendages strain-gauge calibrated
- [ ] 2SP Velcro-secured cradles on appendages 1-2, 2-point engagement each
- [ ] Three adults bench seating configured across appendages 3-8, individual 4-point harnesses
- [ ] Harnesses interconnected at waist and shoulder levels (trio configuration)
- [ ] Quick-release tested per adult (single-handed emergency)
- [ ] Coordinated three-handed sustained-hold verified (normal operation)
- [ ] Weight distribution verified (20/20/20/13.3/13.3/13.3 across appendages 3-8)
- [ ] Center of mass monitoring calibrated (±3% threshold for trio + package configuration)
- [ ] Grip force baseline set: 220N (rocky, per adult + package max) / 330N (clay-oxalic, per adult + package max)
- [ ] Telemetry system active with CoM monitoring
- [ ] Emergency release manual override tested per adult
- [ ] All appendages full range of motion verified post-maximum combined load

---

## 10.0 CROSS-REFERENCE SUMMARY TABLE

| Vessel Type | Personnel | SP | MP | MC | Terrain Performance (m/s) Key: RT=Rocky, CX=Clay-Oxalic, JG=Jungle, CR=Cavernous, Aqu=Aqua, Moist=Moist, Dry=Dry |
|-------------|-----------|----|----|----|---------------------------------------------------|
| CVA-01 | 1A | 2 | 1 | 0 | RT:2.8, CX:1.6, JG:2.4, CR:1.4, Aqu:1.8, Moist:2.6, Dry:3.0 |
| CVA-02 | 1A | 3 | 1 | 0 | RT:2.6, CX:1.5, JG:2.2, CR:1.2, Aqu:1.6, Moist:2.4, Dry:2.8 |
| CVA-03 | 1A | 4 | 1 | 0 | RT:2.4, CX:1.4, JG:2.0, CR:1.2, Aqu:1.4, Moist:2.2, Dry:2.6 |
| CVA-04 | 1SC | 0 | 0 | 1 | RT:2.0, CX:1.5, JG:1.8, CR:1.0, Aqu:0.8, Moist:1.7, Dry:2.2 |
| CVA-05 | 1SC+1SP | 1 | 0 | 1 | RT:1.8, CX:1.3, JG:1.6, CR:0.9, Aqu:0.7, Moist:1.5, Dry:2.0 |
| CVA-06 | 1SC+1SP | 1 | 0 | 1 | RT:1.6, CX:1.1, JG:1.4, CR:0.8, Aqu:0.6, Moist:1.3, Dry:1.8 |
| CVA-07 | 1MC+1MP+1SP | 1 | 1 | 1 | RT:2.2, CX:1.3, JG:1.9, CR:1.1, Aqu:1.0, Moist:1.7, Dry:2.4 |
| CVA-08 | 1MC+2SP+1MP | 2 | 1 | 1 | RT:2.0, CX:1.2, JG:1.7, CR:1.0, Aqu:0.9, Moist:1.5, Dry:2.2 |
| CVA-09 | 1MC+3SP+1MP | 3 | 1 | 1 | RT:1.8, CX:1.1, JG:1.5, CR:0.9, Aqu:0.8, Moist:1.3, Dry:1.9 |
| CVA-10 | 1A | 0 | 0 | 0 | RT:3.0, CX:2.2, JG:2.8, CR:2.5, Aqu:2.5, Moist:2.8, Dry:3.2 |
| CVA-11 | 1A+1SP | 1 | 0 | 0 | RT:2.8, CX:2.0, JG:2.6, CR:2.3, Aqu:2.2, Moist:2.6, Dry:3.0 |
| CVA-12 | 1A+4SP | 4 | 0 | 0 | RT:2.2, CX:1.4, JG:1.9, CR:1.5, Aqu:1.6, Moist:1.8, Dry:2.4 |
| CVA-13 | 2A | 0 | 0 | 0 | RT:2.5, CX:1.8, JG:2.2, CR:1.8, Aqu:2.0, Moist:2.3, Dry:2.7 |
| CVA-14 | 2A+1SP+1MP | 1 | 1 | 0 | RT:2.3, CX:1.5, JG:2.0, CR:1.6, Aqu:1.8, Moist:1.9, Dry:2.5 |
| CVA-15 | 2A+3SP+1MP | 3 | 1 | 0 | RT:2.0, CX:1.2, JG:1.7, CR:1.4, Aqu:1.5, Moist:1.6, Dry:2.2 |
| CVA-16 | 3A (trio) | 0 | 0 | 0 | RT:2.3, CX:1.7, JG:2.0, CR:1.9, Aqu:2.1, Moist:2.4, Dry:2.8 |
| CVA-17 | 3A(trio)+2SP | 2 | 0 | 0 | RT:1.9, CX:1.3, JG:1.5, CR:1.3, Aqu:1.4, Moist:1.5, Dry:2.0 |

---

## 11.0 OPERATIONAL ENVELOPE QUICK-REFERENCE

### Velocity Limits by Configuration and Terrain
**CVA-01 through CVA-03** (Package configurations, single adult):
- Rocky: 2.4-2.8 m/s range
- Clay-Oxalic: 1.4-1.6 m/s range (increased grip force required)
- Jungle: 2.0-2.4 m/s range (appendage engagement varies)
- Cavernous: 1.2-1.4 m/s range (vertical face engagement)
- Aquatic: 1.4-1.8 m/s range (hydro paddling gait)
- Moist: 2.2-2.6 m/s range (hydro-adaptive seals)
- Dry: 2.6-3.0 m/s range (optimal conditions)

### Velocity Limits by Configuration and Terrain
**CVA-04 through CVA-09** (Child occupancy configurations):
- Rocky: 1.6-2.2 m/s range (reduced for child safety)
- Clay-Oxalic: 1.1-1.5 m/s range (increased grip force, child safety)
- Jungle: 1.4-1.9 m/s range (child-safe velocity, foliage clearance)
- Cavernous: 0.8-1.1 m/s range (vertical face + child safety)
- Aquatic: 0.6-1.0 m/s range (child-safe paddling)
- Moist: 1.3-1.7 m/s range (hydro-adaptive, child-safe)
- Dry: 1.8-2.4 m/s range (optimal, child-safe velocity)

### Velocity Limits by Configuration and Terrain
**CVA-10 through CVA-12** (Single-adult configurations):
- Rocky: 2.2-3.0 m/s range (varies with package load)
- Clay-Oxalic: 1.4-2.2 m/s range (increased grip force)
- Jungle: 1.9-2.8 m/s range (adult-safe velocity)
- Cavernous: 1.5-2.5 m/s range (vertical face engagement)
- Aquatic: 1.6-2.5 m/s range (paddling gait)
- Moist: 2.6-2.8 m/s range (hydro-adaptive seals)
- Dry: 3.0-3.2 m/s range (optimal conditions, maximum velocity)

### Velocity Limits by Configuration and Terrain
**CVA-13 through CVA-15** (Two-adult configurations):
- Rocky: 2.0-2.5 m/s range (reduced from single-adult)
- Clay-Oxalic: 1.5-1.8 m/s range (increased grip force, two-adult stability)
- Jungle: 2.0-2.2 m/s range (two-adult safe velocity)
- Cavernous: 1.6-1.8 m/s range (vertical face + two-adult stability)
- Aquatic: 1.8-2.0 m/s range (two-adult paddling)
- Moist: 2.3-2.4 m/s range (hydro-adaptive, two-adult)
- Dry: 2.5-2.7 m/s range (optimal, two-adult velocity)

### Velocity Limits by Configuration and Terrain
**CVA-16 through CVA-17** (Three-adult/trio configurations):
- Rocky: 1.9-2.3 m/s range (reduced from two-adult)
- Clay-Oxalic: 1.3-1.7 m/s range (increased grip force, trio stability)
- Jungle: 1.5-2.0 m/s range (trio-adult safe velocity)
- Cavernous: 1.3-1.9 m/s range (vertical face + trio stability)
- Aquatic: 1.4-2.1 m/s range (three-adult paddling, velocity varies with load)
- Moist: 1.5-2.4 m/s range (hydro-adaptive, trio configuration)
- Dry: 2.0-2.8 m/s range (optimal, trio velocity varies with package load)

---

## 12.0 GITHUB INTEGRATION AND VERSION CONTROL

### 12.1 Branch Management for Submaster Lists
All 17 vessel type submaster documents operate within the Kilo session framework:

1. **Initial Branch Creation:** `session/agent_f73aabf5-ef4a-4165-84f2-b57ce120f839/cvc-vessel-types-v1`
2. **Document Commits:** Each vessel type (CVA-01 through CVA-17) committed as separate commits
3. **Branch Merging:** Final submaster merged to session branch after all 17 types complete
4. **Tagging:** `v1.0-cvc-vessel-types` tag on completion

### 12.2 Three-Verification Method Protocol
Every vessel type submaster document saved to GitHub branch must pass three verification methods:

**Verification Method 1: File Existence Check**
```
Command: git ls-files | grep "CVA-0[1-9]" | wc -l
Expected Result: 9 files returned (CVA-01 through CVA-09)
Purpose: Confirm all first-half vessel type documents exist in repository
```

**Verification Method 2: Content Hash Validation**
```
Command: sha256sum CVA-01.md CVA-10.md CVA-17.md > /tmp/checksums.txt
Command: cat /tmp/checksums.txt
Expected Result: 192-character hexadecimal hash string (3 files × 64 characters)
Purpose: Verify file integrity and completeness for sampled vessel types
```

**Verification Method 3: Git Log Reference**
```
Command: git log --oneline --all | grep -E "CVA-0[1-9]|CVA-1[0-7]" | wc -l
Expected Result: 17 commit messages referencing vessel type configurations
Purpose: Confirm version history and change tracking across all 17 vessel types
```

### 12.3 Parallel Document Workflow
Documents created following this sequence:

1. **Group A: CVA-01 through CVA-03** (Package configurations, single adult, first 3 created)
2. **Group B: CVA-04 through CVA-09** (Child occupancy configurations, second 6 created)
3. **Group C: CVA-10 through CVA-12** (Single-adult configurations, third 3 created)
4. **Group D: CVA-13 through CVA-15** (Two-adult configurations, fourth 3 created)
5. **Group E: CVA-16 through CVA-17** (Three-adult/trio configurations, final 2 created)

Each group verified before proceeding to next, but documents within parallel groups created concurrently.

### 12.4 Lessons Learned Integration
All vessel type testing outcomes and design iterations documented in `LessonsLearned.md` with:
- Version number incrementation per vessel type
- Successful configuration parameters documented
- Failed parameters and redesign notes
- Cross-configuration compatibility discoveries

---

**END OF CRUSTACEAN VESSEL FRAMEWORK - 17 VESSEL TYPE SUBMASTERS**

*Document generation completed: 2026-08-13T04:51:46+00:00*
*Session ID: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839*
*Branch: session/agent_f73aabf5-ef4a-4165-84f2-b57ce120f839*
*Vessel Types: 17 (CVA-01 through CVA-17)*
*Verification Required: 3-method GitHub branch validation*