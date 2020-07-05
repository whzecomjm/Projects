<TeXmacs|1.99.1>

<style|amsart>

<\body>
  <doc-data|<doc-title|Recovering implied local volatility of
  options>|<doc-author|<author-data|<author-name|Tao Luo, Deng Pan and
  Wenchao Zhang>|<\author-affiliation>
    South University of Science and Technology of China
  </author-affiliation>>>|<doc-date|<date>>>

  <abstract-data|<\abstract>
    In this paper, we studied two papers from Jiang Lishang
    (<cite|lishang2001identifying>,<cite|jiang2003new>), who use well-posed
    algorithms to recover implied volatility under the Black-Scholes
    theoretical framework. Then, we did some numerical experiments which show
    that, with the help of the techniques developed in the eld of optimal
    control, the local volatility function is recovered very well.
  </abstract>>

  \;

  \;

  \;

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1.<space|2spc>Introduction>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2.<space|2spc>Dupire
    Method> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <with|par-left|1tab|2.1.<space|2spc>Dupire's formula
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|2.2.<space|2spc>Duality Problem
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3.<space|2spc>Regularization
    Method> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <with|par-left|1tab|3.1.<space|2spc>Regularization idea
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|3.2.<space|2spc>Regularization version of our problem
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|3.3.<space|2spc> Necessary optimality condition
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|3.4.<space|2spc>A uniqueness result
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4.<space|2spc>numerical
    method> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <with|par-left|1tab|4.1.<space|2spc>sub-problems
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Bibliography>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>
  </table-of-contents>

  <new-page>

  \;

  <section|Introduction>

  In our assumption during deriving the Black-Scholes formula, we have
  assumed that the volatility of the underlying asset is a constant which
  doesn't depend on drift. But in fact, the volatility value for the
  underlying asset of an option is not directly observable, and is certainly
  unpredictable. However, we can recovering it from options market. More
  precisely, if the Black-Scholes option pringcing theory is correct, then
  \ the price of options should reflect and reveal the price volatility of
  the underlying asset. And that is called the <strong|implied
  volatility><cite|jiang2005mathematical>.

  In fact, the implied volatility <math|\<sigma\>> inferred from options with
  different strike prices and expiration dates is a function of <math|K,T>,
  i.e. <math|\<sigma\>=\<sigma\><around*|(|K,T|)>>. (This should assume that
  <math|t<rsub|0>> and <math|S<rsub|0>> are equal.) Then, for a given
  <math|T>, the volatility <math|\<sigma\>> varies with strike price <math|K>
  typically in one of two ways: a <strong|volatility smile curve> or a
  <strong|volatility skew curve>. Also, if we fix <math|K>, then we have a
  similar figure to the skew curve. Hence, we know that <math|\<sigma\>> is
  not a constant.

  A more realistic model is: <math|\<sigma\>> is a function of <math|t> and
  asset price <math|S>. Then the stocahstic process of the asset price
  movement under the risk neutral measure is\ 

  <\equation>
    <frac|\<mathd\>S|S>=<around*|(|r-q|)>
    \<mathd\>t+\<sigma\><around*|(|S,t|)> \<mathd\>W<rsub|t>
  </equation>

  Correspondingly, the Black-Scholes equation becomes

  <\equation>
    <frac|\<partial\>V|\<partial\>t>+<frac|1|2>\<sigma\><rsup|2><around*|(|S,t|)>S<rsup|2><frac|\<partial\><rsup|2>V|\<partial\>S<rsup|2>>+<around*|(|r-q|)>S<frac|\<partial\>V|\<partial\>S>-r
    V=0
  </equation>

  In general, we have no explicit solution of this equation, usually, we use
  numerical methods to solve it. Here arise our question: how can we
  determine the implied volatility if we have the imformation in
  <math|t<rsub|0>>? Here we consider an European call option, which is the
  problem Q as follows:

  <\quotation>
    <strong|Problem 1.> Let <math|V=V<around*|(|S,t;\<sigma\>,K,T|)>> be a
    call option price, satisfying

    <\eqnarray>
      <tformat|<table|<row|<cell|<frac|\<partial\>V|\<partial\>t>+<frac|1|2>\<sigma\><rsup|2><around*|(|S,t|)>S<rsup|2><frac|\<partial\><rsup|2>V|\<partial\>S<rsup|2>>+<around*|(|r-q|)>S<frac|\<partial\>V|\<partial\>S>-r
      V>|<cell|=>|<cell|0,<space|1em><around*|(|0\<leqslant\>S\<less\>\<infty\>,0\<leqslant\>t\<less\>T|)><eq-number><label|eqn3>>>|<row|<cell|V<around*|(|S,T|)>>|<cell|=>|<cell|<around*|(|S-K|)><rsup|+><space|1em><around*|(|0\<leqslant\>S\<less\>\<infty\>|)><eq-number><label|eqn4>>>>>
    </eqnarray>

    Suppose at <math|t=t<rsup|*\<star\>*><rsup|*>\<nocomma\>,<around*|(|0\<leqslant\>t<rsup|\<star\>>\<less\>T<rsub|1>|)>,S=S<rsup|\<star\>>>,\ 

    <\equation*>
      V<around*|(|S<rsup|\<star\>>,t<rsup|\<star\>>;\<sigma\>,K,T|)>=F<around*|(|K,T|)><space|1em><around*|(|0\<less\>K\<less\>\<infty\>,T<rsub|1>\<leqslant\>T\<leqslant\>T<rsub|2>|)>
    </equation*>

    is given, find <math|\<sigma\>=\<sigma\><around*|(|S,t|)>>,
    <math|<around*|(|0\<leqslant\>S\<less\>\<infty\>,T<rsub|1>\<leqslant\>t\<leqslant\>T<rsub|2>|)>>
  </quotation>

  \;

  <section|Dupire Method>

  <subsection|Dupire's formula>

  The inverse problem (1) was rst considered by Dupire in <cite|dupire1994>.
  He showed that option prices given for all possible strikes and maturities
  completely determine the local volatility function.

  Let <math|V=V<around*|(|S,t;K,T|)>> be a european call option price, and
  define\ 

  <\equation>
    <frac|\<partial\><rsup|2>V|\<partial\>K<rsup|2>>=G<around*|(|S,t;K,T|)><label|eqn5>
  </equation>

  From the equations (<reference|eqn3>, <reference|eqn4>), <math|G> satisfies

  <\equation>
    <label|eqn6><choice|<tformat|<table|<row|<cell|<frac|\<partial\>G|\<partial\>t>+<frac|1|2>\<sigma\><rsup|2><around*|(|S,t|)>S<rsup|2><frac|\<partial\><rsup|2>G|\<partial\>S<rsup|2>>+<around*|(|r-q|)>S<frac|\<partial\>G|\<partial\>S>-r
    G=0>>|<row|<cell|G<around*|(|S,t|)>=\<delta\><around*|(|K-S|)>=\<delta\><around*|(|S-K|)>>>>>>
  </equation>

  This is the definition of fundamental solution of Black-Scholes eqation
  (<reference|eqn6>) at <math|t=T>. Then by the theorem given by Ladyzenskaya
  etc., it is also the fundamental solotion of the adjoint equation of the
  problem given by (<reference|eqn6>), i.e.

  \ \ 

  <\equation>
    <label|eqn7><choice|<tformat|<table|<row|<cell|-<frac|\<partial\>G|\<partial\>T>+<frac|1|2><frac|\<partial\><rsup|2>|\<partial\>K<rsup|2>><around*|(|\<sigma\><rsup|2><around*|(|K,T|)>K<rsup|2>G|)>+<around*|(|r-q|)><frac|\<partial\>|\<partial\>K><around*|(|K
    G|)>-r G=0>>|<row|<cell|G<around*|(|S,t;K,t|)>=\<delta\><around*|(|K-S|)>>>>>><space|1em><around*|(|0\<leqslant\>K\<less\>\<infty\>,t\<leqslant\>T|)>
  </equation>

  After substituting (<reference|eqn5>) into equation (<reference|eqn7>), and
  \ simplifying some terms in (<reference|eqn7>), we have a Cauchy problem as
  follows:

  <\equation>
    <label|eqn8><choice|<tformat|<table|<row|<cell|-<frac|\<partial\>V|\<partial\>T>+<frac|1|2>K<rsup|2>\<sigma\><rsup|2><around*|(|K,T|)><frac|\<partial\><rsup|2>V|\<partial\>K<rsup|2>>+<around*|(|r-q|)>K<frac|\<partial\>V|\<partial\>K>-q
    V=0>>|<row|<cell|V<around*|\||<rsub|T=t>=|\<nobracket\>>
    <around*|(|S-K|)><rsup|+>>>>>><space|1em><around*|(|0\<leqslant\>K\<less\>\<infty\>,t\<leqslant\>T|)>
  </equation>

  \;

  From equation (<reference|eqn8>), we get

  <\equation>
    <label|eqn9>\<sigma\><around*|(|K,T|)>=<sqrt|<frac|<frac|\<partial\>V|\<partial\>T>+<around*|(|r-q|)>K<frac|\<partial\>V|\<partial\>K>+q
    V|<frac|1|2>K<rsup|2><frac|\<partial\><rsup|2>V|\<partial\>K<rsup|2>>>>
  </equation>

  However, this solution is ill-posed since a small error in <math|F> can
  result in big changes in its derivatives, especially the second
  derivatives. Dupire's formula (<reference|eqn9>) is found to be difcult to
  apply in practice. It therefore needs to be improved.

  \;

  <subsection|Duality Problem>

  Using the duality skill, \ we have reduced problem 1. to a typical terminal
  state observation problem.\ 

  <\quotation>
    <strong|Problem 2.> Let <math|V=V<around*|(|S,t;\<sigma\>,K,T|)>> be a
    call option price, and suppose at <math|t,S=S<rsub|0>>,
    <math|V<around*|(|K,T;S<rsub|0>,0|)>=F<around*|(|K,T|)><space|1em><around*|(|0\<less\>K\<less\>\<infty\>,T<rsub|1>\<leqslant\>T\<leqslant\>T<rsub|2>|)>>.
    Find <math|<wide|\<sigma\>|^><around*|(|K,T|)>=<choice|<tformat|<table|<row|<cell|\<sigma\><rsub|0><around*|(|<rsub|>K|)>>|<cell|0\<leqslant\>T\<leqslant\>T<rsub|1>>>|<row|<cell|\<sigma\><around*|(|K,T|)>>|<cell|T<rsub|1>\<leqslant\>T\<leqslant\>T<rsub|2>>>>>>>,
    <math|<around*|(|0\<less\>K\<less\>\<infty\>|)>>, s.t. the Dupire
    equation (where <math|\<tau\>=T-t>):

    <\equation>
      <label|eqn10><choice|<tformat|<table|<row|<cell|-<frac|\<partial\>V|\<partial\>\<tau\>>+<frac|1|2>K<rsup|2><wide|\<sigma\>|^><rsup|2><around*|(|K,T|)><frac|\<partial\><rsup|2>V|\<partial\>K<rsup|2>>+<around*|(|r-q|)>K<frac|\<partial\>V|\<partial\>K>-q
      V=0>>|<row|<cell|V<around*|\||<rsub|T=0>=|\<nobracket\>>
      <around*|(|S<rsub|0>-K|)><rsup|+>>>>>><space|1em><around*|(|0\<leqslant\>K\<less\>\<infty\>,t\<leqslant\>T|)>
    </equation>

    has the solution <math|V<around*|(|S,K;S<rsub|0>,0|)>=F<around*|(|K,T|)>>.
  </quotation>

  By transformation <math|y=ln<frac|K|S<rsub|0>>>,
  <math|v=<frac|1|S<rsub|0>>e<rsup|q \<tau\>>V>, <math|\<tau\>=T-t>,
  <math|v<around*|(|y,\<tau\>|)>=<frac|1|S<rsub|0>>V<around*|(|S<rsub|0>e<rsup|y>,\<tau\>|)>>,
  <math|v<rprime|'><around*|(|y,\<tau\>|)>=<frac|1|S<rsub|0>>F<around*|(|S<rsub|0>e<rsup|y>,\<tau\>|)>>,
  <math|a<around*|(|y|)>=<frac|1|2>\<sigma\><rsup|2><rsub|0><around*|(|S<rsub|0>e<rsup|y>|)>,a<around*|(|y,\<tau\>|)>=<frac|1|2>\<sigma\><rsup|2><around*|(|S<rsub|0>e<rsup|y>,\<tau\>|)>>
  and simplify the Problem 2, finally, we can get a problem decomposition as
  following two problems.

  <\quotation>
    <strong|Problem 2.1.> Find <math|a<around*|(|y|)>\<in\>A>=<math|<around*|{|y\<in\>\<bbb-R\>,0\<less\>t\<leqslant\>T<rsub|1>|}>>,
    such that\ 

    <\equation>
      <label|eqn11><choice|<tformat|<table|<row|<cell|<frac|\<partial\>v|\<partial\>\<tau\>>=a<around*|(|y|)><around*|(|<frac|\<partial\><rsup|2>v|\<partial\>y<rsup|2>>-<frac|\<partial\>v|\<partial\>y>|)>-<around*|(|r-q|)><frac|\<partial\>v|\<partial\>y>>>|<row|<cell|v<around*|(|y,0|)>=<around*|(|1-e<rsup|y>|)><rsup|+>>>>>>
    </equation>

    has the solution <math|v<around*|(|y,T<rsub|1>;a|)>=v<rprime|'><around*|(|y,T<rsub|1>|)>>
    when <math|t=T<rsub|1>>.\ 
  </quotation>

  <\quotation>
    <strong|Problem 2.2.>Find <math|a<around*|(|y,\<tau\>|)>\<in\>B>=<math|<around*|{|y\<in\>\<bbb-R\>,T<rsub|1>\<leqslant\>t\<leqslant\>T<rsub|2>|}>>,
    with initial condition <math|a<around*|(|y,T<rsub|1>|)>=a<around*|(|y|)>>,
    and such that\ 

    <\equation>
      <label|eqn12><choice|<tformat|<table|<row|<cell|<frac|\<partial\>v|\<partial\>\<tau\>>=a<around*|(|y,\<tau\>|)><around*|(|<frac|\<partial\><rsup|2>v|\<partial\>y<rsup|2>>-<frac|\<partial\>v|\<partial\>y>|)>-<around*|(|r-q|)><frac|\<partial\>v|\<partial\>y>>>|<row|<cell|v<around*|(|y,T<rsub|1>|)>=u<around*|(|y,T;a<rsub|0>|)>>>>>>
    </equation>

    has the solution <math|v<around*|(|y,\<tau\>;a|)>=v<rprime|'><around*|(|y,\<tau\>|)>>.
  </quotation>

  \;

  <section|Regularization Method>

  <subsection|Regularization idea>

  To solve the ill-posed problem, we take the regularization method which is
  proposed by A. N. Tikhonov in 1950s. Its main idea is as follows.

  Let <math|U,F> be given metric spaces, <math|A> is an operator deffined on
  <math|F>, that is <math|A:F\<rightarrow\>U>. The original problem:
  <math|Given> <math|V<rsub|0>\<in\>U>, find <math|\<sigma\><rsub|0>\<in\>F>,
  s.t. <math|A<around*|(|\<sigma\><rsub|0>|)>=V<rsub|0>>.

  There some two possibilities:

  1. We know that <math|A F\<subset\>U>, but <math|A F\<neq\>U>, hence above
  equation may not have solution in <math|F.>

  2. According to the given <math|V<rsub|0>>, the above equation may have
  solution <math|\<sigma\><rsub|0>>, but it is unstable. That's,
  <math|\<sigma\><rsub|0>> has no continous depedence on <math|V<rsub|0>>. We
  can say that the small change in <math|V<rsub|0>> in <math|U> may lead to a
  big change of <math|\<sigma\><rsub|0>> in <math|F>.

  Then main idea of the regularization method is to use a cluster of
  well-posed problems to take place of the original problem. Although it is
  just an approximation solution to the original problem, the process of
  greeting the approximation solution is quite stable. We can achieve the
  approximation solution in computing and use this solution to instead of the
  original true solution. We call the well-pose problems as the
  \Pregularization problem\Q. \ It is often from the operator A and takes the
  parameter <math|N> to implement it.

  <\quotation>
    <strong|Regularization Problem>: Given <math|V<rsub|0>\<in\>U>, find
    <math|\<sigma\><rsub|\<alpha\>>\<in\>F<around*|(|N\<gtr\>0|)>>, s.t.

    <\equation>
      J<rsub|\<alpha\>><around*|(|\<sigma\><rsub|\<alpha\>>|)>=min<rsub|\<sigma\>\<in\>F>J<rsub|\<alpha\>><around*|(|\<sigma\>|)><label|eqn13>
    </equation>

    \;

    where <math|J<rsub|\<alpha\>><around*|(|\<sigma\>|)>=\<rho\><rsup|U><around*|(|A\<sigma\>,V<rsub|0>|)>+N<with|math-font|cal|R<around*|(|\<sigma\>|)>>>,
    <math|\<rho\><rsup|U>> is the distance in space <math|U>.
  </quotation>

  We call <math|N<with|math-font|cal|R<around*|(|\<sigma\>|)>> >the
  regularizatoin operator, and <math|\<alpha\>> the rehularization factor.
  The regularization method is that solving the well-posed problem
  (<reference|eqn13>) by using the solution <math|\<sigma\><rsub|\<alpha\>>>
  instead of <math|\<sigma\><rsub|0>>. The <math|\<alpha\>> can be any
  number. When <math|\<alpha\>=0>, <math|\<sigma\><rsub|\<alpha\>>=\<sigma\><rsub|0>>
  we can get the true solution, but the algorithm is unstable. When
  <math|\<alpha\>> becomes bigger, <math|\<sigma\><rsub|\<alpha\>>> will get
  more far from the true solution <math|\<sigma\><rsub|0>>. So in practice,
  we try our best to take the <math|\<alpha\>> smaller then we can make the
  process more stable.

  \;

  \;

  \;

  <subsection|Regularization version of our problem>

  Now we go back to the problems 2.1 and 2.2. Firstly we take the
  regularization method into the problem 2.1 and we call it problem
  <math|Q<rsub|0>> as follows:

  <\quotation>
    <strong|Problem <math|Q<rsub|0>><strong|>>: Find
    <math|<wide|a|\<bar\>><around*|(|y|)>\<in\><with|math-font|cal|A>>, such
    that <math|J<rsub|\<alpha\>><rsup|><around*|(|<wide|a|\<bar\>><rsub|>|)>=min<rsub|a<rsub|>\<in\><with|math-font|cal|A>>
    J<rsub|\<alpha\>><rsup|><around*|(|a|)>>, where

    <\equation>
      J<rsub|\<alpha\>><around*|(|a|)>=<frac|1|2><big|int><rsub|\<bbb-R\>><around*|\||v<around*|(|y,\<tau\><rsup|\<star\>*>;a|)>-v<rsup|\<star\>><around*|(|y|)>|\|><rsup|2>\<mathd\>y+<frac|\<alpha\>|2><big|int><rsub|\<bbb-R\>><around*|\||<frac|\<mathd\>a|\<mathd\>y>|\|><rsup|2>\<mathd\>y
    </equation>

    <\equation*>
      v<rsup|\<star\>><around*|(|y|)>=<frac|1|S<rsup|\<star\>>>e<rsup|q\<tau\><rsup|\<star\>>>F<around*|(|S<rsup|\<star\>>e<rsup|y>|)>
    </equation*>

    , <math|v<around*|(|y,\<tau\>;a|)>> is the solution to the Cauchy problem
    2.1, \ and\ 

    <\equation>
      <with|math-font|cal|A>=<around*|{|a<around*|(|y|)>\|0\<less\>a<rsub|0>\<leqslant\>a<around*|(|y|)>\<leqslant\>a<rsub|1>,<big|int><rsub|\<bbb-R\>><around*|\||<frac|\<mathd\>a|\<mathd\>y>|\|><rsup|2>\<mathd\>y\<less\>\<infty\>|}>
    </equation>

    Here, <math|a<rsub|0>,a<rsub|1>> are constants,
    <math|J<rsub|\<alpha\>><around*|(|a|)>> is called the cost functional,
    <math|a=a<around*|(|y|)>> is called the control variable, and
    <math|<wide|a|\<bar\>><around*|(|y|)>> is called the optimal control or
    minimizer. The variational problem <math|Q<rsub|0>> is called the
    <strong|optimal control problem>.
  </quotation>

  In Jiang's paper <cite|lishang2001identifying>, he proved the following
  theorem:

  <\theorem>
    The variational problem <math|Q<rsub|0>> has at least one minimizer
    <math|<wide|a|\<bar\>><around*|(|y|)>\<in\><with|math-font|cal|A>> of
    <math|J<rsub|\<alpha\>><around*|(|a|)>>, i.e.
    <math|J<rsub|\<alpha\>><around*|(|<wide|a|\<bar\>>|)>=min<rsub|\<alpha\>\<in\><with|math-font|cal|A>>J<rsub|\<alpha\>><around*|(|a|)>>.
  </theorem>

  In order to get the regurization version of problem 2.2, we can make the
  time range <math|<around*|[|T<rsub|1>,T<rsub|2>|]>> discrete. Set
  <math|T<rsub|1>=\<tau\><rsub|0>\<less\>\<tau\><rsub|1>\<less\>
  \<ldots\>\<less\>\<tau\><rsub|N>=T<rsub|2>>,
  <math|h=<frac|1|N><around*|(|T<rsub|2>-T<rsub|1>|)>>,
  <math|\<tau\><rsub|n>=T<rsub|1>+n h>, <math|n=0,1,2\<ldots\>,N>. From \ the
  problem <math|Q<rsub|0>>, when <math|\<tau\>=\<tau\><rsub|0>> we can get
  the <math|<wide|a|\<bar\>><around*|(|y|)>> and then we use the induction
  method, then we can get <math|<wide|a|\<bar\>><around*|(|y|)>=a<around*|(|y,\<tau\><rsub|n>|)>>,
  when <math|\<tau\>=\<tau\><rsub|n>>.

  <\quotation>
    <strong|Problem <math|Q<rsub|n>><strong|>>: Suppose we know
    <math|<wide|a|\<bar\>><rsub|0><around*|(|y|)>=a<around*|(|y|)>>,<math|<wide|a|\<bar\>><rsub|1><around*|(|y|)>,\<ldots\>,<wide|a|\<bar\>><rsub|n-1><around*|(|y|)>>
    and <math|v<around*|(|t,\<tau\>;<wide|a<rsub|>|\<bar\>><rsub|k>|)>,<around*|(|k=0,1,2,\<ldots\>,n-1|)>>which
    is the solution of the equations:

    <\equation>
      <frac|\<partial\>v|\<partial\>\<tau\>>=<wide|a|\<bar\>><rsub|k><around*|(|y|)><around*|(|<frac|\<partial\><rsup|2>v|\<partial\>y<rsup|2>>-<frac|\<partial\>v|\<partial\>y>|)>-r<frac|\<partial\>v|\<partial\>y>\<nocomma\>,<space|1em><around*|(|y\<in\>\<bbb-R\>,\<tau\><rsub|k-1>\<leqslant\>\<tau\>\<leqslant\>\<tau\><rsub|k>|)><label|eqn16>
    </equation>

    <\equation>
      v<around*|(|y,\<tau\><rsub|k-1>|)>=v<around*|(|y,\<tau\><rsub|k-1>;<wide|a|\<bar\>><rsub|k-1>|)>,<space|1em><around*|(|y\<in\>\<bbb-R\>|)><label|eqn17>
    </equation>

    \ Find <math|<wide|a|\<bar\>><rsub|n><around*|(|y|)>\<in\><with|math-font|cal|A>>,
    such that <math|J<rsub|\<alpha\>><rsup|n><around*|(|<wide|a<rsub|>|\<bar\>><rsub|n><rsub|>|)>=min<rsub|a<rsub|n>\<in\><with|math-font|cal|A>>
    J<rsub|\<alpha\>><rsup|n><around*|(|a<rsub|n>|)>>, where

    <\eqnarray*>
      <tformat|<table|<row|<cell|J<rsub|\<alpha\>><rsup|n><around*|(|a<rsub|n>|)>>|<cell|=>|<cell|<frac|1|2h><big|int><rsub|\<bbb-R\>><around*|\||v<around*|(|y,\<tau\><rsub|n><rsup|*>;a<rsub|n>|)>-v<rsup|\<star\>><around*|(|y,\<tau\><rsub|n>|)>|\|><rsup|2>\<mathd\>y+>>|<row|<cell|>|<cell|>|<cell|<frac|\<alpha\>|2><around*|{|<frac|1|h><big|int><rsub|\<bbb-R\>><around*|\||a<rsub|n><around*|(|y|)>-<wide|a|\<bar\>><rsub|n-1>|\|><rsup|2>\<mathd\>y+<big|int><rsub|\<bbb-R\>><around*|\||<frac|\<mathd\>a<rsub|n>|\<mathd\>y>|\|><rsup|2>\<mathd\>y|}><eq-number>>>>>
    </eqnarray*>

    \;

    <\equation*>
      v<rsup|\<star\>><around*|(|y|)>=<frac|1|S<rsup|\<star\>>>e<rsup|q\<tau\><rsup|\<star\>>>F<around*|(|S<rsup|\<star\>>e<rsup|y>|)>
    </equation*>

    where <math|v<around*|(|y,\<tau\><rsub|n>;a<rsub|n>|)>> is the solution
    to equation (<reference|eqn16>,<reference|eqn17>).
  </quotation>

  Similarly, We also can prove that there exists a minimizer in variation
  problem <math|Q<rsub|n>>. i.e. we have following theorem:

  <\theorem>
    The variational problem <math|Q<rsub|n>> has at least one minimizer
    <math|<wide|a|\<bar\>><rsub|n><around*|(|y|)>\<in\><with|math-font|cal|A>>
    of <math|J<rsub|\<alpha\>><rsup|n><around*|(|a|)>>, i.e.
    <math|J<rsub|\<alpha\>><rsup|n><around*|(|<wide|a|\<bar\>><rsub|n>|)>=min<rsub|a<rsub|n>\<in\><with|math-font|cal|A>>J<rsub|\<alpha\>><rsup|n><around*|(|a<rsub|n>|)>>.
  </theorem>

  Now we consider when <math|h\<rightarrow\>0>, how the
  <math|<around*|{|<wide|a|\<bar\>><rsub|n><around*|(|y|)>|}>> will go. We
  fixx <math|h>, and define the function <math|a<rsup|h><around*|(|y,\<tau\>|)>>
  and <math|v<rsup|h><around*|(|y,\<tau\>|)>> as follows:

  <\eqnarray*>
    <tformat|<table|<row|<cell|a<rsup|h><around*|(|y,\<tau\>|)>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<wide|a|\<bar\>><rsub|n><around*|(|y|)>>|<cell|\<tau\>=\<tau\><rsub|n>>>|<row|<cell|<frac|\<tau\>-\<tau\><rsub|n-1>|h><wide|a|\<bar\>><rsub|n><around*|(|y|)>+<frac|\<tau\><rsub|n>-\<tau\>|h><wide|a|\<bar\>><rsub|n-1><around*|(|y|)>>|<cell|\<tau\><rsub|n-1>\<leqslant\>\<tau\>\<leqslant\>\<tau\><rsub|n>>>>>>>>|<row|<cell|v<rsup|h><around*|(|y,\<tau\>|)>>|<cell|=>|<cell|v<around*|(|y,\<tau\>;<wide|a|\<bar\>><rsub|n>|)>,<space|1em>\<tau\><rsub|n-1>\<leqslant\>\<tau\>\<leqslant\>\<tau\><rsub|n>,n=1,2,\<ldots\>N>>>>
  </eqnarray*>

  \;

  We can get a result as follows:

  <\theorem>
    When <math|h\<rightarrow\>0>, <math|<around*|{|a<rsup|h><around*|(|y,\<tau\>|)>,v<rsup|h><around*|(|y,\<tau\>|)>|}>>
    uniformly convergences to the limit function
    <math|<around*|{|a<around*|(|y,\<tau\>|)>,v<around*|(|y,\<tau\>|)>|}>>.
  </theorem>

  Esitimation of <math|a<rsup|k><around*|(|y,\<tau\>|)>> are constructed
  which are uniformly bounded and it is independent of the mesh parameter
  <math|h>, so we can take the limit for the approximate sequence
  <math|a<around*|(|y,\<tau\>|)>> as <math|h\<rightarrow\>0>.

  \;

  <subsection| Necessary optimality condition>

  We now turn to necessary optimality conditions which have to be satised by
  each optimal control <math|<wide|a|\<bar\>>>.

  <\theorem>
    If <math|<wide|a|\<bar\>>> be the solution of the optimal control problem
    <math|Q<rsub|0>>, then there exists a triple of functions
    <math|<around*|{|<wide|a|\<bar\>><around*|(|y|)>,<wide|v|\<bar\>><around*|(|y,\<tau\>|)>,<wide|\<varphi\>|\<bar\>><around*|(|y,\<tau\>|)>|}>>
    satisfying the following system in the rigion
    <math|<around*|{|y\<in\>\<bbb-R\>,0\<leqslant\>\<tau\>\<leqslant\>T<rsub|1>|}>>:

    <\eqnarray>
      <tformat|<table|<row|<cell|<frac|\<partial\><wide|v|\<bar\>>|\<partial\>\<tau\>>>|<cell|=>|<cell|<wide|a|\<bar\>><around*|(|y|)><around*|(|<frac|\<partial\><rsup|2><wide|v|\<bar\>>|\<partial\>y<rsup|2>>-<frac|\<partial\><wide|v|\<bar\>>|\<partial\>y>|)>-<around*|(|r-q|)><frac|\<partial\><wide|v|\<bar\>>|\<partial\>y><eq-number><label|eqn19>>>|<row|<cell|<wide|v|\<bar\>><around*|\||<rsub|\<tau\>=0>|\<nobracket\>>>|<cell|=>|<cell|<around*|(|1-e<rsup|y>|)><rsup|+><eq-number><label|20>>>|<row|<cell|-<frac|\<partial\><wide|\<varphi\>|\<bar\>>|\<partial\>\<tau\>>>|<cell|=>|<cell|<frac|\<partial\><rsup|2><around*|(|<wide|a|\<bar\>><around*|(|y|)><wide|\<varphi\>|\<bar\>>|)>|\<partial\>y<rsup|2>>-<frac|\<partial\><around*|(|<wide|a|\<bar\>><around*|(|y|)><wide|\<varphi\>|\<bar\>>|)>|\<partial\>y>-<around*|(|r-q|)><frac|\<partial\><wide|\<varphi\>|\<bar\>>|\<partial\>y><eq-number><label|21>>>|<row|<cell|<wide|\<varphi\>|\<bar\>><around*|\||<rsub|\<tau\>=T<rsub|1>>|\<nobracket\>>>|<cell|=>|<cell|<wide|v|\<bar\>><around*|(|y,T<rsub|1>|)>-v<rsup|*\<star\>><around*|(|y,T<rsub|1>|)><eq-number><label|22>>>>>
    </eqnarray>

    and\ 

    <\equation>
      <big|int><rsub|0><rsup|T<rsub|1>><big|int><rsub|\<bbb-R\>>\<varphi\><around*|(|h-a|)><around*|(|<wide|v|\<bar\>><rsub|y
      y>-<wide|v|\<bar\>><rsub|y>|)>\<mathd\>y\<mathd\>\<tau\>+\<alpha\><big|int><rsub|\<bbb-R\>>\<nabla\>a\<nabla\><around*|(|h-a|)>\<mathd\>y\<geqslant\>0<label|23>
    </equation>

    for any <math|h\<in\>A>. \ \ \ \ 
  </theorem>

  We also have a similar theorem for <math|Q<rsub|n>> problem, which we omit
  here.

  \;

  <subsection|A uniqueness result>

  This is a series of forward-backward parabolic equations coupled with an
  elliptic variation\ 

  inequality. Here we will prove the implied volatility
  <math|<wide|a|\<bar\>><around*|(|y|)>> uniquness.

  <\theorem>
    Suppose <math|a<rsub|1><around*|(|y|)>>, <math|a<rsub|2><around*|(|y|)>>
    be two minimizers of the modified optimal control problem Q1. If there
    exists a point <math|y<rsub|0>> such that
    <math|a<rsub|1><around*|(|y<rsub|0>|)>=a<rsub|2><around*|(|y<rsub|0>|)>>
    and <math|\<rho\><around*|(|y|)>\<geqslant\>\<rho\><rsub|0>\<gtr\>0>,
    <math|<big|int><rsub|\<bbb-R\>><frac|\<mathd\>y|\<rho\><around*|(|y|)>>\<less\>\<infty\>>,
    then for small <math|\<tau\><rsup|\<star\>>> we have\ 

    <\equation*>
      a<rsub|1><around*|(|y|)>\<equiv\>a<rsub|2><around*|(|y|)><space|1em><text|for
      any >y\<in\>R
    </equation*>
  </theorem>

  <section|numerical method>

  <subsection|sub-problems>

  We converted the problems of recover local volatility into variational
  problem <strong| Problem ><math|Q<rsub|0>>. \ recall we derived its
  necessary condition from last section. we only need to find a triple
  <math|<around*|{|<wide|a|\<bar\>><around*|(|y|)>,<wide|v|\<bar\>><around*|(|y,\<tau\>|)>,<wide|\<varphi\>|\<bar\>><around*|(|y,\<tau\>|)>|}>>
  satisfying [<reference|eqn19>] - [<reference|23>]. the problem can be
  divided into following subproblems:

  <\enumerate-numeric>
    <item>given current time <math|t=0> and current stock price
    <math|S<rsub|0>> we can observe the option price as a function of strike
    price, i.e. <math|F<around*|(|K|)>>. then define
    <math|v<rsub|><rprime|'><around*|(|y|)>=<frac|1|S<rsub|0>>F<around*|(|S<rsub|0>e<rsup|y>|)>>,
    where <math|y=ln<around*|(|<frac|K|S<rsub|0>>|)>>.

    <item>set from B-S formula, by strict monotonicity of this function w.r.t
    <math|\<sigma\>>, we can uniquely implied volatility from
    <math|F<around*|(|K|)>>, that is <math|\<sigma\>=\<sigma\><rsub|0><around*|(|K|)>>.

    <item>Solve Cauchy problem [<reference|eqn19>[<reference|20>] where we
    set <math|<wide|a|\<bar\>><rsub|0>=a<rsub|0>>to get
    <math|v<rsub|0><around*|(|y,t|)>>.

    <item>to get <math|\<varphi\><rsub|0><around*|(|y,\<tau\>|)>>, we need
    toset <math|<wide|a|\<bar\>><rsub|0>=a<rsub|0>> and
    <math|\<varphi\><around*|(|y,T<rsub|1>|)>=v<rsub|0><around*|(|y,T<rsub|1>|)>-v<rsub|><rprime|'><around*|(|y|)>>,
    then sovle the Cauchy problem to backward parabolic equation
    [<reference|21>][<reference|22>]

    <item>once we get <math|\<varphi\><rsub|0>>, \ we can solve <math|a> in
    [<reference|23>] by convcert [<reference|23>] into variational
    inequality.
  </enumerate-numeric>

  \;

  \;

  \;

  <\bibliography|bib|tm-plain|ref.bib>
    <\bib-list|4>
      <bibitem*|1><label|bib-dupire1994>Duprie<nbsp>B.<newblock> Pricing with
      a smile.<newblock> <with|font-shape|italic|Risk>, 7:18--20,
      1994.<newblock>

      <bibitem*|2><label|bib-jiang2003new>Lishang<nbsp>Jiang,
      Qihong<nbsp>Chen, Lijun<nbsp>Wang<localize| and >Jin
      E<nbsp>Zhang.<newblock> A new well-posed algorithm to recover implied
      local volatility.<newblock> <with|font-shape|italic|Quantitative
      Finance>, 3(6):451--457, 2003.<newblock>

      <bibitem*|3><label|bib-jiang2005mathematical>Lishang<nbsp>Jiang<localize|
      and >Canguo<nbsp>Li.<newblock> <with|font-shape|italic|Mathematical
      modeling and methods of option pricing>.<newblock> World Scientific,
      2005.<newblock>

      <bibitem*|4><label|bib-lishang2001identifying>Jiang<nbsp>Lishang<localize|
      and >Tao<nbsp>Youshan.<newblock> Identifying the volatility of
      underlying assets from option prices.<newblock>
      <with|font-shape|italic|Inverse Problems>, 17(1):137, 2001.<newblock>
    </bib-list>
  </bibliography>
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
    <associate|19|<tuple|4|5>>
    <associate|199|<tuple|4|5>>
    <associate|20|<tuple|20|5>>
    <associate|21|<tuple|21|5>>
    <associate|22|<tuple|22|5>>
    <associate|23|<tuple|23|5>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4|6>>
    <associate|auto-11|<tuple|4.1|6>>
    <associate|auto-12|<tuple|5|6>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|2>>
    <associate|auto-4|<tuple|2.2|3>>
    <associate|auto-5|<tuple|3|3>>
    <associate|auto-6|<tuple|3.1|3>>
    <associate|auto-7|<tuple|3.2|4>>
    <associate|auto-8|<tuple|3.3|5>>
    <associate|auto-9|<tuple|3.4|5>>
    <associate|bib-dupire1994|<tuple|1|6>>
    <associate|bib-jiang2003new|<tuple|2|6>>
    <associate|bib-jiang2005mathematical|<tuple|3|6>>
    <associate|bib-lishang2001identifying|<tuple|4|6>>
    <associate|eqn10|<tuple|10|3>>
    <associate|eqn11|<tuple|11|3>>
    <associate|eqn12|<tuple|12|3>>
    <associate|eqn13|<tuple|13|4>>
    <associate|eqn16|<tuple|16|4>>
    <associate|eqn17|<tuple|17|4>>
    <associate|eqn19|<tuple|19|?>>
    <associate|eqn3|<tuple|3|2>>
    <associate|eqn4|<tuple|4|2>>
    <associate|eqn5|<tuple|5|2>>
    <associate|eqn6|<tuple|6|2>>
    <associate|eqn7|<tuple|7|2>>
    <associate|eqn8|<tuple|8|3>>
    <associate|eqn9|<tuple|9|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      lishang2001identifying

      jiang2003new

      jiang2005mathematical

      dupire1994

      lishang2001identifying
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1.<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.<space|2spc>Dupire
      Method> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1.<space|2spc>Dupire's formula
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2.<space|2spc>Duality Problem
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.<space|2spc>Regularization
      Method> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1.<space|2spc>Regularization idea
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|3.2.<space|2spc>Regularization version of
      our problem <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|3.3.<space|2spc> Necessary optimality
      condition <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|3.4.<space|2spc>A uniqueness result
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4.<space|2spc>numerical
      method> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1.<space|2spc>sub-problems
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>