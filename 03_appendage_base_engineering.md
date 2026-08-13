# CRUSTACEAN VESSEL FRAMEWORK - 160-DOCUMENT BREAKDOWN
## Group 1-20: Master Framework Extraction
### Document 3: Appendage Base Detailed Engineering

## CVC APPENDAGE BASE ENGINEERING PARAMETERS
### Document 3 of 160 — SESSION: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839

---

## 3.1 Appendage Base Solid Model Geometry

| Feature | Parameter | Value | Units | Tolerance | Functional Requirement |
|---------|-----------|-------|-------|-----------|----------------------|
| Base body diameter | D | 25.0 | mm | ±0.2 | M8 thread engagement diameter |
| Thread boss outer diameter | D_t | 22.0 | mm | ±0.1 | Structural base around M8 bore |
| M8 bore depth | H_b | 15.0 | mm | ±0.5 | Thread engagement depth (3× pitch minimum) |
| Articulation pivot outer diameter | D_p | 20.0 | mm | ±0.2 | Bearing surface for articulation |
| Articulation bushing inner diameter | d_bi | 12.0 | mm | h6 | Bushings press-fit into articulation holes |
| Articulation bushing outer diameter | d_bo | 16.0 | mm | H7 | Bushings press into appendage base |
| Articulation range vertical | θ_v | ±45.0 | degrees | ±2.0 | Full range for terrain adaptation |
| Articulation range horizontal | θ_h | ±90.0 | degrees | ±3.0 | Full range for omnidirectional movement |
| Mounting hole circle diameter | D_m | 200.0 | mm | ±1.0 | 8 holes at 45° intervals for bilateral symmetry |
| Mounting hole diameter | d_h | 9.0 | mm | ±0.3 | M8 bolt clearance holes |
| Thread boss length | L_t | 20.0 | mm | ±1.0 | Engages M8 nut on opposite side |
| Fillet radius at base edges | r_f | 3.0 | mm | ±0.5 | Stress concentration reduction |
| Overall height (with bushings) | H_total | 38.0 | mm | ±1.0 | Maximum stowed height |
| Weight (PLA, 40% infill) | W_base | 45.0 | grams | ±5.0 | Calculated per §2.3.1 |

## 3.2 Articulation Mechanism Geometry

| Feature | Parameter | Value | Units | Tolerance | Functional Requirement |
|---------|-----------|-------|-------|-----------|----------------------|
| Vertical pivot bolt diameter | d_pv | 8.0 | mm | h6 | M8×1.25 bolt through vertical pivot |
| Horizontal pivot bolt diameter | d_ph | 10.0 | mm | h6 | M8×1.25 bolt through horizontal pivot |
| Vertical pivot hole spacing | S_v | 25.0 | mm | ±0.5 | Distance between vertical pivot holes |
| Horizontal pivot hole spacing | S_h | 30.0 | mm | ±0.5 | Distance between horizontal pivot holes |
| Bearing surface length (vertical) | L_bv | 12.0 | mm | ±0.5 | Contact surface for vertical articulation |
| Bearing surface length (horizontal) | L_bh | 18.0 | mm | ±0.5 | Contact surface for horizontal articulation |
| Thrust washer thickness | t_w | 3.0 | mm | ±0.2 | Between pivot components to prevent axial load |
| Detent ball diameter | d_db | 5.0 | mm | ±0.1 | Optional detent for locked positions |
| Detent spring force | F_ds | 2.0 | N | ±0.5 | Holds appendage in selected position |
| Quick-release pin diameter | d_qr | 6.0 | mm | h6 | Single-handed release mechanism |
| Quick-release pin travel | L_qr | 15.0 | mm | ±1.0 | Distance pin must travel to release |
| Locking set screw diameter | d_ls | 6.0 | mm | ±0.2 | M6×1.0 sets appendage angle position |

## 3.3 M8 Thread Engagement Specifications

| Specification | Value | Units | Standard | Verification Method |
|--------------|-------|-------|----------|---------------------|
| Thread pitch | 1.25 | mm | ISO 965-1 | Go/no-go gauge |
| Major diameter basic | 8.000 | mm | ISO 965-1 | Micrometer measurement |
| Minor diameter basic | 6.809 | mm | ISO 965-1 | Thread micrometer |
| Pitch diameter basic | 7.443 | mm | ISO 965-1 | Three-wire method |
| Tolerance class | 6g / 6H | — | ISO 965-1 | Fit specification |
| Minor thread engagement minimum | 12.0 | mm | 3× pitch rule | Calipers |
| Recommended thread engagement | 15.0 | mm | Best practice | Calipers |
| Torque to tighten M8 nut | 25.0 | Nm | Standard | Torque wrench |
| Preload induced by 25 Nm | 10,000 | N approx | Calculation | Bolt preload equation |
| Safety factor on thread engagement | 3.0 | — | Engineering standard | F_ultimate / F_applied |

## 3.4 Articulation Kinematic Parameters

| Parameter | Value | Units | Equation | Source |
|-----------|-------|-------|----------|--------|
| Vertical articulation angular velocity | ω_v | ≤100 | °/s | Design maximum |
| Horizontal articulation angular velocity | ω_h | ≤200 | °/s | Design maximum |
| Vertical acceleration (at ω_max) | a_v | ≤500 | °/s² | ω² × θ_max |
| Horizontal acceleration (at ω_max) | a_h | ≤2000 | °/s² | ω² × θ_max |
| Dwell time at extreme positions | t_dwell | ≥50 | ms | Minimum stabilization |
| Return time from extreme | t_return | ≤200 | ms | Spring-assisted or detent |
| Articulation symmetry (left/right) | S_sym | ±5.0 | degrees | Measured left vs. right |
| Articulation symmetry (fore/aft) | S_fore | ±5.0 | degrees | Measured front vs. rear |

## 3.5 Appendage Base Load Paths

| Load Type | Direction | Components Involved | Stress Analysis |
|-----------|-----------|---------------------|-----------------|
| Gravitational | Vertical downward | Base body → mounting holes → vessel shell | FEA recommended for 3D print layer orientation |
| Articulation moment | Vertical ±45° | Pivot bushings → M8 bolts → base body | Calculate bearing stress: σ = F / (d × t) |
| Omnidirectional force | Any horizontal | All 8 appendages → vessel shell | Distributed load: F_total / 8 per appendage |
| Grip reaction force | Any direction | Grip pad → appendage base → shell | Transfer through M8 boss to mounting structure |
| Thermal moment | ΔT-induced | Entire base assembly | ΔL = α × L × ΔT (per §2.3.3); verify no binding |

## 3.5.1 Bearing Stress Calculation Example

```
Vertical articulation load: F = 100 N (maximum grip force per Master Framework §4.2)
Bearing diameter: d = 20.0 mm (pivot outer diameter)
Bearing width: t = 3.0 mm (thrust washer thickness)

Bearing stress: σ = F / (d × t) = 100 / (20.0 × 3.0) = 100 / 60 = 1.67 N/mm² = 1.67 MPa

Comparison:
- PLA ultimate strength: ~60 MPa (per §2.1)
- Safety factor: 60 / 1.67 = 36× (excellent)
- Even at 60% infill reduced load rating (per §2.3.2): 1,163 N → σ = 1.83 MPa, SF = 33×
```

## 3.6 Appendage Base Print Orientation and Supports

| Feature | Recommended Print Orientation | Support Requirement | Reason |
|---------|------------------------------|--------------------|--------|
| Base body | Vertical, flat base on build plate | None (no overhangs >45°) | Maximizes bed adhesion, layer lines parallel to mounting face |
| Thread boss | Vertical, print face-up | Light supports in threads | Ensures M8 bore accuracy; remove supports with tap/die post-print |
| Articulation pivot holes | Vertical, holes down | None if printed with proper orientation | Self-supporting holes when printed vertically; verify diameter post-drill if needed |
| Quick-release pin groove | Vertical, side-facing | Medium supports | 45° overhang; supports removable with pliers |
| Locking set screw hole | Vertical, top-facing | Light supports | 30° overhang; minimal material |

**Critical Print Orientation Note:** Appendage bases MUST be printed vertical to ensure:
1. M8 thread boss accuracy (prevents ovalization)
2. Articulation hole circularity (prevents elliptical bores)
3. Bed adhesion for large flat surface (25mm diameter base)

## 3.7 Appendage Base Dimensional Tolerance Stack-Up

| Tolerance Source | Value | Cumulative Effect |
|-----------------|-------|-------------------|
| M8 bore diameter repeatability | ±0.2 mm | Direct appendage mounting fit |
| Articulation hole diameter repeatability | ±0.15 mm | ±0.30 mm bilateral symmetry variation |
| Vertical articulation range variation | ±2.0° | ±4.0° total range variation (both appendages on one side) |
| Horizontal articulation range variation | ±3.0° | ±6.0° total range variation (both appendages on one side) |
| Mounting hole circle diameter variation | ±1.0 mm | Affects all 8 appendage positions simultaneously |
| Thread engagement variation | ±0.5 mm | Affects all M8 connections simultaneously |

**Worst-case cumulative variation:** ±1.0 + (±0.30) + (±4.0) + (±6.0) ± 0.5 = ±11.8 mm equivalent

**Statistical (RSS - Root Sum Square) variation:**
```
σ_cumulative = √(1.0² + 0.30² + 4.0² + 6.0² + 0.5²) = √(1.0 + 0.09 + 16.0 + 36.0 + 0.25) = √53.34 = 7.30 mm
```

**Statistical variation is 38% of worst-case, recommended for quality control purposes.**

## 3.8 Appendage Base Inspection Criteria

| Inspection Parameter | Acceptance Criterion | Measurement Tool |
|---------------------|---------------------|------------------|
| M8 bore diameter | 8.00–8.08 mm (6g tolerance) | Thread gauge, micrometer |
| Articulation hole diameter | 12.00–12.15 mm (h6 tolerance) | Pin gauge, caliper |
| Vertical articulation range | ≥43° to ≤47° (from nominal ±45°) | Protractor, digital angle finder |
| Horizontal articulation range | ≥87° to ≤93° (from nominal ±90°) | Protractor, digital angle finder |
| Mounting hole circle diameter | 199.0–201.0 mm | Calipers, coordinate measurement |
| Thread engagement depth | ≥12.0 mm | Depth gauge, caliper |
| Surface quality (thread boss) | No visible layer separation, ≤2μm average roughness | Visual inspection, profilometer |
| Quick-release pin fit | Snap-fit, 5–6 N insertion force | Force gauge, tactile verification |
| Locking set screw engagement | Full thread engagement, no cross-threading | Go/no-go gauge |

---

**DOCUMENT 3 OF 160: CVC APPENDAGE BASE ENGINEERING PARAMETERS**

*Document generation completed: 2026-08-13T06:28:11+00:00*
*Session ID: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839*
*Group: 1-20 (Master Framework Extraction)*
*Verification: SHA256 checksum recorded in git repository*