Problem Specification
---------------------

Suppose there exist two assets $S_1$ and $S_2$, as usual we assume they follows geometric Brownian motion and the asset dynamics is as follows:
$$\mathrm{d}S_1(t)=S_1(t)((\mu_1- q_1){\mathrm{d}}t+\sigma_1 {\mathrm{d}}Z_1(t)){\mathrm{d}}S_2(t)=S_2(t)((\mu_2-q_2) {\mathrm{d}}t+\sigma_2 {\mathrm{d}}Z_2(t))$$
and the two standard Brownian motions have the co-variances:
$$\operatorname{cov}({\mathrm{d}}Z_1, {\mathrm{d}}Z_2) = \rho_{12} {\mathrm{d}}t$$
by equate the variance and covarianc term of standard Brownian motion term, One can find two independent standard Brownian motion, such that:

<!--more-->

$$\begin{aligned}
  {\mathrm{d}}S_1 (t) &=& S_1 (t) ((\mu_1 - q_1) {\mathrm{d}}t + \sigma_{11} {\mathrm{d}}W_1 (t) + \sigma_{21} {\mathrm{d}}W_2 (t))\\\
  {\mathrm{d}}S_2 (t) &=& S_2 (t) ((\mu_2 - q_2) {\mathrm{d}}t + \sigma_{12} {\mathrm{d}}W_1 (t) + \sigma_{22} {\mathrm{d}}W_2 (t))\end{aligned}$$

for some contingent claim $V (S_1, S_2, t)$, whose payoff at expiry $T$ depends on the price of $S_1$ and $S_2$. its value, by the standard $\Delta$-hedging argument satisfies the following partial differential equation:

$$\frac{\partial V}{\partial t} + (r - q_1) S_1 \frac{\partial V}{\partial
  S_1} + \frac{1}{2} \sigma_1^2 S^2_1 \frac{\partial V}{\partial S_1} + (r -
  q_2) S_2 \frac{\partial V}{\partial S_2} + \frac{1}{2} \sigma_2^2 S^2_2
  \frac{\partial V}{\partial S_2} -\operatorname{rV} = 0 \label{2dpde}$$

without loss of generality, we assume the final payoff function is:
$$V (S_1, S_2, T) = \max (S_1, S_2), 0 \leqslant  S_1, S_2 < \infty$$ and boundary condition is:

$$\begin{aligned}
  V (0, S_2, t) & = & S_2, 0 \leqslant t \leqslant T, 0 \leqslant S_2 <
  \infty\\\
  V (S_1, 0, t) & = & S_1, 0 \leqslant t \leqslant T, 0 \leqslant S_1 <
  \infty\\\
  V (\infty, S_2, t) & = & \infty, 0 \leqslant t \leqslant T, 0 \leqslant S_2
  < \infty\\\
  V (S_1, \infty, t) & = & \infty, 0 \leqslant t \leqslant T, 0 \leqslant S_1
  < \infty\end{aligned}$$

One-asset Model Revisited
-------------------------

For the contigent claim whose payoff at expiry depends solely on the price of one asset, say $S_1$, its value satisfies: $$\frac{\partial V}{\partial t} + (r - q_1) S_1 \frac{\partial V}{\partial
   S_1} + \frac{1}{2} \sigma_1^2 S^2_1 \frac{\partial^2 V}{\partial S^2_1} -
   \operatorname{rV}= 0$$ 
if we discretize time variable:

$$V^i = V^{i + 11} + \Delta t \left( (r - q_1) S_1 \frac{\partial}{\partial
  S_1} + \frac{1}{2} \sigma_1^2 S^2_1 \frac{\partial^2}{\partial S^2_1} - r
  \right) V^{i + 1} + O (\Delta t^2) \label{1dtd}$$

where $V^i$ represent the value of option at time $i \Delta t$, if we define the operator:
$$\mathbf{L}_1 (\Delta t) = \Delta t \left( (r - q_1) S_1 \frac{\partial}{\partial S_1} + \frac{1}{2} \sigma_1^2 S^2_1 \frac{\partial^2}{\partial S^2_1} - r\right)$$ 

and its FD approximation is denoted as:
$$L_1 (\Delta t)=\Delta t \left((r - q_1) S_1\delta_{S_1} + \frac{1}{2} \sigma_1^2 S^2_1\delta_{S_1 S_1}-r\right)\approx \mathbf{L}_1 (\Delta t)$$ 
Note that $\delta_{S_1}$ could be any discretized approximation to the derivatives, e.g. forward or backward difference scheme. Dropping the high order small term, the iteration formula([1dtd]) can be written as: $$V^i \approx (1 + L_1 (\Delta t)) V^{i + 1}$$ without loss of generality, we further assume this contingent claim is American type put option with final payoff: $$V (S_1, T) = \max (K-S_1, 0)$$ using the iteration equation, we can track the value of option back to any time before expiry.

Numerical Solution to Two-assets Model
--------------------------------------

First note that the boundary of this PDE is symmetric about line $S_1 = S_2$, and so is the PDE itself. we can conclude the solution of this PDE is symmetric about line $S_1 = S_2$. Hence we only need to solve the domain where $S_1\geqslant S_2$ or $S_2 \geqslant S_1$, and use symmetric property to assign the other part. Let’s focus on the region where $S_1 \geqslant S_2$.

Hence the boundaries of concern degenerate to:

$$\begin{aligned}
  V (S_1, 0, t) & = & S_1, 0 \leqslant t \leqslant T, 0 \leqslant S_1 <
  \infty\\\
  V (\infty, S_2, t) & = & \infty, 0 \leqslant t \leqslant T, 0 \leqslant S_2
  < \infty\end{aligned}$$

further more if this is an American type option, the holder would exercise in advance, which gives:
$$V (S_1, S_2, t) = S_1, S_1 \geqslant S_2$$ for $S_1$ large enough.

for the two-assets model, the time-discretized representation of PDE([2dpde]) is:

$$V^i = V^{i + 1} + \Delta t \left( (r - q_1) S_1 \frac{\partial}{\partial S_1} + \frac{1}{2} \sigma_1^2 S^2_1 \frac{\partial^2}{\partial S^2_1} + (r - q_2) S_2 \frac{\partial}{\partial S_2} + \frac{1}{2} \sigma_2^2 S^2_2
  \frac{\partial^2}{\partial S^2_2} - r \right) V^{i + 1} + O (\Delta t^2)
  \label{2dtd}$$

define the operator:
$$\mathbf{L}_{12} (\Delta t) = \Delta t \left( (r - q_1) S_1 \frac{\partial}{\partial S_1} + \frac{1}{2} \sigma_1^2 S^2_1 \frac{\partial^2}{\partial S^2_1} + (r - q_2) S_2 \frac{\partial}{\partial S_2} + \frac{1}{2} \sigma_2^2 S^2_2 \frac{\partial^2}{\partial S^2_2} - r \right)$$ 

and it FD approximation:

$$L_{12} (\Delta t) = \Delta t \left( (r-q_1) S_1 \delta_{S_1}+\frac{1}{2}\sigma_1^2 S^2_1 \delta_{S_1 S_1} + (r -q_2) S_2 \delta_{S_2}+\frac{1}{2} \sigma_2^2 S^2_2 \delta_{S_2 S_2}-r\right)$$ 

and the iteration formula becomes:

$$V^i \approx (1 + L_{12} (\Delta t)) V^{i + 1}$$ 
with the final payoff:
$$V (S_1, S_2, T) = \max (S_1, S_{2 S_1, S_2, \ldots, S_i}) , 0 \leqslant S_1,S_2 < \infty$$

for the American type option, we should exam whether it will exercise or not, which modifies true value of option to be:
$$V^i \approx \max ((1 + L_{12} (\Delta t)) V^{i + 1}, S_1)$$



Finite Difference Matrix Modification
-------------------------------------

First review the procedure for achieving the single-asset option's FD matrix, since there is
$$V^i = V^{i + 1} + \Delta t \left( (r - q) S \frac{\partial}{\partial S} + \frac{1}{2} \sigma^2 S^2 \frac{\partial}{\partial S} - r \right) V + O (\Delta t)$$ 

To make the partial operator discretely,

$$\begin{array}{rl}\frac{\partial V}{\partial S} & = & \frac{V^i_{j + 1} - V^i_{j - 1}}{2\Delta S} \\\ 
\frac{\partial V}{\partial t} & = & \frac{V^{i + 1}_j - V^i_j}{\Delta t} \\\ 
\frac{\partial^2 V}{\partial S^2} & = & \frac{V^i_{j + 1} + V^i_{j - 1} - 2V^i_j}{\Delta S^2}\end{array}$$

Then we have the following recursive form
$$a_j V^i_{j - 1} + b_j V^i_j + c_j V^i_{j + 1} = V^{i + 1}_j$$ where

$$\begin{array}{rl}
  a_j & = & \frac{1}{2}  (r - q) j \Delta t - \frac{1}{2} \sigma^2 j^2 \Delta
  t\\\
  b_j & = & 1 + \sigma^2 j^2 \Delta t + r \Delta t\\\
  c_j & = & - \frac{1}{2}  (r - q) j \Delta t - \frac{1}{2} \sigma^2 j^2
  \Delta t\end{array}$$

Thus the FD matrix is of the form

$$\label{eq1} \left[ \begin{array}{ccccccc}
    b_1 & c_1 & 0 & \ldots & 0 & 0 & 0\\\
    a_2 & b_2 & c_2 & \ldots & 0 & 0 & 0\\\
    &  &  & \ddots &  &  & \\\
    0 & 0 & 0 & \ldots & a_{N - 2} & b_{N - 2} & c_{N - 2}\\\
    0 & 0 & 0 & \ldots & 0 & a_{N - 1} & b_{N - 1}
  \end{array} \right]$$

and satisfies the linear system

$$\left[ \begin{array}{ccccccc} 
b_1 & c_1 & 0 & \ldots & 0 & 0 & 0\\\ 
a_2 & b_2 & c_2 & \ldots & 0 & 0 & 0\\\ 
&  &  & \ddots &  &  & \\\ 
0 & 0 & 0 & \ldots & a_{N - 2} & b_{N - 2} & c_{N - 2}\\\
0 & 0 & 0 & \ldots & 0 & a_{N - 1} & b_{N - 1} \end{array} \right] \left[ \begin{array}{c} V^i_1\\\ 
\vdots\\\ 
V^i_{N - 1} \end{array} \right] = \left[ \begin{array}{c} V^{i + 1}_1 - a_1 V^i_0\\\  V^{i + 1}_2\\\  
\vdots\\\  
V^{i + 1}_{N - 2}\\\  
V^{i + 1}_{N - 1} - c_{N - 1} V^i_N \end{array} \right] (eq2)$$

Now, consider the 2-assets option, by the previous work done in TASK 1, $$V^i = (1 + L_{12} (\Delta t)) V^{i + 1}$$ while $$(1 + L_1 (\Delta t))  (1 + L_2 (\Delta t)) \approx 1 + L_{12}  (\Delta t)$$ NOTE, One could directly multiply matrices ([eq1]) with parameters $S_1$ and $S_2$ respectively to get the result FD matrix, this is not true. Since the RHS of equation ([eq2]) is not pure $V^{i + 1}$, but has $V^i$ terms like $V^i_0$ and $V^i_{N - 1}$.

But the derives in TASK 1 give us the confidence that we can solve the 2-asset problem by steps.

First, take
$$\begin{array}{rl}
  q_1^{\prime} & = & q_1 - \frac{1}{2} r\\\
  \sigma_1^{\prime} & = & \sigma\\\
  r_1 & = & \frac{1}{2} r\end{array}$$

so here we can calculate out the $V^i$s from $V^{i + 1}$s by the 1-asset strategy, immediately after each step, set $V^i$ as the new $V^{i + 1}$, and then take

$$\begin{array}{rl}
  q_2^{\prime} & = & q_2 - \frac{1}{2} r\\\
  \sigma_2^{\prime} & = & \sigma\\\
  r_2 & = & \frac{1}{2} r\end{array}$$

adopt the same method as above, we can get new $V^i$. This completes one major step. Then continue this strategy we can get $V^{i - 1}$ and so forth.

**Conclusion**: there is no changes needed to modify the FD matrix, but have to solve the linear system twice.

Boundary Condition Modification
-------------------------------

Recall that for single-asset option, the (American put) boundary conditions are

$$\begin{array}{rl}
  V^T_j & = & (K - j \Delta S)^+\\\
  V^i_0 & = & K\\\
  V_N^i & = & 0\end{array}$$

and for 2-asset option, the boundary conditions for the first iteration are, (since $S_1$ and $S_2$ are symmetric, we do not need to distinguish them)

$$\begin{array}{rl}
  V^T_j & = & \max (S_1, S_2)\\\
  V^i_0 & = & S_2\\\
  V_N^i & = & S_1\end{array}$$

from the above we can get $V^{T - 1}_j$ easily, for simplicity of symbols, denote it as $K^{T - 1}_j$. So $K^{T - 1}_j$ can be used as part of the boundary conditions for the second iteration. So the boundary conditions for the second iteration are

$$\begin{array}{rl}
  V^{\prime T}_j & = & K^{T - 1}_j\\\
  V^{\prime i}_0 & = & S_1\\\
  V^{\prime i}_N & = & S_2\end{array}$$

This can get the value of $V^{\prime T - 1}_j$, for simplicity of symbols, denote it as $H^{T - 1}_j$. And compare it with $\max (S_1, S_2)$, and take the larger one as the final value of $V^{T - 1}_j$. Continue this process, we can get $V$.

**Conclusion**: There are two FD matrix corresponding to $S_1$ and $S_2$ respectively. To get the answer, we have to solve an additional linear system once per step.



Solve the 2-asset Model by 1-asset Scheme
-----------------------------------------

so far, the FD algorithm of two assets model we discussed can be summarized as follows:

set the final condition $V (S_1, S_2, T) = \max (S_1, S_2), 0 \leqslant S_1, S_2 < M$, for $M$ large enough. set the boundary condition $V (S_1, 0, t) = S_1$ and $V (M, S_2, t) = M$ use the iterative formula is $V^i \approx (1 + L_{12} (\Delta t))  V^{i + 1}$ or $V^i \approx \max ((1 + L_{12} (\Delta t)) V^{i + 1}, S_1)$ to solve the region where $S_1 \geqslant S_2$. by symetric property, assign the value of the other part where $S_1 \leqslant S_2$.

next we try to replace the operator $L_{12}(\Delta t)$ in step 3 by the product of $L_1(\Delta t)$ and $L_2(\Delta t)$, which we used when solving 1-asset model. Mathematically we first try to find $\mathbf{L}_1(\Delta t)$ and $\mathbf{L}_2 (\Delta t)$, such that:

$$1 +\mathbf{L}_{12} (\Delta t) = (1 +\mathbf{L}_1 (\Delta t)) (1 +\mathbf{L}_2 (\Delta t)) + O (\Delta t^2)$$ 

substituting the RHS of above equation by $\mathbf{L}_1 (\Delta t)$ and $\mathbf{L}_2 (\Delta t)$ yields:

$$\begin{eqnarray}
  &  & (1 +\mathbf{L}_1 (\Delta t)) (1 +\mathbf{L}_2 (\Delta t))\\\
  & = & 1 +\mathbf{L}_1 (\Delta t) +\mathbf{L}_2 (\Delta t) +\mathbf{L}_1 (\Delta t) \mathbf{L}_2 (\Delta t)\\\
  & = & 1 + \Delta t \left( (r^{\prime}_1 - q^{\prime}_1) S_1 \frac{\partial}{\partial S_1} + \frac{1}{2} {\sigma_1^2}^{\prime} S^2_1 \frac{\partial^2}{\partial S^2_1} - r^{\prime}_1 + (r^{\prime}_2 - q^{\prime}_2) S_2 \frac{\partial}{\partial S_2} + \frac{1}{2} {\sigma_2^2}^{\prime} S^2_2 \frac{\partial^2}{\partial S^2_2} - r^{\prime}_2 \right) + O (\Delta t^2)\end{eqnarray}$$

while the LHS is:
$$1 + L_{12} (\Delta t) = 1 + \Delta t \left( (r - q_1) S_1 \frac{\partial}{\partial S_1} + \frac{1}{2} \sigma_1^2 S^2_1 \frac{\partial^2}{\partial S^2_1} + (r - q_2) S_2 \frac{\partial}{\partial S_2} + \frac{1}{2} \sigma_2^2 S^2_2 \frac{\partial^2}{\partial S^2_2} f - r \right) + O (\Delta t^2)$$ 
our task becomes find a set of appropriate parameters s.t.

$$\begin{array}{rl}
  r^{\prime}_1 - q_1^{\prime} & = & r - q_1\\\
  \sigma^{\prime}_1 & = & \sigma_1\\\
  \sigma^{\prime}_2 & = & \sigma_2\\\
  r^{\prime}_2 - q_2^{\prime} & = & r - q_2\\\
  r & = & r^{\prime}_1 + r^{\prime}_2\end{array}$$

and the solution could be:

$$\begin{array}{rl}
  q_1^{\prime} & = & q_1 - \frac{r}{2}\\\
  q_2^{\prime} & = & q_2 - \frac{r}{2}\\\
  \sigma^{\prime}_1 & = & \sigma_1\\\
  \sigma^{\prime}_2 & = & \sigma_2\\\
  r^{\prime}_1 & = & \frac{r}{2}\\\
  r^{\prime}_2 & = & \frac{r}{2}\end{array}$$

now we can solve 2-assets model by solving two imaginary interlaced 1-asset model, which provide much convenience if we have the 1-asset code implementation already.

Extension to Some Multi-asset Model
-----------------------------------

For the multi-asset model, assume the value of contingent claim $V(S_1, S_2,\ldots, S_n, t)$depends on asset $S_1, S_2, \ldots ., S_n$, which follows joint GBM. by standard $\Delta$-hedge and no-arbitrage arguement. one can see $V$ should satisfy the following PDE:
$$\frac{\partial V}{\partial t} + \frac{1}{2} \sum_{i, j = 1}^n \alpha_{i j} S_i S_j \frac{\partial^2 V}{\partial S_i \partial S_j} + \sum_{i = 1}^n (r - q_i) S_i \frac{\partial V}{\partial S_i} - \operatorname{rV} = 0$$
WLOG, we can assume the final payoff function at expiry is: $$V (S_1, S_2, \ldots, S_n, T) = \max (S_1, S_2, \ldots, S_n)$$ for this general PDE, we can not use previous splitting operator trick. instead, we focus on a special form of this PDE without cross derivative terms like $\frac{\partial^2 V}{\partial S_i \partial S_j}$, that is:

$$\frac{\partial V}{\partial t} + \frac{1}{2} \sum_{i = 1}^n \alpha_{i i}
  S_i^2 \frac{\partial^2 V}{\partial S_i^2} + \sum_{i = 1}^n (r - q_i) S_i
  \frac{\partial V}{\partial S_i} - \operatorname{rV} = 0 \label{mdpde}$$

**Comments**. A natural question is when will $V$ follows this PDE instead of the general one? the answer could be in case when the standard Brownian motions $W_1, W_2, \ldots, W_n$ driving $S_1, S_2, \ldots, S_n$ is independent of each other! This assumption may sounds ridiculous, How can two stock prices moving independent from each other in the recession? Good question! Although in the market it is difficult to find two single assets independent from each other, But we can construct two (or even more) portfolios consist of different single assets, such that the value of these portfolios are mutually independent.(proof is easy and omitted). So here $S_i$ represents this kind of portfolio.

Let’s  turn back to solve this PDE ([mdpde]) by splitting operator trick. As before, we first discretize time variable and get:

$$\begin{eqnarray}
  V^i & = & \left( 1 + \Delta t \left( \frac{1}{2} \sum_{i = 1}^n \alpha_{i i} S_i^2 \frac{\partial^2}{\partial S_i^2} + \sum_{i = 1}^n (r - q_i) S_i \frac{\partial}{\partial S_i} - r \right) \right) V^{i + 1} + O (\Delta  t^2)\\\
  & = & (1 +\mathbf{L}_{1 \ldots n} (\Delta t)) V^{i + 1} + O (\Delta t^2)\end{eqnarray}$$

where the operator

$$\mathbf{L}_{1 \ldots n} (\Delta t) {:=}\Delta t \left(\frac{1}{2} \sum_{i = 1}^n \alpha_{i i} S_i^2 \frac{\partial^2}{\partial S_i^2} + \sum_{i = 1}^n (r - q_i) S_i \frac{\partial}{\partial S_i} - r \right)$$

Define FD approximation of $\mathbf{L}_{1 \ldots n}(\Delta t)$ as:

$$L_{1 \ldots n} (\Delta t) := \Delta t \left( \frac{1}{2} \sum_{i = 1}^n \alpha_{i i} S_i^2 \delta_{S_i S_i} + \sum_{i = 1}^n (r - q_i) S_i  \delta_{S_i} - r \right)$$

then iteration formula becomes: $V^i \approx (1 + L_{1 \ldots n} (\Delta t)) V^{i + 1}$ to employ splitting operator trick, we seek a group of 1D operator $\mathbf{L}_1, \mathbf{L}_2, \ldots, \mathbf{L}_n$ such that

$$1 +\mathbf{L}_{1 \ldots n} (\Delta t) = \prod_{i = 1}^n (1 +\mathbf{L}_i  (\Delta t)) + O (\Delta t^2)  \qquad [sp]$$

the RHS of above equation is:

$$\prod_{i = 1}^n (1 +\mathbf{L}_i (\Delta t)) + O (\Delta t^2) = 1 +  \sum^n_{i = 1} \mathbf{L}_i (\Delta t) + O (\Delta t^2)$$ 

and we need the following condition to satisfy the equation([sp])

$$\begin{array}{rl} r^{\prime}_1 - q_1^{\prime} & = & r - q_1\\\
\sigma_i^{\prime 2} & = & \alpha_{i i}\\\
r & = & \sum^n_{i = 1} r^{\prime}_i\end{array}$$

and the solution of above equation could be

$$\begin{array}{rl} r^{\prime}_i & = & \frac{r}{n}\\\ 
\sigma_i^{\prime 2} & = & \alpha_{i i}\\\ 
q_1^{\prime} & = & q_1 -\frac{n - 1}{n} r\end{array}$$

now we can solve this special multi-asset model by splitting operator method.