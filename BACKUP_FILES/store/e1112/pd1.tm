<TeXmacs|1.0.7.11>

<style|article>

<\body>
  <\hide-preamble>
    <assign|eqref|<macro|r|<nbsp>(<reference|<arg|r>>)>>

    <assign|render-exercise|<\macro|which|body>
      <\padded-normal|0.5fn|0.5fn>
        <surround|<exercise-name|<arg|which><exercise-sep>>||<arg|body>>
      </padded-normal>
    </macro>>

    \;
  </hide-preamble>

  <small|<verbatim|[M. Gubinelli - Processus discrets - M1 MMD 2011/2012 -
  20110926 - v.1]>>

  <part|Esp�rance Conditionnelle ><label|part:esp-cond>

  <section|Pr�-requis du cours>

  On donnera pour acquises certaines notions de probabilit�s et de th�orie de
  l'int�gration niveau L3. On rappelle les objets de base des probabilit�s.
  Une espace probabilis� est un triplet <math|<around|(|\<Omega\>,\<cal-F\>,\<bbb-P\>|)>>
  o� <math|\<Omega\>> est un ensemble, <math|\<cal-F\>\<subseteq\>\<cal-P\><around|(|\<Omega\>|)>>
  est une tribu (classe de parties de <math|\<Omega\>> stable par passage au
  compl�mentaire et r�union d�nombrable) et
  <math|\<bbb-P\>:\<cal-F\>\<rightarrow\><around|[|0,1|]>> est une fonction
  qui satisfait:

  <\enumerate-numeric>
    <item><math|\<bbb-P\><around|(|\<emptyset\>|)>=0> ;
    <math|\<bbb-P\><around|(|A<rsup|c>|)>=1-\<bbb-P\><around|(|A|)>> \ (et
    donc <math|\<bbb-P\><around|(|\<Omega\>|)>=1>);

    <item>Si <math|<around|{|A<rsub|n> : n\<geqslant\>1|}>\<subseteq\>\<cal-F\>>
    est une famille d�nombrable tels que <math|A<rsub|i>\<cap\>A<rsub|j>=\<emptyset\>>
    pour <math|i\<neq\>j>, <math|\<bbb-P\>(\<cup\><rsub|n\<geqslant\>1>A<rsub|n>)=<big|sum><rsub|n\<geqslant\>1>\<bbb-P\><around|(|A<rsub|n>|)>
    >;
  </enumerate-numeric>

  On appelle <math|\<bbb-P\>> une probabilit� (mesure positive de masse
  <math|1>). Les �l�ments <math|\<omega\>\<in\>\<Omega\>> repr�sentent
  l'issue d'une exp�rience al�atoire. Les �l�ments <math|A\<in\>\<cal-F\>>
  sont les �v�nements auxquels on associe une probabilit�
  <math|\<bbb-P\><around|(|A|)>>. Pour tout
  <math|\<cal-C\>\<subseteq\>\<cal-P\><around|(|\<Omega\>|)>> la tribu
  <math|\<sigma\><around|(|\<cal-C\>|)>> est la plus petite sous-tribu
  <math|\<cal-G\>\<subseteq\>\<cal-F\>> tel que
  <math|\<cal-C\>\<subseteq\>\<cal-G\>> ou
  <math|\<sigma\><around|(|\<cal-C\>|)>=\<cap\><rsub|\<cal-C\>\<subset\>\<cal-G\>,
  \<cal-G\> tribu> \<cal-G\>>. On appelle
  <math|\<sigma\><around|(|\<cal-C\>|)>> la tribu engendr�e par
  <math|\<cal-C\>>. Si <math|A<rsub|1>,A<rsub|2>,\<ldots\>> sont dans
  <math|\<cal-F\>> alors <math|\<sigma\><around|(|A<rsub|1>,A<rsub|2>,\<ldots\>|)>=\<sigma\><around|(|<around|{|A<rsub|1>,A<rsub|2>,\<ldots\>|}>|)>>.
  Exemple: <math|\<sigma\><around|(|A|)>=
  <around|{|\<emptyset\>,\<Omega\>,A,A<rsup|c>|}>>. Une fonction
  <math|F:<around|(|\<Omega\>,\<cal-F\>|)>\<rightarrow\><around|(|\<Xi\>,\<cal-X\>|)>>
  est mesurable si pour tout <math|B\<in\>\<cal-X\>> on a
  <math|F<rsup|-1><around|(|B|)>\<in\>\<cal-F\>>, autrement dit, si
  l'ensemble <math|<around|{|X\<in\>B|}>=<around|{|\<omega\>\<in\>\<Omega\>:X<around|(|\<omega\>|)>\<in\>B|}>>
  est dans <math|\<cal-F\>>. Pour tout tribu <math|\<cal-G\>> on note
  l'ensemble des fonction <math|\<cal-G\>>-mesurables par
  <math|L<rsup|0><around|(|\<cal-G\>|)>>, si
  <math|f\<in\>L<rsup|0><around|(|\<cal-G\>|)>> on �crit aussi
  <math|f<wide|\<in\>|^>\<cal-G\>>. L'esp�rance
  <math|\<bbb-E\><around|[|X|]>> d'une fonction <math|\<cal-F\>>-mesurable
  r�elle est l'int�grale de <math|X> par rapport � la mesure
  <math|\<bbb-P\>>: <math|\<bbb-E\><around|[|X|]>=<big|int><rsub|\<Omega\>>X<around|(|\<omega\>|)>\<bbb-P\><around|(|\<mathd\>\<omega\>|)>>
  (il est bien d�fini si <math|X\<geqslant\>0> o� si
  <math|\<bbb-E\><around|[|<around|\||X|\|>|]>\<less\>\<infty\>>). \ On dit
  d'une famille <math|<around|{|\<cal-A\><rsub|i>|}><rsub|i\<in\>I>> des
  sous-tribus de <math|\<cal-F\>> que sont ind�pendantes ssi
  <math|\<bbb-P\>(\<cap\><rsub|i\<in\>J>A<rsub|i>)=<big|prod><rsub|i\<in\>J>\<bbb-P\><around|(|A<rsub|i>|)>>
  pour tout choix de <math|J\<subseteq\>I> et
  <math|A<rsub|i>\<in\>\<cal-A\><rsub|i>>, <math|i\<in\>J>.

  <section|L'esp�rance conditionnelle><label|sec:espcond>

  Lorsqu'on travaille avec des variables al�atoires (v.a.s) discr�tes on
  introduit la notion de probabilit� conditionnelle par la formule:

  <\equation>
    <label|bayes><with|math-font|Bbb|P><around*|(|Y=y\|X=x|)>\<assign\><frac|<with|math-font|Bbb|P><around*|(|Y=y,X=x|)>|<with|math-font|Bbb|P><around*|(|X=x|)>>,
    <text| si ><with|math-font|Bbb|P><around*|(|X=x|)>\<gtr\>0,
  </equation>

  d'o� la d�finition d'esp�rance conditionnelle de <math|f<around|(|Y|)>>
  sachant que <math|X=x> par

  <\equation*>
    <big|sum><rsub|y>f<around|(|y|)><with|math-font|Bbb|P><around*|(|Y=y\|X=x|)>=u<rsub|f><around|(|x|)>,
  </equation*>

  pour toute fonction <math|f> � valeurs r�elles ou complexes mesurable
  born�e. Souvent on utilise la notation <math|<with|math-font|Bbb|E><around|(|f<around|(|Y|)>\|X=x|)>\<assign\>u<rsub|f><around|(|x|)>>.
  Cette d�finition pose des probl�mes lorsque on travaille avec des v.a.s
  continues o� avec des mod�les al�atoires plus complexes (suites infinies
  des v.a.s, espaces des fonctions, etc<math|\<ldots\>>). Par exemple, si
  <math|X> est continue, alors <math|\<bbb-P\><around|(|X=x|)>=0> pour tout
  <math|x\<in\>\<bbb-R\>>, donc la d�finition ci dessous est inutilisable. La
  fa�on plus efficace de contourner cette difficult� est de modifier la
  d�finition de probabilit� conditionnelle, en effet, il sera plus facile de
  d�finir d'abord l'esp�rance conditionnelle et apr�s la probabilit�
  conditionnelle comme un sous-produit.\ 

  \;

  Pour motiver la nouvelle d�finition on observe la propri�t� suivante de la
  v.a. <math|u<rsub|f><around|(|X|)>>: pour toute fonction mesurable born�e
  <math|h>:

  <\equation>
    <label|eq:faible>\<bbb-E\><around|[|u<rsub|f><around|(|X|)>
    h<around|(|X|)>|]>=<big|sum><rsub|x:\<bbb-P\><around|(|X=x|)>\<gtr\>0>h<around|(|x|)>u<rsub|f><around|(|x|)><with|math-font|Bbb|P><around|(|X=x|)>=<big|sum><rsub|x,y>h<around|(|x|)>f<around|(|y|)><with|math-font|Bbb|P><around*|(|Y=y,X=x|)>,
  </equation>

  ce qui revient � dire que, pour tout <math|h>:

  <\equation>
    <label|eq:equi><with|math-font|Bbb|E><around|[|h<around|(|X|)>u<rsub|f><around|(|X|)>|]>=<with|math-font|Bbb|E><around|[|h<around|(|X|)>f<around|(|Y|)>|]>.
  </equation>

  De plus si <math|g> est une fonction telle que
  <math|\<bbb-E\><around|[|h<around|(|X|)>g<around|(|X|)>|]>=\<bbb-E\><around|[|h<around|(|X|)>f<around|(|Y|)>|]>>
  pour tout <math|h> mesurable born�e, alors on a que
  <math|g<around|(|x|)>=u<rsub|f><around|(|x|)>> pour tout <math|x> tel que
  <math|\<bbb-P\><around|(|X=x|)>\<gtr\>0>. En effet, si
  <math|r<around|(|x|)>=g<around|(|x|)>-u<rsub|f><around|(|x|)>> on doit
  avoir que <math|\<bbb-E\><around|[|h<around|(|X|)>r<around|(|X|)>|]>=0> et
  donc en choisissant <math|h<around|(|x|)> = sign r<around|(|x|)>> on a que
  <math|\<bbb-E\><around|[|h<around|(|X|)>r<around|(|X|)>|]>=\<bbb-E\><around|[|<around|\||r<around|(|X|)>|\|>|]>=<big|sum><rsub|x:\<bbb-P\><around|(|X=x|)>\<gtr\>0><around|\||r<around|(|x|)>|\|>\<bbb-P\><around|(|X=x|)>=0>
  ce qu'implique que <math|r<around|(|x|)>=0> pour tout <math|x> tq.
  <math|\<bbb-P\><around|(|X=x|)>\<gtr\>0>. De plus on a que la v.a.
  <math|\<bbb-P\><around|(|u<rsub|f><around|(|X|)>\<neq\>g<around|(|X|)>|)>=0>
  et donc que <math|u<rsub|f><around|(|X|)>=g<around|(|X|)>> presque
  s�rement.

  \;

  On utilisera donc l'eq.<eqref|eq:equi> pour d�finir directement l'esp�rance
  conditionnelle comme une v.a. <math|\<bbb-E\><around|[|f<around|(|Y|)>\|X|]>=u<rsub|f><around|(|X|)>>
  telle que<eqref|eq:equi> soit satisfaite pour tout <math|h> mesurable
  born�e (en effet il suffit que soit valable pour tout
  <math|h<around|(|x|)>=1<rsub|A><around|(|x|)>> fonction caract�ristique
  d'un ensemble <math|A> mesurable). Le prix � payer est que l'unicit� de
  l'esp�rance conditionnelle est valable \S � ensemble de mesure nulle pr�s
  \T: il est clair que on peut changer la d�finition de
  <math|u<rsub|f><around|(|x|)>> pour tout <math|x\<in\>B> o� <math|B> est
  n'importe quel evenement tel que <math|\<bbb-P\><around|(|X\<in\>B|)>=0>
  sans affecter la propri�t�<eqref|eq:equi>. L'avantage majeure de cette
  nouvelle d�finition \ est sa g�n�ralit�.

  <section|Sous-tribus><label|sec:st>

  Soit <math|<around|(|\<Omega\>,<with|math-font|cal|F>,<with|math-font|Bbb|P>|)>>
  un espace de probabilit�. Soit <math|X> une variable al�atoire
  (<math|\<cal-F\>>-mesurable) � valeurs dans
  <math|<with|math-font|Bbb|R><rsup|d>>. La tribu
  <math|\<sigma\><around|(|X|)>> engendr�e par <math|X> est la plus petite
  sous-tribu <math|<with|math-font|cal|B\<subseteq\>\<cal-F\>>> telle que
  <math|X> soit <math|<with|math-font|cal|B>>-mesurable. Une caract�risation
  �quivalente (pour laquelle on donne pas de preuve) est que
  <math|\<sigma\><around|(|X|)>> est l'image par <math|X<rsup|-1>> de la
  tribu Borelienne de <math|\<bbb-R\><rsup|d>>:

  <\equation*>
    <with|math-font|cal|\<sigma\>><around|(|X|)>=<around*|{|A\<in\><with|math-font|cal|F>:\<exists\><space|0.75spc>B\<in\>\<cal-B\><around|(|<with|math-font|Bbb|R><rsup|d>|)>,A=<around|{|\<omega\>\<in\>\<Omega\>:X<around|(|\<omega\>|)>\<in\>B|}>|}>.
  </equation*>

  En g�n�ral si <math|<around|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>> est un
  n-uplet de v.a. r�elles alors <math|\<sigma\><around|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>=\<sigma\><around|(|X|)>>
  o� <math|X=<around|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>> est une v.a. �
  valeurs dans <math|\<bbb-R\><rsup|n>>. La g�n�ralisation � une suite finie
  des v.a. vectorielles ne pose pas de probl�mes.

  On utilisera le r�sultat suivante (admis) dans la suite.

  <\theorem>
    <label|th:mes-rv>Soit <math|X> une v.a. � valeurs dans l'espace mesurable
    <math|<around|(|\<Theta\>,\<cal-H\>|)>> et <math|Y> une v.a. r�elle
    <math|\<sigma\><around|(|X|)>> mesurable. Alors il existe une fonction
    mesurable <math|h:\<Theta\>\<rightarrow\>\<bbb-R\>> telle que
    <math|Y=h<around|(|X|)>>.

    <\equation*>
      <tabular|<tformat|<twith|table-halign|l>|<cwith|1|1|2|2|cell-halign|c>|<cwith|2|2|1|1|cell-halign|r>|<cwith|2|2|3|3|cell-halign|l>|<table|<row|<cell|<around|(|\<Omega\>,\<sigma\><around|(|X|)>|)>>|<cell|<above|\<longrightarrow\>|X>>|<cell|<around|(|\<Theta\>,\<cal-H\>|)>>>|<row|<cell|<rsub|Y>\<searrow\><above||>>|<cell|>|<cell|\<swarrow\><rsub|h\<circ\>X>>>|<row|<cell|>|<cell|<around|(|\<bbb-R\>,\<cal-B\><around|(|\<bbb-R\>|)>|)>>|<cell|>>>>>
    </equation*>

    \ 
  </theorem>

  <\example>
    Soit <math|X=1> avec probabilit� <math|p> et <math|X=0> avec probabilit�
    <math|1-p>. Alors

    <\equation*>
      <with|math-font|cal|\<sigma\>><around|(|X|)>=<around*|{|\<emptyset\>,\<Omega\>,X<rsup|-1><around|(|<around|{|0|}>|)>,X<rsup|-1><around|(|<around|{|1|}>|)>|}>.
    </equation*>
  </example>

  Les sous-tribus <math|<with|math-font|cal|B>\<subseteq\><with|math-font|cal|F>>
  que nous allons consid�rer vont correspondre � des informations partielles
  sur le mod�le. Au sens que l'information nous permet de r�pondre de fa�on
  s�re � la question si l'exp�rience al�atoire
  <math|\<omega\>\<in\>\<Omega\>> appartient � un ensemble
  <math|B\<in\>\<cal-B\>>. \ Par exemple <math|<with|math-font|cal|\<sigma\>><around|(|X|)>>
  doit �tre interpr�t� comme l'information sur <math|\<omega\>> donn�e par la
  connaissance de la valeur de <math|X>. La tribu triviale
  <math|<around|{|\<emptyset\>,\<Omega\>|}>> correspond � une information
  nulle, et la tribu <math|<with|math-font|cal|F>> est une information
  compl�te.

  <\example>
    Soit <math|\<Omega\>=<around|[|0,1|]>>, et
    <math|<with|math-font|cal|F>=<with|math-font|cal|B><around|(|<around|[|0,1|]>|)>>,
    la tribu borelienne sur <math|<around|[|0,1|]>> (i.e. la tribu engendr�e
    par les sous-ensembles ouverts de <math|<around|[|0,1|]>>). Soit
    <math|<with|math-font|cal|F><rsub|1>=\<sigma\><around|(|0,1/2|]>,<around|]|1/2,1|]>)=<around|{|<around|[|0,1/2|]>,<around|]|1/2,1|]>,<around|[|0,1|]>,\<emptyset\>|}>>.
    Alors la tribu <math|<with|math-font|cal|F><rsub|1>\<subset\><with|math-font|cal|F>>,
    et permet de savoir si le point se trouve � gauche ou � droite de
    <math|1/2>. En particulier, si <math|X<rsub|1><around|(|\<omega\>|)>=1<rsub|<around|[|0,1/2|]>><around|(|\<omega\>|)>,\<omega\>\<in\>\<Omega\>>,
    alors <math|<with|math-font|cal|F><rsub|1>=<with|math-font|cal|\<sigma\>><around|(|X<rsub|1>|)>>.
    Soit maintenant <math|X<rsub|2><around|(|\<omega\>|)>=1<rsub|<around|[|0,1/4|]>><around|(|\<omega\>|)>+
    1<rsub|<around|]|1/2,3/4|]>><around|(|\<omega\>|)>>, et
    <math|\<cal-F\><rsub|2>=\<sigma\><around|(|X<rsub|1>,X<rsub|2>|)>>. Alors

    <\equation*>
      \<cal-F\><rsub|2>=\<sigma\><around|(|<around|[|0,1/4|]>,<around|]|1/4,1/2|]>,<around|]|1/2,3/4|]>,<around|]|3/4,1|]>|)>
    </equation*>

    mais <math|\<sigma\><around|(|X<rsub|2>|)>\<neq\>\<sigma\><around|(|X<rsub|1>,X<rsub|2>|)>>.
    Conna�tre la valeur de <math|X<rsub|1>> situe <math|\<omega\>> � droite
    ou a gauche de <math|1/2>. Conna�tre <math|X<rsub|2>> situe
    <math|\<omega\>> soit dans l'ensemble
    <math|<around|[|0,1/4|]>\<cup\><around|]|1/2,3/4|]>> o� dans son
    compl�mentaire par rapport � <math|<around|[|0,1|]>>. La connaissance de
    <math|X<rsub|1><around|(|\<omega\>|)>,X<rsub|2><around|(|\<omega\>|)>>
    permet de situer <math|\<omega\>> dans un des ensembles:
    <math|<around|[|0,1/4|]>,<around|]|1/4,1/2|]>,<around|]|1/2,3/4|]>,<around|]|3/4,1|]>>.
    En passant on remarque que si on consid�re la probabilit�
    <math|\<bbb-P\>> uniforme sur <math|<around|[|0,1|]>> les v.a.
    \ <math|X<rsub|1>> et <math|X<rsub|2>> sont ind�pendantes et de loi
    <math|Bernoulli<around|(|1/2|)>>.
  </example>

  Si <math|X:\<Omega\>\<rightarrow\><around|{|x<rsub|1>,x<rsub|2,>\<ldots\>|}>>
  est une v.a. discr�te (avec un nombre fini ou infini de valeurs possibles)
  et <math|A<rsub|k>=<around|{|X=x<rsub|k>|}>=<around|{|\<omega\>\<in\>\<Omega\>
  : X<around|(|\<omega\>|)>=x<rsub|k>|}>> alors
  <math|\<sigma\><around|(|X|)>=\<sigma\><around|(|A<rsub|1>,A<rsub|2>,\<ldots\>|)>>
  est la tribu engendr�e par les <math|<around|{|A<rsub|k>|}><rsub|k\<geqslant\>1>>
  (la plus petite tribu qui contienne les <math|A<rsub|k>>). Dans ce cas
  l'esp�rance conditionnelle <math|Z=\<bbb-E\><around|[|f<around|(|Y|)>\|X|]>>
  v�rifie

  <\equation*>
    Z<around|(|\<omega\>|)>=u<rsub|f><around|(|X<around|(|\<omega\>|)>|)>=u<rsub|f><around|(|x<rsub|k>|)>=<big|sum><rsub|y>f<around|(|y|)><frac|\<bbb-P\><around|(|A<rsub|k>,Y=y|)>|\<bbb-P\><around|(|A<rsub|k>|)>>
    =<frac|\<bbb-E\><around|[|f<around|(|Y|)>1<rsub|A<rsub|k>>|]>
    \ |\<bbb-E\><around|[|1<rsub|A<rsub|k>>|]>>
  </equation*>

  pour tout <math|\<omega\>\<in\>A<rsub|k>> tel que
  <math|\<bbb-P\><around|(|A<rsub|k>|)>\<gtr\>0> et donc

  <\equation*>
    Z<around|(|\<omega\>|)>=<big|sum><rsub|k :
    \<bbb-P\><around|(|A<rsub|k>|)>\<gtr\>0><frac|\<bbb-E\><around|[|f<around|(|Y|)>1<rsub|A<rsub|k>>|]>
    \ |\<bbb-E\><around|[|1<rsub|A<rsub|k>>|]>>1<rsub|A<rsub|k>><around|(|\<omega\>|)>
    \ p.s.
  </equation*>

  ce qui montre qu'elle d�pend seulement de la tribu
  <math|\<sigma\><around|(|X|)>> et non pas de la v.a. <math|X> (deux v.a.s
  <math|X> et <math|X<rprime|'>> peuvent g�n�rer la m�me tribu
  <math|\<sigma\><around|(|X|)>=\<sigma\><around|(|X<rprime|'>|)>>, dans ce
  cas l'esp�rance conditionnelle est la m�me). Cet observation justifie la
  d�finition g�n�rale d'esp�rance conditionnelle par rapport � une sous-tribu
  de <math|\<cal-F\>>.

  \;

  <section|Esp�rance conditionnelle><label|sec:ec>

  Soit <math|<around*|(|\<Omega\>,<with|math-font|cal|F>,<with|math-font|Bbb|P>|)>>
  un espace de probabilit�, et soit <math|<with|math-font|cal|B>\<subseteq\><with|math-font|cal|F>>
  une sous-tribu de <math|<with|math-font|cal|F>>. Soit
  <math|X:\<Omega\>\<rightarrow\><with|math-font|Bbb|R>> une variable
  al�atoire telle que <math|<with|math-font|Bbb|E><around|(|<around|\||X|\|>|)>\<less\>+\<infty\>>
  (i.e. <math|X\<in\>L<rsup|1><around*|(|\<Omega\>,<with|math-font|cal|F>,<with|math-font|Bbb|P>|)>>)
  .

  <\definition>
    L'esp�rance conditionnelle de <math|X> sachant
    <math|<with|math-font|cal|B>> est une variable al�atoire
    <math|Y<wide|\<in\>|^>\<cal-B\>> telle que

    <\equation>
      \<bbb-E\><around|[|1<rsub|A>X|]>=\<bbb-E\><around|[|1<rsub|A>Y|]><space|2em>\<forall\>A\<in\>\<cal-B\><label|eq:def-cond-exp>
    </equation>

    \;
  </definition>

  L'assertion (<reference|eq:def-cond-exp>) est en fait �quivalente �

  <\equation>
    \<bbb-E\><around|[|Z*X|]>=\<bbb-E\><around|[|Z*Y|]><space|2em>\<forall\>Z<wide|\<in\>|^>\<cal-B\>
    <text|born�e><label|eq:def-cond-exp-bis>\ 
  </equation>

  L'existence d'une variable al�atoire <math|Y> qui a ces propri�t�s n'est
  pas triviale, on l'admettra. Par ailleurs, cette variable al�atoire est
  unique � l'�galit� presque-s�re pr�s (voir la preuve du 2. de la
  proposition suivante).

  \;

  On utilisera les notations <math|Y=<with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)>>,
  ainsi que <math|<with|math-font|Bbb|E><around|(|X\|Z|)>=<with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|\<sigma\>><around|(|Z|)>|)>>.
  La probabilit� conditionnelle <math|\<bbb-P\>(\<cdot\><around|\||\<cal-B\>|)>>
  sachant <math|\<cal-B\>> (ou par rapport � <math|\<cal-B\>>) est d�finie
  par <math|\<bbb-P\><around|(|A\|\<cal-B\>|)>=\<bbb-E\><around|[|1<rsub|A>\|\<cal-B\>|]>>.
  On remarque que <math|\<bbb-P\><around|(|A\|\<cal-B\>|)>> est une variable
  al�atoire (donc la probabilit� conditionnelle par rapport � une tribu n'est
  pas une probabilit� proprement dite).\ 

  <\proposition>
    \;

    <\enumerate>
      <item><label|ecp1><math|<with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)>\<in\>L<rsup|1><around|(|\<Omega\>,<with|math-font|cal|B>,<with|math-font|Bbb|P>|)>>.

      <item><label|ecp2>Soient <math|Y,Y<rprime|'>> deux esp�rances
      conditionnelles de <math|X> sachant <math|\<cal-B\>>, alors
      <math|Y=Y<rprime|'>> p.s.. En particulier si
      <math|X<space|0.75spc><wide|\<in\>|^><space|0.75spc><with|math-font|cal|B>>
      alors <math|<with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)>=X>
      p.s.
    </enumerate>
  </proposition>

  <\proof>
    \;

    <\enumerate>
      <item>Soit <math|Z=<text|sgn> <with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)><space|0.75spc><wide|\<in\>|^><space|0.75spc><with|math-font|cal|B>>.
      Donc <math|Z* <with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)>=<around|\||<with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)>|\|>>,
      et d'apr�s b') on a

      <\equation*>
        0\<leqslant\><with|math-font|Bbb|E><around|(|<around|\||<with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)>|\|>|)>=<with|math-font|Bbb|E><around|(|Z*<with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)>|)>=<with|math-font|Bbb|E><around|(|Z*X|)>\<le\><with|math-font|Bbb|E><around|(|<around|\||X|\|>|)>\<less\>+\<infty\>
      </equation*>

      On vient de montrer que l'esp�rance conditionnelle <math|X
      \<mapsto\>\<bbb-E\><around|[|X\|\<cal-B\>|]>> est une contraction dans
      <math|L<rsup|1><around|(|\<Omega\>,\<cal-F\>,\<bbb-P\>|)>>.

      <item>Par d�finition on a que <math|\<bbb-E\><around|[|1<rsub|A><around|(|Y-Y<rprime|'>|)>|]>=0>
      pour tout <math|A\<in\>\<cal-B\>>. Soit
      <math|A<rsub|n>=<around|{|Y-Y<rprime|'>\<geqslant\>1/n\<gtr\>0|}>\<in\>\<cal-F\>>.
      L'�v�nement <math|A> �tant aussi <math|\<cal-B\>>-mesurable on a

      <\equation*>
        0=\<bbb-E\><around|[|1<rsub|A<rsub|n>><around|(|Y-Y<rprime|'>|)>|]>\<geqslant\>n<rsup|-1>\<bbb-E\><around|[|1<rsub|A<rsub|n>>|]>=\<bbb-P\><around|(|A<rsub|n>|)>/n
      </equation*>

      et donc <math|\<bbb-P\><around|(|A<rsub|n>|)>=0>. Mais alors
      <math|0=\<bbb-P\>(\<cup\><rsub|n\<geqslant\>1>A<rsub|n>)=\<bbb-P\><around|(|Y\<gtr\>Y<rprime|'>|)>>
      car <math|\<cup\><rsub|n\<geqslant\>1>A<rsub|n>=<around|{|Y\<gtr\>Y<rprime|'>|}>>
      (v�rifier). Par sym�trie on a aussi que
      <math|\<bbb-P\><around|(|Y\<less\>Y<rprime|'>|)>=0> et donc que
      <math|\<bbb-P\><around|(|Y=Y<rprime|'>|)>=1-\<bbb-P\><around|(|Y\<neq\>Y<rprime|'>|)>=1-\<bbb-P\><around|(|Y\<less\>Y<rprime|'>|)>-\<bbb-P\><around|(|Y\<gtr\>Y<rprime|'>|)>=1>.
    </enumerate>
  </proof>

  <\example>
    Pour la tribu triviale <math|<with|math-font|cal|B>=<around|{|\<emptyset\>,\<Omega\>|}>>,
    on a <math|<with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)>=<with|math-font|Bbb|E><around|(|X|)>>.
    Il suffit de v�rifier que \ la constante <math|\<bbb-E\><around|[|X|]>>
    satisfait bien la d�finition (<reference|eq:def-cond-exp>).
  </example>

  Si on conditionne par rapport � une v.a. <math|X> donn�e on trouve bien que
  la probabilit� conditionnelle est une fonction des valeurs de <math|X>:

  <\proposition>
    Il existe une fonction mesurable <math|h<rsub|Z>> telle que
    <math|\<bbb-E\><around|[|Z\|X|]>=h<rsub|Z><around|(|X|)>> p.s.
  </proposition>

  <\proof>
    La v.a. <math|\<bbb-E\><around|[|Z\|X|]>> est
    <math|\<sigma\><around|(|X|)>>-mesurable. On utilise donc le th�or�me
    <space|0.2spc><reference|th:mes-rv>.
  </proof>

  <\exercise>
    Montrer que si <math|X<rsub|1>=X<rsub|2>> sur <math|B\<in\>\<cal-F\>>
    (c.-�.-d. <math|X<rsub|1><around|(|\<omega\>|)>=X<rsub|2><around|(|\<omega\>|)>>
    si <math|\<omega\>\<in\>B>), alors <math|\<bbb-E\><around|[|X<rsub|1>\|\<cal-F\>|]>=\<bbb-E\><around|[|X<rsub|2>\|\<cal-F\>|]>>
    sur <math|B\<in\>\<cal-F\>>.
  </exercise>

  <\exercise>
    Soit <math|<around*|{|A<rsub|1>,A<rsub|2>,\<ldots\>|}>> une partition
    (finie ou infinie) de <math|\<Omega\>>. Soit
    <math|<with|math-font|cal|B>=\<sigma\><around|(|A<rsub|1>,\<ldots\>|)>>
    la tribu engendr�e par cette partition. Alors

    <\equation>
      <label|eq:15><with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)><around|(|\<omega\>|)>=<big|sum><rsub|j:<with|math-font|Bbb|P><around|(|A<rsub|j>|)>\<gtr\>0><frac|<with|math-font|Bbb|E><around|(|X1<rsub|A<rsub|j>>|)>|<with|math-font|Bbb|P><around|(|A<rsub|j>|)>>1<rsub|A<rsub|j>><around|(|\<omega\>|)>.
    </equation>
  </exercise>

  <\exercise>
    [Formule de Bayes] Montrer que si <math|\<cal-G\>> est une sous-tribu de
    <math|\<cal-F\>> et <math|A\<in\>\<cal-F\>> on a

    <\equation*>
      \<bbb-P\><around|(|G\|A|)>=<frac|\<bbb-E\><around|[|\<bbb-P\><around|(|A\|\<cal-G\>|)>1<rsub|G>|]>|\<bbb-E\><around|[|\<bbb-P\><around|(|A\|\<cal-G\>|)>|]>>.
    </equation*>
  </exercise>

  <\exercise>
    On consid�re deux v.a. <math|X,Y>: <math|X> est uniforme sur l'ensemble
    <math|<around|{|1,\<ldots\>,6|}>> et conditionnellement � <math|X> la
    v.a. <math|Y> a une loi <math|Bin<around|(|X,1/2|)>>. Calculer
    <math|\<bbb-P\><around|(|X=i\|Y=0|)>> pour <math|i=1,\<ldots\>,6>.
  </exercise>

  <\exercise>
    Soient <math|X<rsub|1>> et <math|X<rsub|2>> des v.a. ind�pendantes et
    <math|\<sim\>Poisson<around|(|\<lambda\>|)>> avec
    <math|\<lambda\>\<gtr\>0>. Soit <math|Y=X<rsub|1>+X<rsub|2>>. Calculer
    <math|\<bbb-P\><around|(|X<rsub|1>=k\|Y|)>>.
  </exercise>

  <\exercise>
    Soient <math|<around|(|X,Y|)>> une couple des v.a. � valeurs dans
    <math|\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|m>> avec densit� jointe
    <math|f<rsub|X,Y><around|(|x,y|)>>. Montrer que
    <math|\<bbb-E\><around|[|g<around|(|Y|)>\|X|]>=h<around|(|X|)>> o�
    <math|h> est n'importe quelle fonction telle que

    <\equation*>
      h<around|(|x|)><big|int><rsub|\<bbb-R\><rsup|m>>f<rsub|X,Y><around|(|x,y|)>\<mathd\>y=<big|int><rsub|\<bbb-R\><rsup|m>>g<around|(|y|)>f<rsub|X,Y><around|(|x,y|)>\<mathd\>y.
    </equation*>

    pour tout <math|x\<in\>\<bbb-R\><rsup|n>>. En particulier pour tout
    <math|x\<in\>\<bbb-R\><rsup|n>> tel que
    <math|f<rsub|X><around|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|m>>f<rsub|X,Y><around|(|x,y|)>\<mathd\>y\<gtr\>0>
    on a que

    <\equation*>
      h<around|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|m>>g<around|(|y|)><frac|f<rsub|X,Y><around|(|x,y|)>|f<rsub|X><around|(|x|)>>\<mathd\>y=<big|int><rsub|\<bbb-R\><rsup|m>>g<around|(|y|)>f<rsub|Y\|X=x><around|(|y|)>\<mathd\>y=\<bbb-E\><around|[|g<around|(|Y|)>\|X=x|]>
    </equation*>

    selon la d�finition usuelle d'esp�rance conditionnelle de
    <math|g<around|(|Y|)>> sachant <math|X=x> pour les vecteurs al�atoires
    avec densit�.
  </exercise>

  <\exercise>
    Soient <math|X<rsub|1>> et <math|X<rsub|2>> ind�pendantes avec
    <math|\<bbb-P\><around|(|X<rsub|i>\<gtr\>t|)>=e<rsup|-t>> pour
    <math|t\<geqslant\>0>. Soit <math|Y=X<rsub|1>+X<rsub|2>>. Calculer
    <math|\<bbb-E\><around|[|X<rsub|1>\|Y|]>> et
    <math|\<bbb-P\><around|(|X<rsub|1>\<less\>3\|Y|)>>.
  </exercise>

  <\proposition>
    Pour tout <math|X,Y \<in\>L<rsup|1><around|(|\<cal-F\>|)>> et tout
    sous-tribu <math|\<cal-G\>,\<cal-H\>\<subseteq\>\<cal-F\>> on a les
    propri�t�s suivantes:

    <\enumerate>
      <item>Lin�arit�: <math|\<bbb-E\><around|[|X+Y\|\<cal-G\>|]>=\<bbb-E\><around|[|X\|\<cal-G\>|]>+\<bbb-E\><around|[|Y\|\<cal-G\>|]>>;

      <item>Positivit�: <math|X\<geqslant\>0 p.s.
      \<Rightarrow\>\<bbb-E\><around|[|X\|\<cal-G\>|]>\<geqslant\>0 \ p.s>.
      \ 

      <item>Convergence monotone: <math|0\<leqslant\>X<rsub|n>\<nearrow\>X
      \ p.s. \<Rightarrow\> \<bbb-E\><around|[|X<rsub|n>\|\<cal-G\>|]>\<nearrow\>\<bbb-E\><around|[|X\|\<cal-G\>|]>
      p.s>.

      <item>In�galit� de Jensen: pour tout fonction
      <math|\<varphi\>:\<bbb-R\>\<rightarrow\>\<bbb-R\>> convexe on a
      <math|\<bbb-E\><around|[|\<varphi\><around|(|X|)>\|\<cal-G\>|]>\<geqslant\>\<varphi\><around|(|\<bbb-E\><around|[|X\|\<cal-G\>|]>|)>>

      <item>Contractivit� dans <math|L<rsup|p>>:
      <math|<around|\<\|\|\>|\<bbb-E\><around|[|X\|\<cal-G\>|]>|\<\|\|\>><rsub|p>\<leqslant\><around|\<\|\|\>|X|\<\|\|\>><rsub|p>>.

      <item>Embo�tement: Si <math|\<cal-H\>> est une sous-tribu de
      <math|\<cal-G\>> alors <math|\<bbb-E\><around|[|\<bbb-E\><around|[|X\|\<cal-G\>|]>\|\<cal-H\>|]>=\<bbb-E\><around|[|X\|\<cal-H\>|]>=\<bbb-E\><around|[|\<bbb-E\><around|[|X\|\<cal-H\>|]>\|\<cal-G\>|]>>.

      <item>Si <math|Z<wide|\<in\>|^>\<cal-G\>>,
      <math|\<bbb-E\><around|[|<around|\||X|\|>|]> \<less\> \<infty\>> et
      <math|\<bbb-E\><around|[|<around|\||X*Z|\|>|]>\<less\>+\<infty\>> alors
      <math|\<bbb-E\><around|[|X*Z\|\<cal-G\>|]>=Z*\<bbb-E\><around|[|X\|\<cal-G\>|]>>.
    </enumerate>

    \;
  </proposition>

  <\proof>
    \;

    <\enumerate-numeric>
      <item>Exercice.

      <item>on remarque que si <math|\<bbb-E\><around|[|X\|\<cal-G\>|]>\<leqslant\>\<varepsilon\>\<less\>0>
      sur <math|A\<in\>\<cal-G\>> tel que
      <math|\<bbb-P\><around|(|A|)>\<gtr\>0> alors
      <math|0\<less\>\<bbb-E\><around|[|X
      1<rsub|A>|]>=\<bbb-E\><around|[|\<bbb-E\><around|[|X\|\<cal-G\>|]>1<rsub|A>|]>\<leqslant\>\<varepsilon\>\<bbb-P\><around|(|A|)>\<less\>0>
      ce qui est impossible.

      <item>Soit <math|Y<rsub|n>=\<bbb-E\><around|[|X<rsub|n>\|\<cal-G\>|]>>.
      Par la positivit� de l'esp. cond. on a que <math|Y<rsub|n>> est une
      suite croissante. Soit <math|Y = limsup<rsub|n>Y<rsub|n>> alors
      <math|Y<wide|\<in\>|^>\<cal-G\>> et le th�or�me de convergence monotone
      nous permet de passer � la limite dans l'�galit�
      <math|\<bbb-E\><around|[|X<rsub|n>1<rsub|A>|]>=\<bbb-E\><around|[|Y<rsub|n>1<rsub|A>|]>>
      pour obtenir que <math|\<bbb-E\><around|[|X
      1<rsub|A>|]>=\<bbb-E\><around|[|Y 1<rsub|A>|]>> pour tout
      <math|A\<in\>\<cal-G\>>. Donc <math|Y=\<bbb-E\><around|[|X\|\<cal-G\>|]>>
      p.s.

      <item>Admise.

      <item>On utilise la propri�t� (4). Exercice.

      <item>Exercice.

      <item>Admise. (Facile pour des fonctions �tag�es, utiliser des limites
      monotones dans le cas <math|X,Z\<geqslant\>0> et conclure).
    </enumerate-numeric>
  </proof>

  <\definition>
    On dit que <math|X> est une variable al�atoire ind�pendante de la tribu
    <math|<with|math-font|cal|B>> si <math|\<sigma\><around|(|X|)>> est
    ind�pendante de <math|\<cal-B\>>, ou plus expliciment si
    <math|\<forall\>I\<in\><with|math-font|cal|B><around|(|<with|math-font|Bbb|R>|)>>
    et <math|\<forall\>A\<in\><with|math-font|cal|B>>:
    <math|<with|math-font|Bbb|P><around|(|<around|{|X\<in\>I|}>\<cap\>A|)>=<with|math-font|Bbb|P><around|(|X\<in\>I|)><space|0.75spc><with|math-font|Bbb|P><around|(|A|)>>.
  </definition>

  <\proposition>
    Soit <math|X> ind�pendante de la sous-tribu <math|\<cal-B\>>, alors
    <math|<with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)>> est
    constante presque s�rement et

    <\equation*>
      <with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)>=<with|math-font|Bbb|E><around|(|X|)><space|2em>p.s.
    </equation*>
  </proposition>

  <\proof>
    \ <math|<with|math-font|Bbb|E><around|(|X|)>> est une constante, donc
    <math|<with|math-font|Bbb|E><around|(|X|)><space|0.75spc><wide|\<in\>|^><space|0.75spc><with|math-font|cal|B>>.
    Pour tout <math|A\<in\><with|math-font|cal|B>>

    <\equation*>
      <with|math-font|Bbb|E><around|(|<with|math-font|Bbb|E><around|(|X\|<with|math-font|cal|B>|)>1<rsub|A>|)>=<with|math-font|Bbb|E><around|(|X1<rsub|A>|)>=<with|math-font|Bbb|E><around|(|X|)><with|math-font|Bbb|E><around|(|1<rsub|A>|)>=<with|math-font|Bbb|E><around|(|<with|math-font|Bbb|E><around|(|X|)>1<rsub|A>|)>.
    </equation*>
  </proof>

  <\proposition>
    Si <math|\<cal-H\>> et <math|\<cal-G\>> sont ind�pendantes, <math|X> est
    <math|\<cal-G\>>-mesurable et <math|\<cal-G\><rprime|'>\<subseteq\>\<cal-G\>>,
    alors

    <\equation*>
      \<bbb-E\><around|[|X\|\<cal-H\>,\<cal-G\><rprime|'>|]>=\<bbb-E\><around|[|X\|\<cal-G\><rprime|'>|]>.
    </equation*>
  </proposition>

  <\proof>
    Admise.\ 
  </proof>

  <\proposition>
    (Conditionnement et ind�pendance) Si <math|X<rsub|1>,\<ldots\>,X<rsub|n>>
    est une famille des v.a. ind�pendantes et
    <math|f<around|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>\<in\>L<rsup|1>> alors

    <\equation*>
      \<bbb-E\><around|[|f<around|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>\|X<rsub|1>|]>=\<varphi\><around|(|X<rsub|1>|)>
    </equation*>

    o� <math|\<varphi\><around|(|x|)>=\<bbb-E\><around|[|f<around|(|x,X<rsub|2>,\<ldots\>,X<rsub|n>|)>|]>>.
  </proposition>

  <\proof>
    Utiliser le th�or�me de Fubini sur la loi jointe de
    <math|X<rsub|1>,\<ldots\>,X<rsub|n>>.
  </proof>

  <\exercise>
    Soient <math|X<rsub|i>,1\<leq\>i\<leq\>n> des v.a. i.i.d et
    <math|T=<big|sum><rsub|i=1><rsup|n>X<rsub|i>>. Montrer que
    <math|<with|math-font|Bbb|E><around|[|T<rsub|1>\|T|]>=T/n> et
    <math|<with|math-font|Bbb|E><around|[|T\|T<rsub|1>|]>=<around|(|n-1|)><with|math-font|Bbb|E><around|[|T<rsub|1>|]>+T<rsub|1>>.
  </exercise>

  <\exercise>
    Un mod�le discret d'�volution d'actifs. Soit <math|S<rsub|0>> une
    constante, <math|0\<less\>d\<less\>u> et <math|X<rsub|n>> une suite iid �
    valeurs dans <math|<around|{|u,d|}>> telle que
    <math|\<bbb-P\><around|(|X<rsub|n>=u|)>=p>. On consid�re la suite
    <math|S<rsub|n>>, <math|n\<geqslant\>1> d�finie par
    <math|S<rsub|n>=X<rsub|n>S<rsub|n-1>> pour <math|n\<geqslant\>1> qui est
    un mod�le tr�s simplifi� d'�volution d'un actif financier. Soit
    <math|\<cal-F\><rsub|0>=<around|{|\<emptyset\>,\<Omega\>|}>>,
    <math|\<cal-F\><rsub|1>=\<sigma\><around|(|X<rsub|1>|)>>,
    <math|\<cal-F\><rsub|2>=\<sigma\><around|(|X<rsub|1>,X<rsub|2>|)>>.

    <\enumerate-alpha>
      <item>Montrer que <math|\<sigma\><around|(|S<rsub|2>|)>\<neq\>\<sigma\><around|(|X<rsub|1>,X<rsub|2>|)>>.

      <item>Calculer <math|\<bbb-E\><around|[|S<rsub|2>\|\<cal-F\><rsub|1>|]>>
      et <math|\<bbb-E\><around|[|S<rsub|2>\|\<cal-F\><rsub|0>|]>> et
      v�rifier que <math|\<bbb-E\><around|[|\<bbb-E\><around|[|S<rsub|2>\|\<cal-F\><rsub|1>|]>\|\<cal-F\><rsub|0>|]>=\<bbb-E\><around|[|S<rsub|2>|]>>.

      <item>Si <math|\<cal-F\><rsub|n>=\<sigma\><around|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>>
      donner une formule pour <math|\<bbb-E\><around|[|S<rsub|n>\|\<cal-F\><rsub|k>|]>>
      pour tout <math|k\<leqslant\>n>.
    </enumerate-alpha>
  </exercise>
</body>

<\initial>
  <\collection>
    <associate|language|french>
    <associate|par-first|.5fn>
    <associate|par-hyphen|normal>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|I|?>>
    <associate|auto-2|<tuple|1|?>>
    <associate|auto-3|<tuple|2|?>>
    <associate|auto-4|<tuple|3|?>>
    <associate|auto-5|<tuple|4|?>>
    <associate|auto-6|<tuple|5|?>>
    <associate|bayes|<tuple|1|?>>
    <associate|eca|<tuple|a)|?>>
    <associate|ecb|<tuple|b)|?>>
    <associate|ecbb|<tuple|b')|?>>
    <associate|ecp1|<tuple|1|?>>
    <associate|ecp2|<tuple|2|?>>
    <associate|eq:15|<tuple|6|?>>
    <associate|eq:def-cond-exp|<tuple|4|?>>
    <associate|eq:def-cond-exp-2|<tuple|5|?>>
    <associate|eq:def-cond-exp-bis|<tuple|5|?>>
    <associate|eq:equi|<tuple|3|?>>
    <associate|eq:faible|<tuple|2|?>>
    <associate|part:esp-cond|<tuple|I|?>>
    <associate|sec:ec|<tuple|4|?>>
    <associate|sec:espcon|<tuple|1|?>>
    <associate|sec:espcond|<tuple|2|?>>
    <associate|sec:esper-cond-comme|<tuple|5|?>>
    <associate|sec:st|<tuple|3|?>>
    <associate|th:l2-complete|<tuple|13|?>>
    <associate|th:mes-rv|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|I<space|2spc>Esp�rance
      Conditionnelle > <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Pr�-requis
      du cours> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>L'esp�rance
      conditionnelle> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Sous-tribus>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Esp�rance
      conditionnelle> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>