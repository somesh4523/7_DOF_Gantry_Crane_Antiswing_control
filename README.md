# Anti swing control of 7 DOF overhead Gantry crane systems
MATLAB/SIMULINK simulations.
<br>
Author- Somesh Swami

# Hi there, I'm Somesh! 👋

I am a PhD Scholar specializing in Control and Automation.

## 🛠️ Tech Stack
* **Languages:** Python, C++, MATLAB
* **Tools:** Simulink, ROS2, Git, Linux
* **Interests:** Control Theory, Robotics, Automation

---

## 🔐 Research Projects
*Below is a summary of my projects.*


### 🤖 Anti-Swing Prescribed Time Adaptive Control of overhead gantry cranes
**PhD Research**
**Control Theory, MATLAB, SIMULINK**
* 1. Multi-Body Lagrangian Dynamics Modeling
The foundation of the control system is a high-fidelity dynamic model derived using the Euler-Lagrange formulation. The system is modeled as a 7-DOF underactuated mechanism where the state vector $q(t) = [x, y, l_1, \theta_1, \theta_2, \theta_3, \theta_4]^T$ represents the trolley/bridge displacement, hoisting cable length, and the spherical swing angles of the dual payload. The equations of motion are expressed as $\underline{M}(q)\ddot{q} + \underline{C}(q,\dot{q})\dot{q} + \underline{G}(q) = \underline{F}$, capturing the highly coupled nonlinearities between the actuated translation states and the unactuated sway dynamics.
* 2. Partial Feedback Linearization & Decoupling
To manage the underactuated nature of the system (where control inputs are fewer than outputs), the dynamics are transformed using Partial Feedback Linearization. The system matrices are decomposed into actuated ($q_a$) and unactuated ($q_b$) sub-blocks. Through algebraic manipulation, the original Lagrangian model is converted into a Block-Strict Feedback Form, effectively cascading the dynamics into lower-order subsystems. This transformation allows for the design of virtual controllers ($\alpha_1, \alpha_2$) that stabilize the intermediate states before computing the final control torque.
* 3. Adaptive Actuator Friction Compensation
A critical real-world challenge addressed is the non-linear friction in the trolley, bridge, and hoisting mechanisms. The controller employs an Adaptive Estimation Law to approximate unknown friction coefficients in real-time. The friction model incorporates both Coulomb and viscous friction components (modeled using hyperbolic tangent functions $\tanh(\dot{x}/\epsilon)$). The adaptive law updates the estimated friction vector $\hat{\Omega}$ online, minimizing the estimation error $\tilde{\Omega}$ and ensuring that steady-state positioning errors are eliminated without requiring offline parameter identification.
* 4. Prescribed-Time Control Synthesis
Unlike asymptotic controllers that converge over infinite time, this project implements a Prescribed-Time Control strategy using time-varying scaling functions. A scaling term $\Delta(t) = \mu_i / (T_s - t)$ is introduced into the error dynamics, which forces the tracking errors to zero exactly at the pre-set termination time $T_s$. The control law is derived using a Lyapunov Candidate Function, ensuring that the system states remain bounded during the transient phase and converge precisely as $t \to T_s$.
* 5. Zero-Overshoot Stability Analysis
To prevent dangerous payload collisions or cable snapping, the controller is mathematically constrained to ensure Zero Overshoot. Through rigorous stability analysis, specific gain conditions are derived (e.g., relating $\hat{c}_1$ and $\hat{c}_2$) that enforce strict monotonicity of the Lyapunov function. This guarantees that the trajectory tracking error does not cross zero (oscillate) before convergence, a critical improvement over traditional PID or sliding mode controllers which often exhibit transient oscillations.

---

## 📫 Connect with Me
* [LinkedIn](www.linkedin.com/in/somesh-swami-8b7684219)
* Email: somesh.swami398@gmail.com

