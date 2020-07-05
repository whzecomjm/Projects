<TeXmacs|1.99.1>

<style|<tuple|beamer|british>>

<\body>
  \;

  \;

  \;

  \;

  <\doc-data|<doc-title|Matrix Derivatives with Chain Rule and Rules for
  Simple, Hadamard, and Kronecker Products(2)>|<doc-subtitle|Matrix
  Derivatives with Kronecker Products>|<doc-author|<\author-data|<author-name|Wenchao
  Zhang, Rongpeng Li and Mubing Zhou>>
    \;
  </author-data|<\author-affiliation>
    \;
  </author-affiliation>|<\author-affiliation>
    South University of Science and Technology of China
  </author-affiliation>>>|<doc-date|<date>>|<doc-author|<\author-data>
    \;

    \;
  </author-data>>>
    \;
  </doc-data>

  \;

  <new-page>

  <section*|Notations and Definitions>

  \;

  <\quote-env>
    <\framed>
      <math|I<rsub|n>> or <math|I<rsup|n>> is the <math|n\<times\>n> identity
      matrix.

      \;

      <math|X<rprime|'>> is the transpose of matrix <math|X>.

      \;

      <math|<wide|X|\<bar\>>> is the <math|1\<times\>n m> row vectorization
      of a <math|n\<times\>m> matrix.

      \;

      <math|D<rsub|<wide|X|\<bar\>>>> is the <math|n m\<times\>n m> diagonal
      matrix whose diagonal elements <math|d<rsub|i i>=x<rsub|i>>, where
      <math|x<rsub|i>> is entries of <math|<wide|X|\<bar\>>>.

      \;

      <math|X\<ast\>Y> is the <math|n\<times\>m> Hadamard product of two
      <math|n\<times\>m> matrices <math|X>and <math|Y>, i.e. <math|X*\<ast\>
      Y=<around*|[|x<rsub|i j> y<rsub|i j>|]>>.

      \;

      <math|X\<otimes\>Y> is the right Kronecker product of matrices <math|X>
      and <math|Y>, i.e. <math|X\<otimes\>Y=<around*|[|x<rsub|i j>Y|]>>.

      \;

      <math|E<rsup|mn>> is an <math|n m\<times\>n m> matrix such that
      <math|e<rsub|g h>=1>, if <math|1\<leqslant\>g=n<around*|(|j-1|)>+k,h=m<around*|(|k-1|)>+j\<leqslant\>m
      n>, where <math|0\<less\>j\<leqslant\>m;0\<less\>k\<leqslant\>n>, and
      <math|e<rsub|g h>=0> otherwise.
    </framed>
  </quote-env>

  <new-page>

  \;

  \;

  <\example*>
    To make a better understanding, we give an example for <math|E<rsup|3 2>>
    as follows:

    <\equation>
      <label|eqn1>E<rsup|32>=<matrix|<tformat|<cwith|4|4|1|-1|cell-tborder|0pt>|<cwith|3|3|1|-1|cell-bborder|0pt>|<cwith|1|-1|3|3|cell-lborder|0pt>|<cwith|1|-1|2|2|cell-rborder|0pt>|<cwith|1|-1|4|4|cell-rborder|0pt>|<cwith|1|-1|5|5|cell-lborder|0pt>|<cwith|2|2|1|-1|cell-bborder|0.1pt>|<cwith|4|4|1|-1|cell-bborder|0.1pt>|<cwith|1|-1|4|4|cell-lborder|0.1pt>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|0>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
    </equation>

    It's easy to see that we can view it as a block matrix, in each
    <math|2\<times\>3> block <math|E<rsub|i
    j><around*|(|1\<leqslant\>i\<leqslant\>3,1\<leqslant\>j\<leqslant\>2|)>>,
    where <math|E<rsub|i j>> is the <math|2\<times\>3> matrices which
    <math|only> entry <math|e<rsub|ij>=1>, and others are 0. Obviously, this
    conclusion is also true for any <math|E<rsup|nm>>(Since first entry (says
    (1,1)) for <math|E<rsub|i j>> is <math|<around*|(|<around*|(|i-1|)>n+1,<around*|(|j-1|)>m+1|)>>.).
  </example*>

  <new-page>

  \;

  \;

  <\definition*>
    <dueto|Partial Derivative of Matrices>Let <math|Z> be a
    <math|p\<times\>q> matrix and <math|Y> is an <math|m\<times\>n> matrix
    whose elements are differentiable functions of all elements in <math|Z>.
    Define <math|<frac|\<partial\>Y|\<partial\>Z>> to be a <math|p
    q\<times\>m n> matrix whose <math|i>-th row is the mn-vector
    <math|<frac|\<partial\><wide|Y|\<bar\>>|\<partial\>z<rsub|i>>>, where
    <math|z<rsub|i>> is the i-th element in <math|<wide|Z|\<bar\>>>.\ 

    Obviously from the definition, <math|<frac|\<partial\>Y|\<partial\>Z>=<frac|\<partial\><wide|Y|\<bar\>>|\<partial\>Z>=<frac|\<partial\><wide|Y|\<bar\>>|\<partial\><wide|Z|\<bar\>>>>,
    i.e. there is an equivalence of matrix and vector derivatives.
  </definition*>

  \;

  <\remark*>
    <dueto|Vector Form>A row vector <math|Y> can be expressed as
    <math|Y=<around*|[|Y<rsub|1>,Y<rsub|2>|]>> where the elements of
    <math|Y<rsub|1>> are mathematical variables which are independent of each
    other, and <math|Y<rsub|2>> are functions of elements in
    <math|Y<rsub|1>>.

    Typically, if <math|Y=<wide|X|\<bar\>>>,where <math|X> are symmetric
    matrix, <math|Y<rsub|1>> contains the nonredundant, lower(resp. upper)
    triangular elements of <math|X>.
  </remark*>

  <new-page>

  \;

  \;

  \;

  <\lemma>
    <label|lemma1>Let <math|X=<around*|[|X<rsub|1><rprime|'>,X<rsub|2><rprime|'>|]><rprime|'>>
    where <math|X<rsub|1>> is an <math|m<rsub|1>\<times\>n> matrix and
    <math|X<rsub|2>> is an <math|m<rsub|2>\<times\>n> matrix. Suppose each
    element of <math|X> is a differentiable function of all elements of a
    matrix <math|Z>. Then

    <\equation*>
      <frac|\<partial\>X|\<partial\>Z>=<around*|[|<frac|\<partial\>X<rsub|1>|\<partial\>Z>,<frac|\<partial\>X<rsub|2>|\<partial\>Z>|]>
    </equation*>

    <\proof>
      From the definition,\ 

      <\equation*>
        <frac|\<partial\>X|\<partial\>Z>=<frac|\<partial\><wide|X|\<bar\>>|\<partial\><wide|Z|\<bar\>>>=<frac|\<partial\><around*|[|<wide|X|\<bar\>><rsub|1>,<wide|X|\<bar\>><rsub|2>|]>|\<partial\><wide|Z|\<bar\>>>=<around*|[|<frac|\<partial\><wide|X<rsub|>|\<bar\>><rsub|1>|\<partial\><wide|Z|\<bar\>>>,<frac|\<partial\><wide|X|\<bar\>><rsub|2>|\<partial\><wide|Z|\<bar\>>>|]>=<around*|[|<frac|\<partial\>X<rsub|1>|\<partial\>Z>,<frac|\<partial\>X<rsub|2>|\<partial\>Z>|]>
      </equation*>

      \;
    </proof>
  </lemma>

  <\remark*>
    Actually, <math|X=<around*|[|X<rsub|1><rprime|'>,X<rsub|2><rprime|'>|]><rprime|'>=<matrix|<tformat|<table|<row|<cell|X<rsub|1>>>|<row|<cell|X<rsub|2>>>>>>>,
    therefore <math|<wide|X|\<bar\>>=<around*|[|<wide|X<rsub|>|\<bar\>><rsub|1>,<wide|X|\<bar\>><rsub|2>|]>>.
  </remark*>

  \;

  <new-page>

  \;

  \;

  <\lemma>
    Let <math|A=<around*|[|A<rsub|11>,\<ldots\>,A<rsub|1r>,\<ldots\>,A<rsub|n1>,\<ldots\>,A<rsub|n
    r>|]>> where <math|A<rsub|i j>> are <math|p\<times\>s> matrices. Then

    <\equation*>
      A<around*|[|E<rsup|n r>\<otimes\>I<rsup|s>|]>=<around*|[|A<rsub|11>,\<ldots\>,A<rsub|n1>,\<ldots\>,A<rsub|1r>,\<ldots\>,A<rsub|n
      r>|]>
    </equation*>

    <\proof>
      Sustitute <math|I<rsub|s>> into the places which is 1 in <math|E<rsup|n
      r>>, it's obvious by the matrix multiplication.\ 
    </proof>

    <\example*>
      Consider <math|n=3,r=2>, from equation (<reference|eqn1>) we have\ 

      <\equation*>
        E<rsup| 32>\<otimes\>I<rsup|s>=<matrix|<tformat|<cwith|4|4|1|-1|cell-tborder|0pt>|<cwith|3|3|1|-1|cell-bborder|0pt>|<cwith|1|-1|3|3|cell-lborder|0pt>|<cwith|1|-1|2|2|cell-rborder|0pt>|<cwith|1|-1|4|4|cell-rborder|0pt>|<cwith|1|-1|5|5|cell-lborder|0pt>|<cwith|2|2|1|-1|cell-bborder|0.1pt>|<cwith|4|4|1|-1|cell-bborder|0.1pt>|<cwith|1|-1|4|4|cell-lborder|0.1pt>|<table|<row|<cell|I<rsub|s>>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|I<rsub|s>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|I<rsub|s>>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|I<rsub|s>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|I<rsub|s>>|<cell|0>|<cell|0>|0>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|I<rsub|s>>>>>>
      </equation*>

      Hence,\ 

      <\equation*>
        A<around*|[|E<rsup|n r>\<otimes\>I<rsup|s>|]>=<around*|[|A<rsub|11>,A<rsub|21>,A<rsub|31>,A<rsub|12>,A<rsub|22>,A<rsub|32>|]>
      </equation*>
    </example*>
  </lemma>

  <new-page>

  \;

  <\lemma>
    <label|lemma3>Let <math|Z> be a <math|p\<times\>q> matrix. Let <math|X>
    be a <math|1\<times\>n> vector each of whose elements is a differentiable
    function of all elements of <math|Z>; and let <math|Y> be an
    <math|r\<times\>s> matrix each of whose elements is constant with respect
    to all elements of <math|Z>. Then

    <\equation*>
      <frac|\<partial\><around*|(|X\<otimes\>Y|)>|\<partial\>Z>=<around*|(|<frac|\<partial\>X|\<partial\>Z>\<otimes\><wide|Y|\<bar\>>|)><around*|(|E<rsup|n
      r>\<otimes\>I<rsup|s>|)>
    </equation*>

    <\proof>
      We have\ 

      <\equation*>
        <around*|[|<frac|\<partial\>X|\<partial\>Z>\<otimes\><wide|Y|\<bar\>>|]>=<around*|[|<frac|\<partial\>x<rsub|1>|\<partial\>Z>Y<rsub|1>,\<ldots\>,<frac|\<partial\>x<rsub|1>|\<partial\>Z>Y<rsub|r>,\<ldots\>,<frac|\<partial\>x<rsub|n>|\<partial\>Z>Y<rsub|1>,\<ldots\>,<frac|\<partial\>x<rsub|n>|\<partial\>Z>Y<rsub|r>|]>
      </equation*>

      where <math|Y<rsub|i> > are rows of <math|Y>. By lemma 2,

      <\equation*>
        <around*|[|<frac|\<partial\>X|\<partial\>Z>\<otimes\><wide|Y|\<bar\>>|]><around*|[|E<rsup|n
        r>\<otimes\>I<rsup|s>|]>=<around*|[|<frac|\<partial\>x<rsub|1>|\<partial\>Z>Y<rsub|1>,\<ldots\>,<frac|\<partial\>x<rsub|n>|\<partial\>Z>Y<rsub|1>,\<ldots\>,<frac|\<partial\>x<rsub|1>|\<partial\>Z>Y<rsub|r>,\<ldots\>,<frac|\<partial\>x<rsub|n>|\<partial\>Z>Y<rsub|r>|]>
      </equation*>

      On the left hand side,

      <\equation*>
        <frac|\<partial\><around*|(|X\<otimes\>Y|)>|\<partial\>Z>=<frac|\<partial\><around*|(|<wide|X\<otimes\>Y|\<bar\>>|)>|\<partial\>Z>=<around*|[|<frac|\<partial\>x<rsub|1>|\<partial\>Z>Y<rsub|1>,\<ldots\>,<frac|\<partial\>x<rsub|n>|\<partial\>Z>Y<rsub|1>,\<ldots\>,<frac|\<partial\>x<rsub|1>|\<partial\>Z>Y<rsub|r>,\<ldots\>,<frac|\<partial\>x<rsub|n>|\<partial\>Z>Y<rsub|r>|]>
      </equation*>

      \;
    </proof>
  </lemma>

  <new-page>

  \;

  <\lemma>
    <label|lemma4>Let <math|Z> be a <math|p\<times\>q> matrix. Let <math|X>
    be an <math|m\<times\>n> matrix each of whose elements is a
    differentiable function of all elements of <math|Z>; and let <math|Y> an
    <math|r\<times\>s> matrix each of whose elements is constant with respect
    to all elements of <math|Z>. Then

    <\equation*>
      <frac|\<partial\><around*|(|X\<otimes\>Y|)>|\<partial\>Z>=<around*|(|<frac|\<partial\>X|\<partial\>Z>\<otimes\><wide|Y|\<bar\>>|)><around*|(|I<rsup|m>\<otimes\>E<rsup|n
      r>\<otimes\>I<rsup|s>|)>
    </equation*>

    <\proof>
      We prove by induction on <math|m>, Lemma <reference|lemma3> implies
      this lemma is true when <math|m=1>. Now for <math|m>, partion <math|X>
      into<math|<around*|[|X<rprime|'><rsub|1>,X<rsub|m><rprime|'>|]><rprime|'>>
      where <math|X<rsub|1>> consists of the first <math|m-1> rows of
      <math|X>, and <math|X<rsub|m>> is the <math|m>-th row of <math|X>. Then
      by lemmas <reference|lemma1> and <reference|lemma3>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|\<partial\><around*|(|X\<otimes\>Y|)>|\<partial\>Z>>|<cell|=>|<cell|<frac|\<partial\><around*|(|<wide|X\<otimes\>Y|\<bar\>>|)>|\<partial\>Z>=<frac|\<partial\><around*|[|<around*|(|<wide|X<rsub|1>\<otimes\>Y|\<bar\>>|)>,<around*|(|<wide|X<rsub|m>\<otimes\>Y|\<bar\>>|)>|]>|\<partial\>Z>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<around*|(|<frac|\<partial\>X<rsub|1>|\<partial\>Z>\<otimes\><wide|Y|\<bar\>>|)><around*|(|I<rsup|m-1>\<otimes\>E<rsup|n
        r>\<otimes\>I<rsup|s>|)>,<around*|(|<frac|\<partial\>X<rsub|m>|\<partial\>Z>\<otimes\><wide|Y|\<bar\>>|)><around*|(|E<rsup|n
        r>\<otimes\>I<rsup|s>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<frac|\<partial\>X|\<partial\>Z>\<otimes\><wide|Y|\<bar\>>|)><around*|(|I<rsup|m>\<otimes\>E<rsup|n
        r>\<otimes\>I<rsup|s>|)>>>>>
      </eqnarray*>
    </proof>
  </lemma>

  <\remark*>
    Note that since <math|<wide|Y|\<bar\>> > is a row vector, we have

    <\equation*>
      <around*|(|<frac|\<partial\>X|\<partial\>Z>\<otimes\><wide|Y|\<bar\>>|)><around*|(|I<rsup|m>\<otimes\>E<rsup|n
      r>\<otimes\>I<rsup|s>|)>=<frac|\<partial\>X|\<partial\>Z><around*|(|I<rsup|m
      n>\<otimes\><wide|Y|\<bar\>>|)><around*|(|I<rsup|m>\<otimes\>E<rsup|n
      r>\<otimes\>I<rsup|s>|)>
    </equation*>
  </remark*>

  <new-page>

  <\lemma>
    Let <math|Z> be a <math|p\<times\>q> matrix. Let <math|X> be a
    <math|1\<times\>n> vector each of whose elements is constant with respect
    to all elements of <math|Z>; and let <math|Y> be an <math|r\<times\>s>
    matrix each of whose elements is a differentiable function of all
    elements of <math|Z>. Then

    <\equation*>
      <frac|\<partial\><around*|(|X\<otimes\>Y|)>|\<partial\>Z>=<around*|(|<wide|X|\<bar\>>\<otimes\><frac|\<partial\>Y|\<partial\>Z>|)><around*|(|E<rsup|n
      r>\<otimes\>I<rsup|s>|)>
    </equation*>

    <\proof>
      Similar to the proof of lemma <reference|lemma3>.
    </proof>
  </lemma>

  <\lemma>
    <label|lemma6>Let <math|Z> be a <math|p\<times\>q> matrix. Let <math|X>
    be an <math|m\<times\>n> matrix each of whose elements is a constant with
    respect to all elements of <math|Z>; and let <math|Y> an
    <math|r\<times\>s> matrix each of whose elements is differentiable
    function of all elements of <math|Z>. Then

    <\equation*>
      <frac|\<partial\><around*|(|X\<otimes\>Y|)>|\<partial\>Z>=<around*|(|<wide|X|\<bar\>>\<otimes\><frac|\<partial\>Y|\<partial\>Z>|)><around*|(|I<rsup|m>\<otimes\>E<rsup|n
      r>\<otimes\>I<rsup|s>|)>
    </equation*>

    <\proof>
      Follows the same induction process as the proof of lemma
      <reference|lemma4>.
    </proof>
  </lemma>

  <\remark*>
    Note that since <math|<wide|X|\<bar\>> > is a row vector, we have

    <\equation*>
      <around*|(|<wide|X|\<bar\>>\<otimes\><frac|\<partial\>Y|\<partial\>Z>|)><around*|(|I<rsup|m>\<otimes\>E<rsup|n
      r>\<otimes\>I<rsup|s>|)>=<frac|\<partial\>Y|\<partial\>Z><around*|(|<wide|X|\<bar\>>\<otimes\>I<rsup|r
      s>|)><around*|(|I<rsup|m>\<otimes\>E<rsup|n r>\<otimes\>I<rsup|s>|)>
    </equation*>
  </remark*>

  <new-page>

  \;

  \;

  \;

  \;

  <\theorem>
    <dueto|Derivative of Kronecker Products>Let <math|Z> be a
    <math|p\<times\>q> matrix. Let X and Y be <math|m\<times\>n> and
    <math|r\<times\>s> matrices respectively, each of whose elements is
    differentiable function of all elements of <math|Z>. Then\ 

    <\equation*>
      <frac|\<partial\><around*|(|X\<otimes\>Y|)>|\<partial\>Z>=<around*|[|<frac|\<partial\>X|\<partial\>Z><around*|(|I<rsup|m
      n>\<otimes\><wide|Y|\<bar\>>|)>+<frac|\<partial\>Y|\<partial\>Z><around*|(|<wide|X|\<bar\>>\<otimes\>I<rsup|r
      s>|)>|]><around*|(|I<rsup|m>\<otimes\>E<rsup|n r>\<otimes\>I<rsup|s>|)>
    </equation*>

    <\proof>
      By lemmas <reference|lemma4> and <reference|lemma6>.
    </proof>
  </theorem>

  \;

  <new-page>

  \;

  \;

  \;

  \;

  \;

  <center|<with|font-base-size|20|Thank You!<with|font|new-century-schoolbook|>>>
</body>

<\initial>
  <\collection>
    <associate|font|stix>
    <associate|math-font|math-stix>
    <associate|page-medium|beamer>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|2>>
    <associate|eqn1|<tuple|1|3>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|2>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|2>>
    <associate|lemma1|<tuple|1|5>>
    <associate|lemma3|<tuple|3|7>>
    <associate|lemma4|<tuple|4|8>>
    <associate|lemma6|<tuple|6|9>>
    <associate|tran1|<tuple|1|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Notations
      and Definitions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>