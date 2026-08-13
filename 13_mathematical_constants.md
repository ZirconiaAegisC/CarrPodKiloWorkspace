# CRUSTACEAN VESSEL FRAMEWORK - 160-DOCUMENT BREAKDOWN
## Group 21-40: Mathematical Models and Calculations
### Document 13: Mathematical Constants and Unit Conversions Reference

## CVC MATHEMATICAL CONSTANTS AND UNIT CONVERSIONS REFERENCE
### Document 13 of 160 — SESSION: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839

---

## 13.1 Fundamental Physical Constants

| Constant | Symbol | Value | Units | Description | Master Framework Reference |
|----------|--------|-------|-------|-------------|--------------------------|
| Gravitational acceleration | g | 9.81 | m/s² | Earth surface gravity, weight-to-force conversion | §2.3.1, §10.2 |
| Pi (circle ratio) | π | 3.14159265358979 | — | Circle circumference/diameter ratio | Implicit in geometry calculations |
| Euler's number | e | 2.71828182845905 | — | Natural logarithm base, grip force formula exponent | §11.1 |
| Avogadro's number | N_A | 6.02214076 × 10²³ | mol⁻¹ | (Included for completeness, not directly used in CVC calculations) | — |

## 13.2 Friction Coefficients

| Terrain Type | Symbol | μ_range (dry) | μ_range (wet/RH>70%) | Adhesion k | Master Framework Section |
|-------------|--------|---------------|----------------------|------------|------------------------|
| Rocky (RT) | μ_r | 0.45–0.65 | 0.30–0.50 | 0.05 | §11.2, Appendix 1.8 |
| Clay-Oxalic (CX) | μ_c | 0.20–0.35 | 0.15–0.25 | 0.10 | §11.2, Appendix 1.8 |
| Jungle (JG) | μ_j | 0.35–0.50 | 0.30–0.45 | 0.08 | §11.2, Appendix 1.8 |
| Cavernous (CR) | μ_cr | 0.50–0.60 | 0.45–0.55 | 0.04 | §11.2, Appendix 1.8 |
| Aquatic (AMD-Aqua) | μ_a | 0.30–0.40 | N/A (water submersion) | 0.02 | §11.2, Appendix 1.8 |
| Moist (AMD-Moist) | μ_m | 0.40–0.55 | 0.40–0.55 (adaptive) | 0.06 | §11.2, Appendix 1.8 |
| Dry (AMD-Dry) | μ_d | 0.55–0.70 | 0.50–0.65 | 0.03 | §11.2, Appendix 1.8 |

**μ_nominal selection rule:** Use the midpoint of the range for calculations unless otherwise specified.
- Rocky: μ = (0.45 + 0.65) / 2 = 0.55
- Clay-Oxalic: μ = (0.20 + 0.35) / 2 = 0.275 ≈ 0.30 (documented value)
- etc.

## 13.3 Terrain Engagement Efficiency Factors η_i

| Terrain Type | Symbol | η_i Value | Description |
|-------------|--------|-----------|-------------|
| Rocky (RT) | η_r | 0.92 | Standard engagement, baseline |
| Clay-Oxalic (CX) | η_c | 1.15 | Increased baseline for adhesive terrain |
| Jungle (JG) | η_j | 0.88 | Reduced to prevent foliage damage |
| Cavernous (CR) | η_cr | 0.95 | Vertical face engagement |
| Aquatic (AMD-Aqua) | η_a | 0.70 | Hydrodynamic paddling mode |
| Moist (AMD-Moist) | η_m | 0.82 | Hydro-adaptive seal engagement |
| Dry (AMD-Dry) | η_d | 0.90 | Dust-compensated grip |

**η_i selection rule:** Use the documented value for the specific terrain type. These factors adjust the load distribution equation L_i = (W_total / N_active) × η_i (Master Framework §10.4).

## 13.3.1 η_i Selection Algorithm

```
FUNCTION get_eta_i(terrain_type):
    IF terrain_type == "rocky":
        eta = 0.92
    ELSE IF terrain_type == "clay-oxalic":
        eta = 1.15
    ELSE IF terrain_type == "jungle":
        eta = 0.88
    ELSE IF terrain_type == "cavernous":
        eta = 0.95
    ELSE IF terrain_type == "aquatic":
        eta = 0.70
    ELSE IF terrain_type == "moist":
        eta = 0.82
    ELSE IF terrain_type == "dry":
        eta = 0.90
    ELSE:
        eta = 1.0  # default, unrecognized terrain
    RETURN eta
```

## 13.4 Power Consumption Coefficients

| Coefficient | Symbol | Value | Units | Description | Usage |
|-------------|--------|-------|-------|-------------|-------|
| Baseline power | P_base | 45 | W | Minimum locomotion power (idle 15W + locomotion 45W defined as 45W active) | P = P_base + ... |
| Weight coefficient | α | 0.8 | W/kg | Power increase per kg total weight | P = P_base + (α × W_total) + ... |
| Velocity coefficient | β | 0.15 | W·s²/m² | Power increase per v² | P = P_base + (α × W_total) + (β × v²) + ... |
| Terrain coefficient | γ | varies | — | Terrain-dependent multiplier | P = P_base + ... + (γ × Σκ_i) |
| Curvature coefficient | — | varies | m⁻¹ | Sum across engaged appendages | P = P_base + ... + (γ × Σκ_i) |

## 13.5 Unit Conversion Table (Comprehensive)

| From Unit | To Unit | Multiply By | Scientific Notation | Master Framework Reference |
|-----------|---------|-------------|---------------------|--------------------------|
| mm | m | 0.001 | 10⁻³ | §2.5, general conversions |
| mm | cm | 0.1 | 10⁻¹ | §2.5, general conversions |
| mm | m | 0.001 | 10⁻³ | §2.5, general conversions |
| g | kg | 0.001 | 10⁻³ | §2.5, general conversions |
| N | kgf | 0.10197 | 1.0197 × 10⁻¹ | §2.5, general conversions |
| N | lbf | 0.22481 | 2.2481 × 10⁻¹ | §2.5, general conversions |
| °C | K | +273.15 | 2.7315 × 10² | §2.5, general conversions |
| bar | Pa | 100,000 | 10⁵ | §2.5, general conversions |
| Pa | psi | 0.14504 | 1.4504 × 10⁻¹ | §2.5, general conversions |
| km/h | m/s | 0.27778 | 2.7778 × 10⁻¹ | §2.5, general conversions |
| m/s | km/h | 3.6000 | 3.6000 | §2.5, general conversions |
| kg | N | 9.80665 | 9.80665 | §2.5, general conversions + §10.2 |
| kPa | bar | 0.01 | 10⁻² | §2.5, general conversions |
| MPa | kPa | 1,000 | 10³ | §2.5, general conversions |
| mm³ | cm³ | 0.001 | 10⁻³ | §2.5, general conversions |
| L | m³ | 0.001 | 10⁻³ | §2.5, general conversions |
| kW | W | 1,000 | 10³ | §2.5, general conversions |
| W | J/s | 1 | 1 | §2.5, general conversions |

## 13.5.1 Common Conversion Scenarios

| Scenario | Calculation | Result |
|----------|-------------|--------|
| 250 mm → m | 250 × 0.001 | 0.250 m |
| 5000 g → kg | 5000 × 0.001 | 5.000 kg |
| 450 N → kgf | 450 × 0.10197 | 45.8865 kgf ≈ 45.9 kgf |
| 210 °C → K | 210 + 273.15 | 483.15 K |
| 2 bar → Pa | 2 × 100,000 | 200,000 Pa |
| 100,000 Pa → psi | 100,000 × 0.14504 | 14,504 psi ≈ 14.5 psi (wait, 100kPa = ~14.5 psi actually: 100,000 × 0.14504 = 14,504, this is in pascals... let me recalculate) |
| Actually: 1 psi = 6894.76 Pa, so 100,000 Pa = 100,000 / 6894.76 = 14.5038 psi. The conversion factor 0.14504 is wrong for Pa→psi. 0.14504 is for kPa→psi: 100 kPa × 0.14504 = 14.504 psi. Let me correct the table. |

**Corrected Pa→psi conversion:** Multiply by 0.00014504 (or divide by 6894.76)
**Corrected kPa→psi conversion:** Multiply by 0.14504

**Let me reorganize the conversion table with correct factors.**

## 13.5.2 Corrected Unit Conversion Table

| From Unit | To Unit | Multiply By | Scientific Notation | Notes |
|-----------|---------|-------------|---------------------|-------|
| mm | m | 0.001 | 10⁻³ | |
| mm | cm | 0.1 | 10⁻¹ | |
| g | kg | 0.001 | 10⁻³ | |
| N | kgf | 0.10197 | 1.0197 × 10⁻¹ | gf = kilogram-force |
| N | lbf | 0.00014504 | 1.4504 × 10⁻⁴ | 1 lbf = 4.44822 N, so 1 N = 0.22481 lbf, thus 1 N = 0.00014504 k... wait. |
| Actually: 1 N = 0.22481 lbf, so to convert N → lbf, multiply by 0.22481 |
| And: 1 kPa = 0.145038 psi, so to convert kPa → psi, multiply by 0.14504 |
| And: 1 Pa = 0.000145038 psi, so to convert Pa → psi, multiply by 0.00014504 |

**Let me reorganize by conversion type.**

**Length conversions:**
- mm → m: multiply by 0.001
- mm → cm: multiply by 0.1
- m → mm: multiply by 1000
- m → cm: multiply by 100

**Force conversions:**
- N → kgf: multiply by 0.10197
- N → lbf: multiply by 0.22481
- kgf → N: multiply by 9.80665
- lbf → N: multiply by 4.44822

**Pressure conversions:**
- kPa → psi: multiply by 0.14504
- Pa → psi: multiply by 0.00014504
- psi → kPa: multiply by 6.89476
- psi → Pa: multiply by 6894.76

**Temperature conversions:**
- °C → K: add 273.15
- K → °C: subtract 273.15
- °C → °F: (°C × 9/5) + 32
- °F → °C: (°F - 32) × 5/9

**Volume conversions:**
- L → m³: multiply by 0.001
- m³ → L: multiply by 1000
- cm³ → mL: 1:1 (equal)
- m³ → mm³: multiply by 10⁹

**Mass conversions:**
- kg → g: multiply by 1000
- g → mg: multiply by 1000
- kg → mg: multiply by 10⁶
- kg → tonnes: divide by 1000

**Force (revisited, clarity):**
- Weight W = m × g, where g = 9.81 m/s²
- 1 kgf = 9.81 N (the weight of 1 kg mass in standard gravity)
- 1 lbf = 4.44822 N
- 1 lbf = 0.453592 kgf (the weight of 1 lb mass in standard gravity)

## 13.6 Significant Figures in CVC Calculations

**Rule:** All intermediate calculations maintained to 5 significant figures; final reported values to 3 significant figures.

**Exception:** Tolerance values explicitly stated with ± notation maintain their specified precision.

**Example (CVA-01 load distribution):**
```
Step 1: W_total = 85 × 9.81 = 833.85 → maintain 833.85 (5 sig figs intermediate)
Step 2: N_active = 4 (exact)
Step 3: η_rocky = 0.92 (2 sig figs, documented)
Step 4: L_i = (833.85 / 4) × 0.92 = 208.4625 × 0.92 = 191.7855 → maintain 191.7855 (6 sig figs)
Step 5: ΣL_i = 191.7855 × 4 = 767.142 → maintain 767.142 (6 sig figs)
Step 6: Safety check: 767.142 ≤ 833.85 × 1.25 = 1,042.3125 ✓
Step 7: Report L_i = 191.8 N (3 sig figs final)
Step 8: Report ΣL_i = 767.1 N (3 sig figs final)
```

**Poor practice (rounding early):** (85 × 9.81) / 4 × 0.92 = 834 / 4 × 0.92 = 209 × 0.92 = 192.28 → 192 N
**Good practice (maintain precision):** 191.7855 → 191.8 N

*Both yield 191.8 N rounded to 3 sig figs, but the good practice maintains precision for chained calculations where subsequent steps depend on this value.*

## 13.6.1 Sig Fig Practice Table

| Calculation Stage | Sig Figs to Maintain | Reason |
|------------------|---------------------|--------|
| Initial data input | Full documented precision | No reduction at source |
| Intermediate multipliers | 5 sig figs | Prevents cascading error |
| Intermediate divisors | 5 sig figs | Prevents cascading error |
| Final result | 3 sig figs | Engineering reporting standard |
| Tolerance values | As documented | Maintain design intent |

## 13.7 Master Framework Constant Summary Table

| Category | Constant | Value | Tolerance | Document Section |
|----------|----------|-------|-----------|-----------------|
| Gravitational | g | 9.81 | ±0.01 | §2.3.1, §10.2 |
| Friction (rocky) | μ_r | 0.55 | ±0.05 | §11.2, App 1.8 |
| Friction (clay-optic) | μ_c | 0.30 | ±0.05 | §11.2, App 1.8 |
| Friction (dry) | μ_d | 0.625 | ±0.075 | §11.2, App 1.8 (midpoint of 0.55-0.70) |
| Efficiency (rocky) | η_r | 0.92 | ±0.02 | §10.4, App 1.8 |
| Efficiency (clay-optic) | η_c | 1.15 | ±0.05 | §10.4, App 1.8 |
| Efficiency (dry) | η_d | 0.90 | ±0.05 | §10.4, App 1.8 |
| Weight coefficient | α | 0.8 | ±0.1 | §12.1, §12.6 |
| Velocity coefficient | β | 0.15 | ±0.02 | §12.1, §12.4 |
| Terrain γ (rocky) | γ_r | 1.0 | exact | §12.2 |
| Terrain γ (clay-optic) | γ_c | 1.3 | ±0.1 | §12.2 |
| Terrain γ (dry) | γ_d | 1.0 | exact | §12.2 |
| Curvature per appendage | κ_typical | 0.12 | ±0.02 m⁻¹ | §12.3, test data T-01 |
| Safety factor (structural) | SF_struct | 3.0 | exact | §7.3 |
| Safety factor (grip) | SF_grip | 4.0 | exact | Master Framework mandate |
| Safety factor (stability) | SF_stab | 2.5 | exact (3→5 points) | §7.3 redundancy |

## 13.8 Computational Constants (π, e)

| Constant | Symbol | Value | To 50 Decimal Places | Usage |
|----------|--------|-------|----------------------|-------|
| Pi | π | 3.14159 26535 89793 23846 26433 83279 50288 41971 69399 37510 | 50 places | Circle calculations, segment geometry |
| Euler's number | e | 2.71828 18284 59045 23536 02874 71352 66249 77572 47093 69995 | 50 places | Grip force formula exponent e^(-k×L) |

**π (pi) applications:**
- Circle circumference: C = 2πr
- Circle area: A = πr²
- Sector area: A = (θ/360) × πr²
- Cylinder volume: V = πr²h

**e (Euler's number) applications:**
- Exponential decay: N(t) = N_0 × e^(-kt)
- Grip force formula: F_opt = (μ × N) / (1 - e^(-k×L))
- Compound interest (not directly CVC applications, included for completeness)

---

**DOCUMENT 13 OF 160: CVC MATHEMATICAL CONSTANTS AND UNIT CONVERSIONS REFERENCE**

*Document generation completed: 2026-08-13T07:45:22+00:00*
*Session ID: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839*
*Group: 21-40 (Mathematical Models and Calculations)*
*Verification: SHA256 checksum recorded in git repository*