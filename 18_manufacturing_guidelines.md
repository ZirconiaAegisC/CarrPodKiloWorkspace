# CRUSTACEAN VESSEL FRAMEWORK - 160-DOCUMENT BREAKDOWN
## Group: Manufacturing Guidelines and Best Practices
### Document 18: Manufacturing Guidelines and Best Practices

## CVC MANUFACTURING GUIDELINES AND BEST PRACTICES
### Document 18 of 160 — SESSION: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839

---

## 18.1 Printer Setup and Calibration

### 18.1.1 Bed Leveling Procedure

**Step 1: Homing**
1. Home all axes (X, Y, Z)
2. Bring nozzle to center of build plate
3. Disable steppers (M18 for RepRap/Firmware)

**Step 2: Paper Method**
1. Place standard printer paper (0.1mm thickness) at each corner and center
2. Lower nozzle until paper feels slight friction
3. Note: "slight drag" is the target—not crushing the paper, not having it slide freely
4. Repeat at all 5 points (4 corners + center)

**Step 3: Bed Temperature Soak**
1. Bring bed to operating temperature (60°C for PLA, 80°C for PETG)
2. Hold for 10 minutes to stabilize thermal expansion
3. Re-level while at temperature (bed expansion affects levelness)

**Step 4: Verification**
1. Print first layer test cube (20×20×3mm)
2. Examine bottom layer: should be squished slightly, not gapped or elephant's foot
3. Adjust if necessary (Z-offset adjustment)

### 18.1.2 Nozzle Calibration

**Step 1: Extrusion Multiplier Calibration**
1. Mark filament 100mm from extruder entrance
2. Extrude exactly 100mm of filament (E-steps calibrated)
3. Measure actual extruded distance
4. Calculate extrusion multiplier: 100 / actual_distance
5. Adjust slicer extrusion multiplier accordingly

**Step 2: Temperature Tower**
1. Print temperature tower test model (typically 5 temperature zones)
2. Evaluate layer adhesion, surface quality, dimensional accuracy
3. Select optimal temperature for filament/material combination

**Step 3: Flow Rate Calibration**
1. Print 20mm × 20mm × 3.0mm cubic test part
2. Measure actual dimensions (should be 20.0 ± 0.2 mm)
3. Adjust flow/ extrusion multiplier if dimensions deviate significantly

### 18.1.2 Z-Offset Settings by Component

| Component | Z-offset | Rationale |
|-----------|----------|-----------|
| Appendage bases | 0.0 mm | Base printed flat; first layer adhesion critical |
| Exoskeletal segments | 0.0 mm | Cylindrical print, vertical orientation |
| Grip pads | 0.0 mm | Flat on bed, texture face up |
| Ballast module halves | 0.0 mm | Flat on bed, convex side up |
| Locking mechanisms | 0.5 mm | Slight Z-lift to avoid nozzle collision with moving parts |
| Package cradles | 0.0 mm | Flat on bed, open face up |
| Harness components | 0.0 mm | Flat strap sections, no overhangs |

### 18.2 Print Orientation Best Practices

| Part Category | Recommended Orientation | Why |
|--------------|----------------------|-----|
| Appendage bases | Vertical, articulation axis horizontal | Layer lines perpendicular to articulation forces; prevents delamination during movement |
| Exoskeletal segments | Vertical, long axis vertical | Layer lines circumferential = hoop strength direction; maximizes load distribution |
| Grip pads | Flat on bed, texture face up | Maximizes bed adhesion; texture face prints perfectly without supports |
| Ballast module halves | Flat on bed | Large flat surfaces print without supports; halves snap together with seal cord |
| Locking mechanisms | Vertical, moving parts face up | Allows moving parts (pins, levers) to print without support interference |
| Package cradles | Horizontal, load face up | Load distribution face prints flat; Velcro channels print without supports |
| Harness components | Flat or segmented | Webbing channels print without binding; quick-release buttons function reliably |

**Support Minimization Rules:**
1. Orient parts to minimize overhangs >45° from vertical
2. Use 15°-30° overhang angles where possible
3. Print grip pads texture-up to eliminate supports entirely
4. Print ballast module in two halves to eliminate internal supports
5. Print locking mechanisms vertical to enable free movement of pins/levers

### 18.3 Material Handling and Storage

| Material | Storage Conditions | Shelf Life | Drying Requirements |
|----------|-------------------|------------|---------------------|
| PLA | Airtight container, room temperature, away from UV | 6-12 months | Not typically required; minimal moisture absorption |
| PLA+ | Airtight container, room temperature | 6-12 months | Optional: 1-hour dry at 50°C if exposed >1 month |
| PETG | Airtight container, room temperature | 12-18 months | Optional: 1-hour dry at 60°C if exposed >3 months |
| TPU 95A | Airtight container, room temperature, avoid oils | 6-12 months | Not typically required |
| Chitin-composite (theoretical) | Airtight, desiccant-protected | 6-12 months | Unknown; assume similar to PLA |

**Moisture Detection Symptoms:**
- Popping or hissing sounds during extrusion
- Surface roughness or micro-bubbles in printed parts
- Reduced mechanical properties (lower tensile strength, increased brittleness)
- Poor layer adhesion

**Drying Procedure (if moisture detected):**
1. Place filament in food-grade dryer or oven
2. Temperature: 50°C for PLA, 60°C for PETG, 45°C for TPU
3. Duration: 4-6 hours for moderate moisture, 12+ hours for severely moist filament
4. Cool in airtight container before use

### 18.4 Post-Processing Best Practices

#### 18.4.1 Support Removal
- Use sharp X-acto knife for clean breaks
- Pliers for stubborn supports
- Sandpaper 200-400 grit for smooth finish
- Never use excessive force that may crack or deform thin features

#### 18.4.2 Thread Cleaning
- Use M8 tap and die to clean both male and female threads
- Verify 25 Nm torque engagement after cleaning
- Apply PTFE-based lubricant to threads post-cleaning
- Recommended frequency: every 50 hours of operation or monthly

#### 18.4.3 Grip Pad Surface Maintenance
- If PLA/PETG grip pads: re-apply 8A Shore A elastomer coating when wear exceeds 2mm
- If TPU grip pads: inspect for tears or deformation; replace if durometer drops >10 Shore A points
- Clean with mild soap and water; avoid harsh solvents
- Thermal micro-texturing regeneration: 60°C for 90 seconds (as per Master Framework §1.5)

#### 18.4.4 Seal and Fitting Inspection
- Inspect ballast module seal groove for debris or damage every 50 hours
- Verify 1-inch NPT fitting integrity; reseal with Teflon tape if needed
- Check hydro-adaptive seal cord for hardening or cracking; replace if compromised
- Inspect all M8 threaded connections for loosening; retorque to 25 Nm if needed

#### 18.4.5 Electronics Protection
- Verify LIDAR module housing seal integrity
- Check strain gauge wire connections for fraying or damage
- Ensure all electrical connectors are secure and corrosion-free
- Apply dielectric grease to connectors exposed to moisture

### 18.5 Quality Assurance Checklist

**Pre-Print:**
- [ ] Bed leveled and verified (paper method)
- [ ] Nozzle calibrated (extrusion multiplier, temperature)
- [ ] Filament dry (moisture content checked)
- [ ] Slicer settings verified (infill, layer height, speed, orientation)
- [ ] Model sliced and previewed for errors (supports, overhangs)

#### During Print:
- [ ] First layer adhesion verified (initial 10 layers)
- [ ] No filament run-out (or sensor equipped to pause)
- [ ] No major layer shifts or adhesion failures
- [ ] Print progressing as expected (no unusual noises or vibrations)

#### Post-Print:
- [ ] All components removed from build plate
- [ ] Support structures removed cleanly
- [ ] Threads cleaned and verified (M8 × 1.25 go/no-go)
- [ ] Dimensional verification (calipers at 3 critical points per component)
- [ ] Functional test (appendage rotation, grip engagement, lock mechanism cycling)
- [ ] Weight verification (scale, compare to documented component weights)
- [ ] Final inspection (visual check for defects, layer separation, cracks)

### 18.5.1 First Print Acceptance Criteria

**Mechanical Verification:**
- [ ] All 8 appendages full range of motion verified (no binding, ≤2mm play at joints)
- [ ] M8×1.25 thread engagement verified (go/no-go gauge, 25 Nm torque)
- [ ] Grip pad engagement tested (snap-fit, hydro-adaptive tightening at >70% RH)
- [ ] Locking mechanism triple-lock function tested (mechanical click, hydraulic pinch, electronic microswitch)
- [ ] Ballast module fill/empty operation verified (1-inch NPT, no leaks at 2 bar)
- [ ] Package cradle load test: 5kg small package Velcro release, 15kg medium rail rotational lock
- [ ] All quick-release mechanisms functional single-handed (emergency protocol)

**Structural Verification:**
- [ ] Exoskeletal segment joints verified (no cracking at layer lines, 3D print integrity)
- [ ] Appendage base-to-segment connections verified (M8 torque, no loosening after 10 cycles)
- [ ] Ballast module seam verified (2 halves bonded/sealed, no water leakage)
- [ ] Print layer orientation verified (per §18.2 guidelines, structural integrity maintained)

**Electronic Verification:**
- [ ] Strain gauge array calibrated (8 channels, zeroed, baseline forces set)
- [ ] LIDAR module operational (360° horizontal scan, 120° vertical, acquisition locked)
- [ ] Telemetry system transmitting (CAN bus 500kbps, GPS lock acquired)
- [ ] Sensory array data output verified (appendage forces GPS-coordinated, terrain classification)

**Safety Verification:**
- [ ] Minimum 3-point grip engagement confirmed (3 of 8 appendages engaged, force ≥120N each on rocky)
- [ ] Grip failure protocol tested (simulate single appendage failure, verify load redistribution)
- [ ] Emergency release test: all quick-release mechanisms operated, vessel stable after release
- [ ] Center of mass verified (within specified limits per vessel type config, per Section 3.0)

**Final Acceptance:** All above checks pass → **CERTIFIED** for operational deployment

---

**DOCUMENT 18 OF 160: CVC MANUFACTURING GUIDELINES AND BEST PRACTICES**

*Document generation completed: 2026-08-13T08:35:22+00:00*
*Session ID: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839*
*Group: Manufacturing Guidelines and Best Practices*
*Verification: SHA256 checksum recorded in git repository*