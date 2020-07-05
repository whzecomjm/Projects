# Monochromatic Solutions of Equations

<center>
    Wenchao Zhang
</center>



When I searched “Problems in Ramsey” via Google, a note named *Some of My Favorite Problems in Ramsey Theory* from Ron Graham attracted me. This note [1] offers several problems from Ramsey Theory. The third section is about partition regular equations, which is a generalization of Schur’s Coloring Theorem. I am interested in the Problem 6 which asks whether **the Pythagorean equation is partition regular**, i.e. whether there exists a monochromatic solution. 

Let us first borrow some definitions of partition regularity from his note. 

**Definition 1.1**.  An equation $f(x,y,z,\dots)=0$ is *partition regular* (or simply *regular*) if, and only if, for any finite partition of  $\mathbb{N}$ into $C_1, C_1,\dots, C_r$, there exists some $C_i$ containing a non-trivial solution to the equation.

In our text book [2], we think of $C_i$ as colors, and the solution in a single class as monochromatic. In this notation, Schur’s Coloring Theorem is the equation $x+y=z$ is partition regular. Also, we can prove that $x+y=2z$ is also partition regular (because $x,z,y$ is an AP), but not $x+y=3z$. In fact, Richard Rado generalized to certain systems of linear equation: a linear homogeneous equation over $\mathbb{N}$ is partition regular if and only if it has a non-trivial solution in 0’s and 1’s. Formally, we have following 

**Theorem 1.2** (Rado’s Theorem [3]). A linear homogeneous equation $a_1 x_1+\cdots+a_nx_n=0$ is partition regular on $\mathbb{N}$ if and only if there exists a nonempty set $J\subseteq\{1,\dots,n\}$ such that $\sum_{j\in J}a_j=0$.

Proof omitted. But note that the proof of Rado’s theorem need a lemma that $x+\lambda y=z$ for every $\lambda\in\mathbb{Q}$ is regular. This theorem has a direct analogue for multiplicative nonlinear equations. 

**Theorem 1.3** (Multiplicative Rado’s Theorem). A nonlinear Diophantine equation of the form $\prod_{i=1}^{n}x_i^{c_i}=1$ is partition regular on $\mathbb{N}$ iff there exists a nonempty set $J\subseteq\{1,\dots,n\}$ such that $\sum_{j\in J}c_j=0$.

There is a weaker version of partition regular, namely, *$r$-regular*, restricting the number of finite partition classes. An equation $f(x,y,z,\dots)=0$ is called to be $r$-regular iff for any $r$-color of $\mathbb{N}$ contains a monochromatic solution to $f(x,y,z,\dots)=0$.  

So an equation is regular iff it is $r$-regular for all $r\in \mathbb{N}$.  Nota bene that if the equation is $r$-regular, then by Compactness Theorem, we could find a monochromatic solution on $\{1,2,\dots,n\}$ for any $r$-coloring, vice versa. Here are some notations.

**Definition 1.3**. The *degree of regularity* of an equation or a system of equations $\mathcal{L}$ is the largest integer $r\geq 0$, if any, such that $\mathcal{L}$ is $r$-regular. This number is denoted by $\mathrm{dor}(\mathcal{L})$. In particular, if $\mathrm{dor}(\mathcal{L})=\infty$, then $\mathcal{L}$ is regular.

**Definition 1.4**. Given an equation or a system of equations $\mathcal{L}$ and finite $r$ colors, the *Rado number* $R(\mathcal{L},r)$ is the least number such that any $r$-coloring of $\{1,2,\dots,R(\mathcal{L},r)\}$ must contain a monochromatic solution to $\mathcal{ L}$. In particular, the Rado number of Schur’s equation is called Schur’s number, which is denoted by $S(r):=R(x+y=z,r)$.

Let us first give a constructive proof of $2$-regularity for Schur’s equation $x+y=z$. Note that $S(2)> 4$ since the partition $\{1,4\}$ and $\{2,3\}$ witnesses no monochromatic solutions. Moreover, this partition is unique one. Hence, $5=1+4=2+3$ implies that $S(2)=5$ since there is no more color choices for $5$. Furthermore, we can get $S(3)=14$ by hand and Baumert [4] obtained $S(4)=45$ by using computer exhaustive depth-ﬁrst-search. Recently, M. Heule [5] obtained $S(5)=161$ by applying massively parallel satisfiability solving techniques. Although Schur’s Theorem entails that $S(r)$ is finite for any finite $r$, determining the exact values of $S(r)$ ($r\geq 6$) is still an open problem. 

How about the regularities of some other nonlinear Diophantine equations? In fact, we have less information for this situation. It was shown by Leffman [6] that $\sum_{i=1}^n a_ix_i^{1/k}=0$, $k\in \mathbb{N}^*$, is partition regular. Bergelson [7] obtained $x-y=P(z)$ is regular for every polynomial over $\mathbb Z$ with no constant term. Croot [8] then showed that the equation $\sum_{x\in S}1/x=1$,  $S\in\mathbb{Z}$ finite, is partition regular. Maybe the most interesting regularity of a nonlinear equation is the Pythagorean equation. This question which is still open is raised by Erdos and Graham. However, it was still unknown whether the Pythagorean equation is partition regular or not.  A breaking progress was made by Heule, Kullmann, and Marik [9] in 2016. They used SAT solver to prove that any 2-coloring of $\{1, 2, \dots, 7825\}$ contains a monochromatic Pythagorean triple, and that 7825 is the least number with such a property. They declared that this proof is “the biggest proof in the world” with 200 terabytes. This multifarious method with computer assistant only gives us $\mathrm{dor}(x^2+y^2=z^2)\geq2$, but we want more.

One can try to use and upgrade SAT to prove the Pythagorean equation is 3-regular. But it seems that is not a good way since it would be much more complicated and need more computing power. Even thought we have succeeded in 3-regularity, this is still a long way to determine whether the Pythagorean equation is partition regular or not. So to find a way to determine the full regularity is quite important. Nasso and Baglini [10] found some categories of equations with certain simple conditions on coeﬃcients and exponents shown to be regular. They found some suﬃcient conditions by using the algebraic structure of $\beta\mathbb{N}$, combined with properties of distinct sets of sets of positive asymptotic density. Moreover, they worked on the hypernatural numbers $^*\mathbb{N}$ of nonstandard analysis and the relation of $u$-equivalence for necessary conditions.

One of suﬃcient (and necessary) conditions which extends Rado’s Theorem (for homogeneous linear polynomial) to all Rado’s polynomials of the form 
$$
R(x_1,\dots,x_n,y_1,\dots,y_k)=c_1x_1+\cdots+c_nx_n+P(y_1,\dots,y_k)
$$
where $n\geq 2$, $P$ has no constant form, and there exists a nonempty subset $J\subseteq \{1,\dots,n\}$ such that $\sum_{j\in J}c_j=0$. They proved that for this condition, $R$ is partition regular (vice verse) and further is *with injectivity* in the sense of $|\{x_1,\dots,x_n\}|\geq n-1$ and $|\{y_1,\dots,y_k\}|=k$. 

Furthermore, they constructed a family of functions that is regular which includes all Rado’s polynomials (we mentioned above) and multiplicative Rado’s polynomials etc. For example, the equation $x_1x_2=y_1y_2+z^2$ is in the family, since $u-v=z^2, x=x_1x_2, y=y_1y_2, x=u, y=v$ are all inside the family. Note that this equation can be considered as a modification of the Pythagorean equation $x^2=y^2+z^2$. Although $x_1x_2=y_1y_2+z^2$ is partition regular, we got very little information on the regularity of the Pythagorean equation. Currently, we only know that is 2-regular from Heule, Kullmann and Marek’s work.

Let us turn to some new equations which are not satisfying regular conditions of Rado’s polynomials. For example, $x+y=z^2$. This equation has a trivial monochromatic solution $x=y=z=2$. We can directly know that this equation is not partition regular from the Theorem of Nasso and Baglini. Let us uncover more information. It was already known that the equation is not 16-regular [11], i.e. $\mathrm{dor}(x+y=z^2)< 16$, hence obviously not partition regular. B. Green and S. Lindqvist [12] found that the exact number of $\mathrm{dor}(x+y=z^2)$ is 2, namely, $x+y=z^2$ is 2-regular but not 3-regular. And Rado’s number $R(x+y=z^2,2)=32$. Here is their very elegant constructive proof. They used dyadic blocks $A_i=\{n\in \mathbb{N}:2^i\leq n <2^{i+1}\}$ to divide all natural numbers, and define the same color $c_i$ for those elements inside an $A_i$. Assign $c_0,c_1,c_2$ to be different and let $c_i\notin\{c_{\lfloor{i/2}\rfloor},c_{\lfloor {i/2}\rfloor+1}\}$, for all $i\geq 3$. Suppose $x\leq y, y\in A_i$, then one may conclude that $z\in A_{c_{\lfloor{i/2}\rfloor}}\cup A_{c_{\lfloor{i/2}\rfloor+1}}$ if we want $z$ the same color as $y$.  Since $\lfloor {i/2}\rfloor+1<i$ for all $i\geq 3$,  we obtain $i\in \{0,1,2\}$, in which case $x\leq y<8$ and then we infer that $z=2$ or $3$. Finally, we can check all possible options, and we infer that the only solution is $x=y=z=2$. 

In the rest of the paper, B. Green and S. Lindqvist also proved that there are **infinitely** many monochromatic 2-color solutions of the equation $x+y=z^2$. We can call it is *strongly 2-regular*. This proof involves a lot of tools from additive combinatorics and analytic number theory. But we can simply prove the equation is 2-regular and find the Rado number as follows.

**Proof**. Assume every 2-coloring on $\mathbb{N}$ colors blue or red. Suppose towards a contradiction there is no monochromatic solutions of the equation except the trivial solution $x=y=z=2$. We think of the colors of 3 and 4. If 3, 4 have the same color for a 2-coloring, without loss of generality, assume the color is blue. Then $4+5=9=3^2$ and $4+12=16=4^2$ imply 5, 12 are both red. Then $3+13=16=4^2$ implies 13 is red, however, $12+13=25=5^2$ implies 13 is blue. A contradiction! If 3, 4 have two different colors, without loss of generality, we may assume that 3 is blue and 4 is red. $3+6=3^2$ implies 6 is red, and $8+8=4^2$ implies 8 is blue. Hence, $4+32=6^2$ implies 32 is blue, while $32+32=8^2$ implies 32 is red. This is still a contradiction. Hence, we conclude that the equation is 2-regular with the Rado number $R(x+y=z^2,2)\leq 32$. To conclude $R(x+y=z^2,2)= 32$, we have to find a 2-coloring of $\{1,\dots,31\}$ which has no monochromatic solutions (except the trivial solution). Continue coloring other numbers for the case that 3 is blue and 4 is red, we have following:
$$
C_R=\{1,4,5,6,7\};\\
C_B=\{2,3,8,9,10,11,12,15,18,19,20,21,24,29,30,31\}.
$$
In addition to above numbers, every number inside $\{1,\dots,31\}$ is free to color in red or blue. We are done.

Let us try a new equation $x+y=2z^2$, which is still not regular. First of all, this equation has a trivial solution that $x=y=z=1$. We can prove it is **not 3-regular** by a similar method of B. Green and S. Lindqvist.

**Proof**. We color all the points in each dyadic block $A_i=\{n\in \mathbb{N}:2^i\leq n <2^{i+1}\},$ $i=0,1,2,\dots$, in one color $c_i$. We assign $c_0,c_1,c_2$ to be different and let $c_i\notin\{c_{\lfloor{i/2}\rfloor-1},c_{\lfloor {i/2}\rfloor}\}$, for all $i\geq 3$. This is possible, since $\lfloor{i/2}\rfloor\leq i$ for all $i\geq 3$ (actually for all $i\geq 0$). Without loss of generality, suppose $x\leq y, y\in A_i$, then we have $2^i<x+y< 2^{i+2}$, hence $2^{(i-1)/2}<z<2^{(i+1)/2}$. Since $\frac{i-1}{2}\geq \lfloor\frac{i}{2}\rfloor-1$ and $(i+1)/2\leq \lfloor\frac{i}{2}\rfloor+1$, it follows that $z\in A_{\lfloor{i/2}\rfloor-1}\cup A_{\lfloor{i/2}\rfloor}$. By construction, the only way that such a $z$ can have the same color as $y$ is if $i \in \{0,1,2\}$, in which case $x\leq y<8$, and so $z=1$ or $2$. If $z=1$, then this is the trivial solution $x=y=z=1$. If $z=2$, then $x+y=8=2\cdot 2^2$. Here are all the possible options {1,7,2}, {2,6,2}, {3,5,2} and {4,4,2}. It is easy to check that there is no monochromatic solution in those options.

Then we want to determine if it is 2-regular and try to calculate the Rado number. Suppose towards a contradiction that there is no monochromatic solutions of the equation except the trivial solution. We consider the colors of 2 and 3 for any 2-coloring. If 2, 3 have the same color blue. Then $4+4=2\cdot 2^2$ implies 4 is red and $2+16=2\cdot 3^2$ implies 16 is red as well. However $16+16=2\cdot 4^2$ contradicts to no other monochromatic solutions. If 2, 3 have different colors, say 2 is blue and 3 is red. Then 4, 6 are red. $2\cdot 3^2=14+4, 36+36=2\cdot 6^2 \text{ and } 2\cdot 5^2=14+36$  imply 5 is red as well. Sadly, it seems that it is hard to find such contradiction for this case by hand-calculation. We will try to use a computer to finish this proof and calculate the exact Rado number. However, this will be the next story.



**Update: (2019-09-10)**

I found the Rado number $R(x+y=2z^2,2)=93$ by a SAT solver! Firstly, I tried to test all solutions of the equation with $z\leq 8$ or $\leq 9$. For $z\leq9$, the SAT solver gives us a negative result, i.e. $R(2)<2\cdot 9^2-1=161$. On the other hand, a positive result for $z\leq 8$ comes out.  However, this does not mean $R(2)\geq 2\cdot8^2-1=127$, since there exist more restrictions (no monochromatic solutions) for solutions with $z=9,10$ and even 11. Then I tried all solutions with $x,y\leq 99$ ($z\leq 9$), and this time I got a negative result for SAT. After several attempts (using dichotomy), I obtained the Rado number 
$$
R(x+y=2z^2,2)=93.
$$
**Remark**. Here is a simple way to use an online SAT solver called [SAT.js](https://www.comp.nus.edu.sg/~gregory/sat/). I first generated Conjunctive Normal Form problem files by python: 

```python
n=94; # then 93
# get the number of clauses for any n<100.
def clauses(n,k=0): 
  for j in range(2,10):
    for i in range(1,j**2+1):
      if i <n and 2*j**2-i<n:
          k=k+2
  return k

# print the head of the cpf file.
print ("p cnf",n-1,clauses(n)) 

# print contents of the cpf file
for j in range(2,10): # for n<100, 1 < z <10
  for i in range(1,j**2+1): # get rid of symmetric solutions of x and y's 
    if i <n and 2*j**2-i<n: # all solutions with x, y less than n
        print (i, 2*j**2-i, j, 0) # the condition of no blue monochromatic
        print (-i, -2*j**2+i, -j, 0) # the condition of no red monochromatic

```

There are 93 variables and 356 clauses for this case. We then put outputs into the online SAT solver, and get the result.



**Reference**. 

[1] R. Graham,  Some of my favorite problems in Ramsey theory. *Integers: Electronic Journal of Combinatorial Number Theory* 7.2 (2007): A15.
[2] B. Tsaban, *Numbers and Colors: A Tour of Ramsey Theory*.
[3] R. Rado, Studien zur Kombinatorik, *Math. Z.* 36 (1933), 242–280.
[4] S. W. Golomb and L. D. Baumert. "Backtrack programming." *Journal of the ACM (JACM)* 12.4 (1965): 516-524.
[5] M. Heule, Schur number five. *Thirty-Second AAAI Conference on Artificial Intelligence*. 2018.
[6] H. Lefmann, On partition regular systems of equations, *J. Combin. Theory Ser. A*, 58 (1991), 35–53. 
[7] V. Bergelson, Ergodic Ramsey Theory - un update, in “Ergodic Theory of Z^d-actions”, London Math. Soc. Lecture Notes Series 228 (1996), 1–61.
[8] E. Croot, On a coloring conjecture about unit fractions. *Ann. of Math.* (2) 157 (2003), 545–556.
[9] M. Heule, O. Kullmann, and V. Marek, Solving and verifying the boolean Pythagorean triples problem via cube-and-conquer. *International Conference on Theory and Applications of Satisfiability Testing*. Springer, Cham, 2016.
[10] M. Nasso and L. Baglini. Ramsey properties of nonlinear Diophantine equations. *Advances in Mathematics* 324 (2018): 84-117.
[11] P. Csikvári, K. Gyarmati and A. Sárközy, Density and Ramsey type results on algebraic equations with restricted solution sets, *Combinatorica* 32, Issue 4 (2012), 425–449.
[12] B. Green and S. Lindqvist. Monochromatic Solutions to $ x+ y= z^{2} $. *Canadian Journal of Mathematics* 71.3 (2019): 579-605.



<!-- Important Ref ppt -->
<!-- S. D. Adhikari, A classical Ramsey-type result of Schur -->
<!-- Brian Hopkins, Ramsey Theory of Equations: Report from Pisa -->
<!-- Rado’s Theorem Proof p7. http://www.math.ucr.edu/~costello/teaching/Math216A/Week8notesup.pdf -->