<TeXmacs|1.0.7.14>

<style|generic>

<\body>
  <\hide-preamble>
    <assign|render-exercise|<\macro|which|body>
      <\padded-normal|0.5fn|0.5fn>
        <surround|<exercise-name|<arg|which><exercise-sep>>||<arg|body>>
      </padded-normal>
    </macro>>

    \;
  </hide-preamble>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|1|2|2|cell-halign|r>|<twith|table-lborder|0>|<twith|table-rborder|0>|<cwith|1|2|1|2|cell-lsep|0>|<cwith|1|2|1|2|cell-rsep|0>|<cwith|1|2|1|2|cell-tsep|0>|<cwith|1|2|1|2|cell-lborder|0>|<cwith|1|2|1|2|cell-rborder|0>|<cwith|1|2|1|2|cell-bborder|0>|<cwith|1|2|1|2|cell-tborder|0>|<twith|table-bborder|.5pt>|<twith|table-tborder|.5pt>|<cwith|1|2|1|2|cell-bsep|5pt>|<cwith|1|1|1|2|cell-tsep|5pt>|<twith|table-lsep|0>|<twith|table-rsep|0>|<twith|table-bsep|0>|<twith|table-tsep|0>|<cwith|1|1|1|2|cell-bsep|2pt>|<cwith|2|2|2|2|cell-halign|r>|<table|<row|<cell|
  MIDO M1 MMD>|<cell|Universit� Paris-Dauphine 11/12 >>|<row|<cell|<em|
  Processus de Poisson>>|<cell|<small|<verbatim|[v.2 20120507]>>>>>>>

  \;

  <strong|<with|font-base-size|14|<strong|TD3>. >Processus de Poisson
  compos�s, processus de renouvellement.>

  <\exercise>
    Donner une condition n�cessaire et suffisante pour qu'un processus de
    Poisson compos� soit un processus de Poisson standard.
  </exercise>

  <\exercise>
    Trouver la fonction de renouvellement et la mesure de renouvellement d'un
    processus de renouvellement lorsque les temps d'inter-arriv�e sont
    distribu�s suivant une loi Gamma de param�tres <math|2>,
    <math|\<beta\>\<gtr\>0>. D�montrez les th�or�mes de renouvellement
    �l�mentaire et cl� dans ce cas.
  </exercise>

  <\exercise>
    Une machine tombe en panne et est r�par�e de mani�re r�p�t�e. On appelle
    <math|<around|(|X<rsub|i>,i\<geq\>1|)>> les dur�es successives durant
    lesquelles la machine est en �tat de marche, et
    <math|<around|(|Y<rsub|i>,i\<geq\>1|)>>les dur�es successives durant
    lesquelles la machine est en r�paration. Autrement dit, la machine
    fonctionne durant l'intervalle de temps <math|<around|[|0;X<rsub|1>|[>>,
    est en r�paration durant la p�riode<math|<around|[|X<rsub|1>;X<rsub|1>+Y<rsub|1>|[>>,
    fonctionne � nouveau durant la p�riode
    <math|<around|[|X<rsub|1>+Y<rsub|1>;X<rsub|1>+Y<rsub|1>+X<rsub|2>|[>> et
    ainsi de suite. On suppose que <math|<around|(|X<rsub|i>,i\<geq\>1|)>>
    est une suite de variables al�atoires i.i.d. de loi commune continue,
    strictement positive et int�grable. On suppose que la suite
    <math|<around|(|Y<rsub|i>,i\<geq\>1|)>> v�rifie les m�mes hypoth�ses, et
    qu'elle est de plus ind�pendante de la suite
    <math|<around|(|X<rsub|i>,i\<geq\>1|)>>. On s'int�resse �l a probabilit�
    <math|p<around|(|t|)>> que la machine soit en �tat de marche � l'instant
    <math|t>.

    <\enumerate>
      <item>Soit <math|Z<rsub|1>=X<rsub|1>+Y<rsub|1>> et soit <math|F> la
      fonction de r�partition de <math|Z<rsub|1>>. Montrer que
      <math|p<around|(|t|)>> v�rifie l'�quation de renouvellement

      <\equation*>
        p<around|(|t|)>=<with|math-font|Bbb|P><around|(|X<rsub|1>\<gtr\>t|)>+<big|int><rsub|0><rsup|t>p*<around|(|t-s|)><math-up|d>F<around|(|s|)>,<space|1em>\<forall\>t\<geq\>0.
      </equation*>

      <item>En d�duire que

      <\equation*>
        lim<rsub|t\<rightarrow\>\<infty\>>
        p<around|(|t|)>=<frac|<with|math-font|Bbb|E><around|[|X<rsub|1>|]>|<with|math-font|Bbb|E>*<around|[|X<rsub|1>+Y<rsub|1>|]>>.
      </equation*>
    </enumerate>
  </exercise>

  <\exercise>
    Soit <math|N> un processus de renouvellement et
    <math|F<around|(|t|)>=T<rsub|N<around|(|t|)>+1>-t> le temps �coul� entre
    le temps <math|t> et le temps du <math|<around*|(|N<around|(|t|)>+1|)>>-�me
    renouvellement, <math|t\<geq\>0>. On note
    <math|<with|math-font|Bbb|P><rsub|T<rsub|1>>> la loi des temps
    d'inter-arriv�e et <math|F<rsub|T<rsub|1>>> sa fonction de r�partition.

    <\enumerate>
      <item>Montrer que pour tout <math|x\<geqslant\>0>, la fonction
      <math|<with|math-font|Bbb|P><around|(|F<around|(|t|)>\<gtr\>x|)>>
      v�rifie l'�quation de renouvellement

      <\equation*>
        <with|math-font|Bbb|P><around|(|F<around|(|t|)>\<gtr\>x|)>=1-F<rsub|T<rsub|1>>*<around|(|t+x|)>+<big|int><rsub|0><rsup|t><with|math-font|Bbb|P><around|(|F*<around|(|t-u|)>\<gtr\>x|)><math-up|d><with|math-font|Bbb|P><rsub|T<rsub|1>><around|(|u|)>,<space|1em>t\<geq\>0.
      </equation*>

      On pourra commencer par d�couper la probabilit�
      <math|<with|math-font|Bbb|P><around|(|F<around|(|t|)>\<gtr\>x|)>> en
      deux, suivant que <math|T<rsub|1>\<gtr\>t> ou
      <math|T<rsub|1>\<leqslant\>t>.

      <item>R�soudre cette �quation lorsque les temps d'inter-arriv�e suivent
      une loi exponentielle.
    </enumerate>
  </exercise>

  <\exercise>
    Dans le cadre de l'exercise 4 on consid�re un processus de renouvellement
    dont les temps d'inter-arriv�es suivent la loi de Pareto d�finie par

    <\equation*>
      <with|math-font|Bbb|P><around|(|\<tau\><rsub|1>\<gtr\>x|)>=<frac|1|<around|(|1+x|)><rsup|\<alpha\>>>,<space|1em>x\<geqslant\>0.
    </equation*>

    <\enumerate-numeric>
      <item>Soit <math|X> une variable al�atoire positive quelconque. Montrer
      que <math|\<forall\>r\<gtr\>0>,

      <\equation*>
        <big|int><rsub|0><rsup|\<infty\>>r*x<rsup|r-1>*<with|math-font|Bbb|P><around|(|X\<gtr\>x|)><math-up|d>x=<with|math-font|Bbb|E><around|[|X<rsup|r>|]>.
      </equation*>

      <item>Utiliser la relation pr�c�dente et l'equation de renouvellement
      satisfaite par <math|F<around*|(|t|)>> pour montrer que

      <\equation*>
        <with|math-font|Bbb|E><around|[|F<around|(|t|)><rsup|2>|]>=<big|int><rsub|0><rsup|t><around*|(|<big|int><rsub|0><rsup|\<infty\>><frac|2*x|<around|(|1+t-u+x|)><rsup|\<alpha\>>><math-up|d>x|)><math-up|d>m<around|(|u|)>.
      </equation*>

      <item>En d�duire que pour <math|\<alpha\>\<gtr\>3>,

      <\equation*>
        <with|math-font|Bbb|E><around|[|F<around|(|t|)><rsup|2>|]><below|\<rightarrow\>|t\<rightarrow\>\<infty\>>2*<big|int><rsub|0><rsup|\<infty\>>x*<around|(|1+x|)><rsup|1-\<alpha\>><math-up|d>x.
      </equation*>

      Calculer cette int�grale limite.
    </enumerate-numeric>
  </exercise>
</body>

<\initial>
  <\collection>
    <associate|language|french>
    <associate|par-hyphen|normal>
    <associate|sfactor|4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|eq1|<tuple|1|?>>
    <associate|eq:15|<tuple|1|2>>
  </collection>
</references>