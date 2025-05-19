<TeXmacs|1.0.7.2>

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
  MIDO DU2 (Eco IGD Math/Eco Mat/Info)>|<cell|Universit� Paris-Dauphine 09/10
  >>|<row|<cell|<em| Statistiques>>|<cell|<small|<verbatim|[v.3
  20100330]>>>>>>>

  \;

  <strong|<with|font-base-size|14|<strong|TD4>. >Convergence des variables
  al�atoires.>

  <\exercise>
    Soient <with|mode|math|X<rsub|1>,\<ldots\>,X<rsub|n>>, <with|mode|math|n>
    variables al�atoires ind�pendantes de m�me loi
    <with|mode|math|<with|math-font|cal|N>(0,1)>. On pose
    <with|mode|math|U=<left|\|><frac|1|n><big|sum><rsub|i=1><rsup|n>X<rsub|i><right|\|>>
    et <with|mode|math|V=<frac|1|n><big|sum><rsub|i=1><rsup|n><left|\|>X<rsub|i><right|\|>>.
    Comparer <with|mode|math|\<bbb-E\>(U)> et <with|mode|math|\<bbb-E\>(V)>
    et les calculer.
  </exercise>

  <\exercise>
    Soit <with|mode|math|X<rsub|n>> une variable al�atoire suivant une loi
    g�om�trique de param�tre <with|mode|math|p/n>. Quid de la convergence en
    loi de <with|mode|math|X<rsub|n>/n> ?
  </exercise>

  <\exercise>
    Soit <with|mode|math|X<rsub|1>,\<ldots\>,X<rsub|n>> une suite de v.a.s
    ind�pendantes telles que <math|X<rsub|n>\<sim\><with|mode|math|<with|math-font|cal|B>(n,p)>>.
    Montrer que <with|mode|math|<frac|X<rsub|n>-n*p|<sqrt|n*p(1-p)>>>
    converge en loi vers <with|mode|math|<with|math-font|cal|N>(0,1)> lorsque
    <with|mode|math|n\<rightarrow\>\<infty\>>.
  </exercise>

  <\exercise>
    Soit <with|mode|math|(X<rsub|n>)<rsub|n\<ge\>1>> une suite des v.a.
    telles que <with|mode|math|X<rsub|n>> est une Binomiale
    <with|mode|math|<with|math-font|cal|B>(n,\<lambda\>/n)> avec
    <with|mode|math|\<lambda\>\<gtr\>0>. Montrer que la suite
    <with|mode|math|(X<rsub|n>)<rsub|n\<ge\>1>> converge en loi vers la
    Poisson de parametre <with|mode|math|\<lambda\>>. Estimer la probabilit�
    que <with|mode|math|X<rsub|n>\<le\>2> si <with|mode|math|\<lambda\>=2> et
    <with|mode|math|n=10000>.
  </exercise>

  <\exercise>
    On d�finit la fonction r�elle <with|mode|math|f<rsub|n>> par
    <with|mode|math|math-display|true|f<rsub|n>(x)=<frac|n|\<pi\><left|(>1+n<rsup|2>x<rsup|2><right|)>>>,
    <with|mode|math|n\<in\><with|math-font|Bbb|N>>.

    <\enumerate-alpha>
      <item>D�montrer que <with|mode|math|f<rsub|n>> est la densit� d'une
      variable al�atoire <with|mode|math|X<rsub|n>>. Que peut-on dire de
      <with|mode|math|\<bbb-E\><left|(>X<rsub|n><right|)>> et
      <with|mode|math|Var<left|(>X<rsub|n><right|)>> ?

      <item> Montrer que <with|mode|math|X<rsub|n>> converge en probabilit�
      vers 0 lorsque <with|mode|math|n\<rightarrow\>\<infty\>>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Soit <with|mode|math|X<rsub|n>> une suite de variables al�atoires
    ind�pendantes de m�me loi <with|mode|math|<with|math-font|cal|P>(1)>.
    Quelle la loi de <with|mode|math|X<rsub|1>+\<ldots\>+X<rsub|n>> ? Que
    vaut <with|mode|math|\<bbb-P\><left|(>X<rsub|1>+\<ldots\>+X<rsub|n>\<leq\>n<right|)>>
    ? Utiliser le th�or�me central limite pour montrer que la limite de
    <with|mode|math|exp(-n)<big|sum><rsub|k=1><rsup|n>n<rsup|k>/k!> lorsque
    <with|mode|math|n\<rightarrow\>\<infty\>> est �gale �
    <with|mode|math|1/2>.
  </exercise>

  <\exercise>
    Une suite de variables al�atoires <with|mode|math|X<rsub|n>> converge en
    loi vers une variable al�atoire <with|mode|math|X>, et une autre suite
    <with|mode|math|Y<rsub|n>> ind�pendante des <with|mode|math|X<rsub|n>>
    converge en probabilit� vers la variable certaine �gale �
    <with|mode|math|a\<in\><with|math-font|Bbb|R>>.

    <\enumerate-alpha>
      <item>On pose, pour tout entier <with|mode|math|n>,
      <with|mode|math|Z<rsub|n>=X<rsub|n>+Y<rsub|n>>. Quelle est la limite en
      loi de la suite <with|mode|math|Z<rsub|n>> ?

      <item>Soit <with|mode|math|Y<rsub|n>> une variable al�atoire dont la
      loi est d�finie par <with|mode|math|\<bbb-P\><left|(>Y<rsub|n>=0<right|)>=1-1/n>
      et <with|mode|math|\<bbb-P\><left|(>Y<rsub|n>=1<right|)>=1/n>. Montrer
      que la suite <with|mode|math|Y<rsub|n>> converge en probabilit� vers 0.
      Construire une suite de variables al�atoires <with|mode|math|Z<rsub|n>>
      poss�dant un moment d'ordre 2 et qui converge en loi vers la variable
      al�atoire <with|mode|math|Z> normale centr�e r�duite, sans que la
      variance de <with|mode|math|Z<rsub|n>> tende vers 1.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Soit <with|mode|math|U> une variable al�atoire de loi uniforme sur
    <with|mode|math|[0,1]>. On consid�re la suite de
    <with|mode|math|U<rsub|n>=U1<rsub|[1/n,1]>(U)>. Montrer que
    <with|mode|math|(U<rsub|n>)<rsub|n>> converge presque s�rement vers
    <with|mode|math|U> lorsque <with|mode|math|n\<to\>+\<infty\>>.
  </exercise>

  <\exercise>
    Soit <with|mode|math|(X<rsub|n>)<rsub|n\<ge\>1>> une suite iid Bernoulli
    de parametre <with|mode|math|p\<in\>]0,1[>. Pour tout
    <with|mode|math|n\<ge\>1> on pose <with|mode|math|Y<rsub|n>=X<rsub|n>+X<rsub|n+1>>.

    <\enumerate-alpha>
      <item>D�terminer la loi de <with|mode|math|Y<rsub|n>> et calculer
      <with|mode|math|\<bbb-E\>[Y<rsub|n>]> et
      <with|mode|math|<with|mode|text|Var>(Y<rsub|n>)>.

      <item>Soit <with|mode|math|T<rsub|n>=(Y<rsub|1>+\<cdots\>+Y<rsub|n>)/n>.
      Calculer <with|mode|math|\<bbb-E\>[T<rsub|n>]> et
      <with|mode|math|<with|mode|text|Var>(T<rsub|n>)>.

      <item>Montrer que la suite <with|mode|math|(T<rsub|n>)<rsub|n\<ge\>1>>
      converge en probabilit� vers la v.a. constante <with|mode|math|2p>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Une compagnie d'assurance assure 500 navires pour une somme de 6 millions
    chacun. Chaque navire a chaque ann�e une probabilit� �gale �
    <with|mode|math|0.001> de subir un sinistre maeur couvert par
    l'assurance. Soit <with|mode|math|X> le nomber de navires perdus en une
    ann�e. Donner la loi de <with|mode|math|X>, son esp�rance et sa variance.
    Auelles r�serves doit posseder la compagnier d'assurance pour �tre s�re
    de pouvoir payer les indemnit�s avec une probabilit� �gale �
    <with|mode|math|0.999> � la fin de chaque ann�e?

    Une seconde compagnie d'assurance assure �galement <with|mode|math|500>
    navires dans les m�mes conditions que la precedente. Les compagnies
    ont-elles int�r�t � fusionner?
  </exercise>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|language|french>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|10|?>>
    <associate|auto-11|<tuple|11|?>>
    <associate|auto-12|<tuple|12|?>>
    <associate|auto-13|<tuple|13|?>>
    <associate|auto-14|<tuple|14|?>>
    <associate|auto-15|<tuple|15|?>>
    <associate|auto-16|<tuple|16|?>>
    <associate|auto-17|<tuple|17|?>>
    <associate|auto-18|<tuple|18|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|4|?>>
    <associate|auto-5|<tuple|5|?>>
    <associate|auto-6|<tuple|6|?>>
    <associate|auto-7|<tuple|7|?>>
    <associate|auto-8|<tuple|8|?>>
    <associate|auto-9|<tuple|9|?>>
    <associate|eq:15|<tuple|1|2>>
  </collection>
</references>