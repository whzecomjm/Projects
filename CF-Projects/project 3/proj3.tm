<TeXmacs|1.99.1>

<style|<tuple|amsart|british>>

<\body>
  <doc-data|<doc-title|Finite Difference Method for Multiple-assets
  Models>|<doc-author|<\author-data|<author-name|Tao Luo, Deng Pan and
  Wenchao Zhang>>
    \;
  </author-data>>|<doc-date|<date>>>

  \;

  <section|Problem Specification>

  Suppose there exist two assets <math|S<rsub|1>> and <math|S<rsub|2>>, as
  usual we assume they follows geometric Brownian motion and the asset
  dynamics is as follows:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<mathd\>S<rsub|1><around*|(|t|)>>|<cell|=>|<cell|S<rsub|1><around*|(|t|)><around*|(|<around*|(|\<mu\><rsub|1>-q<rsub|1>|)>\<mathd\>t+\<sigma\><rsub|1>\<mathd\>Z<rsub|1><around*|(|t|)>|)>>>|<row|<cell|\<mathd\>S<rsub|2><around*|(|t|)>>|<cell|=>|<cell|S<rsub|2><around*|(|t|)><around*|(|<around*|(|\<mu\><rsub|2>-q<rsub|2>|)>\<mathd\>t+\<sigma\><rsub|2>\<mathd\>Z<rsub|2><around*|(|t|)>|)>>>>>
  </eqnarray*>

  and the two standard Brownian motions have the covariance:

  <\equation*>
    cov<around*|(|\<mathd\>Z<rsub|1>,\<mathd\>Z<rsub|2>|)>=\<rho\><rsub|12>\<mathd\>t
  </equation*>

  by equate the variance and covarianc term of standard Brownian motion term,
  One can find two independent standard Brownian motion, such that:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<mathd\>S<rsub|1><around*|(|t|)>>|<cell|=>|<cell|S<rsub|1><around*|(|t|)><around*|(|<around*|(|\<mu\><rsub|1>-q<rsub|1>|)>\<mathd\>t+\<sigma\><rsub|11>\<mathd\>W<rsub|1><around*|(|t|)>+\<sigma\><rsub|21>\<mathd\>W<rsub|2><around*|(|t|)>|)>>>|<row|<cell|\<mathd\>S<rsub|2><around*|(|t|)>>|<cell|=>|<cell|S<rsub|2><around*|(|t|)><around*|(|<around*|(|\<mu\><rsub|2>-q<rsub|2>|)>\<mathd\>t+\<sigma\><rsub|12>\<mathd\>W<rsub|1><around*|(|t|)>+\<sigma\><rsub|22>\<mathd\>W<rsub|2><around*|(|t|)>|)>>>>>
  </eqnarray*>

  for some contingent claim <math|V<around*|(|S<rsub|1>,S<rsub|2>,t|)>>,
  whose payoff at expiry <math|T> depends on the price of <math|S<rsub|1>>
  and <math|S<rsub|2>>. its value, by the standard <math|\<Delta\>>-hedging
  arguement satisfies the following partial differential equation:

  <\equation>
    <frac|\<partial\>V|\<partial\>t>+<around*|(|r-q<rsub|1>|)>S<rsub|1><frac|\<partial\>V|\<partial\>S<rsub|1>>+<frac|1|2>\<sigma\><rsub|1><rsup|2>S<rsup|2><rsub|1><frac|\<partial\>V|\<partial\>S<rsub|1>>+<around*|(|r-q<rsub|2>|)>S<rsub|2><frac|\<partial\>V|\<partial\>S<rsub|2>>+<frac|1|2>\<sigma\><rsub|2><rsup|2>S<rsup|2><rsub|2><frac|\<partial\>V|\<partial\>S<rsub|2>>-rV=0<label|2dpde>
  </equation>

  without loss of generality, we assume the final payoff function is:

  <\equation*>
    V<around*|(|S<rsub|1>,S<rsub|2>,T|)>=max<around*|(|S<rsub|1>,S<rsub|2>|)>\<nocomma\>\<nocomma\>\<nocomma\>,
    0\<leqslant\>S<rsub|1>,S<rsub|2>\<less\>\<infty\>
  </equation*>

  and boundary condition is:

  <\eqnarray*>
    <tformat|<table|<row|<cell|V<around*|(|0,S<rsub|2>,t|)>>|<cell|=>|<cell|S<rsub|2>,
    0\<leqslant\>t\<leqslant\>T,0\<leqslant\>S<rsub|2>\<less\>\<infty\>>>|<row|<cell|V<around*|(|S<rsub|1>,0,t|)>>|<cell|=>|<cell|S<rsub|1>,
    0\<leqslant\>t\<leqslant\>T,0\<leqslant\>S<rsub|1>\<less\>\<infty\>>>|<row|<cell|V<around*|(|\<infty\>,S<rsub|2>,t|)>>|<cell|=>|<cell|\<infty\>,
    0\<leqslant\>t\<leqslant\>T,0\<leqslant\>S<rsub|2>\<less\>\<infty\>>>|<row|<cell|V<around*|(|S<rsub|1>,\<infty\>,t|)>>|<cell|=>|<cell|\<infty\>,
    0\<leqslant\>t\<leqslant\>T,0\<leqslant\>S<rsub|1>\<less\>\<infty\>>>>>
  </eqnarray*>

  \;

  \;

  \;

  <section|One-asset Model Revisited>

  For the contigent claim whose payoff at expiry depends solely on the price
  of one asset, say <math|S<rsub|1>>, its value satisfies:

  <\equation*>
    <frac|\<partial\>V|\<partial\>t>+<around*|(|r-q<rsub|1>|)>S<rsub|1><frac|\<partial\>V|\<partial\>S<rsub|1>>+<frac|1|2>\<sigma\><rsub|1><rsup|2>S<rsup|2><rsub|1><frac|\<partial\><rsup|2>V|\<partial\>S<rsup|2><rsub|1>>-rV=0
  </equation*>

  if we discretize time variable:

  <\equation>
    V<rsup|i>=V<rsup|i+11>+\<Delta\>t<around*|(|<around*|(|r-q<rsub|1>|)>S<rsub|1><frac|\<partial\>|\<partial\>S<rsub|1>>+<frac|1|2>\<sigma\><rsub|1><rsup|2>S<rsup|2><rsub|1><frac|\<partial\><rsup|2>|\<partial\>S<rsup|2><rsub|1>>-r|)>V<rsup|i+1>+O<around*|(|\<Delta\>t<rsup|2>|)><label|1dtd>
  </equation>

  where <math|V<rsup|i >> represent the value of option at time
  <math|i\<Delta\>t>, if we define the operator:

  <\equation*>
    \<b-up-L\><rsub|1><around*|(|\<Delta\>t|)>=\<Delta\>t<around*|(|<around*|(|r-q<rsub|1>|)>S<rsub|1><frac|\<partial\>|\<partial\>S<rsub|1>>+<frac|1|2>\<sigma\><rsub|1><rsup|2>S<rsup|2><rsub|1><frac|\<partial\><rsup|2>|\<partial\>S<rsup|2><rsub|1>>-r|)>
  </equation*>

  and its FD approximation is denoted as:

  <\equation*>
    L<rsub|1><around*|(|\<Delta\>t|)>=\<Delta\>t<around*|(|<around*|(|r-q<rsub|1>|)>S<rsub|1>\<delta\><rsub|S<rsub|1>>+<frac|1|2>\<sigma\><rsub|1><rsup|2>S<rsup|2><rsub|1>\<delta\><rsub|S<rsub|1>S<rsub|1>>-r|)>\<approx\>\<b-up-L\><rsub|1><around*|(|\<Delta\>t|)>
  </equation*>

  note that <math|\<delta\><rsub|S<rsub|1>>> could be any discretized
  approximation to the derivatives, e.g. forward or backward difference
  scheme. Dropping the high order small term, the iteration
  formula(<reference|1dtd>) can be written as: \ 

  <\equation*>
    V<rsup|i>\<approx\><around*|(|1+L<rsub|1><around*|(|\<Delta\>t|)>|)>V<rsup|i+1>
  </equation*>

  without loss of generality, we further assume this contigent claim is
  American type put option with final payoff:

  <\equation*>
    V<around*|(|S<rsub|1>,T|)>=max<around*|(|K-S<rsub|1>,0|)>
  </equation*>

  using the iteration equation, we can track the value of option back to any
  time before expiry.\ 

  \;

  \;

  <section|Numerical Solution to Two-assets Model>

  First note that the bounday of this PDE is symetric about line
  <math|S<rsub|1>=S<rsub|2>>, and so is the PDE itself. we can conclude the
  solution of this PDE is symetric about line <math|S<rsub|1>=S<rsub|2>>.
  Hence we only need to solve the domain where
  <math|S<rsub|1>\<geqslant\>S<rsub|2>> or
  <math|S<rsub|2>\<geqslant\>S<rsub|1>>, and use symetric property to assign
  the other part. Let's focus on the region where
  <math|S<rsub|1>\<geqslant\>S<rsub|2>>.\ 

  Hence the boundaryies of concern degenerate to:

  <\eqnarray*>
    <tformat|<table|<row|<cell|V<around*|(|S<rsub|1>,0,t|)>>|<cell|=>|<cell|S<rsub|1>,
    0\<leqslant\>t\<leqslant\>T,0\<leqslant\>S<rsub|1>\<less\>\<infty\>>>|<row|<cell|V<around*|(|\<infty\>,S<rsub|2>,t|)>>|<cell|=>|<cell|\<infty\>,
    0\<leqslant\>t\<leqslant\>T,0\<leqslant\>S<rsub|2>\<less\>\<infty\>>>>>
  </eqnarray*>

  further more if this is an American type option, the holder would exercise
  in advance, which gives:

  <\equation*>
    V<around*|(|S<rsub|1>,S<rsub|2>,t|)>=S<rsub|1>\<nocomma\>,S<rsub|1>\<geqslant\>S<rsub|2>
  </equation*>

  for <math|S<rsub|1>> large enough.\ 

  for the two-assets model, the time-discretized representation of
  PDE(<reference|2dpde>) is:

  <\equation>
    V<rsup|i>=V<rsup|i+1>+\<Delta\>t<around*|(|<around*|(|r-q<rsub|1>|)>S<rsub|1><frac|\<partial\>|\<partial\>S<rsub|1>>+<frac|1|2>\<sigma\><rsub|1><rsup|2>S<rsup|2><rsub|1><frac|\<partial\><rsup|2>|\<partial\>S<rsup|2><rsub|1>>+<around*|(|r-q<rsub|2>|)>S<rsub|2><frac|\<partial\>|\<partial\>S<rsub|2>>+<frac|1|2>\<sigma\><rsub|2><rsup|2>S<rsup|2><rsub|2><frac|\<partial\><rsup|2>|\<partial\>S<rsup|2><rsub|2>>-r|)>V<rsup|i+1>+O<around*|(|\<Delta\>t<rsup|2>|)><label|2dtd>
  </equation>

  define the operator:

  <\equation*>
    \<b-up-L\><rsub|12><around*|(|\<Delta\>t|)>=\<Delta\>t<around*|(|<around*|(|r-q<rsub|1>|)>S<rsub|1><frac|\<partial\>|\<partial\>S<rsub|1>>+<frac|1|2>\<sigma\><rsub|1><rsup|2>S<rsup|2><rsub|1><frac|\<partial\><rsup|2>|\<partial\>S<rsup|2><rsub|1>>+<around*|(|r-q<rsub|2>|)>S<rsub|2><frac|\<partial\>|\<partial\>S<rsub|2>>+<frac|1|2>\<sigma\><rsub|2><rsup|2>S<rsup|2><rsub|2><frac|\<partial\><rsup|2>|\<partial\>S<rsup|2><rsub|2>>-r|)>
  </equation*>

  and it FD approximation:

  <\equation*>
    L<rsub|12><around*|(|\<Delta\>t|)>=\<Delta\>t<around*|(|<around*|(|r-q<rsub|1>|)>S<rsub|1>\<delta\><rsub|S<rsub|1>>+<frac|1|2>\<sigma\><rsub|1><rsup|2>S<rsup|2><rsub|1>\<delta\><rsub|S<rsub|1>S<rsub|1>>+<around*|(|r-q<rsub|2>|)>S<rsub|2>\<delta\><rsub|S<rsub|2>>+<frac|1|2>\<sigma\><rsub|2><rsup|2>S<rsup|2><rsub|2>\<delta\><rsub|S<rsub|2>S<rsub|2>>-r|)>
  </equation*>

  and the iteration formula becomes:

  <\equation*>
    V<rsup|i>\<approx\><around*|(|1+L<rsub|12><around*|(|\<Delta\>t|)>|)>V<rsup|i+1>
  </equation*>

  with the final payoff:

  <\equation*>
    V<around*|(|S<rsub|1>,S<rsub|2>,T|)>=max<around*|(|S<rsub|1>,S<rsub|2S<rsub|1>,S<rsub|2>,\<ldots\>.,S<rsub|i>>|)>\<nocomma\>\<nocomma\>\<nocomma\>,
    0\<leqslant\>S<rsub|1>,S<rsub|2>\<less\>\<infty\>
  </equation*>

  for the American type option, we should exam wether it will exercise or
  not, which modifies true value of option to be:

  <\equation*>
    V<rsup|i>\<approx\>max<around*|(|<around*|(|1+L<rsub|12><around*|(|\<Delta\>t|)>|)>V<rsup|i+1>,S<rsub|1>|)>
  </equation*>

  \;

  \;

  <section|Finite Difference Matrix Modification>

  First review the procedure for achieving the single-asset option's FD
  matrix, since there is

  <\equation*>
    V<rsup|i>=V<rsup|i+1>+\<Delta\>*t*<around*|(|<around|(|r-q|)>*S<frac|\<partial\>|\<partial\>S>+<frac|1|2>*\<sigma\><rsup|2>*S<rsup|2><frac|\<partial\>|\<partial\>S>-r|)>*V+O*<around|(|\<Delta\>*t|)>
  </equation*>

  To make the partial operator discretely,

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|\<partial\>V|\<partial\>S>>|<cell|=>|<cell|<frac|V<rsup|i><rsub|j+1>-V<rsup|i><rsub|j-1>|2*\<Delta\>*S>>>|<row|<cell|<frac|\<partial\>V|\<partial\>t>>|<cell|=>|<cell|<frac|V<rsup|i+1><rsub|j>-V<rsup|i><rsub|j>|\<Delta\>*t><eq-number>>>|<row|<cell|<frac|\<partial\><rsup|2>V|\<partial\>S<rsup|2>>>|<cell|=>|<cell|<frac|V<rsup|i><rsub|j+1>+V<rsup|i><rsub|j-1>-2*V<rsup|i><rsub|j>|\<Delta\>*S<rsup|2>>>>>>
  </eqnarray*>

  \;

  Then we have the following recursive form

  <\equation*>
    a<rsub|j>*V<rsup|i><rsub|j-1>+b<rsub|j>*V<rsup|i><rsub|j>+c<rsub|j>*V<rsup|i><rsub|j+1>=V<rsup|i+1><rsub|j>
  </equation*>

  where

  <\eqnarray*>
    <tformat|<table|<row|<cell|a<rsub|j>>|<cell|=>|<cell|<frac|1|2>*<around|(|r-q|)>*j*\<Delta\>*t-<frac|1|2>*\<sigma\><rsup|2>*j<rsup|2>*\<Delta\>*t>>|<row|<cell|b<rsub|j>>|<cell|=>|<cell|1+\<sigma\><rsup|2>*j<rsup|2>*\<Delta\>*t+r*\<Delta\>*t>>|<row|<cell|c<rsub|j>>|<cell|=>|<cell|-<frac|1|2>*<around|(|r-q|)>*j*\<Delta\>*t-<frac|1|2>*\<sigma\><rsup|2>*j<rsup|2>*\<Delta\>*t>>>>
  </eqnarray*>

  \;

  Thus the FD matrix is of the form

  <\equation>
    <label|eq1><around*|[|<tabular*|<tformat|<table|<row|<cell|b<rsub|1>>|<cell|c<rsub|1>>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|a<rsub|2>>|<cell|b<rsub|2>>|<cell|c<rsub|2>>|<cell|\<ldots\>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|>|<cell|>|<cell|>|<cell|\<ddots\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|a<rsub|N-2>>|<cell|b<rsub|N-2>>|<cell|c<rsub|N-2>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|a<rsub|N-1>>|<cell|b<rsub|N-1>>>>>>|]>
  </equation>

  and satisfies the linear system

  <\equation>
    <label|eq2><around*|[|<tabular*|<tformat|<table|<row|<cell|b<rsub|1>>|<cell|c<rsub|1>>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|a<rsub|2>>|<cell|b<rsub|2>>|<cell|c<rsub|2>>|<cell|\<ldots\>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|>|<cell|>|<cell|>|<cell|\<ddots\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|a<rsub|N-2>>|<cell|b<rsub|N-2>>|<cell|c<rsub|N-2>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<ldots\>>|<cell|0>|<cell|a<rsub|N-1>>|<cell|b<rsub|N-1>>>>>>|]><around*|[|<tabular*|<tformat|<table|<row|<cell|V<rsup|i><rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|V<rsup|i><rsub|N-1>>>>>>|]>=<around*|[|<tabular*|<tformat|<table|<row|<cell|V<rsup|i+1><rsub|1>-a<rsub|1>*V<rsup|i><rsub|0>>>|<row|<cell|V<rsup|i+1><rsub|2>>>|<row|<cell|\<vdots\>>>|<row|<cell|V<rsup|i+1><rsub|N-2>>>|<row|<cell|V<rsup|i+1><rsub|N-1>-c<rsub|N-1>*V<rsup|i><rsub|N>>>>>>|]>
  </equation>

  Now, consider the 2-assets option, by the previous work done in TASK 1,

  <\equation*>
    V<rsup|i>=<around*|(|1+L<rsub|12>*<around|(|\<Delta\>*t|)>|)>*V<rsup|i+1>
  </equation*>

  while

  <\equation*>
    <around|(|1+L<rsub|1>*<around|(|\<Delta\>*t|)>|)>*<around|(|1+L<rsub|2>*<around|(|\<Delta\>*t|)>|)>\<approx\>1+L<rsub|12>*<around|(|\<Delta\>*t|)>
  </equation*>

  NOTE! One could directly multiply matrices (<reference|eq1>) with
  parameters <math|S<rsub|1>> and <math|S<rsub|2>> respectively to get the
  result FD matrix, this is not true. Since the RHS of equation
  (<reference|eq2>) is not pure <math|V<rsup|i+1>>, but has <math|V<rsup|i>>
  terms like <math|V<rsup|i><rsub|0>> and <math|V<rsup|i><rsub|N-1>>.

  But the derives in TASK 1 give us the confidence that we can solve the
  2-asset problem by steps.

  First, take

  <\eqnarray*>
    <tformat|<table|<row|<cell|q<rsub|1><rprime|'>>|<cell|=>|<cell|q<rsub|1>-<frac|1|2>r>>|<row|<cell|\<sigma\><rsub|1><rprime|'>>|<cell|=>|<cell|\<sigma\>>>|<row|<cell|r<rsub|1>>|<cell|=>|<cell|<frac|1|2>r>>>>
  </eqnarray*>

  \;

  so here we can calculate out the <math|V<rsup|i>>s from <math|V<rsup|i+1>>s
  by the 1-asset strategy, immediately after each step, set <math|V<rsup|i>>
  as the new <math|V<rsup|i+1>>, and then take

  <\eqnarray*>
    <tformat|<table|<row|<cell|q<rsub|2><rprime|'>>|<cell|=>|<cell|q<rsub|2>-<frac|1|2>r>>|<row|<cell|\<sigma\><rsub|2><rprime|'>>|<cell|=>|<cell|\<sigma\>>>|<row|<cell|r<rsub|2>>|<cell|=>|<cell|<frac|1|2>r>>>>
  </eqnarray*>

  adopt the same method as above, we can get new <math|V<rsup|i>>. This
  completes one major step.

  Then continue this strategy we can get <math|V<rsup|i-1>> and so forth.

  Conclusion: there is no changes needed to modify the FD matrix, but have to
  solve the linear system twice.

  \;

  <section|Boundary Condition Modification>

  Recall that for single-asset option, the (American put) boundary conditions
  are

  <\eqnarray*>
    <tformat|<table|<row|<cell|V<rsup|T><rsub|j>>|<cell|=>|<cell|<around|(|K-j*\<Delta\>*S|)><rsup|+>>>|<row|<cell|V<rsup|i><rsub|0>>|<cell|=>|<cell|K>>|<row|<cell|V<rsub|N><rsup|i>>|<cell|=>|<cell|0>>>>
  </eqnarray*>

  \;

  and for 2-asset option, the boundary conditions for the first iteration
  are, (since <math|S<rsub|1>> and <math|S<rsub|2>> are symmetric, we do not
  need to distinguish them)

  <\eqnarray*>
    <tformat|<table|<row|<cell|V<rsup|T><rsub|j>>|<cell|=>|<cell|max
    <around|(|S<rsub|1>,S<rsub|2>|)>>>|<row|<cell|V<rsup|i><rsub|0>>|<cell|=>|<cell|S<rsub|2>>>|<row|<cell|V<rsub|N><rsup|i>>|<cell|=>|S<rsub|1>>>>
  </eqnarray*>

  \;

  from the above we can get <math|V<rsup|T-1><rsub|j>> easily, for simplicity
  of symbols, denote it as <math|K<rsup|T-1><rsub|j>>. So
  <math|K<rsup|T-1><rsub|j>> can be used as part of the boundary conditions
  for the second iteration. So the boundary conditions for the second
  iteration are

  <\eqnarray*>
    <tformat|<table|<row|<cell|V<rprime|'><rsup|T><rsub|j>>|<cell|=>|<cell|K<rsup|T-1><rsub|j>>>|<row|<cell|V<rprime|'><rsup|i><rsub|0>>|<cell|=>|<cell|S<rsub|1>>>|<row|<cell|V<rprime|'><rsup|i><rsub|N>>|<cell|=>|<cell|S<rsub|2>>>>>
  </eqnarray*>

  \;

  This can get the value of <math|V<rprime|'><rsup|T-1><rsub|j>>, for
  simplicity of symbols, denote it as <math|H<rsup|T-1><rsub|j>>. And compare
  it with <math|max <around|(|S<rsub|1>,S<rsub|2>|)>>, and take the larger
  one as the final value of <math|V<rsup|T-1><rsub|j>>.

  Continue this process, we can get <math|V>.

  Conclusion: There are two FD matrix corresponding to <math|S<rsub|1>> and
  <math|S<rsub|2>> respectively. To get the answer, we have to solve an
  additional linear system once per step.

  \;

  \;

  \;

  <section|Solve the 2-asset Model by 1-asset Scheme>

  so far, the FD algorithom of two assets model we discussed can be
  summarized as follows:

  <\enumerate-numeric>
    <item>set the final condition <math|V<around*|(|S<rsub|1>,S<rsub|2>,T|)>=max<around*|(|S<rsub|1>,S<rsub|2>|)>\<nocomma\>\<nocomma\>\<nocomma\>,
    0\<leqslant\>S<rsub|1>,S<rsub|2>\<less\>M>, for <math|M> large enough.

    <item>set the boundary condition <math|V<around*|(|S<rsub|1>,0,t|)>=
    S<rsub|1>> and <math|V<around*|(|M,S<rsub|2>,t|)>= M>

    <item> use the iterative formula is <math|V<rsup|i>\<approx\><around*|(|1+L<rsub|12><around*|(|\<Delta\>t|)>|)>V<rsup|i+1>>
    or <math|V<rsup|i>\<approx\>max<around*|(|<around*|(|1+L<rsub|12><around*|(|\<Delta\>t|)>|)>V<rsup|i+1>,S<rsub|1>|)>>
    to solve the region where <math|S<rsub|1>\<geqslant\>S<rsub|2>>.

    <item>by symetric property, assign the value of the other part where
    <math|S<rsub|1>\<leqslant\>S<rsub|2>>.
  </enumerate-numeric>

  next we try to replace the operator <math|L<rsub|12><around*|(|\<Delta\>t|)>>
  in step 3 by the product of <math|L<rsub|1><around*|(|\<Delta\>t|)>> and
  <math|L<rsub|2><around*|(|\<Delta\>t|)>>, which we used when solving
  1-asset model. Mathematically we first try to find
  <math|\<b-up-L\><rsub|1><around*|(|\<Delta\>t|)>> and
  <math|\<b-up-L\><rsub|2><around*|(|\<Delta\>t|)>>, such that:

  <\equation*>
    1+\<b-up-L\><rsub|12><around*|(|\<Delta\>t|)> =
    <around*|(|1+\<b-up-L\><rsub|1><around*|(|\<Delta\>t|)>|)><around*|(|1+\<b-up-L\><rsub|2><around*|(|\<Delta\>t|)>|)>+O<around*|(|\<Delta\>t<rsup|2>|)>
  </equation*>

  substituting the RHS of above equation by
  <math|\<b-up-L\><rsub|1><around*|(|\<Delta\>t|)>> and
  <math|\<b-up-L\><rsub|2><around*|(|\<Delta\>t|)>> yields:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|<around*|(|1+\<b-up-L\><rsub|1><around*|(|\<Delta\>t|)>|)><around*|(|1+\<b-up-L\><rsub|2><around*|(|\<Delta\>t|)>|)>>>|<row|<cell|>|<cell|=>|<cell|1+\<b-up-L\><rsub|1><around*|(|\<Delta\>t|)>+\<b-up-L\><rsub|2><around*|(|\<Delta\>t|)>+\<b-up-L\><rsub|1><around*|(|\<Delta\>t|)>\<b-up-L\><rsub|2><around*|(|\<Delta\>t|)>>>|<row|<cell|>|<cell|=>|<cell|1+\<Delta\>t<around*|(|<around*|(|r<rprime|'><rsub|1>-q<rprime|'><rsub|1>|)>S<rsub|1><frac|\<partial\>|\<partial\>S<rsub|1>>+<frac|1|2>\<sigma\><rprime|'><rsub|1><rsup|2>S<rsup|2><rsub|1><frac|\<partial\><rsup|2>|\<partial\>S<rsup|2><rsub|1>>-r<rprime|'><rsub|1>+<around*|(|r<rprime|'><rsub|2>-q<rprime|'><rsub|2>|)>S<rsub|2><frac|\<partial\>|\<partial\>S<rsub|2>>+<frac|1|2>\<sigma\><rprime|'><rsub|2><rsup|2>S<rsup|2><rsub|2><frac|\<partial\><rsup|2>|\<partial\>S<rsup|2><rsub|2>>-r<rprime|'><rsub|2>|)>+O<around*|(|\<Delta\>t<rsup|2>|)>>>>>
  </eqnarray*>

  while the LHS is:

  <\equation*>
    1+L<rsub|12><around*|(|\<Delta\>t|)>=1+\<Delta\>t<around*|(|<around*|(|r-q<rsub|1>|)>S<rsub|1><frac|\<partial\>|\<partial\>S<rsub|1>>+<frac|1|2>\<sigma\><rsub|1><rsup|2>S<rsup|2><rsub|1><frac|\<partial\><rsup|2>|\<partial\>S<rsup|2><rsub|1>>+<around*|(|r-q<rsub|2>|)>S<rsub|2><frac|\<partial\>|\<partial\>S<rsub|2>>+<frac|1|2>\<sigma\><rsub|2><rsup|2>S<rsup|2><rsub|2><frac|\<partial\><rsup|2>|\<partial\>S<rsup|2><rsub|2>>f
    -r|)>+O<around*|(|\<Delta\>t<rsup|2>|)>
  </equation*>

  our task becomes find a set of appropriate parameters s.t.

  <eqnarray*|<tformat|<table|<row|<cell|r<rprime|'><rsub|1>-q<rsub|1><rprime|'>>|<cell|=>|<cell|r<rsub|>-q<rsub|1>>>|<row|<cell|\<sigma\><rprime|'><rsub|1><rsup|>>|<cell|=>|<cell|\<sigma\><rsub|1>>>|<row|<cell|\<sigma\><rprime|'><rsub|2><rsup|>>|<cell|=>|<cell|\<sigma\><rsub|2>>>|<row|<cell|r<rprime|'><rsub|2>-q<rsub|2><rprime|'>>|<cell|=>|<cell|r<rsub|>-q<rsub|2>>>|<row|<cell|r>|<cell|=>|<cell|r<rprime|'><rsub|1>+r<rprime|'><rsub|2>>>>>>

  and the solution could be:

  <eqnarray*|<tformat|<table|<row|<cell|q<rsub|1><rprime|'>>|<cell|=>|<cell|q<rsub|1>-<frac|r|2>>>|<row|<cell|q<rsub|2><rprime|'>>|<cell|=>|<cell|q<rsub|2>-<frac|r|2>>>|<row|<cell|\<sigma\><rprime|'><rsub|1><rsup|>>|<cell|=>|<cell|\<sigma\><rsub|1>>>|<row|<cell|\<sigma\><rprime|'><rsub|2><rsup|>>|<cell|=>|<cell|\<sigma\><rsub|2>>>|<row|<cell|r<rprime|'><rsub|1>>|<cell|=>|<cell|<frac|r<rsub|>|2>>>|<row|<cell|r<rprime|'><rsub|2>>|<cell|=>|<cell|<frac|r<rsub|>|2>>>>>>

  now we can solve 2-assets model by solving two imaginary interlaced 1-asset
  model, which provide much convenience if we have the 1-asset code
  implementation already.

  \;

  \;

  \;

  <section|Extension to Some Multi-asset Model>

  For the multi-asset model, assume the value of contingent claim
  <math|V<around*|(|S<rsub|1>,S<rsub|2>,\<ldots\>,S<rsub|n>,t|)>>depends on
  asset <math|S<rsub|1>,S<rsub|2>,\<ldots\>.,S<rsub|n>>, which follows joint
  GBM. by standard <math|\<Delta\>>-hedge and no-arbitrage arguement. one can
  see <math|V> should satisfy the following PDE:

  <\equation*>
    <frac|\<partial\>V|\<partial\>t>+<frac|1|2><big|sum><rsub|i,j=1><rsup|n>\<alpha\><rsub|i
    j>S<rsub|i>S<rsub|j><frac|\<partial\><rsup|2>V|\<partial\>S<rsub|i>\<partial\>S<rsub|j>>+<big|sum><rsub|i=1><rsup|n><around*|(|r-q<rsub|i>|)>S<rsub|i><frac|\<partial\>V|\<partial\>S<rsub|i><rsub|>>-rV=0
  </equation*>

  \ WLOG, we can assume the final payoff function at expiry is:

  <\equation*>
    V<around*|(|S<rsub|1>,S<rsub|2>,\<ldots\>,S<rsub|n>,T|)>=max<around*|(|S<rsub|1>,S<rsub|2>,\<ldots\>,S<rsub|n>|)>
  </equation*>

  for this general PDE, we can not use previous splitting operator trick.
  instead, we focus on a special form of this PDE without cross derivative
  terms like <math|<frac|\<partial\><rsup|2>V|\<partial\>S<rsub|i>\<partial\>S<rsub|j>>><math|>,
  that is:

  <\equation>
    <frac|\<partial\>V|\<partial\>t>+<frac|1|2><big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i
    i>S<rsub|i><rsup|2><frac|\<partial\><rsup|2>V|\<partial\>S<rsub|i><rsup|2>>+<big|sum><rsub|i=1><rsup|n><around*|(|r-q<rsub|i>|)>S<rsub|i><frac|\<partial\>V|\<partial\>S<rsub|i><rsub|>>-rV=0<label|mdpde>
  </equation>

  <strong|Comments>. A natural question is when will <math|V> follows this
  PDE instead of the general one? the answer could be in case when the
  standard Brownian motions <math|W<rsub|1>,W<rsub|2>,\<ldots\>,W<rsub|n>>
  driving <math|S<rsub|1>,S<rsub|2>,\<ldots\>,S<rsub|n>> is independent of
  each other! This assumption may sounds ridiculous, How can two stock prices
  moving independent from each other in the recession? Good question!
  Although in the market it is difficult to find two single assets
  independent from each other, But we can construct two (or even more)
  portfolios consist of different single assets, such that the value of these
  portfolios are mutually independent.(proof is easy and omitted). So here
  <math|S<rsub|i>> represents this kind of portfolio.

  Let's \ turn back to solve this PDE (<reference|mdpde>) by splitting
  operator trick. As before, we first discretize time variable and get:

  <\eqnarray*>
    <tformat|<table|<row|<cell|V<rsup|i>>|<cell|=>|<cell|<around*|(|1+\<Delta\>t<around*|(|<frac|1|2><big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i
    i>S<rsub|i><rsup|2><frac|\<partial\><rsup|2>|\<partial\>S<rsub|i><rsup|2>>+<big|sum><rsub|i=1><rsup|n><around*|(|r-q<rsub|i>|)>S<rsub|i><frac|\<partial\>|\<partial\>S<rsub|i><rsub|>>-r|)>|)>V<rsup|i+1>+O<around*|(|\<Delta\>t<rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+\<b-up-L\><rsub|1\<ldots\>n><around*|(|\<Delta\>t|)>|)>V<rsup|i+1>+O<around*|(|\<Delta\>t<rsup|2>|)>>>>>
  </eqnarray*>

  where the operator <math|\<b-up-L\><rsub|1\<ldots\>n><around*|(|\<Delta\>t|)>\<assign\>\<Delta\>t<around*|(|<frac|1|2><big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i
  i>S<rsub|i><rsup|2><frac|\<partial\><rsup|2>|\<partial\>S<rsub|i><rsup|2>>+<big|sum><rsub|i=1><rsup|n><around*|(|r-q<rsub|i>|)>S<rsub|i><frac|\<partial\>|\<partial\>S<rsub|i><rsub|>>-r|)>>

  Define FD approximation of <math|\<b-up-L\><rsub|1\<ldots\>n><around*|(|\<Delta\>t|)>>
  as:

  <\eqnarray*>
    <tformat|<table|<row|<cell|L<rsub|1\<ldots\>n><around*|(|\<Delta\>t|)>>|<cell|\<assign\>>|<cell|\<Delta\>t<around*|(|<frac|1|2><big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i
    i>S<rsub|i><rsup|2>\<delta\><rsub|S<rsub|i>S<rsub|i>>+<big|sum><rsub|i=1><rsup|n><around*|(|r-q<rsub|i>|)>S<rsub|i>\<delta\><rsub|S<rsub|i>>-r|)>>>>>
  </eqnarray*>

  then iteration formula becomes:

  <\equation*>
    V<rsup|i>\<approx\><around*|(|1+L<rsub|1\<ldots\>n><around*|(|\<Delta\>t|)>|)>V<rsup|i+1>
  </equation*>

  to employ splitting operator trick, we seek a group of 1D operator
  <math|\<b-up-L\><rsub|1>,\<b-up-L\><rsub|2>,\<ldots\>,\<b-up-L\><rsub|n>>
  such that

  <\equation>
    1+\<b-up-L\><rsub|1\<ldots\>n><around*|(|\<Delta\>t|)>=<big|prod><rsub|i=1><rsup|n><around*|(|1+\<b-up-L\><rsub|i><around*|(|\<Delta\>t|)>|)>+O<around*|(|\<Delta\>t<rsup|2>|)><label|sp>
  </equation>

  the RHS of above equation is:

  <\equation*>
    <big|prod><rsub|i=1><rsup|n><around*|(|1+\<b-up-L\><rsub|i><around*|(|\<Delta\>t|)>|)>+O<around*|(|\<Delta\>t<rsup|2>|)>=1+<big|sum><rsup|n><rsub|i=1>\<b-up-L\><rsub|i><around*|(|\<Delta\>t|)>+O<around*|(|\<Delta\>t<rsup|2>|)>
  </equation*>

  and we need the following condition to satisfy the equation(<reference|sp>)

  <eqnarray*|<tformat|<table|<row|<cell|r<rprime|'><rsub|1>-q<rsub|1><rprime|'>>|<cell|=>|<cell|r<rsub|>-q<rsub|1>>>|<row|<cell|\<sigma\><rsub|i><rprime|'><rsup|2><rsup|><rsup|>>|<cell|=>|<cell|\<alpha\><rsub|i
  i>>>|<row|<cell|r>|<cell|=>|<cell|<big|sum><rsup|n><rsub|i=1>r<rprime|'><rsub|i>>>>>>

  and the solution of above equation could be

  <\eqnarray*>
    <tformat|<table|<row|<cell|r<rprime|'><rsub|i>>|<cell|=>|<cell|<frac|r|n>>>|<row|<cell|\<sigma\><rsub|i><rprime|'><rsup|2><rsup|><rsup|>>|<cell|=>|<cell|\<alpha\><rsub|i
    i>>>|<row|<cell|q<rsub|1><rprime|'>>|<cell|=>|<cell|q<rsub|1>-<frac|n-1|n>r>>>>
  </eqnarray*>

  now we can solve this special multi-asset model by splitting operator
  method.

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|font|roman>
    <associate|math-font|roman>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1dtd|<tuple|2|1>>
    <associate|2dpde|<tuple|1|1>>
    <associate|2dtd|<tuple|3|2>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|6|4>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|7|6>>
    <associate|auto-9|<tuple|1|?>>
    <associate|eq1|<tuple|5|3>>
    <associate|eq2|<tuple|6|3>>
    <associate|mdpde|<tuple|7|5>>
    <associate|sp|<tuple|8|6>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1.<space|2spc>Problem
      Specification> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.<space|2spc>One-asset
      Model Revisited> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.<space|2spc>Numerical
      Solution to Two-assets Model> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4.<space|2spc>Finite
      Difference Matrix Modification> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.<space|2spc>Boundary
      Condition Modification> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.<space|2spc>Solve
      the 2-asset Model by 1-asset Scheme>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.<space|2spc>Extension
      to Some Multi-asset Model> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>