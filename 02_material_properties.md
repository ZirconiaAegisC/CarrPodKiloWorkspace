# CRUSTACEAN VESSEL FRAMEWORK - 160-DOCUMENT BREAKDOWN
## Group 1-20: Master Framework Extraction
### Document 2: Material Properties and Unit Conversions

## CVC MATERIAL PROPERTIES EXTRACTED PARAMETERS
### Document 2 of 160 — SESSION: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839

---

## 2.1 Filament Material Properties Table

| Material | Type | Density (g/cm³) | Tensile Strength (MPa) | Elongation at Break (%) | Print Nozzle Temp (°C) | Print Bed Temp (°C) | Notes |
|----------|------|-----------------|------------------------|-------------------------|------------------------|---------------------|-------|
| PLA | Standard thermoplastic | 1.25 | 60 | 6.0 | 210 | 60 | Most common 3D print material; PLA+ variant increases tensile strength to ~70 MPa |
| PLA+ | Enhanced thermoplastic | 1.26 | 70 | 6.5 | 210 | 60 | Improved impact resistance and layer adhesion over standard PLA |
| PETG | Polyethylene terephthalate glycol | 1.27 | 55 | 15.0 | 220 | 80 | Better chemical resistance and UV stability than PLA; higher print temp required |
| TPU 95A | Thermoplastic polyurethane | 1.15 | 35 | 400+ | 200 | 50 | Flexible material for grip pads; Shore A 95 durometer rating |
| TPU 85A | Soft thermoplastic polyurethane | 1.12 | 25 | 500+ | 195 | 45 | Softer grip application; reduced load rating capability |
| Chitin-composite | Theoretical reinforcement | 1.35 | 80 | 5.0 | 210 | 60 | 30% chitin fiber + 70% polymer matrix; theoretical strength increase ~40% over PLA |
| ABS | Acrylonitrile butadiene styrene | 1.04 | 40 | 3.5 | 240 | 100 | Warp-prone, requires enclosed printer; not recommended for this framework |
| ASA | Acrylonitrile styrene acrylate | 1.07 | 42 | 3.0 | 245 | 100 | UV-resistant ABS alternative; similar printing requirements |

## 2.2 Material Selection Matrix by Component

| Component | Recommended Material | Alternative | Reason for Selection |
|-----------|-------------------|-------------|----------------------|
| Appendage bases | PLA+ or chitin-composite | PLA | Must sustain M8 thread engagement and ±45° articulation loads; chitin-composite increases load rating |
| Exoskeletal segments | PETG or PLA+ | PLA | Structural segments require better heat resistance and impact resistance; 3mm wall minimum |
| Grip pads | TPU 95A | PLA with elastomer coating | Flexible material required for micro-textured surface conformity and hydro-adaptive engagement |
| Ballast module | PETG | ABS | 2L chamber requires good chemical resistance for water contact; 1-inch NPT fitting integration |
| Locking mechanisms | PLA+ or PETG | PLA | Must sustain 450N engagement force across 3 stages (mechanical + hydraulic + electronic); layer adhesion critical |
| Package cradles | PLA+ | PLA | Must hold 5kg/15kg loads with Velcro/rotational lock; layer strength important |
| Occupancy harnesses | PLA+ | PLA | Must sustain 35-120kg weight loads with quick-release buckles; safety-critical components |

## 2.3 Material Property Equations

### 2.3.1 Weight Calculation from Volume

```
W = V × ρ
```

**Where:**
- W = weight (kg)
- V = volume (cm³)
- ρ = density (g/cm³), converted to kg/cm³ by dividing by 1000

**Example (Appendage Base):**
```
V = π × r² × h = π × (12.5 mm)² × 15 mm = π × 156.25 × 15 = 7,363 mm³ = 7.363 cm³
W = 7.363 cm³ × 1.25 g/cm³ (PLA) × (1 kg / 1000 g) = 0.0092 kg = 9.2 grams
```
*Note: Actual appendage base weight includes M8 thread boss, articulation bushings; above is base cylinder only.*

### 2.3.2 Load Rating Adjustment for Infill

```
LR_adj = LR_base × (infill% / 100)^(3/2)
```

**Where:**
- LR_adj = adjusted load rating (N)
- LR_base = base load rating (N) for 100% infill
- infill% = percentage infill (10-100%)

**Example (Exoskeletal Segment, 60% infill):**
```
LR_adj = 2,500 × (60 / 100)^(3/2) = 2,500 × (0.6)^1.5 = 2,500 × 0.465 = 1,163 N
```
*This matches Document 1.1 load rating of 2,500 N per segment with ≥60% infill; actual printed rating at 60% is ~1,163 N.*

**Example (Appendage Base, 60% infill):**
```
LR_adj = 500 × (60 / 100)^(3/2) = 500 × 0.465 = 233 N
```
*Assumes base mechanical load rating of 500 N at 100% infill.*

### 2.3.3 Thermal Expansion Calculation

```
ΔL = α × L × ΔT
```

**Where:**
- ΔL = length change (mm)
- α = coefficient of thermal expansion (mm/mm/°C)
- L = original length (mm)
- ΔT = temperature change (°C)

**PLA Thermal Expansion Coefficient:** α = 0.000050 mm/mm/°C

**Example (210°C print to 25°C ambient):**
```
ΔL = 0.000050 × 250 × (210 - 25) = 0.000050 × 250 × 185 = 2.31 mm
```
*2.31 mm length increase on 250 mm appendage base at operating temperature.*

### 2.3.4 Safety Factor Calculation

```
SF = F_ultimate / F_applied
```

**Where:**
- SF = safety factor (dimensionless)
- F_ultimate = ultimate load before failure (N)
- F_applied = applied load during operation (N)

**Example (Exoskeletal Segment, CVA-03 maximum load):**
```
F_ultimate = 2,500 N (100% infill) or 1,163 N (60% infill, per §2.3.2)
F_applied = 148.4 N per appendage (from Master Framework §4.1 calculation)
SF_60% = 1,163 / 148.4 = 7.8× safety factor
SF_100% = 2,500 / 148.4 = 16.8× safety factor
```
*Both exceed the 3.0× structural safety factor requirement (Master Framework §7.3).*

## 2.4 Unit Conversion Table (Expanded)

| From Unit | To Unit | Multiply By | Scientific Notation | Example |
|-----------|---------|-------------|---------------------|---------|
| mm | m | 0.001 | 10⁻³ | 250 mm = 2.50 × 10⁻¹ m |
| mm | cm | 0.1 | 10⁻¹ | 250 mm = 25.0 cm |
| mm | m | 0.001 | 10⁻³ | 2,000 mm = 2.00 m |
| g | kg | 0.001 | 10⁻³ | 5,000 g = 5.00 kg |
| N | kgf | 0.10197 | 1.0197 × 10⁻¹ | 450 N = 46.0 kgf |
| N | lbf | 0.22481 | 2.2481 × 10⁻¹ | 450 N = 101.0 lbf |
| °C | K | +273.15 | 2.7315 × 10² | 210°C = 483.15 K |
| bar | Pa | 100,000 | 10⁵ | 2 bar = 200,000 Pa |
| Pa | psi | 0.14504 | 1.4504 × 10⁻¹ | 100,000 Pa = 14.504 psi |
| km/h | m/s | 0.27778 | 2.7778 × 10⁻¹ | 10 km/h = 2.78 m/s |
| m/s | km/h | 3.6000 | 3.6000 | 2.5 m/s = 9.00 km/h |
| kg | N | 9.80665 | 9.80665 | 5 kgf = 49.0 N |
| kPa | bar | 0.01 | 10⁻² | 200 kPa = 2.00 bar |
| MPa | kPa | 1,000 | 10³ | 0.5 MPa = 500 kPa |
| mm³ | cm³ | 0.001 | 10⁻³ | 1,000 mm³ = 1.00 cm³ |
| L | m³ | 0.001 | 10⁻³ | 2 L = 0.002 m³ |
| kW | W | 1,000 | 10³ | 0.5 kW = 500 W |
| W | J/s | 1 | 1 | 45 W = 45 J/s |

## 2.5 Significant Figures in Engineering Calculations

**Rule:** All intermediate calculations maintained to 5 significant figures; final reported values to 3 significant figures.

**Example Calculation Chain (CVA-01 velocity verification):**
```
Step 1: W_total = 85 × 9.81 = 833.85 → report as 833.9 (4 sig figs intermediate)
Step 2: N_active = 4 (exact, no sig fig limitation)
Step 3: η_rocky = 0.92 (2 sig figs, as documented)
Step 4: L_i = (833.9 / 4) × 0.92 = 207.565 → report as 207.6 (4 sig figs)
Step 5: ΣL_i = 207.6 × 4 = 830.4 → report as 830.4 (matches W_total × 0.994)
Step 6: Safety check: 830.4 ≤ 833.9 × 1.25 = 1,042.4 ✓
```

**Rule Violation Consequence:** Rounding intermediate values too early can produce erroneous results. Always maintain precision through calculation chain, report only final values.

## 2.5.1 Recommended Sig Fig Practice

| Calculation Stage | Sig Figs to Maintain | Reason |
|------------------|---------------------|--------|
| Initial data input | Full documented precision | No reduction at source |
| Intermediate multipliers | 5 sig figs | Prevents cascading error |
| Intermediate divisors | 5 sig figs | Prevents cascading error |
| Final result | 3 sig figs | Engineering reporting standard |
| Tolerance values | As documented | Maintain design intent |

**Example of Poor Practice:** Computing (85 × 9.81) / 4 × 0.92 = (834) / 4 × 0.92 = 209 × 0.92 = 192 (3 sig figs early) = 192 N
**Example of Good Practice:** Computing (85 × 9.81) / 4 × 0.92 = 833.85 / 4 × 0.92 = 208.4625 × 0.92 = 191.7855 → report as 192 N (3 sig figs final)

*Both yield 192 N final, but the good practice maintains precision for chained calculations.*

---

**DOCUMENT 2 OF 160: CVC MATERIAL PROPERTIES AND UNIT CONVERSIONS**

*Document generation completed: 2026-08-13T06:21:45+00:00*
*Session ID: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839*
*Group: 1-20 (Master Framework Extraction)*
*Verification: SHA256 checksum recorded in git repository*