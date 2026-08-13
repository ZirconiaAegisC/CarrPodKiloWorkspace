# CRUSTACEAN VESSEL FRAMEWORK - 160-DOCUMENT BREAKDOWN
## Group 21-40: Mathematical Models and Calculations
### Document 24: Stability Mathematics

## CVC STABILITY MATHEMATICS
### Document 24 of 160 — SESSION: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839

---

## 24.1 Stability Definition and Mathematics

**Static Stability Condition:**
```
ΣF_x = 0, ΣF_y = 0, ΣM = 0
```

**Where:**
- ΣF_x = sum of forces in x-direction (horizontal)
- ΣF_y = sum of forces in y-direction (vertical)
- ΣM = sum of moments about the center of mass

**Dynamic Stability Condition:**
```
|roll_angle| ≤ φ_max, |pitch_angle| ≤ θ_max, |yaw_deviation| ≤ ψ_max
```

**Where:**
- φ_max = maximum allowed roll angle (typically 15°)
- θ_max = maximum allowed pitch angle (typically 20°)
- ψ_max = maximum allowed yaw deviation (typically 30°)

## 24.2 Center of Mass Calculations

**Center of Mass (CoM) Position:**
```
x_com = (Σ m_i × x_i) / m_total
y_com = (Σ m_i × y_i) / m_total
z_com = (Σ m_i × z_i) / m_total
```

**Where:**
- m_i = mass of component i (kg)
- x_i, y_i, z_i = position of component i (m)
- m_total = total mass (kg)

**CoM Examples (CVA-01, Empty):**
```
m_vessel = 8.5 kg (estimated, 3D printed structure + hardware)
m_adult = 75 kg (or 0 for empty vessel)
x_i positions: vessel-centered coordinate system

Empty vessel CoM:
x_com = 0 (by definition, vessel-centered)
y_com = 0 (centerline)
z_com = 25 mm (per Master Framework geometry, vessel center of mass height)

With 1 Adult (75 kg):
x_com = (8.5 × 0 + 75 × 0) / (8.5 + 75) = 0
y_com = (8.5 × 0 + 75 × 0) / (8.5 + 75) = 0
z_com = (8.5 × 25 + 75 × 90) / (8.5 + 75) = (212.5 + 6750) / 83.5 = 6962.5 / 83.5 = 83.4 mm

*Adult positioned on vessel (z = 90 mm standing height above vessel center).
*CoM rises from 25 mm (empty) to 83.4 mm (with adult), significant change affecting stability.*
```

**CoM Shift During Gait:**
```
Δz_com = z_com(t) - z_com(rest)
```

**Example (CVA-01, during appendage articulation):**
- Appendage articulation raises/loweres CoM by ±5–15 mm depending on phase
- Stability margin must accommodate these variations
- SF_stability = N_available / 3 must remain ≥1.0 throughout gait cycle

## 24.3 Stability Safety Factor

```
SF_stab = N_available / N_minimum
```

**Where:**
- N_available = number of appendages currently engaged (≥3)
- N_minimum = 3 (minimum for stability per Master Framework mandate)

**Stability Factor by Configuration:**

| Vessel Type | N_available | N_minimum | SF_stab | Status |
|-------------|-------------|-----------|---------|--------|
| CVA-01 (4 appendages engaged) | 4 | 3 | 1.33× | ✓ Above minimum |
| CVA-03 (8 appendages engaged) | 8 | 3 | 2.67× | ✓ Good margin |
| CVA-01 (single failure, 3 engaged) | 3 | 3 | 1.0× | ✓ At minimum |
| CVA-03 (triple failure, 5 engaged) | 5 | 3 | 1.67× | ✓ Above minimum |

**Stability Maintenance During Gait:**
```
SF_stab(t) = N_active(t) / 3
```

**Where N_active(t) varies throughout the gait cycle as appendages engage/disengage.**

**Example (CVA-01, 4 appendages, gait cycle):**
```
Phase 1 (all 4 engaged): SF_stab = 4/3 = 1.33×
Phase 2 (3 engaged, 1 recovering): SF_stab = 3/3 = 1.0× (at minimum)
Phase 3 (2 engaged, 2 recovering): SF_stab = 2/3 = 0.67× ← below minimum, triggers protocol
```

**Protocol when SF_stab < 1.0:**
- Reduce velocity by 50%
- Engage standby appendages
- Alert operator: "Stability margin degraded, reducing velocity"
- If SF_stab cannot be restored, initiate safe egress

## 24.3 Rollover Threshold Calculation

**Rollover occurs when the center of mass moves beyond the stability polygon:**

```
 Rollover Condition: x_com > L_stability/2 OR y_com > W_stability/2
```

**Where:**
- L_stability = length of stability polygon (m)
- W_stability = width of stability polygon (m)

**Stability Polygon for CVC:**
- L_stability = distance between outermost appendage contact points (≈ 1.8 m)
- W_stability = width between leftmost and rightmost appendage contact points (≈ 1.2 m)

**Rollover Example (CVA-01, adult positioned):**
```
z_com = 83.4 mm (with adult, from §24.2 example)
x_com = 0 (centerline)

*Since x_com = 0 (centerline), rollover risk is determined by y_com and roll angle.*

*If vessel tilts by φ = 15° (maximum SF_stab = 1.33× threshold):*
y_com_effect = z_com × sin(φ) = 83.4 × sin(15°) = 83.4 × 0.2588 = 21.6 mm
*Stability polygon half-width: W_stability/2 = 1200/2 = 600 mm*
*y_com_effect (21.6 mm) << W_stability/2 (600 mm) → Rollover NOT triggered at φ = 15°*

*If vessel tilts by φ = 45° (extreme):*
y_com_effect = z_com × sin(45°) = 83.4 × 0.7071 = 58.8 mm
*Still y_com_effect (58.8 mm) << W_stability/2 (600 mm) → Rollover NOT triggered.*

*However, if CoM is shifted laterally (y_com ≠ 0):*
*y_com = 100 mm (adult seated offset from centerline)*
*y_com_effect at φ = 15° = 100 × sin(15°) = 100 × 0.2588 = 25.9 mm*
*y_com_effect at φ = 30° = 100 × sin(30°) = 100 × 0.5 = 50.0 mm*
*y_com_effect at φ = 45° = 100 × sin(45°) = 100 × 0.7071 = 70.7 mm*
*Still < 600 mm, but lateral CoM shift significantly reduces rollover margin.*
```

## 24.4 Yaw Stability Mathematics

**Yaw damping coefficient:**
```
c_yaw = c_0 + k × N_active
```

**Where:**
- c_yaw = yaw damping coefficient
- c_0 = base damping constant
- k = appendage contribution factor
- N_active = number of engaged appendages

**Yaw equation of motion:**
```
I_yaw × θ̈ + c_yaw × θ̇ + k_θ × θ = τ_external
```

**Where:**
- I_yaw = moment of inertia about yaw axis
- θ = yaw angle (radians)
- θ̇ = yaw angular velocity (rad/s)
- θ̈ = yaw angular acceleration (rad/s²)
- k_θ = yaw spring constant
- τ_external = external yaw torque (from wind, terrain, etc.)

**Yaw Stability Time Constant:**
```
τ_yaw = I_yaw / c_yaw
```

**Example (CVA-01, 4 appendages):**
```
c_yaw = c_0 + k × 4
τ_yaw = I_yaw / (c_0 + 4k)
*Higher N_active increases yaw damping, improving stability.*
```

## 24.4 Stability Margin Calculation

**Normalized Stability Margin:**
```
SM = (N_active - 3) / 3
```

**Where:**
- SM = stability margin (ratio)
- N_active = number of engaged appendages
- 3 = minimum required appendages

**SM Values:**

| N_available | SM = (N-3)/3 | Interpretation |
|-------------|-------------|----------------|
| 3 | 0.0× | At minimum margin |
| 4 | 0.33× | 33% margin above minimum |
| 5 | 0.67× | 67% margin above minimum |
| 5 (single failure from 8) | 0.67× | After one failure from CVA-03 |
| 8 | 1.67× | 67% margin above minimum |
| 8 (triple failure from 8) | 1.67× | After three failures from CVA-03 |

**Stability Status Classification:**

| SM Range | Classification | Action |
|----------|---------------|--------|
| SM < 0 | Critical | Immediate velocity reduction, engage standby appendages |
| 0 ≤ SM < 0.5 | Caution | Monitor, reduce velocity 25% |
| 0.5 ≤ SM < 1.0 | Good | Normal operation, maintain velocity |
| SM ≥ 1.0 | Excellent | Maximum velocity, full maneuverability |

---

**DOCUMENT 24 OF 160: CVC STABILITY MATHEMATICS**

*Document generation completed: 2026-08-13T09:35:41+00:00*
*Session ID: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839*
*Group: 21-40 (Mathematical Models and Calculations)*
*Verification: SHA256 checksum recorded in git repository*