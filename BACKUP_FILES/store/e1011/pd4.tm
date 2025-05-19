<TeXmacs|1.0.7.8>

<style|article>

<\body>
  <\hide-preamble>
    <assign|eqref|<macro|r|<nbsp>(<reference|<arg|r>>)>><assign|chapter-nr|3>

    <assign|render-exercise|<\macro|which|body>
      <\padded-normal|0.5fn|0.5fn>
        <surround|<exercise-name|<arg|which><exercise-sep>>||<arg|body>>
      </padded-normal>
    </macro>>

    \;
  </hide-preamble>

  <small|<verbatim|[M. Gubinelli - Processus discrets - M1 MMD 2010/2011 -
  20110104 - poly 4 - v.2]>>

  <chapter|Cha�nes de Markov>

  <section|D�finitions et premi�res propri�t�s><label|sec:definitions>

  On s'int�resse ici � des processus discrets
  <math|<around|{|X<rsub|n>|}><rsub|n\<geqslant\>0>> avec une simple
  propri�t� de d�pendance qui n�anmoins admettent une grande vari�t� des
  comportements et de possibilit�s de mod�lisation. Ils sont nomm�es en
  honneur du math�maticien russe A.<space|0.2spc>Markov qui n'a introduit
  l'�tude.

  <\definition>
    Soit <math|<around|{|X<rsub|n>|}><rsub|n\<geqslant\>0>> un processus
    discret d�fini sur l'espace de probabilit�
    <math|<around|(|\<Omega\>,\<cal-F\>,\<bbb-P\>|)>> et � valeurs dans
    l'ensemble d�nombrable <math|M>. On dit que
    <math|<around|{|X<rsub|n>|}><rsub|n\<geqslant\>0>> est une cha�ne de
    Markov (sur <math|M>) ssi <math|\<forall\>n\<ge\>0> et <math|\<forall\>
    x<rsub|0>,\<ldots\>,x<rsub|n+1>\<in\>M>,

    <\equation>
      <label|eq:3><with|math-font|Bbb|P><around*|(|X<rsub|n+1>=x<rsub|n+1>\|X<rsub|0>=x<rsub|0>,\<ldots\>,X<rsub|n>=x<rsub|n>|)>=\<bbb-P\><around|(|X<rsub|n+1>=x<rsub|n+1>\|X<rsub|n>=x<rsub|n>|)>
    </equation>

    \;
  </definition>

  Autrement dit, la loi conditionnelle de <math|X<rsub|n+1>> sachant
  <math|X<rsub|0>,...,X<rsub|n>> (le pass�) ne d�pend que de <math|X<rsub|n>>
  (le pr�sent). On appelle <math|M> <with|font-shape|italic|l'espace d'�tats>
  de la cha�ne <math|<around|{|X<rsub|n>|}><rsub|n\<geqslant\>0>>,
  <math|X<rsub|0>> l'<em|�tat initiale> de la cha�ne et la loi de
  <math|X<rsub|0>> <em|loi initiale>.

  <\definition>
    On dit que la cha�ne est homog�ne ssi la loi conditionnelle de
    <math|X<rsub|n+1>> sachant <math|X<rsub|n>> ne d�pends pas de <math|n>,
    i.e.

    <\equation*>
      \<bbb-P\><around|(|X<rsub|n+1>=y\|X<rsub|n>=x|)>=\<bbb-P\><around|(|X<rsub|1>=y\|X<rsub|0>=x|)>=P<around|(|x,y|)><space|2em>\<forall\>
      n\<geqslant\>0, x,y\<in\>M
    </equation*>

    La fonction <math|P:M\<times\>M\<rightarrow\><around|[|0,1|]>> est la
    matrice (ou probabilit�) de transition de la cha�ne
    <math|<around|{|X<rsub|n>|}><rsub|n\<geqslant\>0>>.
  </definition>

  En g�n�ral une <with|font-shape|italic|matrice de transition> sur <math|M>
  est une application <math|P:M\<times\>M\<rightarrow\><around|[|0,1|]>>
  telle que pour tout <math|x\<in\>M>

  <\equation>
    <label|eq:2><big-around|\<sum\>|<rsub|y\<in\>M>P<around|(|x,y|)>>=1.
  </equation>

  (v�rifier que la matrice de transition d'une cha�ne de Markov satisfait
  cette �quation).

  \;

  Dans la suite on va consid�rer seulement des cha�nes de Markov homog�nes
  (sauf indication explicite du contraire).

  <\example>
    <label|ex:rw1><name|Marche al�atoire sur
    <with|mode|math|math-font|Bbb|Z>>. Un joueur lance successivement et de
    mani�re ind�pendante une pi�ce de monnaie, �ventuellement biais�e. Chaque
    fois qu'il obtient un Pile il re�oit un euro, chaque fois qu'il obtient
    un Face, il perd un euro. Soit <math|k<rsub|0>\<in\><with|math-font|Bbb|Z>>
    sa fortune initiale. On note <math|S<rsub|n>> sa fortune � l'�tape
    <math|n>. Nous avons <math|S<rsub|0>=k<rsub|0>> et
    <math|S<rsub|n+1>=S<rsub|n>+X<rsub|n+1>>, o� <math|X<rsub|n+1>> est une
    variable al�atoire repr�sentant le gain (ou la perte, selon si positif ou
    n�gatif) � l'�tape <math|n+1>: <math|X<rsub|n+1>=1> avec probabilit�
    <math|p\<in\><around*|]|0,1|[>>, et <math|-1> sinon. Les variables
    al�atoires <math|X<rsub|1>>,...,<math|X<rsub|k>>,... sont i.i.d. par
    hypoth�se. La suite <math|<around|(|S<rsub|n>|)><rsub|n\<geq\>0>> est
    donc une cha�ne de Markov homog�ne de matrice de transition

    <\equation*>
      P<around|(|k,m|)>=<around*|{|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|2|2|cell-halign|l>|<table|<row|<cell|p>|<cell|<text|si
      >m=k+1 ;>>|<row|<cell|1-p>|<cell|<text|si >m=k-1
      ;>>|<row|<cell|0>|<cell|<text|autrement
      .>>>>>>|\<nobracket\>><space|2em>\<forall\>k,m\<in\>\<bbb-Z\>
    </equation*>
  </example>

  \;

  <\example>
    <name|Mod�le de Wright-Fischer>. Ce mod�le d�crit l'�volution d'un
    ensemble de <math|N> chromosomes. On suppose qu'il y a 2 types de
    chromosomes, A et B, et on note <math|X<rsub|n>> le nombre de chromosomes
    de type A pr�sents � la g�n�ration <math|n> (il y en a donc
    <math|N-X<rsub|n>> de type B). Le mod�le �volue de la fa�on suivante :
    chaque chromosome de la g�n�ration <math|n+1> choisit au hasard et
    uniform�ment un chromosome parent dans la g�n�ration <math|n>, ceci
    ind�pendamment des autres chromosomes. Le chromosome fils a alors le m�me
    type que son chromosome parent. Si <math|X<rsub|n>=i>, chaque chromosome
    de la g�n�ration <math|n+1> sera donc de type A avec probabilit�
    <math|i/N>. On en d�duit que la suite <math|X<rsub|n\<geq\>0>> est une
    cha�ne de Markov homog�ne � valeurs dans <math|<around|{|0,1,...,N|}>>,
    de probabilit� de transition

    <\equation*>
      P<around|(|i,j|)>=C<rsub|N><rsup|j><around*|(|<frac|i|N>|)><rsup|j><around*|(|<frac|N-i|N>|)><rsup|N-j><space|2em>\<forall\>i,j\<in\><around|{|0,1,...,N|}>.
    </equation*>
  </example>

  <\example>
    <name|Pannes al�atoires>. Soit <math|<around|{|U<rsub|n>|}><rsub|n\<geqslant\>0>>
    une suite iid � valeurs dans <math|<around|{|1,2,\<ldots\>,+\<infty\>|}>>.
    La v.a. <math|U<rsub|k>> s'interpr�te comme dur�e de vie d'une quelque
    machine (la <math|k>-eme) qui est remplace par un autre (la
    <math|k+1>-eme) de que elle d�faille. Au temps initial <math|0> la
    machine 1 est mise en service et elle dure jusq'au temps
    <math|U<rsub|1>>, subitement remplac�e par la machine 2 \ que dure pour
    un intervalle de temps <math|U<rsub|2>> et donc jusq'au temps
    <math|U<rsub|1>+U<rsub|2>> et ainsi de suite. On note <math|X<rsub|n>> le
    temps de service de la machine en utilisation au temps <math|n>. Le
    processus <math|<around|{|X<rsub|n>|}><rsub|n\<geqslant\>0>> est un
    processus � valeurs dans <math|\<bbb-N\>>. Si
    <math|R<rsub|k>=<big-around|\<sum\>|<rsub|m=1><rsup|k>U<rsub|m>>> (avec
    la convention que <math|R<rsub|0>=0>) est l'instant de remplacement de la
    <math|k>-eme machine (<math|k\<geqslant\>1>) on a la relation suivante:

    <\equation*>
      X<rsub|n>=n-R<rsub|k><space|2em>pour<space|1em>R<rsub|k>\<leqslant\>n\<less\>R<rsub|k+1>.
    </equation*>

    Le processus <math|<around|{|X<rsub|n>|}><rsub|n\<geqslant\>0>> est tel
    que <math|X<rsub|R<rsub|k>>=0> pour tout <math|k\<geqslant\>0> et il
    croit lin�airement dans les intervalles
    <math|<around|[|R<rsub|k>,R<rsub|k+1>-1|]>>. Il est une cha�ne de Markov
    homog�ne sur <math|\<bbb-N\>> de matrice de transition

    <\equation*>
      P<around|(|i,j|)>=<choice|<tformat|<table|<row|<cell|<frac|\<bbb-P\><around|(|U<rsub|1>\<gtr\>i+1|)>|\<bbb-P\><around|(|U<rsub|1>\<gtr\>i|)>>>|<cell|<text|si
      <math|j=i+1> ;>>>|<row|<cell|1-P<around|(|i,i+1|)>>|<cell|<text|si
      <math|j=0> ;>>>|<row|<cell|0>|<cell|<text|autrement>
      .>>>>><space|2em>\<forall\>i,j\<in\>\<bbb-N\>
    </equation*>
  </example>

  <\remark>
    Etant donn�es une matrice de transition <math|P> et une loi de
    probabilit� <math|\<mu\>>, on peut toujours construire une cha�ne de
    Markov de matrice de transition <math|P> issue d'une variable al�atoire
    initiale <math|X<rsub|0>> distribu�e suivant une quelconque probabilit�
    <math|\<mu\>> sur <math|M>.
  </remark>

  <no-indent><strong|Notations.> Pour tout <math|x\<in\>M> on note
  <math|<with|math-font|Bbb|P><rsub|x>> la probabilit� conditionnelle sachant
  que <math|X<rsub|0>=x> (i.e. <math|<with|math-font|Bbb|P><rsub|x><around|(|A|)>=<with|math-font|Bbb|P><around|(|A\<mid\>X<rsub|0>=x|)>>
  pour tout �v�nement <math|A\<in\>\<cal-F\>>); et
  \ <math|<with|math-font|Bbb|E><rsub|x>> l'esp�rance correspondante.

  <subsection|Syst�mes dynamiques al�atoires><label|sec:sys-dyn>

  Soit <math|<around|(|\<Theta\>,<with|math-font|cal|B>,m|)>> un espace de
  probabilit� et <math|\<theta\><rsub|1>,\<theta\><rsub|2>,\<ldots\>> une
  suite infinie de variables al�atoires i.i.d., � valeurs dans
  <math|\<Theta\>>, de loi <math|m>:

  <\equation*>
    <with|math-font|Bbb|P><around|(|\<theta\><rsub|i>\<in\>A|)>=m<around|(|A|)>,<space|2em>A\<in\><with|math-font|cal|B>.
  </equation*>

  Soit <math|f:\<Theta\>\<times\>M\<longrightarrow\>M> une application
  mesurable (<math|<around|{|\<theta\>:f<around|(|\<theta\>,x|)>=y|}>\<in\><with|math-font|cal|B>,\<forall\>x,y\<in\>M>).

  On consid�re <math|X<rsub|0>> une variable al�atoire ind�pendante de la
  suite <math|<around|{|\<theta\><rsub|j>|}><rsub|j\<in\><with|math-font|Bbb|N>>>,
  et r�cursivement on pose

  <\equation>
    <label|eq:18>X<rsub|n+1>=f<around|(|\<theta\><rsub|n+1>,X<rsub|n>|)>,<space|2em>n\<ge\>0.
  </equation>

  <\definition>
    <math|<around|(|f,m|)>> s'appelle un syst�me dynamique al�atoire.
  </definition>

  <\exercise>
    \ Montrer que la suite <math|<around|(|X<rsub|n>,n\<geq\>0|)>> d�finie
    par l'eq. (<reference|eq:18>) est une cha�ne de Markov homog�ne.
  </exercise>

  <\example>
    (Marche al�atoire sur <math|\<bbb-Z\>>) Soit <math|X<rsub|0>> une v.a. �
    valeurs dans <math|\<bbb-Z\>> et <math|<around|{|Z<rsub|n>|}><rsub|n\<geqslant\>1>>
    une suite iid ind�pendant of <math|X<rsub|0>>, � valeurs dans l'ensemble
    <math|{-1,+1}> et tel que <math|\<bbb-P\><around|(|Z<rsub|1>=+1|)>=p>. Le
    processus discret d�fini par

    <\equation*>
      X<rsub|n>=X<rsub|n-1>+Z<rsub|n>,<space|2em>n\<geqslant\>1
    </equation*>

    est une cha�ne de Markov homog�ne de m�me loi que la marche al�atoire sur
    <math|\<bbb-Z\>> d�finie dans l'exemple <reference|ex:rw1>.
  </example>

  <subsection|Equation de Chapman-Kolmogorov><label|sec:equation-de-chapman>

  Soit <math|<around|{|X<rsub|n>|}><rsub|n\<ge\>0>> une cha�ne de Markov
  homog�ne de matrice de transition <math|P>. Pour toute fonction born�e
  <math|f:M\<rightarrow\><with|math-font|Bbb|R>> on pose

  <\equation>
    <label|eq:4>P*f<around|(|x|)>=<big-around|\<sum\>|<rsub|y\<in\>M>P<around|(|x,y|)>f<around|(|y|)>>=\<bbb-E\><rsub|x><around|[|f<around|(|X<rsub|1>|)>|]>.
  </equation>

  Soit <math|\<Pi\><around|(|M|)>=<around*|{|\<mu\>:M\<rightarrow\><around|[|0,1|]><space|0.75spc>,<big-around|\<sum\>|<rsub|x\<in\>M>\<mu\><around|(|x|)>>=1|}>>,
  l'ensemble des mesures de probabilit� sur <math|M>. Pour toute
  <math|\<mu\>\<in\>\<Pi\><around|(|M|)>> on pose

  <\equation>
    <label|eq:5>\<mu\>P<around|(|x|)>=<big-around|\<sum\>|<rsub|y\<in\>M>\<mu\><around|(|y|)>P<around|(|y,x|)>>.
  </equation>

  On remarque que <math|\<mu\>P\<in\>\<Pi\><around|(|M|)>>. On d�finit aussi
  <math|P<rsup|2>,P<rsup|n>>, etc, par r�currence en utilisant la r�gle
  usuelle de multiplication des matrices :

  <\equation>
    <label|eq:6>P<rsup|n+1><around|(|x,y|)>=<big-around|\<sum\>|<rsub|z\<in\>M>P<around|(|x,z|)>P<rsup|n><around|(|z,y|)>>.
  </equation>

  <\theorem>
    Soit <math|<around|{|X<rsub|n>|}><rsub|n\<ge\>0>> une cha�ne de Markov de
    matrice de transition <math|P>. On note
    <math|\<mu\><rsub|0>\<in\>\<Pi\><around|(|M|)>> la loi de
    <math|X<rsub|0>>. Alors

    <\enumerate>
      <item>La loi de <math|<around|(|X<rsub|0>,...,X<rsub|n>|)>> est donn�e
      par

      <\equation>
        <with|math-font|Bbb|P><around*|(|X<rsub|0>=x<rsub|0>,\<ldots\>,X<rsub|n>=x<rsub|n>|)>=\<mu\><rsub|0><around|(|x<rsub|0>|)>P<around|(|x<rsub|0>,x<rsub|1>|)>\<ldots\>P<around|(|x<rsub|n-1>,x<rsub|n>|)><label|eq:7>,
      </equation>

      <math|\<forall\>> les �tats <math|x<rsub|0>,...,x<rsub|n>\<in\>M>, et
      <math|\<forall\>n\<in\><with|math-font|Bbb|N>>. R�ciproquement, tout
      processus <math|<around|(|X<rsub|n>|)><rsub|n\<geq\>0>> v�rifiant
      l'�quation (<reference|eq:7>) est une cha�ne de Markov de matrice de
      transition <math|P> et de loi initiale <math|\<mu\><rsub|0>>.

      <item>La loi de <math|X<rsub|n>> est
      <math|\<mu\><rsub|n>=\<mu\><rsub|0>P<rsup|n>>. Elle est donc
      enti�rement caract�ris�e par <math|\<mu\><rsub|0>> et <math|P>.

      <item>Pour toute fonction born�e <math|f:M\<longrightarrow\><with|math-font|Bbb|R>>,
      tout <math|x\<in\>M>,

      <\equation*>
        <label|eq:8><with|math-font|Bbb|E><rsub|x><around|[|f<around|(|X<rsub|n>|)>|]>=P<rsup|n>f<around|(|x|)>.
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    Exercice.
  </proof>

  <\remark>
    La suite <math|<around|(|Y<rsub|n>|)><rsub|n\<geq\>0>> d�finie par
    <math|Y<rsub|n>=X<rsub|k+n>>, <math|k> �tant fix�, est aussi une cha�ne
    de Markov de matrice de transition <math|P>.
  </remark>

  <\proposition>
    <name|Propri�t� de Markov simple>. Soient
    <math|<around|(|X<rsub|n>|)><rsub|n\<ge\>0>> une cha�ne de Markov et
    <math|<with|math-font|cal|F><rsub|n>=\<sigma\><around|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>>
    la tribu engendr�e par <math|X<rsub|1>,\<ldots\>,X<rsub|n>> (i.e. la
    tribu repr�sentant ``le pass� jusqu'� l'instant n''). Alors la propri�t�
    de Markov peut s'�crire

    <\equation>
      <label|eq:17><with|math-font|Bbb|E><around*|(|f<around|(|X<rsub|n+1>|)>\|<with|math-font|cal|F><rsub|n>|)>=<with|math-font|Bbb|E><around*|(|f<around|(|X<rsub|n+1>|)>\|X<rsub|n>|)>=P*f<around|(|X<rsub|n>|)>,
    </equation>

    pour toute fonction born�e <math|f:M\<rightarrow\>\<bbb-R\>>.
  </proposition>

  <subsection|Classification des �tats><label|sec:classification>

  <\definition>
    On dit que <math|x> <em|communique> avec <math|y> (et l'on note
    <math|x\<rightarrow\>y>) ssi une des propri�t�s equivalentes suivantes
    est verifi�:

    <\enumerate-alpha>
      <item>il existe <math|n\<geqslant\>1> et un <math|n+1>-plet d'�tats
      <math|<around|(|x<rsub|1>=x,\<ldots\>,x<rsub|n+1>=y|)>> tels que
      <math|P<around|(|x<rsub|i>,x<rsub|i+1>|)>\<gtr\>0> pour tout
      <math|1\<leqslant\>i\<leqslant\>n>.

      <item>il existe <math|n\<geqslant\>1> tel que
      <math|P<rsup|n><around|(|x,y|)>\<gtr\>0>.

      <item><math|\<bbb-P\><rsub|x><around|(|\<exists\>k\<geqslant\>1 :
      X<rsub|k>=y|)>\<gtr\>0>.
    </enumerate-alpha>
  </definition>

  <\exercise>
    Verifier que les propri�tes a),b),c) sont equivalentes. Sugg.:

    <\equation*>
      P<around|(|x,x<rsub|2>|)>\<cdots\>P<around|(|x<rsub|n>,y|)>\<leqslant\>P<rsup|n><around|(|x,y|)>
    </equation*>

    et

    <\equation*>
      P<rsup|n><around|(|x,y|)>\<leqslant\>\<bbb-P\><rsub|x><around|(|\<exists\>
      k\<geqslant\>1 : X<rsub|k>=y|)>\<leqslant\><big-around|\<sum\>|<rsub|k\<geqslant\>1>P<rsup|k><around|(|x,y|)>>.
    </equation*>
  </exercise>

  Si <math|x\<rightarrow\>y> et <math|y\<rightarrow\>x> ou si <math|x=y>
  alors on dit que <math|x> et <math|y> <em|communiquent> et l'on note
  <math|x\<leftrightarrow\>y>. La relation <math|\<leftrightarrow\>> est
  transitive, sym�trique et reflexive. Elle est donc une relation
  d'�quivalence et d�finit des classes <math|<around|{|C<rsub|k>\<subseteq\>M|}><rsub|k>>
  d'�l�ments qui communiquent entre eux (classes de communication) et qui
  forment une partition de <math|M>. On dit que un ensemble
  <math|A\<subseteq\>M> est ferm� si <math|x\<in\>A,x\<rightarrow\>y
  \<Rightarrow\>y\<in\>A>. Un �tat <math|x> est dit absorbant ssi
  <math|<around|{|x|}>> est une classe ferm�. Si <math|M> est form� d'une
  seule classe de communication (c-�-d si tout les �tats communiquent entre
  eux) on dit que la cha�ne <math|X> (ou la matrice de transition <math|P>)
  est <em|irr�ductible>.

  <\example>
    La marche al�atoire sur <with|mode|math|math-font|Bbb|Z> et le mod�le de
    l'urne d'Ehrenfest sont irr�ductibles. Par contre, le mod�le de
    Wright-Fisher n'est pas irr�ductible: les �tats <math|0> et <math|N> ne
    communiquent qu'avec eux-m�me. La matrice (<reference|mat1>) (plus en
    bas) n'est pas non plus irr�ductible.
  </example>

  <subsection|Recurrence><label|sec:chai-nes-irred-1>

  Soit <math|N<rsub|x>=card<around|{|n\<geqslant\>1:X<rsub|n>=x|}>> les
  nombres des visites � l'�tat <math|x> :

  <\equation*>
    N<rsub|x>=<big-around|\<sum\>|<rsub|n\<geqslant\>1>1<rsub|X<rsub|n>=x> >.
  </equation*>

  <\definition>
    Un �tat <math|x\<in\>M> est appel� <em|r�current> si
    <math|\<bbb-P\><rsub|x><around|(|N<rsub|x>=+\<infty\>|)>=1> et
    <em|transient> si <math|\<bbb-P\><rsub|x><around|(|N<rsub|x>=+\<infty\>|)>=0>.
  </definition>

  On revient toujours � un �tat recurrent, mais presque surement on visite un
  �tat transient seulement un nombre fini des fois. On va montrer que les
  �tat sont soit recurrent, soit transients.

  \;

  Pour tout <math|x\<in\>M>, on consid�re

  <\equation>
    <label|eq:11>T<rsub|x>=inf<around|{|k\<gtr\>0<space|0.75spc>:<space|0.75spc>X<rsub|k>=x|}>\<in\><with|math-font|Bbb|N>\<cup\>{+\<infty\>}
  </equation>

  le premier instant (strictement positif) de passage en <math|x>, avec la
  convention <math|inf \<emptyset\>=+\<infty\>>. Puis, de mani�re r�cursive,
  on introduit

  <\equation*>
    T<rsup|1><rsub|x>=T<rsub|x>,<space|2em>T<rsub|x><rsup|n+1>=inf<around|{|k\<gtr\>T<rsub|x><rsup|n><space|0.75spc>:<space|0.75spc>X<rsub|k>=x|}>
    \ pour n\<geqslant\>1,
  </equation*>

  le <math|n+1>-�me instant de passage en <math|x>. Pour
  <math|n\<geqslant\>1> si <math|T<rsup|n-1><rsub|x>\<less\>+\<infty\>> soit
  <math|\<tau\><rsup|n><rsub|x>=T<rsup|n><rsub|x>-T<rsup|n-1><rsub|x>> (avec
  <math|T<rsup|0><rsub|x>=0>).\ 

  <\proposition>
    <name|(Regeneration)> <label|prop:regen>Soit <math|x\<in\>M> et
    <math|n\<geqslant\>1>. Conditionellement � l'evenement
    <math|<around|{|T<rsup|n><rsub|x>\<less\>+\<infty\>|}>> la loi de
    <math|\<tau\><rsup|n+1><rsub|x>> est independante de
    <math|<around|(|T<rsub|x><rsup|1>,\<ldots\>,T<rsup|n><rsub|x>|)>> et

    <\equation*>
      \<bbb-P\><around|(|\<tau\><rsup|n+1><rsub|x>=k\|T<rsup|n><rsub|x>\<less\>+\<infty\>|)>=\<bbb-P\><rsub|x><around|(|T<rsub|x>=k|)>,
      <space|2em>k\<in\>\<bbb-N\>\<cup\>{+\<infty\>}.
    </equation*>
  </proposition>

  <\proof>
    Il suffit de calculer la loi jointe de l'<math|<around|(|n+1|)>>-plet
    <math|<around|(|T<rsup|1><rsub|x>,\<ldots\>,T<rsup|n><rsub|x>,\<tau\><rsup|n+1><rsub|x>|)>>:
    pour tout <math|1\<leqslant\>t<rsub|1>\<less\>t<rsub|2>\<less\> \<cdots\>
    \<less\>t<rsub|n>\<less\>+\<infty\>>, en exploitant la propri�t� de
    Markov � l'instant <math|t<rsub|n>> et l'homog�n�it� on obtient

    <\equation*>
      \<bbb-P\><around|(|T<rsup|1><rsub|x>=t<rsub|1><rsup|>,\<ldots\>,T<rsup|n><rsub|x>=t<rsub|n>,\<tau\><rsup|n+1><rsub|x>=k|)>=\<bbb-P\><around|(|T<rsup|1><rsub|x>=t<rsub|1><rsup|>,\<ldots\>,T<rsup|n><rsub|x>=t<rsub|n>,A<rsub|t<rsub|n>+1,t<rsub|n>+k>|)>
    </equation*>

    <\equation*>
      =\<bbb-P\><around|(|T<rsup|1><rsub|x>=t<rsub|1><rsup|>,\<ldots\>,T<rsup|n><rsub|x>=t<rsub|n>|)>\<bbb-P\><around|(|A<rsub|t<rsub|n>+1,t<rsub|n>+k>\|X<rsub|t<rsub|n>>=x|)>=\<bbb-P\><around|(|T<rsup|1><rsub|x>=t<rsub|1><rsup|>,\<ldots\>,T<rsup|n><rsub|x>=t<rsub|n>|)>\<bbb-P\><rsub|x><around|(|A<rsub|1,k>|)>
    </equation*>

    <\equation*>
      =\<bbb-P\><around|(|T<rsup|1><rsub|x>=t<rsub|1><rsup|>,\<ldots\>,T<rsup|n><rsub|x>=t<rsub|n>|)>\<bbb-P\><rsub|x><around|(|T<rsub|x>=k|)>
    </equation*>

    o� <math|A<rsub|t,s>=<around|{|X<rsub|i>\<neq\>x <text|pour
    <math|t\<leqslant\>i\<less\>s> et >X<rsub|s>=x |}>> si
    <math|s\<less\>+\<infty\>> et <math|A<rsub|t,+\<infty\>>=<around|{|X<rsub|i>\<neq\>x,
    \<forall\>i\<geqslant\>t|}>>. On remarque que cette identit� n'est pas
    vraie si <math|t<rsub|n>=+\<infty\>>. En revanche on a que\ 

    <\equation*>
      \<bbb-P\><around|(|T<rsup|1><rsub|x>=t<rsub|1><rsup|>,\<ldots\>,T<rsup|n><rsub|x>=t<rsub|n>,\<tau\><rsup|n+1><rsub|x>=k
      \|T<rsup|n><rsub|x>\<less\>+\<infty\>|)>=
      \<bbb-P\><around|(|T<rsup|1><rsub|x>=t<rsub|1><rsup|>,\<ldots\>,T<rsup|n><rsub|x>=t<rsub|n>\|T<rsup|n><rsub|x>\<less\>+\<infty\>|)>\<bbb-P\><rsub|x><around|(|T<rsub|x>=k|)>
    </equation*>

    pour tout <math|1\<leqslant\>t<rsub|1>\<leqslant\>
    \<cdots\>\<leqslant\>t<rsub|n>\<leqslant\>+\<infty\>> car
    <math|\<bbb-P\><around|(|T<rsup|1><rsub|x>=t<rsub|1><rsup|>,\<ldots\>,T<rsup|n><rsub|x>=t<rsub|n>\|T<rsup|n><rsub|x>\<less\>+\<infty\>|)>=0>
    si <math|t<rsub|n>=+\<infty\>>, ce qui donne la th�se.
  </proof>

  <\lemma>
    <label|lemma:effex>Pour <math|n\<geqslant\>1> on a que
    <math|\<bbb-P\><rsub|x><around|(|N<rsub|x>\<geqslant\>n|)>=f<rsub|x><rsup|n>>
    avec <math|f<rsub|x>=\<bbb-P\><rsub|x><around|(|T<rsub|x>\<less\>+\<infty\>|)>>.
  </lemma>

  <\proof>
    On a que <math|\<bbb-P\><rsub|x><around|(|N<rsub|x>\<geqslant\>0|)>=1> et
    que

    <\eqnarray*>
      <tformat|<cwith|1|1|1|1|cell-halign|r>|<table|<row|<cell|\<bbb-P\><rsub|x><around|(|N<rsub|x>\<geqslant\>n|)>>|<cell|=>|<cell|\<bbb-P\><rsub|x><around|(|T<rsup|n><rsub|x>\<less\>+\<infty\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<bbb-P\><rsub|x><around|(|T<rsup|n-1><rsub|x>\<less\>+\<infty\><text|
      \ et \ > \<tau\><rsup|n><rsub|x>\<less\>+\<infty\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<bbb-P\><rsub|x><around|(|T<rsup|n-1><rsub|x>\<less\>+\<infty\>|)>\<bbb-P\><rsub|x><around|(|
      T<rsub|x>\<less\>+\<infty\>|)><space|2em><around|(|par la Prop.
      <reference|prop:regen>|)>>>|<row|<cell|>|<cell|=>|<cell|\<bbb-P\><rsub|x><around|(|N<rsub|x>\<geqslant\>n-1|)>*f<rsub|x>>>>>
    </eqnarray*>

    pour tout <math|n\<geqslant\>1>. Par recurrence on a la th�se.
  </proof>

  <\remark>
    Pour tout v.a. <math|X> � valeurs dans <math|\<bbb-N\>> on a que

    <\equation>
      \<bbb-E\><around|[|X|]>=\<bbb-E\><around|[|<big-around|\<sum\>|<rsub|k\<geqslant\>1>1<rsub|k\<leqslant\>X>>|]>=<big-around|\<sum\>|<rsub|k\<geqslant\>1>\<bbb-P\><around|(|X\<geqslant\>k|)>><label|eq:int-expectation>
    </equation>
  </remark>

  <\theorem>
    On a la dichotomie suivante:

    <\enumerate-roman>
      <item><math|\<bbb-P\><rsub|x><around|(|T<rsub|x>\<less\>\<infty\>|)>=1
      \<Rightarrow\> <text|l'�tat <math|x> est recurrent \ et>
      \ <big-around|\<sum\>|<rsub|n\<geqslant\>1>P<rsup|n><around|(|x,x|)>>=+\<infty\>>;

      <item><math|\<bbb-P\><rsub|x><around|(|T<rsub|x>\<less\>\<infty\>|)>\<less\>1
      \<Rightarrow\> <text|l'�tat <math|x> est transient \ et>
      \ <big-around|\<sum\>|<rsub|n\<geqslant\>1>P<rsup|n><around|(|x,x|)>>\<less\>+\<infty\>>
      .
    </enumerate-roman>

    En particulier tout �tat <math|x> est soit transient, soit recurrent.\ 
  </theorem>

  <\proof>
    Si <math|f<rsub|x>=\<bbb-P\><rsub|x><around|(|T<rsub|x>\<less\>\<infty\>|)>=1>
    alors par le Lemme <reference|lemma:effex> on a que

    <\equation*>
      \<bbb-P\><rsub|x><around|(|N<rsub|x>=+\<infty\>|)>=lim<rsub|n\<rightarrow\>\<infty\>>\<bbb-P\><rsub|x><around|(|N<rsub|x>\<geqslant\>n|)>=lim<rsub|n\<rightarrow\>\<infty\>>f<rsub|x><rsup|n>=1
    </equation*>

    et donc <math|x> est un �tat recurrent et

    <\equation*>
      \<infty\>=\<bbb-E\><rsub|x><around|[|N<rsub|x>|]>=\<bbb-E\><rsub|x><around|[|<big-around|\<sum\>|<rsub|n\<geqslant\>1>1<rsub|X<rsub|n>=x>>|]>=<big-around|\<sum\>|<rsub|n\<geqslant\>1>P<rsup|n><around|(|x,x|)>
      >.
    </equation*>

    En revanche, si <math|f<rsub|x>\<less\>1> alors, par l'eq.
    (<reference|eq:int-expectation>) et par le Lemme <reference|lemma:effex>,

    <\equation*>
      <big-around|\<sum\>|<rsub|n\<geqslant\>1>P<rsup|n><around|(|x,x|)>>=\<bbb-E\><rsub|x><around|[|N<rsub|x>|]>=<big-around|\<sum\>|<rsub|n\<geqslant\>1>\<bbb-P\><rsub|x><around|(|N<rsub|x>\<geqslant\>n|)>>=<big-around|\<sum\>|<rsub|n\<geqslant\>1>f<rsub|x><rsup|n>>=<frac|f<rsub|x>|1-f<rsub|x>>\<less\>+\<infty\>
    </equation*>

    ce qu'implique aussi que \ <math|\<bbb-P\><rsub|x><around|(|N<rsub|x>=+\<infty\>|)>=0>
    et donc que <math|x> est un �tat transient.\ 
  </proof>

  <\theorem>
    Si <math|x\<leftrightarrow\>y> alors il sont tout les deux du m�me type
    (soit transients, soit r�currents). Donc la r�currence ou la transience
    sont des propri�t�s des classes de communication.
  </theorem>

  <\proof>
    Si <math|x,y> communiquent, alors il existent <math|N,M> tels que
    <math|P<rsup|N><around|(|x,y|)>\<gtr\>0> et
    <math|P<rsup|M><around|(|y,x|)>\<gtr\>0>. Une simple majoration donne

    <\equation*>
      P<rsup|2N+n+2M><around|(|x,x|)>\<geqslant\>P<rsup|N><around|(|x,y|)>P<rsup|N+n+M><around|(|y,y|)>P<rsup|M><around|(|y,x|)>\<geqslant\><around|[|P<rsup|N><around|(|x,y|)>P<rsup|M><around|(|y,x|)>|]><rsup|2>P<rsup|n><around|(|x,x|)>
    </equation*>

    pour tout <math|n\<geqslant\>1>. Soit
    <math|\<alpha\>=P<rsup|N><around|(|x,y|)>P<rsup|M><around|(|y,x|)>\<gtr\>0>,
    alors on peut minorer

    <\equation*>
      <big-around|\<sum\>|<rsub|k\<geqslant\>0>P<rsup|k><around|(|x,x|)>>\<geqslant\><big-around|\<sum\>|<rsub|k\<geqslant\>2N+2M>P<rsup|k><around|(|x,x|)>>\<geqslant\>\<alpha\><big-around|\<sum\>|<rsub|k\<geqslant\>N+M>P<rsup|k><around|(|y,y|)>>\<geqslant\>\<alpha\><rsup|2><big-around|\<sum\>|<rsub|k\<geqslant\>0>P<rsup|k><around|(|x,x|)>>
    </equation*>

    et donc les �tats <math|x> et <math|y> sont soit tout les deux
    transients, soit r�currents.
  </proof>

  <\remark>
    On dit alors d'une cha�ne irr�ductible qu'elle est transiente, r�currente
    (car tout les �tats sont du m�me type).
  </remark>

  <\proposition>
    Un ensemble <math|A\<subseteq\>M> ferm� et fini contient au moins un �tat
    recurrent. Une cha�ne finie et irreductible est donc recurrent.
  </proposition>

  <\proof>
    Soit <math|<around|\||A|\|>\<less\>+\<infty\>> et supposons par absurd
    que pour tout <math|z\<in\>A>, <math|\<bbb-P\><rsub|z><around|(|N<rsub|z>=+\<infty\>|)>=0>.
    On fixe <math|x\<in\>A>, pour tout <math|z\<in\>A> l'eq.
    (<reference|eq:generic-regeneration>) donne que

    <\equation*>
      \<bbb-P\><rsub|x><around|(|N<rsub|z>\<geqslant\>r|)>=\<bbb-P\><rsub|x><around|(|T<rsub|y>\<less\>+\<infty\>|)>\<bbb-P\><rsub|z><around|(|N<rsub|z>\<geqslant\>r|)>.
    </equation*>

    En prenant la limite pour <math|r\<rightarrow\>+\<infty\>> on obtient que

    <\equation*>
      \<bbb-P\><rsub|x><around|(|N<rsub|z>=+\<infty\>|)>=\<bbb-P\><rsub|x><around|(|T<rsub|z>\<less\>+\<infty\>|)>\<bbb-P\><rsub|z><around|(|N<rsub|z>=+\<infty\>|)>=0
    </equation*>

    pour tout <math|z\<in\>A> e par consequent

    <\equation*>
      1=\<bbb-P\><rsub|x>(\<cap\><rsub|z\<in\>A><around|{|N<rsub|z>\<less\>+\<infty\>|}>)=\<bbb-P\><rsub|x><around|(|<big-around|\<sum\>|<rsub|z\<in\>A>N<rsub|z>>\<less\>+\<infty\>|)>=\<bbb-P\><rsub|x><around|(|<big-around|\<sum\>|<rsub|n\<geqslant\>0>1<rsub|X<rsub|n>\<in\>A>>\<less\>+\<infty\>|)>
    </equation*>

    car <math|<big-around|\<sum\>|<rsub|z\<in\>A>N<rsub|z>>=
    <big-around|\<sum\>|<rsub|z\<in\>A><big-around|\<sum\>|<rsub|n\<geqslant\>0>1<rsub|X<rsub|n>=z>>>=<big-around|\<sum\>|<rsub|n\<geqslant\>0>1<rsub|X<rsub|n>\<in\>A>>>
    est le temps pass� dans <math|A> par la cha�ne. L'ensemble <math|A> etant
    ferm� on a que <math|\<bbb-P\><rsub|x><around|(|X<rsub|n>\<in\>A|)>=1>
    pour tout <math|n\<geqslant\>0> et donc aussi que le temps pass� dans
    <math|A> est infini (si on demarre de <math|x\<in\>A>):

    <\equation*>
      1=\<bbb-P\><rsub|x><around|(|\<forall\>n\<geqslant\>0 :
      X<rsub|n>\<in\>A|)>\<leqslant\>\<bbb-P\><rsub|x><around|(|<big-around|\<sum\>|<rsub|n\<geqslant\>0>1<rsub|X<rsub|n>\<in\>A>>=+\<infty\>|)>.
    </equation*>

    On obtient ainsi une contradiction.\ 
  </proof>

  <\example>
    Lorsque <math|<with|math-font|Bbb|P><rsub|x><around*|(|T<rsub|x>=1|)>=1>
    l'�tat <math|x> est <with|font-shape|italic|absorbant>. Par exemple les
    �tats <math|0> et <math|N> du mod�le de Wright-Fisher sont absorbants;
    les autres �tats �tant transients.
  </example>

  <\exercise>
    Montrer que la loi de <math|N<rsub|y>> sous <math|\<bbb-P\><rsub|x>> est

    <\equation>
      \<bbb-P\><rsub|x><around|(|N<rsub|y>=r|)>=<choice|<tformat|<table|<row|<cell|f<rsub|x
      y>f<rsub|y y><rsup|r-1><around|(|1-f<rsub|y y>|)> >|<cell|<text|si
      >r\<geqslant\>1>>|<row|<cell|1-f<rsub|x y>>|<cell|<text|si
      >r=0>>>>><label|eq:generic-regeneration>
    </equation>

    o� <math|f<rsub|x y>=\<bbb-P\><rsub|x><around|(|T<rsub|y>\<less\>+\<infty\>|)>>
    est la probabilit� de repasser par <math|y> en d�marrant de <math|x>.
  </exercise>

  <no-indent><strong|Solution.> On pose

  <\equation*>
    A<rsub|n, m>=<around|{|X<rsub|i>\<neq\>y <text|pour
    <math|n\<leqslant\>i\<less\>m> et <math|X<rsub|m>=y>
    ><rsub|>|}><space|1em>B<rsub|n>=<around|{|X<rsub|i>\<neq\>y<text| pour
    >i\<geqslant\>n|}>
  </equation*>

  alors

  <\equation*>
    f<rsub|x y>=<big-around|\<sum\>|<rsub|k\<geqslant\>1>\<bbb-P\><rsub|x><around|(|T<rsub|y><rsup|>=k|)>>=<big-around|\<sum\>|<rsub|k\<geqslant\>1>\<bbb-P\><rsub|x><around|(|A<rsub|1,k>|)>>
  </equation*>

  <\equation*>
    =<big-around|\<sum\>|<rsub|k\<geqslant\>1><big-around|\<sum\>|<rsub|x<rsub|1>,\<ldots\>,x<rsub|k-1>\<neq\>y>P<around|(|x,x<rsub|1>|)>P<around|(|x<rsub|1>,x<rsub|2>|)>\<cdots\>P<around|(|x<rsub|k-1>,y|)>>>
  </equation*>

  et <math|\<bbb-P\><rsub|x><around|(|B<rsub|1>|)>=1-f<rsub|x y>>. Supposons
  que <math|r\<geqslant\>1>, il est facile de voir que

  <\equation*>
    \<bbb-P\><rsub|x><around|(|N<rsub|y>=r|)>=<big-around|\<sum\>|<rsub|1\<leqslant\>n<rsub|1>\<less\>n<rsub|2>\<less\>\<cdots\>\<less\>n<rsub|r>>\<bbb-P\><rsub|x><around|(|A<rsub|1,n<rsub|1>>,A<rsub|n<rsub|1>+1,n<rsub|2>>,\<ldots\>,A<rsub|n<rsub|r-1>+1,n<rsub|r>>
    ,B<rsub|n<rsub|r>+1>|)>>
  </equation*>

  Donc, si on pose <math|k<rsub|i>=n<rsub|i+1>-n<rsub|i>\<geqslant\>1> et on
  utilise la propri�t� de Markov et l'homog�n�it� on trouve

  <\equation*>
    \<bbb-P\><rsub|x><around|(|N<rsub|y>=r|)>=<big-around|\<sum\>|<rsub|k<rsub|1>,\<ldots\>,k<rsub|r>\<geqslant\>1>\<bbb-P\><rsub|x><around|(|A<rsub|1,k<rsub|1>>|)>
    \<bbb-P\><rsub|y><around|(|A<rsub|1,k<rsub|2>>|)>\<cdots\>\<bbb-P\><rsub|y><around|(|A<rsub|1,k<rsub|r>>|)>\<bbb-P\><rsub|y><around|(|B<rsub|1>|)>>=f<rsub|x
    y><around|(|f<rsub|y y>|)><rsup|r-1><around|(|1-f<rsub|x x>|)> .
  </equation*>

  Quand <math|r=0> on a <math|\<bbb-P\><rsub|x><around|(|N<rsub|y>=0|)>=\<bbb-P\><rsub|x><around|(|B<rsub|1>|)>=1-f<rsub|x
  y>>.

  <subsection|Probabilit�s stationnaires><label|sec:prob-stat>

  <\definition>
    Une probabilit� <math|\<pi\>\<in\>\<Pi\><around|(|M|)>> est dite
    <em|stationnaire> (ou <em|invariante>) pour la matrice de transition
    <math|P>, si <math|\<pi\>=\<pi\>P>, i.e.

    <\equation>
      <label|eq:9>\<pi\><around|(|x|)>=<big-around|\<sum\>|<rsub|y\<in\>M>\<pi\><around|(|y|)>P<around|(|y,x|)>>,<space|2em>\<forall\><space|0.75spc>x\<in\>M.
    </equation>
  </definition>

  Par r�currence, on a <math|\<pi\>=\<pi\>P<rsup|n>> pour tout
  <math|n\<ge\>1>. Par cons�quent, si l'�tat initial de la cha�ne
  <math|X<rsub|0>> a pour loi <math|\<pi\>>, alors <math|X<rsub|n>> a la m�me
  loi <math|\<pi\>> que <math|X<rsub|0>>, <math|\<forall\>n\<ge\>1>.

  <\example>
    Soient <math|a,b\<in\><around|[|0,1|]>> et

    <\equation*>
      <label|eq:10>P=<around*|(|<tabular*|<tformat|<table|<row|<cell|1-a>|<cell|a>>|<row|<cell|b>|<cell|1-b>>>>>|)>
    </equation*>

    alors

    <equation*|\<pi\>=<around*|(|<tabular*|<tformat|<table|<row|<cell|<frac|b|a+b>,<frac|a|a+b>>>>>>|)>.>
  </example>

  \;

  <\remark>
    \;

    <\enumerate-numeric>
      <item> Il peut y avoir plusieurs probabilit�s stationnaires. Par
      exemple, la matrice de transition

      <\equation>
        <label|mat1><around*|(|<tabular*|<tformat|<table|<row|<cell|1-a>|<cell|a>|<cell|0>|<cell|0>>|<row|<cell|b>|<cell|1-b>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1-a<rprime|'>>|<cell|a<rprime|'>>>|<row|<cell|0>|<cell|0>|<cell|b<rprime|'>>|<cell|1-b<rprime|'>>>>>>|)>,
      </equation>

      avec <math|a,b,a<rprime|'>,b<rprime|'>\<in\><around|[|0,1|]>>, admet
      comme probabilit�s stationnaires tout quadrupl� de la forme

      <equation*|<around*|(|<tabular*|<tformat|<table|<row|<cell|<frac|\<alpha\>b|a+b>,>|<cell|<frac|\<alpha\>a|a+b>,>|<cell|<frac|<around|(|1-\<alpha\>|)>b<rprime|'>|a<rprime|'>+b<rprime|'>>,>|<cell|<frac|<around|(|1-\<alpha\>|)>a<rprime|'>|a<rprime|'>+b<rprime|'>>>>>>>|)>,\<alpha\>\<in\><around|[|0,1|]>.>

      <item>Lorsque <math|M> est infini, il se peut aussi qu'il n'y ait pas
      de probabilit� stationnaire. Par exemple, dans le cas de la marche
      al�atoire sur <with|mode|math|math-font|Bbb|Z>, l'�quation
      (<reference|eq:9>) devient, pour tout
      <math|x\<in\><with|math-font|Bbb|Z>>,

      <\equation*>
        \<pi\><around|(|x|)>=\<pi\><around|(|x-1|)>p+\<pi\><around|(|x+1|)><around|(|1-p|)>
      </equation*>

      et on v�rifie facilement (exercice) qu'il n'y a pas de probabilit�
      satisfaisant cette �quation. Par contre il existe des
      <with|font-shape|italic|mesures> (c'est � dire des mesure positives
      non-finie) satisfaisant cette �quation, par exemple la mesure de
      comptage <math|\<pi\><around|(|x|)>=1,\<forall\>x\<in\><with|math-font|Bbb|Z>>.
    </enumerate-numeric>
  </remark>

  <\proposition>
    Si <math|M> est fini, alors l'ensemble
    <math|<with|math-font|cal|I><around|(|P|)>> des probabilit�s
    stationnaires pour une matrice de transition <math|P> est un
    sous-ensemble non-vide, compact et convexe de
    <math|\<Pi\><around|(|M|)>>.
  </proposition>

  <\proof>
    <math|\<Pi\><around|(|M|)>> est un sous-ensemble convexe, ferm� et born�
    de <math|<with|math-font|Bbb|R><rsup|m>>, o� <math|m> est le cardinal
    (fini) de <math|M> (exercice). En particulier <math|\<Pi\><around|(|M|)>>
    est compact.

    Soit <math|\<mu\>\<in\> \<Pi\><around|(|M|)>> une probabilit� quelconque.
    On consid�re la combinaison convexe

    <\equation*>
      <wide|\<mu\>|^><rsub|n>=<frac|1|n><big-around|\<sum\>|<rsub|k=0><rsup|n-1>\<mu\>P<rsup|k>>.
    </equation*>

    Alors

    <\equation*>
      <wide|\<mu\>|^><rsub|n>P-<wide|\<mu\>|^><rsub|n>=<frac|1|n><big-around|\<sum\>|<rsub|k=0><rsup|n-1><around*|(|\<mu\>P<rsup|k+1>-\<mu\>P<rsup|k>|)>>=<frac|1|n><around*|(|\<mu\>P<rsup|n>-\<mu\>|)>\<longrightarrow\><rsub|n\<to\>\<infty\>>0.
    </equation*>

    Puisque <math|\<Pi\><around|(|M|)>> est compact, il existe une sous-suite
    <math|<wide|\<mu\>|^><rsub|n<rsub|k>>> de <math|<wide|\<mu\>|^><rsub|n>>
    convergente. Soit <math|\<pi\>> sa limite. Alors

    <\equation*>
      \<pi\>P=lim<rsub|k><wide|\<mu\>|^><rsub|n<rsub|k>>P=lim<rsub|k><wide|\<mu\>|^><rsub|n<rsub|k>>=\<pi\>,
    </equation*>

    donc <math|\<pi\>> est stationnaire.

    La compacit� et la convexit� de <math|<with|math-font|cal|I><around|(|P|)>>
    sont laiss�es en exercice.
  </proof>

  D'une mani�re g�n�rale, �tant donn�e une matrice de transition <math|P>,
  une mesure <math|\<mu\>> satisfaisant <math|\<mu\>=\<mu\>P> est dite
  <with|font-shape|italic|invariante> pour <math|P>.

  <subsection|Probabilit�s r�versibles><label|sec:prob-revers>

  <\definition>
    Une probabilit� <math|\<pi\>\<in\>\<Pi\><around|(|M|)>> est dite
    <em|r�versible> par rapport � <math|P> si pour tous <math|x,y\<in\>M>

    <\equation>
      <label|eq:rev>\<pi\><around|(|x|)>P<around|(|x,y|)>=\<pi\><around|(|y|)>P<around|(|y,x|)>.
    </equation>
  </definition>

  <\proposition>
    Si <math|\<pi\>> est r�versible, alors elle est stationnaire.
  </proposition>

  <\proof>
    Exercice.
  </proof>

  <\example>
    \ Si <math|P> est sym�trique, i.e. si
    <math|P<around|(|x,y|)>=P<around|(|y,x|)>> pour tout couple
    <math|<around|(|x,y|)>\<in\>M\<times\>M>, et si <math|M> est fini de
    cardinal <math|<around|\||M|\|>>, alors la la probabilit� uniforme
    <math|<around*|(|<tabular*|<tformat|<table|<row|<cell|<frac|1|<around|\||M|\|>>,...,<frac|1|<around|\||M|\|>>>>>>>|)>>
    est r�versible.
  </example>

  \;

  <\exercise>
    <name|l'urne d'Ehrenfest>. <math|N> mol�cules de gaz sont r�parties dans
    un r�cipient divis� en deux enceintes s�par�es par une paroi poreuse. A
    chaque �tape une particule choisie uniform�ment au hasard change
    d'enceinte. On note <math|X<rsub|n>> le nombre de particules dans la
    premi�re enceinte � l'�tape <math|n>. Montrer que
    <math|<around|(|X<rsub|n>|)><rsub|n\<geq\>0>> est une cha�ne de Markov �
    valeurs dans <math|<around|{|1,...,N|}>> de matrice de transition

    <\equation*>
      P<around|(|i,j|)>=<around*|{|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|2|2|cell-halign|l>|<table|<row|<cell|<frac|N-i|N>>|<cell|<text|si
      >j=i+1<text|et >0\<leq\>i\<leq\>N-1>>|<row|<cell|<frac|i|N>>|<cell|<text|si
      >j=i-1<text|et >1\<leq\>i\<leq\>N>>|<row|<cell|0>|<cell|<text|sinon>>>>>>|\<nobracket\>>
    </equation*>

    et que <math|\<pi\>> est une probabilit� r�versible ssi
    <math|\<pi\><around|(|i|)>=2<rsup|-N>C<rsub|N><rsup|i>>.
  </exercise>

  \;

  <\proposition>
    Soit <math|\<pi\>> une probabilit� r�versible pour <math|P> et
    <math|X<rsub|0>> une variable al�atoire de loi <math|\<pi\>>. On fixe
    <math|n\<in\><with|math-font|Bbb|N>>. Alors la suite
    <math|<around|{|X<rsup|\<ast\>><rsub|j>=X<rsub|n-j>|}><rsub|0\<leq\>j\<leq\>n>>
    est une cha�ne de Markov de matrice de transition <math|P>, et
    <math|X<rsup|\<ast\>><rsub|0>> a pour loi <math|\<pi\>>.
  </proposition>

  C'est-�-dire qu'� l'�quilibre, la loi de la suite
  <math|X<rsub|0>,...,X<rsub|n>> est invariante par retournement de temps.

  <\proof>
    Exercice.
  </proof>

  <subsection|Cha�nes irr�ductibles>

  <\proposition>
    <label|prop:irred>Soit <math|P> une matrice de transition irr�ductible et
    supposons qu'il existe une mesure stationnaire <math|\<pi\>>. Alors

    <\enumerate>
      <item><label|pi><math|\<pi\><around|(|x|)>\<gtr\>0> pour tout
      <math|x\<in\>M>,

      <item><label|cost><math|P*f=f> implique que
      <math|f=<with|mode|text|constante>>,

      <item><label|uniq>tout mesure stationnaire est multiple de
      <math|\<pi\>> et si <math|\<pi\>> est une probabilit� stationnaire,
      alors elle est la seule probabilit� stationaire pour <math|P>.
    </enumerate>
  </proposition>

  <\proof>
    Soit <math|x\<in\>M> tel que <math|\<pi\><around|(|x|)>\<gtr\>0>. Pour
    tout <math|y\<in\>M>, il existe un entier <math|k> tel que
    <math|P<rsup|k><around|(|x,y|)>\<gtr\>0>. Par ailleurs, par
    stationnarit�, <math|\<pi\>=\<pi\>P<rsup|k>>. On a donc

    <\equation*>
      \<pi\><around|(|y|)>=<big-around|\<sum\>|<rsub|z\<in\>M>\<pi\><around|(|z|)>P<rsup|k><around|(|z,y|)>>\<ge\>\<pi\><around|(|x|)>P<rsup|k><around|(|x,y|)>\<gtr\>0,
    </equation*>

    ce qui prouve <reference|pi>). Pour d�montrer <reference|cost>), on
    consid�re

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|>|<cell|<big-around|\<sum\>|<rsub|x,y\<in\>M>\<pi\><around|(|x|)>P<around|(|x,y|)><around*|(|f<around|(|x|)>-f<around|(|y|)>|)><rsup|2>>>>|<row|<cell|>|<cell|>|<cell|=2<big-around|\<sum\>|<rsub|x\<in\>M>\<pi\><around|(|x|)>f<around|(|x|)><rsup|2>>-2<big-around|\<sum\>|<rsub|x,y\<in\>M>\<pi\><around|(|x|)>P<around|(|x,y|)>f<around|(|x|)>f<around|(|y|)>>>>|<row|<cell|>|<cell|>|<cell|=2<big-around|\<sum\>|<rsub|x\<in\>M>\<pi\><around|(|x|)>f<around|(|x|)><around*|(|f<around|(|x|)>-<big-around|\<sum\>|<rsub|y\<in\>M>P<around|(|x,y|)>f<around|(|y|)>>|)>>=0.>>>>
    </eqnarray*>

    Donc <math|\<forall\>x,y\<in\>M>

    <\equation*>
      \<pi\><around|(|x|)>P<around|(|x,y|)><around*|(|f<around|(|x|)>-f<around|(|y|)>|)><rsup|2>=0.
    </equation*>

    Vu (<reference|pi>), ceci implique que <math|\<forall\>x,y\<in\>M>

    <\equation*>
      P<around|(|x,y|)><around*|(|f<around|(|x|)>-f<around|(|y|)>|)><rsup|2>=0
    </equation*>

    i.e. <math|f<around|(|x|)>=f<around|(|y|)>> si
    <math|P<around|(|x,y|)>\<gtr\>0>. Par ailleurs, puisque la cha�ne est
    irr�ductible, <math|\<forall\>x,y\<in\>M>, il existe un chemin
    <math|x<rsub|0>=x,x<rsub|1>,\<ldots\>,x<rsub|k>=y> tel que
    <math|P<around|(|x<rsub|i>,x<rsub|i-1>|)>\<gtr\>0> <math|\<forall\>>
    <math|1\<leq\>i\<leq\>k>, et donc <math|f<around|(|x|)>=f<around|(|x<rsub|1>|)>=\<ldots\>=f<around|(|y|)>>.
    Enfin, pour montrer l'unicit� <reference|uniq>) (� moins d'un facteur
    constante), consid�rons une mesure <math|\<nu\>> (donc
    <math|\<nu\>=\<nu\>P>). On pose

    <\equation*>
      Q<around|(|x,y|)>=P<around|(|y,x|)><frac|\<pi\><around|(|y|)>|\<pi\><around|(|x|)>><space|2em>et<space|2em>f<around|(|x|)>=<frac|\<nu\><around|(|x|)>|\<pi\><around|(|x|)>>.
    </equation*>

    Alors <math|Q> est une matrice de transition irr�ductible (exercice) et
    <math|Q*f=f>. Donc <math|f> est constante et on en d�duit que
    <math|\<nu\><around|(|x|)>=c \<pi\><around|(|x|)>> pour tout
    <math|x\<in\>M>. Si <math|\<nu\>> et <math|\<pi\>> sont des mesures de
    probabilit� alors <math|c=1> et on a l'unicit�.
  </proof>

  <subsection|Excursions>

  Pour tous <math|x,y\<in\>M>, on compte le nombre de passages en <math|y>
  avant de toucher <math|x> pour la premi�re fois :

  <\equation>
    <label|eq:12>N<rsub|x><rsup|y>=<big-around|\<sum\>|<rsub|n=0><rsup|T<rsub|x>-1>1<rsub|<around|[|X<rsub|n>=y|]>>>.
  </equation>

  <\remark>
    \;

    <\enumerate-numeric>
      <item><math|<with|mode|text|Si >X<rsub|0>=x<with|mode|text|, alors
      >N<rsub|x><rsup|x>=1>.

      <item><math|<with|mode|text|Si >X<rsub|0>\<neq\>x<with|mode|text|,
      alors >N<rsub|x><rsup|x>=0>.

      <item><math|<big-around|\<sum\>|<rsub|y\<in\>M>N<rsub|x><rsup|y>>=T<rsub|x>>.
    </enumerate-numeric>
  </remark>

  On introduit ensuite, pour tout <math|x,y\<in\>M>

  <\equation>
    \<mu\><rsub|x><around|(|y|)>=<with|math-font|Bbb|E><rsub|x><around|[|N<rsub|x><rsup|y>|]>=\<bbb-E\><rsub|x><around|[|<big-around|\<sum\>|<rsub|n\<geqslant\>0>1<rsub|T<rsub|x>\<gtr\>n,X<rsub|n>=y>>|]><label|eq:mufirsteqn>
  </equation>

  On voit que pour tout <math|x\<in\>M>, <math|\<mu\><rsub|x>> d�finit une
  mesure positive sur <math|M> (qui n'est pas une probabilit� en g�n�ral), et
  que

  <\equation>
    <label|tot>\<mu\><rsub|x><around|(|M|)>=<big-around|\<sum\>|<rsub|y\<in\>M>\<mu\><rsub|x><around|(|y|)>>=<with|math-font|Bbb|E><rsub|x><around|(|T<rsub|x>|)>\<in\><around*|[|0,\<infty\>|]>.
  </equation>

  <\proposition>
    <label|PropStat>Pour tout <math|x\<in\>M> recurrent,
    <math|\<mu\><rsub|x>> est une mesure stationnaire, i.e.

    <\equation*>
      \<mu\><rsub|x><around|(|y|)>=<big-around|\<sum\>|<rsub|z\<in\>M>\<mu\><rsub|x><around|(|z|)>P<around|(|z,y|)>>.
    </equation*>
  </proposition>

  <\proof>
    Il faut d'abord remarquer que

    <\equation*>
      \<mu\><rsub|x><around|(|y|)>=\<bbb-E\><rsub|x><around|[|<big-around|\<sum\>|<rsub|n\<geqslant\>0>1<rsub|T<rsub|x>\<gtr\>n,X<rsub|n>=y>>|]>=\<bbb-E\><rsub|x><around|[|<big-around|\<sum\>|<rsub|n\<geqslant\>1>1<rsub|T<rsub|x>\<geqslant\>n,X<rsub|n>=y>>|]>
    </equation*>

    car <math|\<bbb-P\><rsub|x><around|(|T<rsub|x>\<less\>\<infty\>,X<rsub|0>=X<rsub|T<rsub|x>>=x|)>=1>.
    On note aussi que <math|<around|{|T<rsub|x>\<geqslant\>n|}>\<in\>\<sigma\><around|(|X<rsub|0>,\<ldots\>,X<rsub|n-1>|)>=\<cal-F\><rsub|n-1>>
    ce qui nous permet de montrer que

    <\equation*>
      <tabular|<tformat|<cwith|1|1|3|3|cell-halign|l>|<table|<row|<cell|\<bbb-E\><rsub|x><around|[|1<rsub|T<rsub|x>\<geqslant\>n>1<rsub|X<rsub|n>=y>1<rsub|X<rsub|n-1>=z>|]>>|<cell|=>|<cell|\<bbb-E\><rsub|x><around|[|\<bbb-E\><around|[|1<rsub|T<rsub|x>\<geqslant\>n>1<rsub|X<rsub|n>=y>1<rsub|X<rsub|n-1>=z>\|\<cal-F\><rsub|n-1>|]>|]>>>|<row|<cell|>|<cell|=>|<cell|\<bbb-E\><rsub|x><around|[|\<bbb-E\><around|[|1<rsub|X<rsub|n>=y>\|\<cal-F\><rsub|n-1>|]>1<rsub|T<rsub|x>\<geqslant\>n>
      1<rsub|X<rsub|n-1>=z>|]><space|2em><text|(<math|<around|{|T<rsub|x>\<geqslant\>n|}>\<in\>\<cal-F\><rsub|n-1>>)>>>|<row|<cell|>|<cell|=>|<cell|\<bbb-E\><rsub|x><around|[|\<bbb-E\><around|[|1<rsub|X<rsub|n>=y>\|X<rsub|n-1>|]>1<rsub|T<rsub|x>\<geqslant\>n>
      1<rsub|X<rsub|n-1>=z>|]><space|2em><text|(Markov)>>>|<row|<cell|>|<cell|=>|<cell|\<bbb-E\><rsub|x><around|[|P<around|(|X<rsub|n-1>,y|)>1<rsub|T<rsub|x>\<geqslant\>n>
      1<rsub|X<rsub|n-1>=z>|]><space|2em><text|(Def. de
      <math|P>)>>>|<row|<cell|>|<cell|=>|<cell|P<around|(|z,y|)>*\<bbb-E\><rsub|x><around|[|1<rsub|T<rsub|x>\<geqslant\>n>
      1<rsub|X<rsub|n-1>=z>|]>>>>>>
    </equation*>

    Or

    <\eqnarray*>
      <tformat|<table|<row|<cell|<style-only*|\<mu\><rsub|x><around|(|y|)>>>|<cell|=>|<cell|<big-around|\<sum\>|<rsub|n\<geqslant\>1>\<bbb-E\><rsub|x><around|[|1<rsub|T<rsub|x>\<geqslant\>n,X<rsub|n>=y>
      <big-around|\<sum\>|<rsub|z\<in\>M>1<rsub|X<rsub|n-1>=z>>|]>><space|2em><text|(car
      <math|<big-around|\<sum\>|<rsub|z\<in\>M>1<rsub|X<rsub|n-1>=z>>=1>)>>>|<row|<cell|>|<cell|=>|<cell|<big-around|\<sum\>|<rsub|x\<in\>M><big-around|\<sum\>|<rsub|n\<geqslant\>1>\<bbb-E\><rsub|x><around|[|1<rsub|T<rsub|x>\<geqslant\>n>1<rsub|X<rsub|n>=y>1<rsub|X<rsub|n-1>=z>|]>>>>>|<row|<cell|>|<cell|=>|<cell|<big-around|\<sum\>|<rsub|x\<in\>M><big-around|\<sum\>|<rsub|n\<geqslant\>1>P<around|(|z,y|)>*\<bbb-E\><rsub|x><around|[|1<rsub|T<rsub|x>\<geqslant\>n>
      1<rsub|X<rsub|n-1>=z>|]>>>>>|<row|<cell|>|<cell|=>|<cell|<big-around|\<sum\>|<rsub|x\<in\>M>P<around|(|z,y|)>
      <wide*|<big-around|\<sum\>|<rsub|k\<geqslant\>0>*\<bbb-E\><rsub|x><around|[|1<rsub|T<rsub|x>\<gtr\>k>
      1<rsub|X<rsub|k>=z>|]>>|\<wide-underbrace\>><rsub|=\<mu\><rsub|x><around|(|z|)><text|
      (par l'eq. (<reference|eq:mufirsteqn>))>><space|2em><around|(|<text|o�
      on pose >k = n-1|)>>>>|<row|<cell|>|<cell|=>|<cell|<big-around|\<sum\>|<rsub|z\<in\>M>P<around|(|x,z|)>
      \<mu\><rsub|x><around|(|z|)>>>>>>
    </eqnarray*>
  </proof>

  <\corollary>
    Si <math|P> est irr�ductible et recurrent, alors
    <math|\<mu\><rsub|x><around|(|y|)>\<less\>\<infty\>>
    <math|\<forall\>x,y\<in\>M>.
  </corollary>

  <\proof>
    <math|P> est irr�ductible, donc pour tous <math|x,y\<in\>M>, il existe un
    entier <math|k> tel que <math|P<rsup|k><around|(|y,x|)>\<gtr\>0>. Alors,

    <\equation*>
      1=\<mu\><rsub|x><around|(|x|)>=<big-around|\<sum\>|<rsub|z\<in\>M>\<mu\><rsub|x><around|(|z|)>P<rsup|k><around|(|z,x|)>>\<ge\>\<mu\><rsub|x><around|(|y|)>P<rsup|k><around|(|y,x|)>
    </equation*>

    donc

    <\equation*>
      \<mu\><rsub|x><around|(|y|)>\<le\><around*|(|P<rsup|k><around|(|y,x|)>|)><rsup|-1>\<less\>\<infty\>.
    </equation*>
  </proof>

  <\definition>
    On dit que l'�tat <math|x\<in\>M> est <em|recurrent positif> si
    <math|\<bbb-E\><rsub|x><around|[|T<rsub|x>|]>\<less\>+\<infty\>>. Un �tat
    recurrent tel que <math|\<bbb-E\><rsub|x><around|[|T<rsub|x>|]>=+\<infty\>>
    est appel� <em|recurrent nul>.
  </definition>

  Remarquons qu'il r�sulte de la formule (<reference|tot>), qu'un �tat
  <math|x\<in\>M> recurrent est r�current positif si et seulement si
  <math|\<mu\><rsub|x>> est une mesure finie
  (<math|\<mu\><rsub|x><around|(|M|)>\<less\>+\<infty\>>). Par cons�quent,

  <\corollary>
    <label|Cor1>Si <math|<around|\||M|\|>\<less\>\<infty\>> et <math|P> est
    irr�ductible, la cha�ne est r�currente positive, i.e.
    <math|<with|math-font|Bbb|E><rsub|x><around|(|T<rsub|x>|)>\<less\>\<infty\>>
    pour tout <math|x\<in\>M>.
  </corollary>

  Soit maintenant <math|x> un �tat r�current positif. On peut d�finir la
  probabilit� sur <math|M>

  <\equation>
    <label|eq:13>\<pi\><rsub|x><around|(|y|)>=<frac|\<mu\><rsub|x><around|(|y|)>|\<mu\><rsub|x><around|(|M|)>>=<frac|\<mu\><rsub|x><around|(|y|)>|<with|math-font|Bbb|E><rsub|x><around|(|T<rsub|x>|)>>,<space|2em>\<forall\>y\<in\>M.
  </equation>

  D'apr�s la Proposition (<reference|PropStat>), <math|\<pi\><rsub|x>> est
  une probabilit� stationnaire. Par ailleurs, si <math|P> est irr�ductible,
  on sait, d'apr�s la Proposition <reference|prop:irred>, qu'il existe une
  seule probabilit� stationnaire et que tout les �tats sont recurrents (car
  au moins l'�tat <math|x> est recurrent). Cela signifie que on peut definit
  une mesure invariante <math|\<mu\><rsub|y>> pour tout <math|y\<in\>M> et
  par irreducibilit� que <math|\<mu\><rsub|y><around|(|z|)>=C<rsub|x,y>
  \<mu\><rsub|x><around|(|z|)>> (car les mesures invariantes d'une cha�ne
  irreductible sont toutes proportionelles). Pour la recurrence positive de
  <math|x> on a que <math|\<bbb-E\><rsub|y><around|[|T<rsub|y>|]>=<big-around|\<sum\>|<rsub|z\<in\>M>\<mu\><rsub|y><around|(|z|)>>=C<rsub|x,y><big-around|\<sum\>|<rsub|z\<in\>M>\<mu\><rsub|x><around|(|z|)>>=C<rsub|x,y>\<bbb-E\><rsub|x><around|[|T<rsub|x>|]>\<less\>+\<infty\>>
  et donc que <math|\<bbb-E\><rsub|y><around|[|T<rsub|y>|]>\<less\>+\<infty\>>
  et que tout �tat <math|y\<in\>M> est recurrent positif. On peut definir
  <math|\<pi\><rsub|y><around|(|z|)>=\<mu\><rsub|y><around|(|z|)>/\<bbb-E\><rsub|y><around|[|T<rsub|y>|]>>
  et par irreductibilit� on obtient que <math|\<pi\><rsub|x>=\<pi\><rsub|y>>
  pour tout <math|y\<in\>M>. Dans ce cas, <math|\<pi\><rsub|x><around|(|z|)>>
  ne d�pend pas de <math|x> et on peut ecrire
  <math|\<pi\><around|(|z|)>=\<pi\><rsub|x><around|(|z|)>> pour tout
  <math|x\<in\>M> et donc <math|\<pi\><around|(|x|)>=\<pi\><rsub|x><around|(|x|)>=\<mu\><rsub|x><around|(|x|)>/\<bbb-E\><rsub|x><around|[|T<rsub|x>|]>=1/\<bbb-E\><rsub|x><around|[|T<rsub|x>|]>>.
  D'o� le r�sultat suivant.

  <\proposition>
    Si <math|<around|{|X<rsub|n>|}><rsub|n\<ge\>0>> est une cha�ne
    irr�ductible avec au moins un �tat r�current positif, alors tous les
    �tats sont r�current positifs et

    <\equation>
      <label|eq:pi>\<pi\><around|(|x|)>=<frac|1|<with|math-font|Bbb|E><rsub|x><around|(|T<rsub|x>|)>>\<gtr\>0
    </equation>

    est l'unique probabilit� stationnaire. De plus,

    <\equation>
      <label|eq:N><with|math-font|Bbb|E><rsub|x><around|(|N<rsub|x><rsup|y>|)>=<frac|\<pi\><around|(|y|)>|\<pi\><around|(|x|)>>.
    </equation>
  </proposition>

  <\example>
    \ On peut montrer que dans le cas de la marche al�atoire sur
    <with|mode|math|math-font|Bbb|Z>, la cha�ne est

    (a) transiente si <math|p\<neq\>1/2>

    (b) r�currente nulle si <math|p=1/2>.
  </example>

  <\example>
    Par le Corollaire \ (<reference|Cor1>) dans le mod�le de l'urne
    d'Ehrenfest, la cha�ne est r�currente positive (espace d'�tats fini et
    cha�ne irreductible).
  </example>

  <section|Le th�or�me ergodique><label|sec:th-erg>

  <\corollary>
    Soit <math|N<rsub|x>=<big-around|\<sum\>|<rsub|n=0><rsup|\<infty\>>1<rsub|<around|[|X<rsub|n>=x|]>>>>.
    Alors si <math|x> est transient

    <\equation>
      <label|eq:nx><with|math-font|Bbb|P><rsub|x><around|(|N<rsub|x>=k|)>=<around|(|1-a|)>a<rsup|k-1>,<space|1em>k\<ge\>1,<space|1em>a=<with|math-font|Bbb|P><rsub|x><around|(|T<rsub|x>\<less\>\<infty\>|)>\<less\>1
    </equation>

    et si <math|x> est r�current on a <math|<with|math-font|Bbb|P><rsub|x><around|(|N<rsub|x>=\<infty\>|)>=1>.
  </corollary>

  <\proof>
    \;

    <\equation*>
      <with|math-font|Bbb|P><rsub|x><around|(|N<rsub|x>=k|)>=<with|math-font|Bbb|P><rsub|x><around*|(|T<rsub|x><rsup|i+1>-T<rsub|x><rsup|i>\<less\>\<infty\>,i=0,\<ldots\>,k-1;T<rsub|x><rsup|k+1>-T<rsub|x><rsup|k>=\<infty\>|)>=<around|(|1-a|)>a<rsup|k-1>
    </equation*>

    \;
  </proof>

  <\theorem>
    Soit <math|P> une matrice irr�ductible r�currente positive et
    <math|\<pi\>> sa probabilit� stationnaire. Alors pour tout
    <math|x,y\<in\>M>

    <\equation>
      <label|eq:therg><with|math-font|Bbb|P><rsub|x><around*|(|lim<rsub|n\<to\>\<infty\>><frac|1|n><big-around|\<sum\>|<rsub|k=0><rsup|n-1>1<rsub|<around|[|X<rsub|k>=y|]>>>=\<pi\><around|(|y|)>|)>=1.
    </equation>
  </theorem>

  <\proof>
    \ Par la r�currence on a que <math|T<rsup|k><rsub|y>\<less\>+\<infty\>>
    pour tout <math|k\<geqslant\>1>, donc les v.a.
    <math|\<tau\><rsup|k><rsub|y>=T<rsup|k+1><rsub|y>-T<rsup|k><rsub|y>> sont
    bien d�finies pour tout <math|k\<geqslant\>1> et par le th�or�me de
    r�g�n�ration on a que la suite <math|<around|(|\<tau\><rsup|k><rsub|y>|)><rsub|k\<geqslant\>1>>
    est iid et tel que <math|\<bbb-P\><rsub|x><around|(|\<tau\><rsup|k><rsub|y>=m|)>=\<bbb-P\><rsub|y><around|(|T<rsub|y>=m|)>>.
    D'apr�s la loi des grands nombres

    <\equation*>
      <frac|1|k><big-around|\<sum\>|<rsub|i=1><rsup|k-1>\<tau\><rsup|i><rsub|y><below|\<longrightarrow\>|k\<rightarrow\>\<infty\>>\<bbb-E\><rsub|y><around|(|T<rsub|y>|)>>=<frac|1|\<pi\><around|(|y|)>><space|2em><with|math-font|Bbb|P><rsub|x>-p.s.
    </equation*>

    et <math|\<bbb-P\><rsub|x><around|(|T<rsub|y>\<less\>+\<infty\>|)>=1>
    donc

    <\equation*>
      <frac|1|k>T<rsub|y><rsup|k>=<frac|1|k><around*|(|<big-around|\<sum\>|<rsub|i=1><rsup|k-1>\<tau\><rsup|i><rsub|y>>+T<rsub|y>|)><below|\<longrightarrow\>|k\<rightarrow\>\<infty\>><with|math-font|Bbb|E><rsub|y><around|(|T<rsup|1><rsub|y>|)>=\<pi\><around|(|y|)><rsup|-1><space|2em><with|math-font|Bbb|P><rsub|x>-p.s.
    </equation*>

    Par ailleurs, si pour tout <math|n\<ge\>1> on pose
    <math|N<rsub|y><rsup|n>=<big-around|\<sum\>|<rsub|k=0><rsup|n-1>1<rsub|<around|[|X<rsub|k>=y|]>>>>
    alors on a que

    <\equation*>
      T<rsup|N<rsup|n><rsub|y>><rsub|y>\<leqslant\>n\<leqslant\>T<rsup|N<rsup|n><rsub|y>+1><rsub|y>
    </equation*>

    et donc

    <\equation*>
      <frac|N<rsup|n><rsub|y>|T<rsup|N<rsup|n><rsub|y>+1><rsub|y>>\<leqslant\><frac|1|n><big-around|\<sum\>|<rsub|k=0><rsup|n-1>1<rsub|<around|[|X<rsub|k>=y|]>>>\<leqslant\><frac|N<rsup|n><rsub|y>|T<rsup|N<rsup|n><rsub|y>><rsub|x>>.
    </equation*>

    D'o� le r�sultat.
  </proof>

  <\remark>
    En modifiant l�g�rement cette preuve, on obtient le r�sultat plus g�n�ral
    suivant.
  </remark>

  <\corollary>
    Soit <math|P> une matrice irr�ductible r�currente positive et
    <math|\<pi\>> sa probabilit� stationnaire. Soit <math|f> une fonction
    dans <math|L<rsup|1><around|(|\<pi\>|)>>, i.e.
    <math|<big-around|\<sum\>|<rsub|x\<in\>M><around|\||f<around|(|x|)>|\|>\<pi\><around|(|x|)>>\<less\>\<infty\>>.
    Alors

    <\equation*>
      lim<rsub|n\<to\>\<infty\>><frac|1|n><big-around|\<sum\>|<rsub|k=0><rsup|n-1>f<around|(|X<rsub|k>|)>>=<big-around|\<sum\>|<rsub|x\<in\>M>f<around|(|x|)>\<pi\><around|(|x|)><space|2em><with|math-font|Bbb|P><rsub|x>>-p.s.
    </equation*>
  </corollary>

  <section|Convergence vers l'�quilibre><label|sec:equilibre>

  Un corollaire du th�or�me ergodique est que lorsque <math|P> est une
  matrice de transition irr�ductible r�currente positive de probabilit�
  invariante <math|\<pi\>>

  <\equation*>
    <frac|1|n><big-around|\<sum\>|<rsub|j=0><rsup|n-1>\<mu\>P<rsup|j>>\<longrightarrow\><rsub|n\<to\>\<infty\>><rsup|loi>\<pi\>,
  </equation*>

  pour toute probabilit� <math|\<mu\>\<in\>\<Pi\><around|(|M|)>>. Ceci
  n'implique pas en g�n�ral que <math|\<mu\>P<rsup|n>\<to\>\<pi\>> :

  <\example>
    La matrice

    <\equation*>
      P=<around*|(|<tabular*|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>|)>
    </equation*>

    a pour loi stationnaire <math|\<pi\>=<around|(|<frac|1|2>,<frac|1|2>|)>>
    et comme puissances

    <\equation*>
      P<rsup|2n>=<around*|(|<tabular*|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>|)><space|1em><text|et><space|1em>P<rsup|2n+1>=<around*|(|<tabular*|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>|)>.
    </equation*>

    Donc <math|\<mu\>P<rsup|n>=\<mu\>> si <math|n> est pair et
    <math|\<mu\>P<rsup|n>=\<mu\>P> si <math|n> est impair et on voit que
    <math|\<mu\>P<rsup|n>> ne converge pas vers <math|\<pi\>>.
  </example>

  Une condition assez g�nerale sur <math|P >pour la convergence
  <math|\<mu\>P<rsup|n>\<to\>\<pi\>> est determin� par la notion de
  irreductibilit� forte.

  <\definition>
    Une matrice de transition <math|P> est dite fortement irr�ductible s'il
    existe <math|n<rsub|0>\<in\><with|math-font|Bbb|N>> tel que pour tous
    <math|x,y\<in\>M> on ait <math|P<rsup|n<rsub|0>><around|(|x,y|)>\<gtr\>0>.
  </definition>

  <\proposition>
    Si <math|<around|\||M|\|>\<less\>\<infty\>> et si <math|P> est fortement
    irr�ductible, alors pour tout probabilit�
    <math|\<mu\>\<in\>\<Pi\><around*|(|\<cal-M\>|)>> on a que

    <\equation*>
      lim<rsub|n\<rightarrow\>+\<infty\>>\<mu\>*P<rsup|n>=\<pi\>
    </equation*>

    (la limite existe et elle est l'unique probabilit� invariante).
  </proposition>

  <\proof>
    (admise).
  </proof>

  <\example>
    \;

    <\enumerate-numeric>
      <item>La matrice

      <\equation*>
        <around*|(|<tabular*|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>|)>
      </equation*>

      n'est pas fortement irr�ductible.

      <item>La matrice

      <\equation*>
        <around*|(|<tabular*|<tformat|<table|<row|<cell|p>|<cell|1-p>>|<row|<cell|0>|<cell|1>>>>>|)>
      </equation*>

      n'est pas irr�ductible.

      <item>La matrice

      <\equation*>
        <around*|(|<tabular*|<tformat|<table|<row|<cell|p>|<cell|1-p>>|<row|<cell|1>|<cell|0>>>>>|)>
      </equation*>

      est fortement irr�ductible si <math|0\<less\>p\<less\>1>.
    </enumerate-numeric>
  </example>

  \;
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|language|french>
    <associate|par-hyphen|normal>
    <associate|preamble|false>
    <associate|sfactor|5>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Cor1|<tuple|36|11>>
    <associate|PropStat|<tuple|33|10>>
    <associate|auto-1|<tuple|4|1>>
    <associate|auto-10|<tuple|1.8|10>>
    <associate|auto-11|<tuple|2|9>>
    <associate|auto-12|<tuple|3|11>>
    <associate|auto-13|<tuple|3.1|12>>
    <associate|auto-14|<tuple|3.2|14>>
    <associate|auto-15|<tuple|3.2|14>>
    <associate|auto-16|<tuple|2.4|17>>
    <associate|auto-17|<tuple|3|18>>
    <associate|auto-18|<tuple|3.1|20>>
    <associate|auto-19|<tuple|3.2|20>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|2.3.2|22>>
    <associate|auto-21|<tuple|3|25>>
    <associate|auto-3|<tuple|1.1|2>>
    <associate|auto-4|<tuple|1.2|3>>
    <associate|auto-5|<tuple|1.3|3>>
    <associate|auto-6|<tuple|1.4|4>>
    <associate|auto-7|<tuple|1.5|7>>
    <associate|auto-8|<tuple|1.6|8>>
    <associate|auto-9|<tuple|1.7|9>>
    <associate|auto.2-1|<tuple|1|?|#2>>
    <associate|auto.3-1|<tuple|2|?|#3>>
    <associate|bayes|<tuple|1|3>>
    <associate|cost|<tuple|2|9>>
    <associate|cycle|<tuple|a|8>>
    <associate|eca|<tuple|a)|5>>
    <associate|ecb|<tuple|b)|5>>
    <associate|ecbb|<tuple|b')|5>>
    <associate|ecp1|<tuple|1|5>>
    <associate|ecp2|<tuple|2|5>>
    <associate|eq:1|<tuple|2|1>>
    <associate|eq:10|<tuple|24|7>>
    <associate|eq:11|<tuple|9|4>>
    <associate|eq:12|<tuple|15|10>>
    <associate|eq:13|<tuple|18|11>>
    <associate|eq:14|<tuple|1.4|2>>
    <associate|eq:15|<tuple|4|6>>
    <associate|eq:16|<tuple|1.5|4>>
    <associate|eq:17|<tuple|8|3>>
    <associate|eq:18|<tuple|3|2>>
    <associate|eq:2|<tuple|2|1>>
    <associate|eq:3|<tuple|1|1>>
    <associate|eq:4|<tuple|4|3>>
    <associate|eq:5|<tuple|5|3>>
    <associate|eq:6|<tuple|6|3>>
    <associate|eq:7|<tuple|7|3>>
    <associate|eq:8|<tuple|3|3>>
    <associate|eq:9|<tuple|12|7>>
    <associate|eq:N|<tuple|20|11>>
    <associate|eq:equi|<tuple|3|3>>
    <associate|eq:exp|<tuple|25|12>>
    <associate|eq:faible|<tuple|2|3>>
    <associate|eq:generic-regeneration|<tuple|11|6>>
    <associate|eq:int-expecation|<tuple|14|?>>
    <associate|eq:int-expectaion|<tuple|14|?>>
    <associate|eq:int-expectation|<tuple|10|5>>
    <associate|eq:mu-first-eq|<tuple|33|?>>
    <associate|eq:mu-first-eqn|<tuple|33|?>>
    <associate|eq:mufirsteqn|<tuple|16|10>>
    <associate|eq:nx|<tuple|21|11>>
    <associate|eq:pi|<tuple|19|11>>
    <associate|eq:rev|<tuple|15|8>>
    <associate|eq:rho|<tuple|24|12>>
    <associate|eq:therg|<tuple|22|11>>
    <associate|ex:rw1|<tuple|3|1>>
    <associate|lemma:effex|<tuple|16|5>>
    <associate|mat1|<tuple|13|7>>
    <associate|part:chai-nes-de|<tuple|II|1>>
    <associate|part:esp-cond|<tuple|1|3>>
    <associate|part:mart|<tuple|3|25>>
    <associate|part:martingales|<tuple|1|?>>
    <associate|pi|<tuple|1|9>>
    <associate|prop:irred|<tuple|31|9>>
    <associate|prop:regen|<tuple|15|4>>
    <associate|revcy|<tuple|b|8>>
    <associate|rhoth|<tuple|46|12>>
    <associate|sec:aperiod|<tuple|3.2|14>>
    <associate|sec:chai-nes-irred|<tuple|2|6>>
    <associate|sec:chai-nes-irred-1|<tuple|1.4|4>>
    <associate|sec:classification|<tuple|1.3|3>>
    <associate|sec:definitions|<tuple|1|1>>
    <associate|sec:ec|<tuple|1.2|5>>
    <associate|sec:equation-de-chapman|<tuple|1.2|3>>
    <associate|sec:equilibre|<tuple|3|12>>
    <associate|sec:espcon|<tuple|1|3>>
    <associate|sec:esper-cond-comme|<tuple|1.3|7>>
    <associate|sec:irr-fort|<tuple|3.1|14>>
    <associate|sec:prob-revers|<tuple|1.6|8>>
    <associate|sec:prob-stat|<tuple|1.5|7>>
    <associate|sec:st|<tuple|1.1|4>>
    <associate|sec:sys-dyn|<tuple|1.1|2>>
    <associate|sec:th-erg|<tuple|2|11>>
    <associate|sub|<tuple|1|12>>
    <associate|subb|<tuple|2|12>>
    <associate|th:dichotomy|<tuple|30|8>>
    <associate|th:l2-complete|<tuple|14|7>>
    <associate|th:mes-rv|<tuple|1|4>>
    <associate|tot|<tuple|17|10>>
    <associate|uniq|<tuple|3|9>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|4<space|2spc>Cha�nes
      de Markov> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>D�finitions
      et premi�res propri�t�s> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|1.1<space|2spc>Syst�mes dynamiques
      al�atoires <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1.5fn>|1.2<space|2spc>Equation de
      Chapman-Kolmogorov <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1.5fn>|1.3<space|2spc>Classification des �tats
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1.5fn>|1.4<space|2spc>Recurrence
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1.5fn>|1.5<space|2spc>Probabilit�s stationnaires
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1.5fn>|1.6<space|2spc>Probabilit�s r�versibles
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1.5fn>|1.7<space|2spc>Cha�nes irr�ductibles
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1.5fn>|1.8<space|2spc>Excursions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Le
      th�or�me ergodique> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Convergence
      vers l'�quilibre> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|3.1<space|2spc>Cha�nes fortement
      irr�ductibles <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>
    </associate>
  </collection>
</auxiliary>