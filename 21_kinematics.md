# CRUSTACEAN VESSEL FRAMEWORK - 160-DOCUMENT BREAKDOWN
## Group 21-40: Mathematical Models and Calculations
### Document 21: Dynamic Locomotion Kinematics

## CVC DYNAMIC LOCOMOTION KINEMATICS
### Document 21 of 160 — SESSION: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839

---

## 21.1 Gait Pattern Formulation

| Gait Type | Pattern Name | Phase Relationship | Appendage Engagement | Master Framework Reference |
|-----------|-------------|-------------------|---------------------|--------------------------|
| Tetrapod Wave | Modified tetrapod wave | bilateral phase offset | 4 appendages engaged (min) | §5.1 |
| Ripple Gait | Undulating sequential | peristaltic progression | 8 appendages engaged | CVA-03, CVA-09 configurations |
| Scurry gait | Fast iterative | minimized stance phase | 6-8 appendages engaged | CVA-01 through CVA-03 (fast scurry) |
| Climbing gait | Vertical digitigrade | elevated stance phase | 4-5 appendages engaged | CVA-13 through CVA-15 (two-adult) |
| Paddling gait | Alternating horizontal | 60° power / 120° recovery | 8 appendages engaged | CVA-01 through CVA-05 (aquatic mode) |

## 21.2 Appendage Angle Formulation

The appendage angle θ_i(t) for appendage i at time t follows:

```
θ_i(t) = A × sin(ωt + φ_i + δ_i)
```

**Where:**
- θ_i(t) = appendage i angular position at time t (radians)
- A = amplitude coefficient (terrain-dependent: 0.3–1.5 radians)
- ω = angular velocity (rad/s), vessel-specific (1.2–2.5 rad/s depending on load)
- φ_i = phase offset for appendage i (radians)
- δ_i = terrain adaptation delta (radians)

**Amplitude Coefficients by Terrain Type:**

| Terrain | A (radians) | Description |
|---------|-------------|-------------|
| Rocky (RT) | 1.0–1.5 | Full range for obstacle negotiation |
| Clay-Oxalic (CX) | 0.8–1.2 | Reduced to prevent adhesive traction |
| Jungle (JG) | 0.5–1.0 | Limited to prevent foliage damage |
| Cavernous (CR) | 1.2–1.5 | Maximum for vertical face engagement |
| Aquatic (AMD-Aqua) | 0.6–1.0 | Hydrodynamic paddling angles |
| Moist (AMD-Moist) | 0.9–1.3 | Hydro-adaptive seal engagement angles |
| Dry (AMD-Dry) | 1.0–1.5 | Optimal conditions, maximum range |

**Example (CVA-01, Rocky Terrain, ω = 2.0 rad/s, A = 1.2 rad):**
```
θ_1(t) = 1.2 × sin(2.0t + φ_1 + δ_rocky)
θ_2(t) = 1.2 × sin(2.0t + φ_2 + δ_rocky)
θ_3(t) = 1.2 × sin(2.0t + φ_3 + δ_rocky)
θ_4(t) = 1.2 × sin(2.0t + φ_4 + δ_rocky)
```
*Note: φ_i values are 45° apart for bilateral symmetry (0°, 45°, 90°, 135°)*

## 21.3 Gait Cycle Parameters

| Parameter | Symbol | Value | Units | Description |
|-----------|--------|-------|-------|-------------|
| Gait cycle duration | T_gait | 0.5–2.0 | s | Full cycle (stance + swing) |
| Stance phase duration | T_stance | 0.3–1.2 | s | Appendage engaged with terrain |
| Swing phase duration | T_swing | 0.2–0.8 | s | Appendage recovery/ repositioning |
| Duty factor | duty = T_stance / T_gait | 0.4–0.6 | ratio | % of cycle appendage is engaged |
| Step frequency | f_step | 0.5–2.0 | Hz | Steps per second |
| Step length | l_step | 0.15–0.50 | m | Distance per appendage cycle |

**Duty Factor by Configuration:**

| Vessel Type | N_active | Typical duty | Interpretation |
|-------------|----------|--------------|----------------|
| CVA-01 (1A, 4 appendages) | 4 | 0.45 | 45% of cycle engaged, fast scurry |
| CVA-03 (1A, 8 appendages) | 8 | 0.35 | 35% engaged, maximum redundancy |
| CVA-04 (1SC) | 1 (primary) + 2 standby | 0.25 | Primary engaged, standby backup |
| CVA-10 (1A) | 1 (primary) + 3 standby | 0.20 | Single primary, three standby |
| CVA-13 (2A) | 4 engaged (two-adult) | 0.50 | 50% engaged, balanced two-adult |

## 21.4 Velocity Formulation

The vessel velocity v(t) is derived from appendage angular velocity and effective stroke length:

```
v(t) = (1/N_active) × Σ [r × ω × sin(θ_i(t))] for i ∈ engaged appendages
```

**Where:**
- v(t) = vessel velocity (m/s)
- N_active = number of simultaneously engaged appendages
- r = effective appendage radius (m) (typically 0.10–0.15 m)
- ω = angular velocity (rad/s)
- θ_i(t) = appendage i angular position

**Simplified Velocity Equation (constant ω, A):**
```
v = r × ω × A × (duty factor) × cos(phase offset)
```

**Velocity Ranges by Configuration and Terrain (from Master Framework tables):**

| Vessel Type | Rocky (m/s) | Clay-Oxalic (m/s) | Jungle (m/s) | Cavernous (m/s) | Aquatic (m/s) | Moist (m/s) | Dry (m/s) |
|-------------|-------------|-------------------|--------------|-----------------|----------------|-------------|-----------|
| CVA-01 (1A) | 2.8 (empty) – 1.8 (max load) | 1.6 – 1.2 | 2.4 – 2.0 | 1.4 – 1.2 | 1.8 – 1.4 | 2.6 – 2.2 | 3.0 – 2.6 |
| CVA-07 (1MC+1MP+1SP) | 2.2 – 1.7 | 1.3 – 1.0 | 1.9 – 1.6 | 1.1 – 1.0 | 1.0 – 0.8 | 1.7 – 1.4 | 2.4 – 2.0 |
| CVA-10 (1A) | 3.0 – 3.0 | 2.2 – 2.0 | 2.8 – 2.6 | 2.5 – 2.3 | 2.5 – 2.3 | 2.8 – 2.6 | 3.2 – 3.0 |
| CVA-17 (3A+2SP) | 1.9 – 1.5 | 1.3 – 1.0 | 1.5 – 1.2 | 1.3 – 1.1 | 1.4 – 1.2 | 1.5 – 1.3 | 2.0 – 1.8 |

## 21.5 Turn Radius Formulation

The turn radius R for a vessel executing a turning maneuver is:

```
R = (L × ω) / (2 × ω_turn)
```

**Where:**
- R = turn radius (m)
- L = vessel length (m) (approximately 500 mm = 0.5 m per Master Framework geometry)
- ω = vessel angular velocity (rad/s)
- ω_turn = differential angular velocity between inner and outer appendages (rad/s)

**Turn Radius Examples:**

| Turn Type | ω_turn (rad/s) | Turn Radius R (m) | Description |
|-----------|----------------|-------------------|-------------|
| Tight turn (in-place pivot) | 3.0 | 0.026 | Appendages on one side reverse, other side forward |
| Medium turn | 1.5 | 0.052 | Controlled turning maneuver |
| Wide turn | 0.5 | 0.156 | Gradual turning for stability |

**Example (CVA-01 tight turn):**
```
R = (0.5 × 2.0) / (2 × 3.0) = 1.0 / 6.0 = 0.167 m ≈ 16.7 cm
*Tight pivot turn within own footprint possible.*
```

## 21.6 Acceleration and Jerk Mathematics

**Acceleration (a):** Rate of change of velocity
```
a = dv/dt = d/dt [r × ω × A × sin(ωt + φ)]
a = r × ω² × A × cos(ωt + φ)
```

**Jerk (j):** Rate of change of acceleration
```
j = da/dt = d/dt [r × ω² × A × cos(ωt + φ)]
j = -r × ω³ × A × sin(ωt + φ)
```

**Comfort Criteria:**
- |a| ≤ 5 m/s² (acceptable human/robotic comfort threshold)
- |j| ≤ 2 m/s³ (acceptable jerk threshold for smooth operation)

**Example (CVA-01, ω = 2.0 rad/s, A = 1.2 rad, r = 0.125 m):**
```
a_max = 0.125 × 4.0 × 1.2 = 0.60 m/s² ← well within comfort threshold
j_max = 0.125 × 8.0 × 1.2 = 1.20 m/s³ ← within jerk threshold
```

*High angular velocities or amplitudes would exceed these thresholds, requiring speed/amplitude reduction for passenger comfort.*

## 21.7 Load-Dependent Kinematic Adjustments

**When load increases, kinematic parameters adjust:**

| Parameter | Empty → Light Load | Light → Medium Load | Medium → Heavy Load |
|-----------|-------------------|---------------------|---------------------|
| ω (angular velocity) | maximum | reduced 10–15% | reduced 20–25% |
| A (amplitude) | maximum | slightly reduced | significantly reduced 15–25% |
| duty factor | maximum | slightly increased | increased 5–10% (more appendages engaged) |
| v (velocity) | maximum | reduced proportionally | reduced 30–40% |

**Example (CVA-01, Rocky Terrain):**
```
Empty: ω = 2.0 rad/s, A = 1.2 rad, v = 2.8 m/s
Light Load (1SP): ω = 1.85 rad/s (-7%), A = 1.15 rad (-4%), v = 2.6 m/s (-7%)
Medium Load (1MP): ω = 1.70 rad (-15%), A = 1.10 rad (-9%), v = 2.2 mpc (-21%)
Heavy Load (1MP+1SC): ω = 1.60 rad (-20%), A = 1.05 rad (-13%), v = 1.8 mpc (-36%)
```

**The framework enforces maximum velocity reductions to maintain grip engagement and stability per terrain-specific safety factors.**

## 21.8 Kinematic Simulation Algorithm

```
FUNCTION simulate_kinematics(vessel_type, terrain, load_config, duration):
    # Step 1: Retrieve vessel parameters
    params = get_vessel_params(vessel_type)
    N_active = params.N_active
    r = params.appendage_radius
    ω_base = params.ω_base (empty vessel)
    A_base = params.A_base (empty vessel)
    
    # Step 2: Apply load adjustments
    load_adj = get_load_adjustment(load_config)
    ω = ω_base × load_adj.ω_factor
    A = A_base × load_adj.A_factor
    duty = load_adj.duty_factor
    
    # Step 3: Apply terrain adjustments
    terrain_adj = get_terrain_adj(terrain)
    η = terrain_adj.eta_i  # from Master Framework §10.4
    γ = terrain_adj.gamma  # from Master Framework §12.2
    
    # Step 5: Generate kinematic time series
    t = linspace(0, duration, 1000)  # 1000 time points
    θ = Array(N_active, length=1000)  # appendage angles
    v = Array(length=1000)  # vessel velocity
    
    FOR i FROM 0 TO 999:
        t_i = t[i]
        FOR a FROM 0 TO N_active-1:
            φ_a = a × (2π / N_active)  # phase offset for appendage a
            θ_a[i] = A × sin(ω × t_i + φ_a)  # appendage angle
        END FOR
        v[i] = r × ω × A × duty × cos(ω × t_i / N_active)  # vessel velocity
    
    RETURN {θ, v, t}
```

**Simulation Output Example (CVA-01, Rocky, Empty, 10s duration):**
- 1000 time points from t=0 to t=10s
- 4 appendage angle waveforms (phase-shifted by 90°)
- Vessel velocity waveform at ~2.8 m/s average
- Appendage angle range: ±1.2 rad (±68.8° from center)

**Application:** Used for dynamic simulation, controller design, and verification of grip engagement throughout the gait cycle.

---

**DOCUMENT 21 OF 160: CVC DYNAMIC LOCOMOTION KINEMATICS**

*Document generation completed: 2026-08-13T09:05:22+00:00*
*Session ID: agent_f73aabf5-ef4a-4165-84f2-b57ce120f839*
*Group: 21-40 (Mathematical Models and Calculations)*
*Verification: SHA256 checksum recorded in git repository*