# CRUSTACEAN VESSEL FRAMEWORK - 160-DOCUMENT BREAKDOWN
## Group: Integration and Assembly Sequence
### Document 20: Integration and Assembly Sequence

## CVC INTEGRATION AND ASSEMBLY SEQUENCE
### Document 20 of 160 — SESSION: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839

---

## 20.1 Pre-Assembly Preparation

### 20.1.1 Component Verification

**Before beginning assembly, verify all 3D printed components:**

**Mechanical Checks:**
- [ ] All 8 appendage bases: full range of motion (±45° vertical, ±90° horizontal), no binding
- [ ] M8×1.25 thread engagement: go/no-go gauge passes, 25 Nm torque verification
- [ ] Exoskeletal segments: 12 installed, length 248–252 mm, straightness ≤1.5 mm deviation
- [ ] Grip pads: 8 installed, micro-textured surface intact, Shore A 75–95 hardness
- [ ] Locking mechanisms: 8 tested, triple-lock cycle 10× (mechanical click, hydraulic pinch, electronic microswitch)
- [ ] Ballast module (2 halves): seal groove clean, 1-inch NPT thread engaging, water tightness test passed
- [ ] Package cradles (5): 4 small + 1 medium, Velcro adherence ≥50 N, rotational lock engagement
- [ ] Harness components: quick-release function single-handed, adjustment slots free-moving

**Dimensional Checks:**
- [ ] All caliper measurements within documented tolerance ranges (per individual component docs 1–19)
- [ ] Weight verification: total vessel within expected range (approx. 85–255 kg depending on config)
- [ ] Thread engagement depth: ≥12.0 mm on all M8 connections

**Electronic Checks:**
- [ ] Strain gauge array: 8 channels, calibrated, baseline forces set (record values per §12.4)
- [ ] LIDAR module: 360° horizontal scan, 120° vertical, acquisition locked, data output verified
- [ ] Telemetry system: transmitting on CAN bus 500kbps, GPS lock acquired
- [ ] Battery: charged, capacity verified for target mission duration (per §12.5)

**External Components:**
- [ ] M8×1.25 hardware (16 bolts, 16 nuts, 32 washers) clean, threads lubricated with PTFE
- [ ] 1-inch NPT fitting installed on ballast module, leak test passed
- [ ] Hydro-adaptive seal cord installed in ballast module groove, seated properly
- [ ] Quick-release buckles (4): functional, single-handed operation verified
- [ ] Strain gauge to LIDAR cabling: secure, no fraying, proper connector mating

### 20.1.2 Tool Preparation

**Required Tools:**
- Calipers (digital, 0.01 mm resolution)
- Micrometer (for diameter measurements)
- M8 tap and die set
- Torque wrench (25 Nm capacity)
- Hex/Allen wrenches (M6, M8 sizes)
- Needle-nose pliers
- X-acto knife
- Digital scale (0.1 g resolution)
- Humidity chamber (or access to controlled RH environment)
- Force gauge (for grip pad peels strength, up to 100 N)
- Multimeter (for continuity testing, strain gauge output verification)
- Clean work surface with anti-static protection

### 20.2 Assembly Sequence

#### Assembly Step 1: Appendage Base Installation

**Step 1.1:** Prepare vessel shell mounting surface
1. Clean vessel shell mounting area of debris, oil, or residual material
2. Verify mounting hole pattern matches appendage base circle diameter (200.0 ± 1.0 mm)
3. Apply PTFE-based lubricant to M8 threads if required (per §18.4.3)

**Step 1.2:** Install appendage bases (8 total)
1. Align appendage base mounting holes with vessel shell holes
2. Insert M8×30 mm carriage bolts through vessel shell into appendage base threaded bosses
3. Thread M8 nylon lock nuts onto bolts on interior side of vessel shell
4. Torque to 25 Nm using torque wrench
5. Verify each base rotates freely ±45° vertical and ±90° horizontal
6. Check articulation hole circularity (should be round, not elliptical)
7. Record baseline forces: each appendage base should allow strain gauge attachment

**Step 1.3:** Attach strain gauges (8 channels)
1. Attach 8-channel strain gauge array to appendage bases per wiring diagram
2. Route wires through internal channels (pre-planned during printing)
3. Connect strain gauge connectors to telemetry system
4. Calibrate baseline forces (zero reading, record 8-channel Newtons values)
5. Verify strain gauge output stable during static test (30 seconds, no movement)

#### Assembly Step 2: Grip Pad Installation

**Step 2.1:** Prepare grip pads
1. If TPU printed: inspect for defects, measure durometer (75–95 Shore A)
2. If PLA/PETG with elastomer coating: verify coating adhesion, no delamination
3. Clean micro-textured surface with mild soap and water, dry completely

**Step 2.2:** Install grip pads onto appendage bases
1. Snap micro-textured grip pads onto each appendage base
2. Verify hydro-adaptive seal engagement (pads should tighten at RH >70%)
3. Test grip pad release mechanism (single-handed quick-release)
4. Apply surface treatment if needed: thermal micro-texturing at 60°C for 90 seconds
   *(as per Master Framework §1.5 regeneration protocol)*

**Step 2.3:** Verify grip engagement
1. Engage all 8 grip pads
2. Test release on each individually (single-handed)
3. Verify hydro-adaptive tightening at >70% RH (use humidity chamber or controlled environment)
4. Record grip force baseline: 120 N per appendage (rocky terrain) or 180 N (clay-optic)

#### Assembly Step 3: Exoskeletal Segment Installation

**Step 3.1:** Prepare segments for installation
1. Verify all 12 exoskeletal segments within dimensional tolerances (per §19.2)
2. Clean M8 threads on both ends with tap and die
3. Apply PTFE-based lubricant to all M8 threads

**Step 3.2:** Install segments (12 total, connecting all appendage bases)
1. Connect segment 1 between appendage bases 1 and 2 (45° interval around perimeter)
2. Thread M8×1.25 connections at both ends, tighten to 25 Nm torque
3. Verify segment rotates freely through full articulation range
4. Install locking collar grooves at each joint engagement
5. Repeat for segments 2–12, connecting all 8 appendage bases into continuous ring
6. Final verification: all 12 segments installed, all 24 M8 connections at 25 Nm torque
7. Test full vessel articulation: all 8 appendages should move freely through entire range

#### Assembly Step 4: Locking Mechanism Installation

**Step 4.1:** Prepare locking mechanisms
1. Verify all 8 locking mechanisms within dimensional tolerances (per §19.5)
2. Check hydraulic stage: fill with 3.8 mL fluid (per §7.3.2)
3. Verify mechanical stage: 10.0 mm travel with audible click
4. Verify electronic stage: microswitch actuation at 40.0 mm travel, LED green

**Step 4.2:** Install locking mechanisms (8 total)
1. Install triple-lock mechanism onto each appendage base
2. Mechanical stage: engage, verify audible click at 10.0 mm travel
3. Hydraulic stage: pressurize to 150 psi (bench test recommended), verify 450N engagement force
4. Electronic stage: test microswitch continuity (multimeter, closed circuit at 40.0 mm)
5. Install release lever on lock body exterior
6. Test single-handed release/engage 3× per mechanism
7. Lubricate all moving parts with PTFE-based lubricant
8. Record baseline forces: 120 N (rocky) / 180 N (clay-optic) per appendage

#### Assembly Step 5: Ballast Module Installation

**Step 5.1:** Prepare ballast module
1. Verify both halves within dimensional tolerances (per §6.1)
2. Install 6mm diameter hydro-adaptive seal cord in seal groove on both halves
3. Clean 1-inch NPT threads, apply Teflon tape if required
4. Test water tightness: fill each half with 1L water, check for leaks after 1-hour wait

**Step 5.3:** Install ballast module
1. Position ballast module in ventral position (center of mass, per Master Framework)
2. Connect 1-inch NPT to water source for fill/empty adjustment
3. Set initial trim: level vessel when empty (water balance 50/50)
4. Test ballast transfer: shift ±1.5L, verify trim change measurement
5. Verify ballast module functional: fill/empty cycles 3×, no leaks

#### Assembly Step 6: Package Cradle Installation

**Step 5.1:** Prepare package cradles
1. Verify 4 small cradles (appendages 1–4) and 1 medium cradle (appendage 3–4 transition)
2. Apply adhesive-backed Velcro strips per cradle specifications (per §19.7)
3. Verify rotational lock tab engagement depth and rotational freedom (30° before lock)

**Step 5.2:** Install package cradles
1. Install 4 small package cradles on appendages 1–4 (M8 mounting, Velcro engagement)
2. Install 1 medium package cradle on appendages 3–4 transition (M8 mounting, rail system with rotational lock)
3. Test small package (5kg) loading/unloading via Velcro release
4. Test medium package (15kg) loading via rail system with rotational lock
5. Verify package securement: ≥2-point engagement minimum on each cradle
6. Record load test results: 5kg small package release, 15kg medium rail lock

#### Assembly Step 6: Sensory Array Installation

**Step 6.1:** Prepare sensory array
1. Verify LIDAR module operational (360° horizontal, 120° vertical)
2. Connect 8-channel strain gauge array to appendage bases
3. Calibrate sensory array: LIDAR zeroing, strain gauge baseline setup

**Step 6.2:** Install sensory array
1. Mount LIDAR module in forward position on vessel hull
2. Connect strain gauge wiring to telemetry system (CAN bus 500kbps)
3. Perform sensory array calibration: LIDAR zeroing, strain gauge baseline
4. Verify data output: transmit appendage forces, GPS coordinates, terrain classification
5. Test range detection: verify LIDAR detecting obstacles at 0.3–30m effective range

#### Assembly Step 7: Final Electrical and Mechanical Verification

**Step 7.1:** Electrical System Verification
1. Power on telemetry system
2. Verify GPS lock acquired (satellite count ≥ 6, HDOP < 2.0)
3. Verify telemetry data transmission: appendage forces, velocity, GPS coordinates
4. Test all 8 appendage force channels (stable output, no drift >2 seconds)
5. Verify GPS coordinates recorded with each telemetry data package

**Step 7.2:** Mechanical Final Verification
1. Full range of motion test: all 8 appendages across entire articulation range
2. Grip engagement test: all 8 pads engaged, release mechanism functional single-handed
3. Locking mechanism test: triple-lock cycle 10× per mechanism (mechanical click, hydraulic pinch, electronic)
4. Ballast trim final adjustment: level at rated capacity (per vessel type config per Master Framework §3.0)
5. Emergency release test: all quick-release mechanisms operated single-handed, vessel stable after release
6. Center of mass verified within specified limits per vessel type config (per Master Framework §3.0)

**Step 7.3:** System Integration Test
1. Propel vessel at 1.0 m/s on smooth surface, unloaded, for 10 meters
2. Monitor: velocity maintenance, grip engagement, appendage articulation
3. Record: telemetry data package (appendage forces, velocity, GPS)
4. Verify: minimum 3-point engagement maintained throughout
5. Propel vessel at target velocity per terrain table (CVA-01 through CVA-17 per Master Framework §3.1)
6. Monitor: velocity maintenance, grip stability, terrain adaptation
7. Record: full telemetry data package
8. Verify: pass/fail criteria per terrain test table (T-01 through T-07)

### 20.3 Post-Assembly Documentation

**Required Documentation for Each Assembled Vessel:**

```
INTEGRATION ASSEMBLY RECORD

Vessel ID: CVC-ASSEMBLY-01 (or designation per batch)
Assembly Date: YYYY-MM-DD
Assembler: [name/signature]

Component Qty and Status:
- Appendage Bases (8): [8] assembled [date], all pass inspection
- Exoskeletal Segments (12): [12] assembled [date], all pass inspection
- Locking Mechanisms (8): [8] assembled [date], triple-lock function test pass
- Ballast Module (1, 2 halves): [2] assembled [date], water tightness test pass
- Grip Pads (8): [8] assembled [date], surface OK, hydro-adaptive test pass
- Package Cradles (5): [5] assembled [date], load test pass
- Harness Components: [qty] assembled [date], fit test pass

Test Results:
- Static functional test: PASS/FAIL with notes
- Dynamic rocky terrain test (CVA-01): PASS/FAIL with notes, velocity achieved
- Grip failure stress test: PASS/FAIL with notes, failure load percentage
- Environmental durability quick-test: PASS/FAIL with notes

Calibration Data:
- Strain gauge baseline forces (8 channels, Newtons): [values]
- LIDAR calibration offset: [meters]
- Ballast trim baseline: [level position, water level]
- Grip force baseline: 120N per appendage (rocky) / 180N (clay-optic)

Final Status: CERTIFIED / CONDITIONAL / REJECTED
Certification Date: YYYY-MM-DD
Certified By: [operator name/signature]

Notes: [any observations, redesign notes, lessons learned for next assembly run]
```

### 20.4 Assembly Quality Gates

**Must Pass Before Vessel Release:**
- [ ] All 8 appendages move freely through full range of motion
- [ ] Grip pads engaged on all appendages, release mechanism functional
- [ ] Exoskeletal shell complete, 12 segments installed, locking collars tightened
- [ ] Ballast module functional, 2L transfer verified, no leaks
- [ ] Package cradles functional, small/medium load test passed (5kg/15kg)
- [ ] Sensory array installed, LIDAR scanning, strain gauges calibrated
- [ ] Emergency release mechanisms all functional single-handed
- [ ] Telemetry system active, GPS lock acquired, data transmitting
- [ ] Center of mass within specified limits per vessel type config
- [ ] All three-verification methods passed (file existence, content hash, git log)

**Vessel Release Decision:**
- ALL checks pass → **CERTIFIED** for operational deployment
- SOME checks fail → **CONDITIONAL** (specify failed items, corrective actions required)
- MAJOR checks fail → **REJECTED** (disassemble, re-fabricate/re-print components)

---

**DOCUMENT 20 OF 160: CVC INTEGRATION AND ASSEMBLY SEQUENCE**

*Document generation completed: 2026-08-13T08:55:07+00:00*
*Session ID: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839*
*Group: Integration and Assembly Sequence*
*Verification: SHA256 checksum recorded in git repository*