<TeXmacs|1.99.12>

<style|generic>

<\body>
  <\hide-preamble>
    \;

    <assign|warning-text|<macro|Law>>
  </hide-preamble>

  <doc-data|<doc-title|Kepler's Laws: A Calculus
  Project>|<doc-author|<\author-data|<author-name|Wenchao
  ZHANG>|<\author-affiliation>
    Spring 2011, SUSTC
  </author-affiliation>>
    Spring
  </author-data>>|<doc-date|<date>>|<\doc-note>
    This project should be worked as a team. There are three additional
    teammates in our team, say, Tao Luo, Zhao Yue, Zhi Zhang. However, They
    did almost nothing. The manuscripts of the document is made on Jun 2,
    2011. Nine years after, I Made a corrected version based on the marks and
    comments by Prof. Xuefeng Wang.

    \;
  </doc-note>>

  <abstract-data|<\abstract>
    This article is to derive Kepler's three laws for planetary motion with
    the method which we have learnt in the Calculus class. What we do is the
    same as what Newton did several hundreds of years ago. To derive these
    laws, we may use the law of universal gravitation, Newton's second law,
    vector differentials and integrals, polar coordinates, cross and dot
    products of vectors etc. At last, we use Kepler's laws to compute the
    height of synchronous satellites of the earth.

    <with|font-series|bold|Keywords>: Kepler's laws, gravitation, Newton
    laws, ellipse, orbits, differential, velocity, radial vector,
    geosynchronous satellite.
  </abstract>>

  <section|About Kepler's laws>

  In celestial mechanics, Kepler laws describe the motion of an orbiting body
  as an ellipse, parabola, or hyperbola, which forms a two-dimensional
  orbital plane in three-dimensional space. It considers only the
  gravitational attraction of two bodies, neglecting interactions with other
  objects, atmospheric drag, and so on. It is said to be a solution of a
  special case of the two-body problem, known as the Kepler problem. As a
  theory in classical mechanics, it also does not take into account the
  effects of general relativity. These three laws are following:

  <\warning>
    <dueto|elliptical orbit law>The planets orbit the sun in elliptical
    orbits with the sun at one focus.
  </warning>

  <\warning>
    <dueto|equal-area law>The line connecting a planet to the sun sweeps out
    equal areas in equal amounts of time.
  </warning>

  <\warning>
    <dueto|period law>The time required for a planet to orbit the sun, called
    its period, is proportional to the long axis of the ellipse raised to the
    3/2 power. The constant of proportionality is the same for all the
    planets.
  </warning>

  The second law was discovered before the first one, for it can only make
  conclusion by data, while the first laws change a period as well as
  people's mind about universe; and the third one was discovered after many
  years (for ten years) since the discoveries of the first two, because it's
  a rule for not only planets but also other celestial bodies.

  \;

  <section|How Kepler find the laws>

  The astronomer Tycho Brahe, the last of the great naked-eye astronomers and
  his protege Johannes Kepler, who together came up with the first simple and
  accurate description of how the planets actually do move. The difficulty of
  their task is suggested by the figure left, which shows how the relatively
  simple orbital motions of the earth and Mars combine so that as seen from
  earth Mars appears to be staggering in loops like a drunken sailor.

  However, After Brahe's death, it fell to his former assistant Kepler to try
  to make some sense out of the volumes of data. Kepler, in contradiction to
  his late boss, had formed a conjecture, a correct one as it turned out, in
  favor of the theory that the earth and planets revolved around the sun,
  rather than the earth staying fixed and everything rotating about it.
  Although such direct experiments were not carried out until the 19th
  century, what convinced everyone of the sun-centered system in the 17th
  century was that Kepler was able to come up with a surprisingly simple set
  of mathematical and geometrical rules for describing the planets' motion
  using the sun-centered assumption. After 900 pages of calculations and many
  false starts and dead-end ideas, Kepler finally synthesized the data into
  is three laws [<reference|pics>].

  Before Kepler's declaring his ellipse orbits of planets, everyone believed
  the wonderful theory by Ptolemy, which orbit just like below.

  <\big-figure|<with|gr-mode|<tuple|edit|point>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-auto-crop|true|<graphics||<point|-0.252993|-0.138395>|<carc|<point|-1.22667|1.13161>|<point|0.974682497684879|0.856445958460114>|<point|0.593679719539622|-1.4507375314195>>|<text-at|O|<point|-0.612829|-0.37123>>|<point|0.382012|-0.467621>|<point|0.974682|0.856446>|<line|<point|0.382012|-0.467621>|<point|0.974682|0.856446>>|<carc|<point|0.779551|0.42051>|<point|1.20318852188508|0.460806819230843>|<point|0.547886507617545|1.23176080116577>>|<text-at|E|<point|0.382012|-0.731066>>|<text-at|C|<point|0.974682|0.856446>>|<point|1.34694|1.21696>|<line|<point|1.34694|1.21696>|<point|0.974665961105966|0.856445958460114>>|<text-at|M|<point|1.35820767654447|1.21632345279246>>|<spline|<point|1.3582|1.21631>|<point|0.403178330466993|1.72428561979098>|<point|-0.54932861489615|0.983446884508533>|<point|-0.379994046831591|0.983446884508533>|<point|-1.20550006614632|1.70311879878291>|<point|-2.34850840058209|0.962280063500463>>>>>
    An epicycle combines with a bisector
  </big-figure>

  <section|Kepler's first law>

  An ellipse is a particular class of mathematical shapes that is most
  similar to a circle. The Sun is not at the center of the ellipse but is at
  one of the focal points. The other focal point is marked with a lighter dot
  but is a point that has no physical significance for the orbit. Ellipses
  have two focal points neither of which is in the center of the ellipse.
  Circles are a special case of an ellipse that are not stretched out and in
  which both focal points coincide at the center.

  By Newton's second laws,

  <\equation*>
    <wide|F|\<vect\>><rsub|net>=m <frac|\<mathd\><rsup|2><wide|r|\<vect\>>|\<mathd\>
    t<rsup|2>>,
  </equation*>

  While by the law of universal gravitation

  <\equation*>
    <wide|F|\<vect\>><rsub|net>=<wide|F|\<vect\>><rsub|g>=-<frac|G M
    m|<around*|\||<wide|r|\<vect\>>|\|><rsup|2>><wide|r|^>=-<frac|G M
    m|<around*|\||<wide|r|\<vect\>>|\|><rsup|2>><frac|<wide|r|\<vect\>>|<around*|\||<wide|r|\<vect\>>|\|>>=-<frac|G
    M m <wide|r|\<vect\>>|<around*|\||<wide|r|\<vect\>>|\|><rsup|3>>.\ 
  </equation*>

  Then we have

  <\equation>
    m <frac|\<mathd\><rsup|2><wide|r|\<vect\>>|\<mathd\> t<rsup|2>>=-<frac|G
    M m <wide|r|\<vect\>>|<around*|\||<wide|r|\<vect\>>|\|><rsup|3>>
  </equation>

  \;

  Take the cross product of <math|<wide|r|\<vect\>>> on both sides of (1), we
  get

  <\equation*>
    <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<table|<row|<cell|<wide|r|\<vect\>>\<times\>m<frac|d<rsup|2>*<wide|r|\<vect\>>|d*t<rsup|2>>=<wide|r|\<vect\>>\<times\>-<frac|G*M*m<wide|r|\<vect\>>|<around|\||<wide|r|\<vect\>>|\|><rsup|3>>=<wide|0|\<wide-varrightarrow\>>\<Rightarrow\><wide|r|\<vect\>>\<times\><frac|d*<wide|v|\<vect\>>|d*t>=<wide|0|\<wide-varrightarrow\>>>>|<row|<cell|<wide|r|\<vect\>>\<times\><frac|d*<wide|v|\<vect\>>|d*t>+<frac|d*<wide|r|\<vect\>>|d*t>\<times\><wide|v|\<vect\>>=<frac|d*<around|(|<wide|r|\<vect\>>\<times\><wide|v|\<vect\>>|)>|d*t>=<wide|0|\<wide-varrightarrow\>>+<frac|d*<wide|r|\<vect\>>|d*t>\<times\><wide|v|\<vect\>>=<wide|v|\<vect\>>\<times\><wide|v|\<vect\>>=<wide|0|\<wide-varrightarrow\>>>>>>>
  </equation*>

  Hence,\ 

  <\equation>
    <wide|r|\<vect\>>\<times\><wide|v|\<vect\>>=<wide|c|\<vect\>>
  </equation>

  where <math|<wide|c|\<vect\>>> is a constant vector with a fixed direction
  vertical to <math|><math|<wide|r|\<vect\>>,<wide|v|\<vect\>>>. Hence,
  <math|<wide|r|\<vect\>>,<wide|v|\<vect\>>> are in the same plane, and then
  the sun and the plane stay on the same plane.

  In addition,

  <\equation*>
    <frac|d|d*t><around*|(|<frac|<wide|r|\<vect\>>|<around|\||<wide|r|\<vect\>>|\|>>|)>=<frac|<frac|d*<wide|r|\<vect\>>|d*t>\|<wide|r|\<vect\>>\|-<frac|d<around|\||<wide|r|\<vect\>>|\|>|d*t>*<wide|r|\<vect\>>|<around|\||<wide|r|\<vect\>>|\|><rsup|2>>=<frac|d*<wide|r|\<vect\>>|d*t>*<frac|1|<around|\||<wide|r|\<vect\>>|\|>>-<frac|<frac|d<around|\||<wide|r|\<vect\>>|\|>|d*t><around|\||<wide|r|\<vect\>>|\|><wide|e<rsub|r>|\<wide-varrightarrow\>>|<around|\||<wide|r|\<vect\>>|\|><rsup|2>>=<frac|<wide|v|\<vect\>>|<around|\||<wide|r|\<vect\>>|\|>>-<frac|<wide|v|\<vect\>><rsub|r><around|\||<wide|r|\<vect\>>|\|>|<around|\||<wide|r|\<vect\>>|\|><rsup|2>>=<frac|<wide|v|\<vect\>>-<wide|v|\<vect\>><rsub|r>|<around|\||<wide|r|\<vect\>>|\|>>=<frac|<wide|v|\<vect\>><rsub|\<theta\>>|<around|\||<wide|r|\<vect\>>|\|>>=<frac|<around|\||<wide|r|\<vect\>>|\|><frac|d*\<theta\>|d*t>*<wide|e|\<vect\>><rsub|\<theta\>>|<around|\||<wide|r|\<vect\>>|\|>>=<frac|d*\<theta\>|d*t><wide|e<rsub|\<theta\>>|\<wide-varrightarrow\>>,
  </equation*>

  where <wide|<math|v<rsub|r>>|\<vect\>> is the radial velocity,
  <wide|<math|v<rsub|\<theta\>>>|\<vect\>> is the velocity which is
  perpendicular to <wide|<math|v<rsub|r>>|\<vect\>>, and
  <wide|<math|v<rsub|r>>|\<vect\>>+<wide|<math|v<rsub|\<theta\>>>|\<vect\>>=<wide|<math|v<rsub|>>|\<vect\>>,
  <wide|<math|e<rsub|r>>|\<vect\>> and <wide|<math|e<rsub|\<theta\>>>|\<vect\>>
  are the unit vectors of <wide|<math|v<rsub|r>>|\<vect\>> and
  <wide|<math|v<rsub|\<theta\>>>|\<vect\>> respectively.

  Or\ 

  <\equation>
    <frac|d|d*t><around*|(|<frac|<wide|r|\<vect\>>|<around|\||r|\|>>|)>=<frac|<frac|d*<wide|r|\<vect\>>|d*t>\|<wide|r|\<vect\>>\|-<frac|d<around|\||<wide|r|\<vect\>>|\|>|d*t>*<wide|r|\<vect\>>|<around|\||<wide|r|\<vect\>>|\|><rsup|2>>=<frac|d*<wide|r|\<vect\>>|d*t>*<frac|1|<around|\||<wide|r|\<vect\>>|\|>>-<frac|<frac|d*<wide|r|\<vect\>>|d*t>\|<wide|r|\<vect\>>\|<wide|e<rsub|r>|\<wide-varrightarrow\>>|<around|\||<wide|r|\<vect\>>|\|><rsup|2>>=<frac|<wide|v|\<vect\>>|<around|\||<wide|r|\<vect\>>|\|>>-<frac|<wide|v|\<vect\>><rsub|r><around|\||<wide|r|\<vect\>>|\|>|<around|\||<wide|r|\<vect\>>|\|><rsup|2>>=<frac|<wide|v|\<vect\>>|<around|\||<wide|r|\<vect\>>|\|>>-<frac|<around|(|<wide|r|\<vect\>>\<cdot\><wide|v|\<vect\>>|)>*<wide|e|\<vect\>><rsub|r>|<around|\||<wide|r|\<vect\>>|\|><rsup|2>>
  </equation>

  \;

  From (1), <math|m <frac|\<mathd\><rsup|2><wide|r|\<vect\>>|\<mathd\>
  t<rsup|2>>=-<frac|G M m <wide|r|\<vect\>>|<around*|\||<wide|r|\<vect\>>|\|><rsup|3>>>,
  <math|<frac|\<mathd\><rsup|><wide|v|\<vect\>>|\<mathd\> t>=-<frac|G M
  \ <wide|r|\<vect\>>|<around*|\||<wide|r|\<vect\>>|\|><rsup|3>>>. Take the
  cross product of <math|<wide|c|\<vect\>>> on both sides of it, we have

  <\equation*>
    <frac|d*<wide|v|\<vect\>>|d*t>\<times\><wide|c|\<vect\>>=-<frac|G*M<wide|r|\<vect\>>|<around|\||<wide|r|\<vect\>>|\|><rsup|3>>\<times\><wide|c|\<vect\>>=-<frac|G*M<wide|r|\<vect\>>|<around|\||<wide|r|\<vect\>>|\|><rsup|3>>\<times\><around|(|<wide|r|\<vect\>>\<times\><wide|v|\<vect\>>|)>=-<frac|G*M|<around|\||<wide|r|\<vect\>>|\|><rsup|3>>*<around|[|<around|(|<wide|r|\<vect\>>\<cdot\><wide|v|\<vect\>>|)><wide|r|\<vect\>>-<around|(|<wide|r|\<vect\>>\<cdot\><wide|r|\<vect\>>|)><wide|v|\<vect\>>|]>
  </equation*>

  The right hand side is exactly equal to the derivative of <math|<frac|G M
  <wide|r|\<vect\>>|<around*|\||<wide|r|\<vect\>>|\|>>>, namely, we could
  verify that from (3) that\ 

  <\equation*>
    <frac|\<mathd\>|\<mathd\> t><around*|(|<frac|G M
    <wide|r|\<vect\>>|<around*|\||<wide|r|\<vect\>>|\|>>|)>=-<frac|G*M|<around|\||<wide|r|\<vect\>>|\|><rsup|3>>*<around|[|<around|(|<wide|r|\<vect\>>\<cdot\><wide|v|\<vect\>>|)><wide|r|\<vect\>>-<around|(|<wide|r|\<vect\>>\<cdot\><wide|r|\<vect\>>|)><wide|v|\<vect\>>|]>=<frac|d*<wide|v|\<vect\>>|d*t>\<times\><wide|c|\<vect\>>
  </equation*>

  Recall that\ 

  <\equation*>
    <frac|d*<around*|(|<wide|v|\<vect\>>\<times\><wide|c|\<vect\>>|)>|d*t>=<frac|d*<wide|v|\<vect\>>|d*t>\<times\><wide|c|\<vect\>>+<wide|v|\<vect\>>\<times\><frac|d*<wide|c|\<vect\>>|d*t>
  </equation*>

  Since <math|<wide|c|\<vect\>>> is a constant vector, we get
  <math|<frac|d*<around*|(|<wide|v|\<vect\>>\<times\><wide|c|\<vect\>>|)>|d*t>=<frac|d*<wide|v|\<vect\>>|d*t>\<times\><wide|c|\<vect\>>.>

  Hence,\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|int><around*|(|<frac|d*<wide|v|\<vect\>>|d*t>\<times\><wide|c|\<vect\>>|)>\<mathd\>t>|<cell|=>|<cell|<big|int><around*|(|<frac|d*<around*|(|<wide|v|\<vect\>>\<times\><wide|c|\<vect\>>|)>|d*t>|)>\<mathd\>t=<big|int>d*<around*|(|<wide|v|\<vect\>>\<times\><wide|c|\<vect\>>|)>=<wide|v|\<vect\>>\<times\><wide|c|\<vect\>>+<wide|C|\<vect\>><rsub|1>>>|<row|<cell|<big|int><frac|\<mathd\>|\<mathd\>t><around*|(|<frac|G
    M <wide|r|\<vect\>>|<around*|\||<wide|r|\<vect\>>|\|>>|)>\<mathd\>t>|<cell|=>|<cell|<frac|G
    M <wide|r|\<vect\>>|<around*|\||<wide|r|\<vect\>>|\|>>+<wide|C|\<vect\>><rsub|2>>>>>
  </eqnarray*>

  Hence,\ 

  <\equation>
    <wide|v|\<vect\>>\<times\><wide|c|\<vect\>>=<frac|G M
    <wide|r|\<vect\>>|<around*|\||<wide|r|\<vect\>>|\|>>+<wide|C|\<vect\>><rsub|3>
  </equation>

  Take the dot product of <math|<wide|c|\<vect\>> > on both sides of equation
  (4), we obtain

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|<wide|v|\<vect\>>\<times\><wide|c|\<vect\>>|)>\<cdot\><wide|c|\<vect\>>>|<cell|=>|<cell|<frac|G
    M <wide|r|\<vect\>>|<around*|\||<wide|r|\<vect\>>|\|>>\<cdot\><wide|c|\<vect\>>+<wide|C|\<vect\>><rsub|3>\<cdot\><wide|c|\<vect\>>>>|<row|<cell|0>|<cell|=>|<cell|<frac|G
    M <wide|r|\<vect\>>|<around*|\||<wide|r|\<vect\>>|\|>>\<cdot\><around*|(|<wide|r|\<vect\>>\<times\><wide|v|\<vect\>>|)>+<wide|C|\<vect\>><rsub|3>\<cdot\><wide|c|\<vect\>>>>|<row|<cell|0>|<cell|=>|<cell|0+<wide|C|\<vect\>><rsub|3>\<cdot\><wide|c|\<vect\>>>>>>
  </eqnarray*>

  i.e. <math|<wide|C|\<vect\>><rsub|3>\<perp\><wide|c|\<vect\>>>. Take the
  dot product of <math|<wide|r|\<vect\>>> on both sides of equation (4), we
  obtain

  <\equation*>
    <around|(|<wide|v|\<vect\>>\<times\><wide|c|\<vect\>>|)>\<cdot\><wide|r|\<vect\>>=<frac|G*M<wide|r|\<vect\>>|<around|\||<wide|r|\<vect\>>|\|>>\<cdot\><wide|r|\<vect\>>+<wide|C<rsub|3>|\<vect\>>\<cdot\><wide|r|\<vect\>>=G*M\|<wide|r|\<vect\>>\|+C<rsub|3>*<around|(|<wide|i|\<vect\>>\<cdot\><wide|r|\<vect\>>|)>=G*M<around|\||<wide|r|\<vect\>>|\|>*<around*|(|1+<frac|C<rsub|3>|G*M>*cos
    \<theta\>|)>=G*M<around|\||<wide|r|\<vect\>>|\|>*<around|(|1+e*cos
    \<theta\>|)>
  </equation*>

  thus <math|<around*|\||<wide|r|\<vect\>>|\|>=<frac|<wide|r|\<vect\>>\<cdot\><around*|(|<wide|v|\<vect\>>\<times\><wide|c|\<vect\>>|)>|G
  M<around*|(|1+e cos \<theta\>|)>>>.\ 

  Or

  <\eqnarray*>
    <tformat|<table|<row|<cell|<wide|r|\<vect\>>\<cdot\><around*|(|<wide|v|\<vect\>>\<times\><wide|c|\<vect\>>|)>>|<cell|=>|<cell|<wide|r|\<vect\>>\<cdot\><around*|(|<wide|v|\<vect\>>\<times\><around*|(|<wide|r|\<vect\>>\<times\><wide|v|\<vect\>>|)>|)>=<wide|r|\<vect\>>\<cdot\><around*|(|<around*|(|<wide|v|\<vect\>>\<cdot\><wide|v|\<vect\>>|)><wide|r|\<vect\>>-<around*|(|<wide|v|\<vect\>>\<cdot\><wide|r|\<vect\>>|)><wide|v|\<vect\>>|)>=<around*|\||<wide|v|\<vect\>>|\|><rsup|2><around*|\||<wide|r|\<vect\>>|\|><rsup|2>-<around*|(|<wide|v|\<vect\>>\<cdot\><wide|r|\<vect\>>|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||<wide|v|\<vect\>>|\|><rsup|2><around*|\||<wide|r|\<vect\>>|\|><rsup|2><around*|(|1-cos
    <rsup|2>\<theta\>|)>=<around*|\||<wide|v|\<vect\>>|\|><rsup|2><around*|\||<wide|r|\<vect\>>|\|><rsup|2>sin<rsup|2>\<theta\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<wide|v|\<vect\>>\<times\><wide|r|\<vect\>>|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-<wide|c|\<vect\>>|)><rsup|2>=c<rsup|2>.>>>>
  </eqnarray*>

  Hence,\ 

  <\equation>
    <around*|\||<wide|r|\<vect\>>|\|>=<frac|<wide|r|\<vect\>>\<cdot\><around*|(|<wide|v|\<vect\>>\<times\><wide|c|\<vect\>>|)>|G
    M<around*|(|1+e cos \<theta\>|)>>=<frac|c<rsup|2>|G M<around*|(|1+e cos
    \<theta\>|)>>
  </equation>

  \;

  Set <math|m=<frac|c<rsup|2>|G M>,> then
  <math|<around*|\||<wide|r|\<vect\>>|\|>=<frac|M|1+e cos \<theta\>>>. This
  is the equation of the ellipse with eccentricity <math|e> with polar
  coordinates. To sum up, we proved that the orbits of planets was an
  ellipse, and our sun is on one focus of the ellipse.

  \;

  <section|Kepler's second law>

  Kepler's second law is equivalent to the fact that the force perpendicular
  to the radius vector is zero. The ``areal velocity'' is proportional to
  angular momentum, and so for the same reasons, Kepler's second law is also
  in effect a statement of the conservation of angular momentum.

  For a very small time, the swept area <math|\<mathd\>A> could be thought as
  a triangle. By the area formula of a triangle, we have

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<mathd\>A>|<cell|=>|<cell|<frac|1|2>r<around*|(|r\<mathd\>\<theta\>|)>=<frac|1|2>r<rsup|2>\<mathd\>\<theta\>>>|<row|<cell|<frac|\<mathd\>A|\<mathd\>t>>|<cell|=>|<cell|<frac|1|2>r<rsup|2><frac|\<mathd\>\<theta\>|\<mathd\>t>>>>>
  </eqnarray*>

  On the other hand,\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|<wide|v|\<vect\>>>|<cell|=>|<cell|<frac|\<mathd\><wide|r|\<vect\>>|\<mathd\>
    t>=<frac|\<mathd\>|\<mathd\> t><around*|(|r<around*|(|cos\<theta\>,sin\<theta\>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<mathd\>r|\<mathd\>
    t><around*|(|cos\<theta\>,sin\<theta\>|)>+r<around*|(|-sin\<theta\>,cos\<theta\>|)><frac|\<mathd\>\<theta\>|\<mathd\>t>>>>>
  </eqnarray*>

  Hence,\ 

  <\equation*>
    <wide|r|\<vect\>>\<times\><wide|v|\<vect\>>=<wide|r|\<vect\>>\<times\>r<around*|(|-sin\<theta\>,cos\<theta\>|)><frac|\<mathd\>\<theta\>|\<mathd\>t>=<around*|\||<wide|r|\<vect\>>|\|>r<frac|\<mathd\>\<theta\>|\<mathd\>t>sin<frac|\<pi\>|2><wide|k|\<vect\>>=r<rsup|2><frac|\<mathd\>\<theta\>|\<mathd\>t><wide|k|\<vect\>>.
  </equation*>

  Recall that <math|<wide|r|\<vect\>>\<times\><wide|v|\<vect\>>> is a
  constant vector <math|<wide|c|\<vect\>>>, then we get the whole area
  function of the ellipse is\ 

  <\equation*>
    A=<big|int><frac|\<mathd\>A|\<mathd\> t>\<mathd\>t=<frac|1|2><big|int>c
    \<mathd\>t=<frac|c|2>+C<rsub|4>,
  </equation*>

  Because when <math|t=0>, <math|A=0>, so <math|C<rsub|4>=0>. Hence,
  <math|A=<frac|c|2>t>.

  So in equal time periods, the changes of <math|A> are equal. We are done.

  \;

  <section|Kepler's third law>

  The third law used to be known as the harmonic law, because Kepler
  enunciated it in a laborious attempt to determine what he viewed as the
  ``music of the spheres'' according to precise laws, and express it in terms
  of musical notation [<reference|Murray>]. This third law currently receives
  additional attention as it can be used to estimate the distance from a
  planet to its central star, and help to decide if this distance is inside
  the habitable zone of that star.\ 

  Compute the whole area of the ellipse,

  <\equation>
    S<rsub|e>=<frac|\<mathd\>A|\<mathd\> t>\<cdot\>T=<frac|c|2>T=\<pi\>a
    b\<Longrightarrow\>T=<frac|2\<pi\> a b|c>.
  </equation>

  We already know by the first law that <math|<frac|c<rsup|2>|G
  M>=r<around*|(|1+e cos \<theta\>|)>> is a constant. Let
  <math|\<theta\>=\<pi\>/2>, then we get the semi-latus rectum

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|c<rsup|2>|G
    M>>|<cell|=>|<cell|r<around*|(|1+e cos
    \<theta\>|)>=r>>|<row|<cell|>|<cell|=>|<cell|semi latus
    rectum>>|<row|<cell|>|<cell|=>|<cell|<sqrt|b<rsup|2><around*|(|1-<frac|c<rsup|2>|a<rsup|2>>|)>>=b<sqrt|1-e<rsup|2>>>>|<row|<cell|<frac|a
    c<rsup|2>|G M>>|<cell|=>|<cell|a b<sqrt|1-e<rsup|2>>=b<rsup|2>>>>>
  </eqnarray*>

  Combining with equation (6),\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|b<rsup|2>>|<cell|=>|<cell|<around*|(|<frac|c
    T|2\<pi\>a>|)><rsup|2>=<frac|a c<rsup|2>|G
    M>>>|<row|<cell|\<Rightarrow\>T>|<cell|=>|<cell|<sqrt|<frac|a c<rsup|2>|G
    M><frac|4\<pi\><rsup|2>a<rsup|2>|c<rsup|2>>>=2\<pi\>a<sqrt|<frac|a|G
    M>>>>>>
  </eqnarray*>

  <section|General situation>

  These laws approximately describe the motion of any two bodies in orbit
  around each other. The masses of the two bodies can be nearly equal, e.g.
  Charon-Pluto, in a small proportion, or in a great proportion, e.g.
  Mercury-Sun [<reference|Arnold>]. In all cases of two-body motion, rotation
  is about the barycenter of the two bodies, with neither one having its
  center of mass exactly at one focus of an ellipse. However, both orbits are
  ellipses with one focus at the barycenter. When the ratio of masses is
  large, the barycenter may be deep within the larger object, close to its
  center of mass.

  \;

  <section|An application: altitude of a geosynchronous satellite>

  To compute the altitude of a geosynchronous satellite, some constants are
  needed as follows:

  <\eqnarray*>
    <tformat|<table|<row|<cell|G>|<cell|=>|<cell|6.67\<times\>10<rsup|-11>
    kg<rsup|-1>m<rsup|3>s<rsup|-2>>>|<row|<cell|M>|<cell|=>|<cell|5.976\<times\>10<rsup|24>
    kg>>|<row|<cell|T>|<cell|=>|<cell|86164
    s>>|<row|<cell|R>|<cell|=>|<cell|6378137m>>|<row|<cell|\<pi\>>|<cell|=>|<cell|3.14159>>>>
  </eqnarray*>

  A geosynchronous satellite stays at a circle which e=0 instead of a
  ellipse, so <math|a=b>, and <math|<wide|r|\<vect\>>\<perp\><wide|v|\<vect\>>>.

  <\equation>
    T=<frac|2\<pi\>a<rsup|2>|c>, a=<frac|c<rsup|2>|G M>\<Longrightarrow\>T
    =<frac|2\<pi\>c<rsup|3>|G<rsup|2>M<rsup|2>>
  </equation>

  On the other hand,

  <\equation>
    c<rsup|3>=<around*|(|R+h|)><rsup|3>v<rsup|3>=<around*|(|R+h|)><rsup|6>\<omega\><rsup|3>=<around*|(|R+h|)><rsup|6><frac|2\<pi\>|T<rsup|3>>
  </equation>

  Substitute (8) into (7), we have

  <\equation*>
    h=<sqrt|<frac|T<rsup|2>G M|4\<pi\>>|3>-R\<approx\>3.5786\<times\>10<rsup|7>
    m
  </equation*>

  Actually, a<nbsp>geosynchronous satellite's orbit is incompletely a circle,
  but with a little like ellipse. In one day, the radius is bigger in a time
  and smaller in another time. When the radius comes to be bigger, the speed
  of the satellite will decrease, what's more, its orbit would drift to west
  a little, otherwise, it would drift to east.

  In addition, the obliquity of a geosynchronous satellite is actually not
  zero. At this time, the satellite may drift in north-south way. If the
  orbit is just like a ellipse as well as with some obliquity, the track of
  it may be the combination of them, which makes the stars move like a `8'.

  \;

  <section|Sense for the project>

  <\ornamented>
    <\verse>
      No pain, no gain!
    </verse>
  </ornamented>

  The members of our group completed the project task with cooperation. In
  the project research, we got some viewpoints and feelings:

  1) Concerning physics

  The reason why Newton is greater than Kepler is that he does something more
  normal, which not only in cosmetology but also the whole motion system.
  However, Kepler is also greater than Tycho, for he can find mathematical
  rules by the data offered by Tycho. In the modern age, Einstein's theory
  extended the scope of the object motion which can describe the object with
  a high-speed. So the trend of physics' development is to develop a theory
  to adapt to more general circumstance.

  2) Concerning calculus

  We know that the calculus is an important subject for our study, but we
  knew less than we should know\Vhow Newton can found Calculus such a great
  building etc. Through this project study, we realize calculus can be used
  in such broad scope, and we are also amazed at the new form of
  calculus\Vvector calculus. Therefore, we may learn more things than we used
  to do, and we are looking forward to other beautiful applications of
  Calculus.

  3) Concerning group

  The project is not only a homework which is like some of students think of,
  but also a good opportunity for us to train ourselves in how to write an
  article, how to solve a big and real world problem, more importantly, in
  how to work with our partners.

  Actually, my team was founded a long time ago, when we didn't know each
  other well, so we faced something which had broken our process. However,
  this unpleasant problem was solved by us teammates and we felt that an
  inter-person problem is more complex than a project problem. Therefore, a
  good project report comes from every teammate efforts, no pain, no gain;
  working is more interesting than reaping where one has not sown.

  4) Concerning doing problem

  We have given all the proofs by ourselves; however, we only solve these
  questions step by step according to the materials. Although it's our first
  time to do such a project, next time, we think that we can try our best to
  solve a rather big problem without a lot of materials. This may let us
  think like a scientist, for example, how Kepler found these rules and
  proved them, and we may get more<nbsp>experience from that.

  <\acknowledgments*>
    <dueto|Wang>To make true breakthroughs, concrete cases still need to be
    studied; general theories with special and important example are empty
    non-sense. Experiments and case-studies and then general theories are the
    only way to do great science.
  </acknowledgments*>

  In a word, we harvested a lot during this wonderful project.

  \;

  <section*|Comments>

  The project report is well-organized and generally well-written; it
  contains all key components of a research paper: Abstract, Introduction
  (though not called so here), the technical part and conclusion. The wording
  for the discussion part is smooth. The English for other parts is awkward.
  The discussion part is informative and interesting. The report contains
  several illustrations to make the points. Most of the mathematics is
  correct, except for <math|<wide|r|\<vect\>>\<times\><wide|v|\<vect\>>>.

  <section*|References>

  <\enumerate-numeric>
    <item> <label|pics>[Pictures] Benjamin Crowell, <em|Newtonian Physics>,
    www.lightandmatter.com, edition 2.3, 2006

    <item> <label|Murray>Murray and Dermott, <em|Solar System Dynamics>,
    Cambridge University Press 1999

    <item> <label|Arnold>V.I. Arnold, <em|Mathematical Methods of Classical
    Mechanics>, Chapter 2. Springer 1989
  </enumerate-numeric>

  \;
</body>

<\initial>
  <\collection>
    <associate|prog-scripts|python>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Arnold|<tuple|3|?>>
    <associate|Murray|<tuple|2|?>>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|8|?>>
    <associate|auto-11|<tuple|8|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|1|?>>
    <associate|auto-4|<tuple|3|?>>
    <associate|auto-5|<tuple|4|?>>
    <associate|auto-6|<tuple|5|?>>
    <associate|auto-7|<tuple|6|?>>
    <associate|auto-8|<tuple|7|?>>
    <associate|auto-9|<tuple|8|?>>
    <associate|pics|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        An epicycle combines with a bisector
      </surround>|<pageref|auto-3>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>About
      Kepler's laws> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>How
      Kepler find the laws> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Kepler's
      first law> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Kepler's
      second law> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Kepler's
      third law> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>General
      situation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>An
      application: altitude of a geosynchronous satellite>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Sense
      for the project> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Comments>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>