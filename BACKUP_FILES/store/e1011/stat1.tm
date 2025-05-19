<TeXmacs|1.0.7.9>

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

  <tabular|<tformat|<cwith|1|1|3|3|cell-halign|r>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|2|2|3|3|cell-halign|r>|<twith|table-lborder|1px>|<twith|table-rborder|1px>|<twith|table-bborder|1px>|<twith|table-tborder|1px>|<cwith|1|2|1|3|cell-lsep|0.5em>|<cwith|1|2|1|3|cell-rsep|0.5em>|<cwith|1|2|1|3|cell-bsep|0.5em>|<cwith|1|2|1|3|cell-tsep|0.5em>|<cwith|1|2|1|3|cell-background|pastel
  grey>|<table|<row|<cell|<strong|Statistiques>>|<cell|>|<cell|DEMI2E>>|<row|<cell|Gubinelli
  Massimiliano>|<cell|>|<cell|Polycopi� 1 - v.3 20110204>>>>>

  <section|Rappels sur les int�grales multiples>

  L'outil principal pour calculer des int�grales en plusieurs variables est
  le th�or�me de Fubini-Tonelli.

  <\theorem>
    [Fubini-Tonelli, cas <math|n=2>] Soit
    <math|f:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-R\>> une fonction positive,
    alors

    <\equation*>
      <big-around|\<int\>|<rsub|\<bbb-R\><rsup|2>>f<around|(|x,y|)>
      \<mathd\>x \<mathd\>y>=<big-around|\<int\>|<rsub|\<bbb-R\>><around*|(|<big-around|\<int\>|<rsub|\<bbb-R\>>f<around|(|x,y|)>\<mathd\>x>|)>\<mathd\>y>=<big-around|\<int\>|<rsub|\<bbb-R\>><around*|(|<big-around|\<int\>|<rsub|\<bbb-R\>>f<around|(|x,y|)>\<mathd\>y>|)>\<mathd\>x
      >.
    </equation*>

    O� les trois termes sont ou bien fini et �gaux ou bien simultan�ment
    <math|+\<infty\>>. Si <math|f> est de signe quelconque mais int�grable au
    sens que <math|<big-around|\<int\>|<rsub|\<bbb-R\><rsup|2>><around|\||f<around|(|x,y|)>|\|>\<mathd\>x\<mathd\>y>\<less\>+\<infty\>>
    alors l'�galit� des trois int�grales reste vraie.
  </theorem>

  <\example>
    <math|f<around|(|x,y|)>=x e<rsup|-x*y>\<bbb-I\><rsub|x\<geqslant\>0>\<bbb-I\><rsub|1\<less\>y\<less\>2>>.
    D'un part

    <\eqnarray*>
      <tformat|<cwith|1|4|2|2|cell-halign|l>|<table|<row|<cell|<big-around|\<int\>|<rsub|\<bbb-R\><rsup|2>>f<around|(|x,y|)>\<mathd\>x\<mathd\>y>>|<cell|=
      <big-around|\<int\>|<rsub|\<bbb-R\>><around*|(|<big-around|\<int\>|<rsub|\<bbb-R\>>x
      e<rsup|-x*y>\<bbb-I\><rsub|x\<geqslant\>0>\<mathd\>x>|)>\<bbb-I\><rsub|1\<less\>y\<less\>2>\<mathd\>y>>|<cell|>>|<row|<cell|>|<cell|=<big-around|\<int\>|<rsub|\<bbb-R\>><around*|(|<big-around|\<int\>|<rsub|\<bbb-R\>>y<rsup|2>*x
      e<rsup|-x*y>\<bbb-I\><rsub|x\<geqslant\>0>\<mathd\>
      x>|)><frac|\<bbb-I\><rsub|1\<less\>y\<less\>2>|y<rsup|2>>\<mathd\>y>>|<cell|>>|<row|<cell|>|<cell|=<big-around|\<int\>|<rsub|\<bbb-R\>><around*|(|<big-around|\<int\>|<rsub|\<bbb-R\>>x
      e<rsup|-x*>\<bbb-I\><rsub|x\<geqslant\>0>\<mathd\>x>|)><frac|\<bbb-I\><rsub|1\<less\>y\<less\>2>|y<rsup|2>>\<mathd\>y>>|<cell|>>|<row|<cell|>|<cell|=<big-around|\<int\>|<rsub|1><rsup|2><frac|\<mathd\>y|y<rsup|2>>>=<frac|1|2>
      .>|<cell|>>>>
    </eqnarray*>

    D'autre part

    <\eqnarray>
      <tformat|<cwith|1|2|2|2|cell-halign|l>|<table|<row|<cell|<big-around|\<int\>|<rsub|\<bbb-R\><rsup|2>>f<around|(|x,y|)>\<mathd\>x\<mathd\>y>>|<cell|=
      <big-around|\<int\>|<rsub|0><rsup|+\<infty\>>x<around*|(|<big-around|\<int\>|<rsub|1><rsup|2>
      e<rsup|-x*y>\<mathd\>y>|)>\<mathd\>x>>|<cell|>>|<row|<cell|>|<cell|=<big-around|\<int\>|<rsub|0><rsup|+\<infty\>><around|(|e<rsup|-x>-e<rsup|-2*x>|)>\<mathd\>x>=<frac|1|2>>|<cell|.>>>>
    </eqnarray>
  </example>

  <\example>
    Voyons un contre-exemple � l'utilisation de Fubini dans un cas o�
    l'int�grale double n'est pas d�fini. Soit

    <\equation*>
      f<around|(|x,y|)>=<frac|x<rsup|2>-y<rsup|2>|<around|(|x<rsup|2>+y<rsup|2>|)><rsup|2>>
    </equation*>

    alors <math|I=<big-around|\<int\>|<rsub|0><rsup|1><big-around|\<int\>|<rsub|0><rsup|1>f<around|(|x,y|)>\<mathd\>x\<mathd\>y>>>
    n'est pas bien d�fini car

    <\equation*>
      <big-around|\<int\>|<rsub|0><rsup|1><big-around|\<int\>|<rsub|0><rsup|1><around|\||f<around|(|x,y|)>|\|>\<mathd\>x\<mathd\>y>>=<big-around|\<int\>|<rsub|0><rsup|1><around*|(|<big-around|\<int\>|<rsub|0><rsup|y><frac|y<rsup|2>-x<rsup|2>|<around|(|x<rsup|2>+y<rsup|2>|)><rsup|2>>\<mathd\>x>|)>\<mathd\>y>+<big-around|\<int\>|<rsub|0><rsup|1><around*|(|<big-around|\<int\>|<rsub|0><rsup|x><frac|x<rsup|2>-y<rsup|2>|<around|(|x<rsup|2>+y<rsup|2>|)><rsup|2>>\<mathd\>y>|)>\<mathd\>x>
    </equation*>

    <\equation*>
      =<big-around|\<int\>|<rsub|0><rsup|1><around*|(|<frac|1|y>-<frac|1|1+y<rsup|2>>|)>\<mathd\>y>=+\<infty\>
    </equation*>

    Or, les int�grales\ 

    <\equation*>
      I<rsub|1>=<big-around|\<int\>|<rsub|0><rsup|1><around*|(|<big-around|\<int\>|<rsub|0><rsup|1><frac|x<rsup|2>-y<rsup|2>|<around|(|x<rsup|2>+y<rsup|2>|)><rsup|2>>\<mathd\>x>|)>\<mathd\>y>,<space|2em>I<rsub|2>=<big-around|\<int\>|<rsub|0><rsup|1><around*|(|<big-around|\<int\>|<rsub|0><rsup|1><frac|x<rsup|2>-y<rsup|2>|<around|(|x<rsup|2>+y<rsup|2>|)><rsup|2>>\<mathd\>y>|)>\<mathd\>x>
    </equation*>

    sont bien d�fini et il satisfont <math|I<rsub|1>=-I<rsub|2>>. En effet:

    <\equation*>
      <big-around|\<int\>|<rsub|0><rsup|1><frac|x<rsup|2>-y<rsup|2>|<around|(|x<rsup|2>+y<rsup|2>|)><rsup|2>>\<mathd\>y>=<big-around|\<int\>|<rsub|0><rsup|1><frac|1|<around|(|x<rsup|2>+y<rsup|2>|)>>\<mathd\>y>-2<big-around|\<int\>|<rsub|0><rsup|1><frac|y<rsup|2>|<around|(|x<rsup|2>+y<rsup|2>|)><rsup|2>>\<mathd\>y>=<frac|1|1+x<rsup|2>>
    </equation*>

    et alors

    <\equation*>
      I<rsub|2>=<big-around|\<int\>|<rsub|0><rsup|1><frac|1|1+x<rsup|2>>\<mathd\>x>=<around|[|arctan<around|(|x|)>|]><rsub|0><rsup|1>=<frac|\<pi\>|4>=-I<rsub|1>
    </equation*>

    ce qui est in contradiction avec une application na�ve de Fubini (car
    dans ce cas <math|I<rsub|1>=I<rsub|2>=I=0>).
  </example>

  <\theorem>
    <label|th:change-var>(<name|Changement des variables>) Soit
    <math|h:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>. On note
    <math|h<rsub|i><around*|(|x|)>> <with|mode|math| ses composantes dans la
    base canonique: \ h<around*|(|x|)>=<around*|(|h<rsub|1><around*|(|x|)>,\<ldots\>,h<rsub|n><around*|(|x|)>|)>>
    et <math|J h> son Jacobien:

    <\equation*>
      J h<around*|(|x|)>=det<around*|(|<frac|\<partial\>h<rsub|i><around*|(|x|)>|\<partial\>x<rsub|j>>|)><rsub|i,j=1,\<ldots\>,n>.
    </equation*>

    \ Supposons que

    <\enumerate-roman>
      <item>les d�riv�es partielles de <math|h<rsub|i><around*|(|x|)>> sont
      continues sur <math|\<bbb-R\><rsup|n>> pour <math|i=1,\<ldots\>,n>.

      <item><math|h> est une bijection.

      <item><math|J h<around*|(|x|)>\<neq\>0> pour tout
      <math|x\<in\>\<bbb-R\><rsup|n>>.\ 
    </enumerate-roman>

    Alors pour toute fonction <math|f:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>>
    et tout ensemble Boreli�n <math|K\<subseteq\>\<bbb-R\><rsup|n>> tels que
    <math|<big-around|\<int\>|<rsub|K><around*|\||f<around*|(|x|)>|\|>\<mathd\>x\<less\>\<infty\>>>

    <\equation*>
      <big-around|\<int\>|<rsub|K>f<around*|(|x|)>\<mathd\>x=<big-around|\<int\>|<rsub|h<rsup|-1><around*|(|K|)>>f<around*|(|h<around*|(|y|)>|)><around*|\||J
      h<around*|(|y|)>|\|>\<mathd\>y>> .
    </equation*>
  </theorem>

  <\remark>
    Par le Th�or�me de la fonction inverse, sous le condition du Th�or�me
    <reference|th:change-var> la fonction inverse
    <math|g<around*|(|y|)>=h<rsup|-1><around*|(|y|)>> existe partout dans
    <math|\<bbb-R\><rsup|n>> et

    <\equation*>
      J g<around*|(|y|)>=<frac|1|J h<around*|(|g<around*|(|y|)>|)>> .
    </equation*>

    On voit donc que <math|h> v�rifie les conditions i,ii et iii du Theoreme
    <reference|th:change-var> si et seulement si <math|g> aussi v�rifie ces
    conditions.
  </remark>

  <section|Vecteurs al�atoires>

  Soit <math|<around|(|\<Omega\>,\<cal-A\>,\<bbb-P\>|)>> un espace
  probabilis�. Un vecteur al�atoire <math|X> de dimension <math|n> (ou dans
  <math|\<bbb-R\><rsup|n>>) est une application
  <math|X:\<Omega\>\<rightarrow\>\<bbb-R\><rsup|n>> telle que tout les
  ensembles de la forme <math|<around|{|X\<in\>B|}>=<around|{|\<omega\>\<in\>\<Omega\>:
  X<around|(|\<omega\>|)>\<in\>B|}>> pour <math|B> Bor�lien de
  <math|\<bbb-R\><rsup|n>> appartiennent � la tribu <math|\<cal-A\>>. En
  particulier on peut calculer la probabilit�
  <math|\<bbb-P\><around|(|X\<in\>B|)>> de l'�v�nement
  <math|<around|{|X\<in\>B|}>> (car <math|\<bbb-P\><around|(|A|)>> est
  d�finie seulement pour <math|A\<in\>\<cal-A\>>). La loi de <math|X> est la
  l'application <math|\<mu\><rsub|X>:\<cal-B\><around|(|\<bbb-R\><rsup|n>|)>\<rightarrow\><around|[|0,1|]>>
  qui � tout <math|B> Bor�lien de <math|\<bbb-R\><rsup|n>> associe
  <math|\<bbb-P\><around|(|X\<in\>B|)>>. On appelle fonction de r�partition
  de <math|X> la fonction <math|F<rsub|X>:\<bbb-R\><rsup|n>\<rightarrow\><around|[|0,1|]>>
  d�finie par

  <\equation*>
    F<rsub|X><around|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=\<bbb-P\><around|(|X<rsub|1>\<leqslant\>x<rsub|1>,\<ldots\>,X<rsub|n>\<leqslant\>x<rsub|n>|)>
  </equation*>

  o� <math|<around|(|X<rsub|i>|)><rsub|i=1,\<ldots\>,n>> sont les composantes
  de <math|X<around|(|\<omega\>|)>=<around|(|X<rsub|1><around|(|\<omega\>|)>,\<ldots\>,X<rsub|n><around|(|\<omega\>|)>|)>>
  (donc des v.a. r�elles). La fonction de r�partition caract�rise la loi de
  <math|X>, i.e. n'importe quel �v�nement <math|<around|{|X\<in\>B|}>> peut
  �tre calcul� � l'aide de <math|F<rsub|X>>.

  <\example>
    Soit <math|n=2> et <math|B=<around|]|x<rsub|1,>y<rsub|1>|]>\<times\><around|\<nobracket\>|x<rsub|2>,y<rsub|2>|]>>
    alors il est facile de v�rifier que

    <\equation*>
      \<bbb-P\><around|(|X\<in\>B|)>=\<bbb-P\><around|(|X<rsub|1>\<in\><around|]|x<rsub|1>,y<rsub|1>|]>,Y\<in\><around|]|x<rsub|2>,y<rsub|2>|]>|)>=F<rsub|X><around|(|y<rsub|1>,y<rsub|2>|)>-F<rsub|X><around|(|y<rsub|1>,x<rsub|2>|)>-F<rsub|X><around|(|x<rsub|1>,y<rsub|2>|)>+F<rsub|X><around|(|x<rsub|1>,x<rsub|2>|)>
    </equation*>

    en utilisant les propri�t�s �l�mentaires des probabilit�s (en particulier
    <math|\<bbb-P\><around|(|A\<cup\>B|)>=\<bbb-P\><around|(|A|)>+\<bbb-P\><around|(|B|)>-\<bbb-P\><around|(|A\<cap\>B|)>>):

    <\equation*>
      \<bbb-P\><around*|(|X\<in\>B|)>=\<bbb-P\><around*|(|x<rsub|1>\<less\>X<rsub|1>\<leqslant\>y<rsub|1>,
      x<rsub|2>\<less\>X<rsub|2>\<leqslant\>y<rsub|2>|)>
    </equation*>

    <\equation*>
      =\<bbb-P\><around*|(|X<rsub|1>\<leqslant\>y<rsub|1>,
      x<rsub|2>\<leqslant\>X<rsub|2>\<leqslant\>y<rsub|2>|)>-\<bbb-P\><around*|(|X<rsub|1>\<leqslant\>x<rsub|1>,
      x<rsub|2>\<less\>X<rsub|2>\<leqslant\>y<rsub|2>|)>
    </equation*>

    <\equation*>
      =\<bbb-P\><around*|(|X<rsub|1>\<leqslant\>y<rsub|1>,
      X<rsub|2>\<leqslant\>y<rsub|2>|)>-<around*|(|X<rsub|1>\<leqslant\>y<rsub|1>,
      X<rsub|2>\<leqslant\>x<rsub|2>|)>
    </equation*>

    <\equation*>
      -<around*|(|\<bbb-P\><around*|(|X<rsub|1>\<leqslant\>x<rsub|1>,
      X<rsub|2>\<leqslant\>y<rsub|2>|)>-\<bbb-P\><around*|(|X<rsub|1>\<leqslant\>x<rsub|1>,
      X<rsub|2>\<leqslant\>x<rsub|2>|)>|)>
    </equation*>

    <\equation*>
      =F<rsub|X><around|(|y<rsub|1>,y<rsub|2>|)>-F<rsub|X><around|(|y<rsub|1>,x<rsub|2>|)>-F<rsub|X><around|(|x<rsub|1>,y<rsub|2>|)>+F<rsub|X><around|(|x<rsub|1>,x<rsub|2>|)>
      .
    </equation*>
  </example>

  <\definition>
    Le vecteur <math|X> � valeurs dans <math|\<bbb-R\><rsup|n>> est discret
    si il peut prendre que une quantit� d au plus d�nombrable des valeurs
    distinct. Autrement dit si il existent des ensembles au plus d�nombrables
    <math|\<cal-X\><rsub|1>,\<ldots\>,\<cal-X\><rsub|n>> tels que
    <math|\<bbb-P\><around*|(|X<rsub|1>\<in\>\<cal-X\><rsub|1>,\<ldots\>,X<rsub|n>\<in\>\<cal-X\><rsub|n>|)>=1>.
    Dans ce cas on appelle la quantit�

    <\equation*>
      p<rsub|X><around*|(|x|)>=p<rsub|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=\<bbb-P\><around*|(|X<rsub|1>=x<rsub|1>,\<ldots\>,X<rsub|n>=x<rsub|n>|)><space|2em>x<rsub|1>\<in\>\<cal-X\><rsub|1>,\<ldots\>,x<rsub|n>\<in\>\<cal-X\><rsub|n>
    </equation*>

    la densit� discrete de <math|X>.\ 
  </definition>

  La densit� discrete d'un vecteur <math|X> satisfait

  <\enumerate-alpha>
    <item><math|p<rsub|X><around*|(|x|)>\<geqslant\>0> ;

    <item><math|<big-around|\<sum\>|<rsub|x<rsub|1>\<in\>\<cal-X\><rsub|1>>><big-around|\<sum\>|<rsub|x<rsub|2>\<in\>\<cal-X\><rsub|2>>>\<cdots\><big-around|\<sum\>|<rsub|x<rsub|n>\<in\>\<cal-X\><rsub|n>>>p<rsub|X><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=1>
    .
  </enumerate-alpha>

  <\definition>
    On dit que <math|X> est un vecteur continu ou que il admet une densit�
    (continue) <math|f<rsub|X>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsub|+>>
    ssi pour tout Bor�lien <math|B\<in\>\<cal-B\><around|(|\<bbb-R\><rsup|n>|)>>
    (la tribu Bor�lienne de <math|\<bbb-R\><rsup|n>>) on peut exprimer la
    probabilit� de l'�v�nement <math|<around|{|X\<in\>B|}>> par une int�grale
    sur <math|B> de <math|f<rsub|X>>:

    <\equation*>
      \<bbb-P\><around|(|X\<in\>B|)>=<big-around|\<int\>|<rsub|B>f<rsub|X><around|(|x<rsub|1,>\<ldots\>,x<rsub|n>|)>\<mathd\>x<rsub|1>\<cdots\>\<mathd\>x<rsub|n>
      >.
    </equation*>

    \;
  </definition>

  La densit� (continue ou discrete), si elle existe, est unique et
  caract�rise la loi de <math|X>. On a que

  <\equation*>
    <big-around|\<int\>|<rsub|\<bbb-R\><rsup|n>>f<rsub|X><around|(|x<rsub|1,>\<ldots\>,x<rsub|n>|)>\<mathd\>x<rsub|1>\<cdots\>\<mathd\>x<rsub|n>
    >=\<bbb-P\><around|(|X\<in\>\<bbb-R\><rsup|n>|)>=1
  </equation*>

  en particulier <math|f<rsub|X>> est int�grable. La fonction de r�partition
  <math|F<rsub|X>:\<bbb-R\><rsup|n>\<rightarrow\><around|[|0,1|]>> de
  <math|X> est donn� par

  <\equation*>
    F<rsub|X><around|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)><above|=|def>\<bbb-P\><around|(|X<rsub|1>\<leqslant\>t<rsub|1>,\<ldots\>,X<rsub|n>\<leqslant\>t<rsub|n>|)>=<big-around|\<int\>|<rsub|-\<infty\>><rsup|t<rsub|1>>\<cdots\><big-around|\<int\>|<rsub|-\<infty\>><rsup|t<rsub|n>>f<rsub|X><around|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<mathd\>x<rsub|1>\<cdots\>\<mathd\>x<rsub|n>
    >>
  </equation*>

  c'est la probabilit� de l'�v�nement <math|<around|{|X\<in\>B|}>> pour
  <math|B=]-\<infty\>,t<rsub|1>]\<times\>\<cdots\>\<times\>]-\<infty\>,t<rsub|n>]\<subseteq\>\<bbb-R\><rsup|n>>.
  On peut d�terminer la densit� en d�rivant la fonction de r�partition:

  <\equation*>
    f<rsub|X><around|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>=<frac|\<partial\><rsup|n><rsup|>|\<partial\>t<rsub|1>\<cdots\>\<partial\>t<rsub|n>>F<rsub|X><around|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>
  </equation*>

  formule valable en tout point de continuit� de
  <math|\<partial\><rsup|n>F<rsub|X><around|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>/\<partial\>t<rsub|1>\<cdots\>\<partial\>t<rsub|n>>.\ 

  L'interpr�tation intuitive de la densit� <math|f<rsub|X>> est la suivante:
  si <math|\<Delta\>x<rsub|i>\<ll\>1> alors la probabilit� de l'�v�nement
  <math|<around|{|X<rsub|i>\<in\><around|[|x<rsub|i>,x<rsub|i>+\<Delta\>x<rsub|i>|]>
  pour i=1,\<ldots\>,n|}>> est approchable par

  <\eqnarray*>
    <tformat|<cwith|1|1|2|2|cell-valign|B>|<cwith|1|3|2|2|cell-halign|l>|<table|<row|<cell|\<bbb-P\><around|(|X<rsub|i>\<in\><around|[|x<rsub|i>,x<rsub|i>+\<Delta\>x<rsub|i>|]>
    pour i=1,\<ldots\>,n|)>>|<cell|=<big-around|\<int\>|<rsub|x<rsub|1>><rsup|x<rsub|1>+\<Delta\>x<rsub|1>>\<ldots\><big-around|\<int\>|<rsub|x<rsub|n>><rsup|x<rsub|n>+\<Delta\>x<rsub|n>>f<rsub|X><around|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>\<mathd\>t<rsub|1>\<cdots\>\<mathd\>t<rsub|n>>>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|\<simeq\>f<rsub|X><around|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<Delta\>x<rsub|1>\<cdots\>\<Delta\>x<rsub|n>
    .>|<cell|>>>>
  </eqnarray*>

  La densit� est donc proportionnelle � la mesure de probabilit� d'un petit
  voisinage du point <math|<around|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>.
  Autrement dit, si <math|B<rsub|n><around|(|x,\<delta\>|)>=<around|{|y\<in\>\<bbb-R\><rsup|n>
  : <around|\||x-y|\|>\<leqslant\>\<delta\>|}>\<subseteq\>\<bbb-R\><rsup|n>>
  est la boule <math|n>-dimensionnelle de rayon <math|\<delta\>> centr�e en
  <math|x\<in\>\<bbb-R\><rsup|n>> et <math|V<rsub|n><around|(|\<delta\>|)>=<around|\||B<rsub|n><around|(|x,\<delta\>|)>|\|>>
  le volume de <math|B<around|(|x,\<delta\>|)>>, i.e.
  <math|V<rsub|n><around|(|\<delta\>|)>=<big-around|\<int\>|<rsub|B<rsub|n><around|(|x,\<delta\>|)>>\<mathd\>t<rsub|1>\<cdots\>\<mathd\>t<rsub|n>>>
  alors si <math|\<delta\>\<ll\>1> on a l'approximation
  <math|\<bbb-P\><around|(|X\<in\>B<around|(|x,\<delta\>|)>|)>\<simeq\>f<rsub|X><around|(|x|)>
  V<rsub|n><around|(|\<delta\>|)>>.

  <\example>
    Soit <math|Z=<around|(|X,Y|)>:\<Omega\>\<rightarrow\>\<bbb-R\><rsup|2>>
    un couple al�atoire dont la fonction de r�partition est donn�e par

    <\equation*>
      F<rsub|Z><around|(|x,y|)>=q<around|(|x|)>*q<around|(|y|)>
    </equation*>

    o� <math|q<around|(|s|)>=max<around|(|0,min<around|(|s,1|)>|)>>. Alors

    <\equation*>
      <frac|\<partial\><rsup|2>|\<partial\>x\<partial\>y>F<rsub|Z><around|(|x,y|)>=<choice|<tformat|<table|<row|<cell|<text|non
      d�finie>>|<cell| si x=0,1 ou y=0,1>>|<row|<cell|1>|<cell|<text|si
      ><around|(|x,y|)>\<in\><around|]|0,1|[><rsup|2>>>|<row|<cell|0>|<cell|<text|autrement>>>>>>
    </equation*>

    et on peut v�rifier que

    <\equation*>
      F<rsub|Z><around|(|x,y|)>=<big-around|\<int\>|<rsub|-\<infty\>><rsup|x><big-around|\<int\>|<rsub|-\<infty\>><rsup|y>\<bbb-I\><rsub|<around|]|0,1|[>><around|(|z<rsub|1>|)>
      \<bbb-I\><rsub|<around|]|0,1|[>><around|(|z<rsub|2>|)>\<mathd\>z<rsub|1>\<mathd\>z<rsub|2>
      >>.
    </equation*>

    Donc <math|f<rsub|Z><around|(|z<rsub|1>,z<rsub|2>|)>=\<bbb-I\><rsub|<around|]|0,1|[>><around|(|z<rsub|1>|)>
    \<bbb-I\><rsub|<around|]|0,1|[>><around|(|z<rsub|2>|)>> est la densit� de
    <math|Z>.
  </example>

  <\definition>
    Soit <math|D\<subseteq\>\<bbb-R\><rsup|n>> un ensemble mesurable et tel
    que <math|Vol<around|(|D|)>=<big-around|\<int\>|<rsub|D>\<mathd\>x>\<gtr\>0>
    (son volume est positif). On dit que <math|X:\<Omega\>\<rightarrow\>\<bbb-R\><rsup|n>>
    a une loi uniforme sur <math|D> si <math|X> admet densit�

    <\equation*>
      f<rsub|X><around|(|x|)>=<frac|\<bbb-I\><rsub|D><around|(|x|)>|Vol<around|(|D|)>>.
    </equation*>
  </definition>

  <\theorem>
    Soit <math|X> un vecteur al�atoire continu � valeurs dans
    <math|\<bbb-R\><rsup|n>> de densit� <math|f<rsub|X>> et
    <math|h:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> une
    transformation v�rifiant les hypotheses du Theoreme
    <reference|th:change-var>, alors la v.a. <math|Y=h<around*|(|X|)>> admet
    la densit� <math|f<rsub|Y>> donn�e par

    <\equation*>
      f<rsub|Y><around*|(|y|)>=f<rsub|X><around*|(|h<rsup|-1><around*|(|y|)>|)><frac|1|<around*|\||J
      h<around*|(|h<rsup|-1><around*|(|y|)>|)>|\|>>\ 
    </equation*>

    pour tout <math|y\<in\>\<bbb-R\><rsup|n>\<nosymbol\>>.
  </theorem>

  <\proof>
    Consid�rons la fonction de repartition de <math|Y>:

    <\equation*>
      F<rsub|Y><around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>=\<bbb-P\><around*|(|Y<rsub|1>\<leqslant\>t<rsub|1>,\<ldots\>,Y<rsub|n>\<leqslant\>t<rsub|n>|)>=<big-around|\<int\>|<rsub|A<around*|(|t|)>>f<rsub|X><around*|(|x|)>\<mathd\>x>
    </equation*>

    o� <math|A<around*|(|t|)>=<around*|{|x\<in\>\<bbb-R\><rsup|n>:h<rsub|1><around*|(|x|)>\<leqslant\>t<rsub|1>,\<ldots\>,h<rsub|n><around*|(|x|)>\<leqslant\>t<rsub|n>|}>>.
    Par le Th�or�me <reference|th:change-var> on a que
    <math|<around*|(|y=h<around*|(|x|)>|)>>

    <\equation*>
      <big-around|\<int\>|<rsub|A<around*|(|t|)>>f<rsub|X><around*|(|x|)>\<mathd\>x=<big-around|\<int\>|<rsub|h<rsup|><around*|(|A<around*|(|t|)>|)>>f<rsub|X><around*|(|h<rsup|-1><around*|(|y|)>|)>><frac|\<mathd\>y|<around*|\||J
      h<around*|(|h<rsup|-1><around*|(|y|)>|)>|\|>>>
    </equation*>

    or <math|h<around*|(|A<around*|(|t|)>|)>=<around*|{|y=h<around*|(|x|)>:x\<in\>A<around*|(|t|)>|}>=<around*|{|y=h<around*|(|x|)>:h<around*|(|x<rsub|1>|)>\<leqslant\>t<rsub|1>,\<ldots\>,h<around*|(|x<rsub|n>|)>\<leqslant\>t<rsub|n>|}>=<around*|{|y<rsub|1>\<leqslant\>t<rsub|1>,\<ldots\>,y<rsub|n>\<leqslant\>t<rsub|n>|}>>.
    Donc

    <\equation*>
      F<rsub|Y><around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>=<big-around|\<int\>|<rsub|-\<infty\>><rsup|t<rsub|1>>\<cdots\><big-around|\<int\>|<rsub|-\<infty\>><rsup|t<rsub|n>>>>f<rsub|X><around*|(|h<rsup|-1><around*|(|y|)>|)><frac|\<mathd\>y|<around*|\||J
      h<around*|(|h<rsup|-1><around*|(|y|)>|)>|\|>>.
    </equation*>

    <\exercise>
      Montrer que si <math|X> est un vecteur al�atoire � valeurs dans
      <math|\<bbb-R\><rsup|n>> de densit� <math|f<rsub|X>> et si <math|A> est
      une matrice <math|n\<times\>n> inversible et
      <math|b\<in\>\<bbb-R\><rsup|n>> alors la v.a. \ <math|Y=A*X+b> a
      densit� <math|f<rsub|Y>> donn�e par

      <\equation*>
        f<rsub|Y><around*|(|y|)>=f<rsub|X><around*|(|A<rsup|-1><around*|(|y-b|)>|)><frac|1|<around*|\||Det<around*|(|A|)>|\|>>.
      </equation*>
    </exercise>

    \ 
  </proof>

  <subsection|Densit�s marginales>

  <\definition>
    Si <math|Z> est un vecteur al�atoire dans <math|\<bbb-R\><rsup|n>>
    admettant une densit� <math|f<rsub|Z>> alors tout sous-vecteurs <math|Y>
    de <math|Z> de dimension <math|k\<leqslant\>n> admettent une densit�
    qu'on obtient en int�grant <math|f<rsub|Z>> par rapport aux composantes
    qui ne figurent pas dans <math|Y>. On appelle cette densit� la densit�
    marginale de <math|Y>. Explicitement si
    <math|Y=<around|(|Z<rsub|1>,\<ldots\>,Z<rsub|k>|)>> alors

    <\equation*>
      \<bbb-P\><around|(|Y\<in\>B|)>=\<bbb-P\><around|(|<around|(|Z<rsub|1>,\<ldots\>,Z<rsub|k>|)>\<in\>B|)>=\<bbb-P\><around|(|Z\<in\>B\<times\>\<bbb-R\><rsup|n-k>|)>=<big-around|\<int\>|<rsub|<around|(|z<rsub|1>,\<ldots\>,z<rsub|k>|)>\<in\>B>f<rsub|Z><around|(|z<rsub|1>,\<ldots\>,z<rsub|n>|)>\<mathd\>z<rsub|1>\<cdots\>\<mathd\>z<rsub|n>>
    </equation*>

    <\equation*>
      =<big-around|\<int\>|<rsub|B><around*|(|<big-around|\<int\>|<rsub|\<bbb-R\><rsup|n-k>>f<rsub|Z><around|(|z<rsub|1>,\<ldots\>,z<rsub|k>,z<rsub|k+1>,\<ldots\>,z<rsub|n>|)>\<mathd\>z<rsub|k+1>\<cdots\>\<mathd\>z<rsub|n>>|)>\<mathd\>z<rsub|1>\<cdots\>\<mathd\>z<rsub|k>>
    </equation*>

    donc <math|f<rsub|Y><around|(|y<rsub|1>,\<ldots\>,y<rsub|k>|)>=<big-around|\<int\>|<rsub|\<bbb-R\><rsup|n-k>>f<rsub|Z><around|(|y<rsub|1>,\<ldots\>y<rsub|k>,z<rsub|k+1>,\<ldots\>,z<rsub|n>|)>\<mathd\>z<rsub|k+1>\<cdots\>\<mathd\>z<rsub|n>>>.
  </definition>

  <strong|Cas particulier (<math|n=2>).> Soit <math|Z=<around|(|X,Y|)>> un
  vecteur al�atoire bidimensionnel de densit� <math|f<rsub|Z>>. La densit�
  marginale de <math|X> est <math|f<rsub|X><around|(|x|)>=<big-around|\<int\>|<rsub|\<bbb-R\>>f<rsub|Z><around|(|x,y|)>\<mathd\>y>>
  et la densit� marginale de <math|Y> est
  <math|f<rsub|Z><around|(|y|)>=<big-around|\<int\>|<rsub|\<bbb-R\>>f<rsub|Z><around|(|x,y|)>\<mathd\>x>>.

  <\example>
    Consid�rons le couple <math|<around|(|X,Y|)>> de densit�

    <\equation*>
      f<rsub|<around|(|X,Y|)>><around|(|x,y|)>=\<alpha\><frac|e<rsup|-y>|2
      <sqrt|x>>\<bbb-I\><rsub|0\<less\>x\<less\>y<rsup|2>>*\<bbb-I\><rsub|y\<gtr\>0>
    </equation*>

    <\itemize-dot>
      <item>D�terminer <math|\<alpha\>\<gtr\>0> t.q.
      <math|f<rsub|<around|(|X,Y|)>>> soit correctement normalis�e.\ 

      <item>D�terminer les densit�s marginales <math|f<rsub|X>> et
      <math|f<rsub|Y>>.

      <item>Calculer <math|\<bbb-P\><around|(|X\<gtr\>1|)>>.
    </itemize-dot>

    Calculons

    <\eqnarray>
      <tformat|<cwith|1|2|2|3|cell-halign|l>|<table|<row|<cell|I>|<cell|=<big-around|\<int\>|<rsub|\<bbb-R\><rsup|2>>f<rsub|<around|(|X,Y|)>><around|(|x,y|)>\<mathd\>x\<mathd\>y>=\<alpha\><big-around|\<int\>|<rsub|0><rsup|\<infty\>><around*|(|<big-around|\<int\>|<rsub|0><rsup|y<rsup|2>><frac|\<mathd\>x|2<sqrt|x>>>|)>e<rsup|-y>\<mathd\>y>>|<cell|>>|<row|<cell|>|<cell|=\<alpha\><big-around|\<int\>|<rsub|0><rsup|\<infty\>>y*e<rsup|-y>\<mathd\>y>=\<alpha\>>|<cell|>>>>
    </eqnarray>

    donc <math|\<alpha\>=1>.

    <\eqnarray>
      <tformat|<table|<row|<cell|f<rsub|X><around|(|x|)>=<big-around|\<int\>|<rsub|\<bbb-R\>>>>|<cell|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>\<mathd\>y=<frac|\<bbb-I\><rsub|x\<gtr\>0>|2<sqrt|x>><big-around|\<int\>|<rsub|<sqrt|x>><rsup|\<infty\>>e<rsup|-y>\<mathd\>y>=<frac|e<rsup|-<sqrt|x>>|2<sqrt|x>>\<bbb-I\><rsub|x\<gtr\>0>>|<cell|>>>>
    </eqnarray>

    <\eqnarray>
      <tformat|<table|<row|<cell|f<rsub|Y><around|(|y|)>=>|<cell|<big-around|\<int\>|<rsub|\<bbb-R\>>f<rsub|<around|(|X,Y|)>><around|(|x,y|)>\<mathd\>x>=\<bbb-I\><rsub|y\<gtr\>0>*e<rsup|-y><big-around|\<int\>|<rsub|0><rsup|y<rsup|2>><frac|\<mathd\>x|2<sqrt|x>>>=y*e<rsup|-y>*\<bbb-I\><rsub|y\<gtr\>0>>|<cell|>>>>
    </eqnarray>

    <\equation*>
      \<bbb-P\><around|(|X\<gtr\>1|)>=<big-around|\<int\>|<rsub|1><rsup|\<infty\>>f<rsub|X><around|(|x|)>\<mathd\>x>=<big-around|\<int\>|<rsub|1><rsup|\<infty\>><frac|e<rsup|-<sqrt|x>>|2<sqrt|x>>\<mathd\>x>=<frac|1|e>
    </equation*>
  </example>

  <\example>
    Deux densit�s <math|f<rsub|X,Y><around|(|x,y|)>> et
    <math|g<rsub|X,Y><around|(|x,y|)>> peuvent avoir les m�mes marginales.
    Par exemple il est facile de montrer que les densit�s

    <\equation*>
      f<rsub|X,Y><around|(|x,y|)>=<frac|1|2\<pi\>>e<rsup|-<around|(|x<rsup|2>+y<rsup|2>|)>/2>,<space|2em>g<rsub|X,Y><around|(|x,y|)>=<frac|1|2\<pi\>>e<rsup|-<around|(|x<rsup|2>+y<rsup|2>|)>/2><around|[|1+x*y*\<bbb-I\><rsub|[-1,1]><around|(|x|)>\<bbb-I\><rsub|[-1,1]><around|(|y|)>|]>
    </equation*>

    ont les m�mes marginales (<math|f<rsub|X>=g<rsub|X>> et
    <math|f<rsub|Y>=g<rsub|Y>>). En effet en utilisant l'int�grale
    remarquable

    <\equation*>
      <big-around|\<int\>|<rsub|\<bbb-R\>><frac|1|<sqrt|2\<pi\>>>e<rsup|-x<rsup|2>/2>\<mathd\>x>=1
    </equation*>

    on obtient que

    <\equation*>
      f<rsub|X><around|(|x|)>=<big-around|\<int\>|<rsub|\<bbb-R\>>f<rsub|X,Y><around|(|x,y|)>\<mathd\>y>=<frac|1|<sqrt|2\<pi\>>>e<rsup|-x<rsup|2>/2>
    </equation*>

    et

    <\equation*>
      g<rsub|X><around|(|x|)>=<big-around|\<int\>|<rsub|\<bbb-R\>>g<rsub|X,Y><around|(|x,y|)>\<mathd\>y>=<big-around|\<int\>|<rsub|\<bbb-R\>><frac|1|2\<pi\>>e<rsup|-<around|(|x<rsup|2>+y<rsup|2>|)>/2><around|[|1+x*y*\<bbb-I\><rsub|[-1,1]><around|(|x|)>\<bbb-I\><rsub|[-1,1]><around|(|y|)>|]>\<mathd\>y>
    </equation*>

    <\equation*>
      =<frac|1|<sqrt|2\<pi\>>>e<rsup|-x<rsup|2>/2><big-around|\<int\>|<rsub|\<bbb-R\>><frac|1|<sqrt|2\<pi\>>>e<rsup|-y<rsup|2>/2><around|[|1+x*y*\<bbb-I\><rsub|[-1,1]><around|(|x|)>\<bbb-I\><rsub|[-1,1]><around|(|y|)>|]>\<mathd\>y>=<frac|1|<sqrt|2\<pi\>>>e<rsup|-x<rsup|2>/2>
    </equation*>

    car

    <\equation*>
      <big-around|\<int\>|<rsub|\<bbb-R\>><frac|1|<sqrt|2\<pi\>>>e<rsup|-y<rsup|2>/2>y*\<bbb-I\><rsub|[-1,1]><around|(|y|)>\<mathd\>y>=0
    </equation*>

    par sym�trie.
  </example>

  <subsection|Densit� et esp�rance conditionnelle>

  <\definition>
    Soit <math|Z=<around|(|X,Y|)>> un vecteur al�atoire dans
    <math|\<bbb-R\><rsup|m>\<times\>\<bbb-R\><rsup|n>> admettant une densit�
    <math|f<rsub|Z>>. Soient <math|f<rsub|X>> et <math|f<rsub|Y>> les
    densit�s marginales des vecteurs <math|X> et <math|Y>. On appelle densit�
    conditionnelle de <math|X> sachant <math|Y=y> la densit� donn�e par

    <\equation*>
      f<rsub|X\|Y=y><around|(|x|)>=<frac|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>|f<rsub|Y><around|(|y|)>><space|2em>pour
      tout y \<in\>\<bbb-R\><rsup|n> t.q. f<rsub|Y><around|(|y|)>\<gtr\>0.
    </equation*>
  </definition>

  Cette d�finition est motiv�e par le fait que, si <math|\<delta\>\<ll\>1>:

  <\equation*>
    \<bbb-P\><around|(|X\<in\>B<rsub|m><around|(|x,\<delta\>|)>\|Y\<in\>B<rsub|n><around|(|y,\<delta\>|)>|)>=<frac|\<bbb-P\><around|(|X\<in\>B<rsub|m><around|(|x,\<delta\>|)>,Y\<in\>B<rsub|n><around|(|y,\<delta\>|)>|)>|\<bbb-P\><around|(|Y\<in\>B<rsub|n><around|(|y,\<delta\>|)>|)>>\<simeq\><frac|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>V<rsub|m><around|(|\<delta\>|)>V<rsub|n><around|(|\<delta\>|)>|f<rsub|Y><around|(|y|)>V<rsub|n><around|(|\<delta\>|)>>
  </equation*>

  <\equation*>
    \<simeq\><frac|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>|f<rsub|Y><around|(|y|)>>V<rsub|m><around|(|\<delta\>|)>=f<rsub|X\|Y=y><around|(|x|)>V<rsub|m><around|(|\<delta\>|)>
  </equation*>

  donc la densit� conditionnelle est proportionnelle � la probabilit�
  conditionnelle de trouver <math|X > dans une petite boule centr�e en
  <math|x> sachant que <math|Y> est dans une petite boule centr�e en
  <math|y>.

  <\example>
    <label|ex:double-exp>Consid�rons <math|Z=<around|(|X,Y|)>> de densit�
    <math|f<rsub|Z><around|(|x,y|)>=2 \<lambda\><rsup|2>e<rsup|-\<lambda\><around|(|x+y|)>>\<bbb-I\><rsub|0\<less\>x\<less\>y>>.
    Quelle est la densit� conditionnelle de <math|X> sachant <math|Y=y>?

    Calculons d'abord <math|f<rsub|Y><around|(|y|)>>:

    <\equation*>
      f<rsub|Y><around|(|y|)>=<big-around|\<int\>|<rsub|\<bbb-R\>>2
      \<lambda\><rsup|2>e<rsup|-\<lambda\><around|(|x+y|)>>\<bbb-I\><rsub|0\<less\>x\<less\>y>\<mathd\>x>=2\<lambda\>e<rsup|-\<lambda\>y>\<bbb-I\><rsub|y\<gtr\>0><big-around|\<int\>|<rsub|0><rsup|y>\<lambda\>e<rsup|-\<lambda\>x>\<mathd\>x
      >= 2 \<lambda\> e<rsup|-\<lambda\>y><around|(|1-e<rsup|-\<lambda\>y>|)>\<bbb-I\><rsub|y\<gtr\>0>
    </equation*>

    Il vient que

    <\equation*>
      f<rsub|X\|Y=y><around|(|x|)>=<frac|2
      \<lambda\><rsup|2>e<rsup|-\<lambda\><around|(|x+y|)>>\<bbb-I\><rsub|0\<less\>x\<less\>y>|2
      \<lambda\> e<rsup|-\<lambda\>y><around|(|1-e<rsup|-\<lambda\>y>|)>\<bbb-I\><rsub|y\<gtr\>0>>=<frac|\<lambda\>e<rsup|-\<lambda\>x>\<bbb-I\><rsub|0\<less\>x\<less\>y>|1-e<rsup|-\<lambda\>y>><space|2em>pour
      tout y\<gtr\>0.
    </equation*>

    \;
  </example>

  <\definition>
    Une famille <math|<around|(|X<rsub|i>|)><rsub|i=1,\<ldots\>,n>> de v.a.
    est ind�pendante ssi pour tout <math|B<rsub|i>>, <math|i=1,\<ldots\>,n>,
    \ on a que les �v�nements <math|<around|{|X<rsub|i>\<in\>B<rsub|i>|}><rsub|i=1,\<ldots\>,n>>
    sont ind�pendants, i.e.:

    <\equation*>
      \<bbb-P\><around|(|X<rsub|1>\<in\>B<rsub|1>,\<ldots\>,X<rsub|n>\<in\>B<rsub|n>|)>=\<bbb-P\><around|(|X<rsub|1>\<in\>B<rsub|1>|)>\<cdots\>\<bbb-P\><around|(|X<rsub|n>\<in\>B<rsub|n>|)>.
    </equation*>
  </definition>

  Dans cette d�finition les v.a.s <math|X<rsub|i>> peuvent �tre r�elles ou
  bien des vecteurs al�atoires elles m�mes. Les v.a. <math|X,Y> sont
  ind�pendantes ssi <math|F<rsub|<around|(|X,Y|)>><around|(|x,y|)>=F<rsub|X><around|(|x|)>
  F<rsub|Y><around|(|y|)>>. Pour les v.a. avec densit� on a la proposition
  suivante.

  <\proposition>
    Soient <math|X> et <math|Y> deux v.a. admettant respectivement les
    densit�s <math|f<rsub|X>> et <math|f<rsub|Y>>. Alors <math|X> et <math|Y>
    sont ind�pendantes ssi <math|f<rsub|X\|Y=y>> ne d�pend de <math|y>. Dans
    ce cas l� <math|f<rsub|X\|Y=y><around|(|x|)>=f<rsub|X><around|(|x|)>>.
  </proposition>

  <\proof>
    Si <math|X,Y> sont ind�pendantes alors
    <math|F<rsub|<around|(|X,Y|)>><around|(|x,y|)>=F<rsub|X><around|(|x|)>F<rsub|Y><around|(|y|)>>
    et donc on a que le couple admet la densit� jointe
    <math|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>=f<rsub|X><around|(|x|)>*f<rsub|Y><around|(|y|)>>
    car\ 

    <\equation*>
      <frac|\<partial\><rsup|2>|\<partial\>x\<partial\>y>F<rsub|<around|(|X,Y|)>><around|(|x,y|)>=<frac|\<partial\><rsup|2>|\<partial\>x\<partial\>y>F<rsub|X><around|(|x|)>F<rsub|Y><around|(|y|)>=f<rsub|X><around|(|x|)>*f<rsub|Y><around|(|y|)>
    </equation*>

    et donc <math|f<rsub|X\|Y=y><around|(|x|)>=f<rsub|<around|(|X,Y|)>><around|(|x,y|)>/f<rsub|Y><around|(|y|)>=f<rsub|X><around|(|x|)>>
    qui ne d�pend pas de <math|y>. R�ciproquement on a
    <math|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>=f<rsub|X\|Y=y><around|(|x|)>f<rsub|Y><around|(|y|)>>
    et si la densit� conditionnelle ne d�pends pas de <math|y>

    <\equation*>
      f<rsub|X><around|(|x|)>=<big-around|\<int\>|<rsub|\<bbb-R\>>f<rsub|<around|(|X,Y|)>><around|(|x,y|)>\<mathd\>y>=f<rsub|X\|Y=y><around|(|x|)><big-around|\<int\>|<rsub|\<bbb-R\>>f<rsub|Y><around|(|y|)>\<mathd\>y>=f<rsub|X\|Y=y><around|(|x|)>
    </equation*>

    et donc <math|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>=f<rsub|X><around|(|x|)>f<rsub|Y><around|(|y|)>>
    qui implique l'ind�pendance de <math|X> et <math|Y>.
  </proof>

  <\proposition>
    Soient <math|X> et <math|Y> deux v.a. avec densit� jointe
    <math|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>>. Alors <math|X> et
    <math|Y> sont ind�pendantes ssi il existe deux applications <math|g,h>
    telles que <math|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>=g<around|(|x|)>
    h<around|(|y|)>>.
  </proposition>

  <\proof>
    Si <math|X> et <math|Y> sont ind�pendantes alors on peut prendre
    <math|g=f<rsub|X>> et <math|h=f<rsub|Y>>. R�ciproquement: supposons que
    <math|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>=g<around|(|x|)>h<around|(|y|)>>:

    <\equation*>
      f<rsub|X><around|(|x|)>=<big-around|\<int\>|<rsub|\<bbb-R\>>f<rsub|<around|(|X,Y|)>><around|(|x,y|)>\<mathd\>y>=g<around|(|x|)><big-around|\<int\>|<rsub|\<bbb-R\>>h<around|(|y|)>\<mathd\>y>,
      <space|2em>f<rsub|Y><around|(|y|)>=h<around|(|y|)><big-around|\<int\>|<rsub|\<bbb-R\>>g<around|(|x|)>\<mathd\>x>
    </equation*>

    <\equation*>
      1=<big-around|\<int\>|f<rsub|X><around|(|x|)>\<mathd\>x>=<big-around|\<int\>|<rsub|\<bbb-R\>>g<around|(|x|)>\<mathd\>x<big-around|\<int\>|<rsub|\<bbb-R\>>h<around|(|y|)>\<mathd\>y>>
    </equation*>

    et donc <math|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>=f<rsub|X><around|(|x|)>*f<rsub|Y><around|(|y|)>>.
  </proof>

  <\example>
    Soit <math|<around|(|X,Y|)>> un couple de v.a. dans
    <math|\<bbb-R\><rsup|2>> admettant pour densit�
    <math|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>=8*x*y*\<bbb-I\><rsub|0\<less\>x\<less\>y\<less\>1>>.
    <math|X> et <math|Y> ne sont pas ind�pendantes car la fonction
    <math|\<bbb-I\><rsub|0\<less\>x\<less\>y\<less\>1>> ne peut pas s'�crire
    sous la forme d'un produit. En effet <math|f<rsub|<around*|(|X,Y|)>><around*|(|1/2,2/3|)>\<gtr\>0>
    et <math|f<rsub|<around*|(|X,Y|)>><around*|(|1/4,1/3|)>\<gtr\>0>. Si
    \ <math|f<rsub|<around|(|X,Y|)>><around|(|x,y|)>=q<around*|(|x|)>*h<around*|(|y|)>>
    alors on doit avoir que <math|q<around*|(|1/2|)>\<gtr\>0> et
    <math|h<around*|(|1/3|)>\<gtr\>0> mais alors
    <with|mode|math|f<rsub|<around|(|X,Y|)>><around|(|1/2,1/3|)>\<gtr\>0> ce
    qu'est en contradiction avec la definition de
    <math|f<rsub|<around*|(|X,Y|)>>> car <math|><with|mode|math|f<rsub|<around|(|X,Y|)>><around|(|1/2,1/3|)>=0>.
  </example>

  <subsection|Esp�rance et esp�rance conditionnelle>

  Si <math|X> est un vecteur al�atoire dans <math|\<bbb-R\><rsup|n>>
  admettant <math|f<rsub|X>> comme densit� et
  <math|g:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>> est une fonction positive
  alors on d�fini l'esp�rance <math|\<bbb-E\><around|[|g<around|(|X|)>|]>> de
  la v.a. <math|g<around|(|X|)>> par la formule

  <\equation>
    \<bbb-E\><around|[|g<around|(|X|)>|]>=<big-around|\<int\>|<rsub|\<bbb-R\><rsup|n>>g<around|(|x|)>f<rsub|X><around|(|x|)>\<mathd\>x><label|eq:expectation>
  </equation>

  qui est toujours une quantit� positive bien d�finie m�me si elle peut
  prendre la valeur <math|+\<infty\>>. Si <math|g> est de signe quelconque et
  <math|\<bbb-E\><around|[|<around|\||g<around|(|X|)>|\|>|]>\<less\>\<infty\>>
  alors on dit que <math|g<around|(|X|)>> est int�grable et on peut d�finir
  l'esp�rance de <math|g<around|(|X|)>> par la m�me formule
  (<reference|eq:expectation>). \ Si <math|g<around|(|X|)>> n'est pas
  int�grable l'int�grale dans la formule (<reference|eq:expectation>) n'est
  pas bien d�finie.\ 

  <\theorem>
    Soit <math|X> un vecteur al�atoire � valeurs dans
    <math|\<bbb-R\><rsup|n>> et supposons que pour tout fonction mesurable
    born�e <math|g:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>>\ 

    <\equation*>
      \<bbb-E\><around*|[|g<around*|(|X|)>|]>=<big-around|\<int\>|<rsub|\<bbb-R\><rsup|n>>g<around*|(|x|)>
      q<around*|(|x|)>\<mathd\>x>
    </equation*>

    pour une certaine fonction <math|q:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsub|+>>.
    Alors <math|X> admet densit� <math|f<rsub|X>=q>.
  </theorem>

  <\remark>
    Ce resultat est assez pratique pour determiner la densit� par changement
    des variables.
  </remark>

  <\definition>
    Soit <math|Z=<around|(|X,Y|)>> un vecteur al�atoire de
    <math|\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|m>>. Soit
    <math|g:\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|m>\<rightarrow\>\<bbb-R\>>
    une fonction telle que <math|g<around|(|X,Y|)>> est int�grable, c-�-d
    <math|\<bbb-E\><around|\||g<around|(|X,Y|)>|\|>\<less\>+\<infty\>>. On
    appellera esp�rance conditionnelle de <math|g<around|(|X,Y|)>> sachant
    <math|Y> et on notera <math|\<bbb-E\><around|[|g<around|(|X,Y|)>\|Y|]>>
    la v.a. <math|\<Psi\><around|(|Y|)>> o�

    <\equation*>
      \<Psi\><around|(|y|)> =<big-around|\<int\>|<rsub|\<bbb-R\><rsup|n>>g<around|(|x,y|)>f<rsub|X\|Y=y><around|(|x|)>\<mathd\>x>,
      <space|2em>\<forall\>y\<in\>\<bbb-R\><rsup|m> :
      f<rsub|Y><around|(|y|)>\<gtr\>0 .
    </equation*>
  </definition>

  Il est importante de remarquer que l'esp�rance conditionnelle
  <math|\<bbb-E\><around|[|g<around|(|X\<comma\>Y|)>\|Y|]>> est une variable
  al�atoire.\ 

  <\remark>
    Par convenance on note <math|\<bbb-E\><around|[|g<around|(|X|)>\|Y=y|]>=<big-around|\<int\>|<rsub|\<bbb-R\><rsup|n>>g<around|(|x,y|)>f<rsub|X\|Y=y><around|(|x|)>\<mathd\>x>>
    l'esp�rance par rapport � la loi conditionnelle de <math|X> sachant
    <math|Y=y>. Cette esp�rance est une fonction r�elle de <math|y>.
  </remark>

  <\example>
    Revenons � l'exemple <reference|ex:double-exp> et calculons
    <math|\<bbb-E\><around|[|X*Y\|Y|]>> (il faut donc prendre
    <math|g<around|(|x,y|)>=x*y>). V�rifions d'abord la condition
    d'integrabilit� (qui donne sens au calcul de l'esp�rance conditionnelle):

    <\equation*>
      \<bbb-E\><around|[|<around|\||X*Y|\|>|]>=<big-around|\<int\>|<rsub|\<bbb-R\><rsup|2>><around|\||x*y|\|>f<rsub|<around|(|X,Y|)>><around|(|x,y|)>\<mathd\>x\<mathd\>y>=2\<lambda\><rsup|2><big-around|\<int\>|<big-around|\<int\>|x
      y e<rsup|-\<lambda\><around|(|x+y|)>>\<bbb-I\><rsub|0\<less\>x\<less\>y>\<mathd\>x\<mathd\>y>>
    </equation*>

    <\equation*>
      \<leqslant\>2\<lambda\><rsup|2><big-around|\<int\>|<rsub|0><rsup|\<infty\>><big-around|\<int\>|<rsub|0><rsup|\<infty\>>x
      y e<rsup|-\<lambda\><around|(|x+y|)>>\<mathd\>x\<mathd\>y>>=2\<lambda\><rsup|2><around*|(|<big-around|\<int\>|<rsub|0><rsup|\<infty\>>x
      \ e<rsup|-\<lambda\>x>\<mathd\>x>|)><rsup|2>\<less\>\<infty\>
    </equation*>

    donc <math|X*Y> est bien int�grable.\ 

    <\equation*>
      \<Psi\><around|(|y|)>=<big-around|\<int\>|<rsub|\<bbb-R\>>x*y*f<rsub|X\|Y=y><around|(|x|)>\<mathd\>x>=y
      \<bbb-I\><rsub|y\<gtr\>0><big-around|\<int\>|<rsub|\<bbb-R\>>x*<frac|\<lambda\>e<rsup|-\<lambda\>x>\<bbb-I\><rsub|0\<less\>x\<less\>y>|1-e<rsup|-\<lambda\>y>>*\<mathd\>x>=<frac|\<lambda\>y|1-e<rsup|-\<lambda\>y>>*\<bbb-I\><rsub|y\<gtr\>0>*<big-around|\<int\>|<rsub|0><rsup|y>x*e<rsup|-\<lambda\>x>\<mathd\>x>
    </equation*>

    <\equation*>
      \<Psi\><around|(|y|)>=<frac|y|1-e<rsup|-\<lambda\>y>>*\<bbb-I\><rsub|y\<gtr\>0>*<frac|1-e<rsup|-\<lambda\>y>-\<lambda\>y*e<rsup|\<um\>\<lambda\>y>|\<lambda\>>
    </equation*>

    et donc

    <\equation*>
      \<bbb-E\><around|[|X Y\|Y|]>=<frac|Y|1-e<rsup|-\<lambda\>Y>>*<frac|1-e<rsup|-\<lambda\>Y>-\<lambda\>Y*e<rsup|\<um\>\<lambda\>Y>|\<lambda\>>
    </equation*>
  </example>

  <\proposition>
    Soit <math|h> une application de <math|\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|m>\<rightarrow\>\<bbb-R\>>
    telle que <math|g<around|(|X,Y|)>h<around|(|Y|)>> est int�grable. Alors

    <\enumerate-numeric>
      <item><math|\<bbb-E\><around|[|g<around|(|X,Y|)>\|Y|]>h<around|(|Y|)>=\<bbb-E\><around|[|g<around|(|X,Y|)>h<around|(|Y|)>\|Y|]>>

      <item><math|\<bbb-E\><around|[|\<bbb-E\><around|[|g<around|(|X,Y|)>\|Y|]>h<around|(|Y|)>|]>=\<bbb-E\><around|[|g<around|(|X,Y|)>h<around|(|Y|)>|]>>
    </enumerate-numeric>
  </proposition>

  <\proof>
    Soit <math|\<Phi\><around|(|Y|)>=\<bbb-E\><around|[|g<around|(|X,Y|)>\|Y|]>>
    et <math|\<Psi\><around|(|Y|)>=\<bbb-E\><around|[|g<around|(|X,Y|)>h<around|(|Y|)>\|Y|]>>
    o�

    <\equation*>
      \<Phi\><around|(|y|)>=<big-around|\<int\>|<rsub|\<bbb-R\><rsup|n>>g<around|(|x,y|)>f<rsub|X\|Y=y><around|(|x|)>\<mathd\>x>,
      <space|2em>\<Psi\><around|(|y|)>=<big-around|\<int\>|<rsub|\<bbb-R\><rsup|n>>g<around|(|x,y|)>h<around|(|y|)>f<rsub|X\|Y=y><around|(|x|)>\<mathd\>x>
    </equation*>

    alors <math|\<Psi\><around|(|y|)>=h<around|(|y|)>\<Phi\><around|(|y|)>>
    qui donne la premi�re �galit�. Pour la deuxi�me on remarque que

    <\equation*>
      \<bbb-E\><around|[|\<bbb-E\><around|[|g<around|(|X,Y|)>\|Y|]>h<around|(|Y|)>|]>=\<bbb-E\><around|[|\<Phi\><around|(|Y|)>h<around|(|Y|)>|]>=\<bbb-E\><around|[|\<Psi\><around|(|Y|)>|]>=<big-around|\<int\>|<rsub|\<bbb-R\><rsup|m>>\<Psi\><around|(|y|)>f<rsub|Y><around|(|y|)>\<mathd\>y>
    </equation*>

    <\equation*>
      =<big-around|\<int\>|<rsub|\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|m>>g<around|(|x,y|)>h<around|(|y|)>f<rsub|X\|Y=y><around|(|x|)>f<rsub|Y><around|(|y|)>\<mathd\>x\<mathd\>y>=<big-around|\<int\>|<rsub|\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|m>>g<around|(|x,y|)>h<around|(|y|)>f<rsub|<around|(|X,Y|)>><around|(|x,y|)>\<mathd\>x\<mathd\>y>
    </equation*>

    <\equation*>
      =\<bbb-E\><around|[|g<around|(|X,Y|)>h<around|(|Y|)>|]>
    </equation*>

    par la d�finition de la densit� conditionnelle et d'esp�rance.
  </proof>

  <strong|Cas particuliers:>

  <\itemize-dot>
    <item><math|g<around|(|x,y|)>=x> et <math|h<around|(|y|)>=1>:
    <math|\<bbb-E\><around|[|\<bbb-E\><around|[|X\|Y|]>|]>=\<bbb-E\><around|[|X|]>>

    <item><math|g<around|(|x,y|)>=1>, <math|h<around|(|Y|)>> int�grable:
    <math|\<bbb-E\><around|[|h<around|(|Y|)>\|Y|]>=h<around|(|Y|)>>.
  </itemize-dot>

  <\example>
    Soient <math|X> et <math|Y> deux v.a. ind�pendantes de loi exponentielle
    de densit� <math|f<around|(|x|)>=\<lambda\> e<rsup|-\<lambda\>
    x>\<bbb-I\><rsub|x\<gtr\>0>> avec <math|\<lambda\>\<gtr\>0>. Calculons la
    densit� conditionnelle <math|f<rsub|X\|X+Y>> et l'esp�rance
    conditionnelle <math|\<bbb-E\><around|[|X\|X+Y|]>>. Si <math|z\<less\>x>

    <\equation*>
      \<bbb-P\><around|(|X+Y\<less\>z,X\<less\>x|)>=\<bbb-P\><around|(|X+Y\<less\>z,X\<less\>z|)>=<big-around|\<int\>|<rsub|0><rsup|z><big-around|\<int\>|<rsub|0><rsup|z-u>f<around|(|u|)>f<around|(|v|)>\<mathd\>u\<mathd\>v>>
    </equation*>

    et si <math|z\<geqslant\>x>

    <\equation*>
      \<bbb-P\><around|(|X+Y\<less\>z,X\<less\>x|)>=<big-around|\<int\>|<rsub|0><rsup|x><big-around|\<int\>|<rsub|0><rsup|z-u>f<around|(|u|)>f<around|(|v|)>\<mathd\>u\<mathd\>v
      >>.
    </equation*>

    Par cons�quent, pour <math|z\<geqslant\>x> la densit� jointe du couple
    <math|<around|(|X+Y,X|)>> est

    <\equation*>
      f<rsub|<around|(|X+Y,X|)>><around|(|z,x|)>=<frac|\<partial\><rsup|2>|\<partial\>u
      \<partial\>v>\<bbb-P\><around|(|X+Y\<less\>z,X\<less\>x|)>=f<around|(|z-x|)>f<around|(|x|)>=\<lambda\><rsup|2>e<rsup|-\<lambda\>*z>
    </equation*>

    et <math|f<rsub|<around|(|X+Y,X|)>><around|(|z,x|)>=0> si
    <math|z\<less\>x>. Par ailleurs, la densit� de <math|X+Y> est la
    convolution de deux densit�s exponentielles, i.e.
    <math|f<rsub|X+Y><around|(|z|)>=\<lambda\><rsup|2>z
    e<rsup|-\<lambda\>*z>\<bbb-I\><rsub|z\<gtr\>0>>. Donc la densit�
    conditionnelle de <math|X> sachant <math|X+Y> est

    <\equation*>
      f<rsub|X\|X+Y><around|(|x\|z|)>=<frac|f<rsub|<around|(|X+Y,X|)>><around|(|z,x|)>|f<rsub|X+Y><around|(|z|)>>=<frac|1|z>\<bbb-I\><rsub|0\<leqslant\>x\<leqslant\>z>
    </equation*>

    qui est la densit� uniforme sur l'intervalle <math|<around|[|0,z|]>>.
    Donc on calcule facilement que <math|\<bbb-E\><around|[|X\|X+Y=z|]>=<frac|z|2>>
    et finalement que

    <\equation*>
      \<bbb-E\><around|[|X\|X+Y|]>=<frac|X+Y|2>.
    </equation*>

    Une application de cet exemple est la suivante. Soit <math|X> l'instant
    o� la premi�re demande arrive � un syst�me de service et <math|Y>
    l'interval de temps entre l'arriv�e de la premiere et la deuxi�me
    demandes. Si on sait que la deuxi�me arrive au temps <math|z> (donc
    <math|X+Y=z>) alors on vient de determiner que la loi du temps d'arriv�e
    de la premiere est donn�e par la densit� <math|1/z> sur l'intervalle
    <math|<around*|[|0,z|]>>. En particulier, la moyenne du temps d'arriv�e
    de la premiere est <math|z/2>.\ 
  </example>

  <subsection|Variance, covariance et corr�lation>

  <\definition>
    La covariance <math|Cov<around|(|X,Y|)>> du couple
    <math|<around|(|X,Y|)>> de v.a. r�elles est donn�e par
    <math|Cov<around|(|X,Y|)>=\<bbb-E\><around|[|<around|(|X-\<bbb-E\><around|[|X|]>|)><around|(|Y-\<bbb-E\><around|[|Y|]>|)>|]>>.
    La variance de <math|X> est <math|Var<around|(|X|)>=Cov<around|(|X,X|)>=\<bbb-E\><around|[|<around|(|X-\<bbb-E\><around|[|X|]>|)><rsup|2>|]>\<geqslant\>0>.
  </definition>

  Si <math|Var<around|(|X|)>=0> alors <math|X=\<bbb-E\><around|[|X|]>> est
  une constante. La covariance est une fonction sym�trique
  <math|<around|(|Cov<around|(|X,Y|)>=Cov<around|(|Y,X|)>|)>> et lin�aire par
  rapport � chacun de ses arguments \ (<math|Cov<around|(|\<alpha\>X+\<beta\>Y,Z|)>=\<alpha\>Cov<around|(|X,Z|)>+\<beta\>Cov<around|(|Y,Z|)>>).
  <math|Var<around|(|\<alpha\>X+c|)>=\<alpha\><rsup|2> Var<around|(|X|)>>. On
  a que

  <\equation*>
    Var<around|(|X+Y|)>=Cov<around|(|X+Y,X+Y|)>=Cov<around|(|X,X|)>+2
    Cov<around|(|X,Y|)>+Cov<around|(|Y,Y|)>
  </equation*>

  <\equation*>
    =Var<around|(|X|)>+2*Cov<around|(|X,Y|)>+Var<around|(|Y|)>.
  </equation*>

  Si <math|X,Y> sont ind�pendantes <math|Cov<around|(|X,Y|)>=0>, le
  r�ciproque n'est pas vrai en g�n�ral.\ 

  <\example>
    Soit <math|X\<sim\>\<cal-N\><around|(|0,1|)>> et <math|Y=X<rsup|2>>.
    Alors <math|Cov<around|(|X,Y|)>=\<bbb-E\><around|[|X
    Y|]>=\<bbb-E\><around|[|X<rsup|3>|]>=0> mais �videmment <math|X,Y> ne
    sont pas ind�pendantes: par exemple <math|0=\<bbb-P\><around|(|X\<gtr\>1,Y\<less\>1|)>\<neq\>\<bbb-P\><around|(|X\<gtr\>1|)>\<bbb-P\><around|(|Y\<less\>1|)>=\<bbb-P\><around|(|X\<gtr\>1|)>\<bbb-P\>(-1\<less\>X\<less\>1)\<gtr\>0>.
  </example>

  On a l'in�galit�

  <\equation*>
    Cov<around|(|X,Y|)><rsup|2>\<leqslant\>Var<around|(|X|)>*Var<around|(|Y|)>
  </equation*>

  [Preuve: consid�rer le discriminant du polyn�me positive
  <math|P<around|(|t|)>=Var<around|(|X+t Y|)>\<geqslant\>0>].\ 

  Le coefficient de corr�lation <math|\<rho\><rsub|X,Y>> est d�fini par

  <\equation*>
    \<rho\><rsub|X,Y>=<frac|Cov<around|(|X,Y|)>|<sqrt|Var<around|(|X|)>*Var<around|(|Y|)>>>\<in\>[-1,1]
  </equation*>

  \;

  <\example>
    Si <math|\<rho\><rsub|X,Y>=\<pm\>1> et <math|Var<around|(|Y|)>\<gtr\>0>
    alors existe <math|\<alpha\>\<in\>\<bbb-R\>> tel que
    <math|Var<around|(|X-\<alpha\> Y|)>=0> et donc <math|X-\<alpha\>
    Y=constante> qui donne que <math|Cov<around|(|X,Y|)>=Cov<around|(|\<alpha\>Y,Y|)>=\<alpha\>Var<around|(|Y|)>>,
    <math|Var<around|(|X|)>=\<alpha\><rsup|2 >Var<around|(|Y|)>> et
    <math|\<rho\><rsub|X,Y>=sign \<alpha\>>. Donc on voit bien que le signe
    de <math|\<alpha\>> est celui de <math|\<rho\><rsub|X,Y>>.

    Pour le prouver, consid�rer le polyn�me quadratique en <math|\<alpha\>>
    d�fini par <math|P<around|(|\<alpha\>|)>= Var<around|(|X-\<alpha\>
    Y|)>=Var<around|(|X|)>-2 \<alpha\> Cov<around|(|X,Y|)>+\<alpha\><rsup|2>Var<around|(|Y|)>>.
    Or <math|P<around|(|\<alpha\>|)>\<geqslant\>0> et donc l'�quation
    <math|P<around|(|\<alpha\>|)>=0> admet au plus une solution et il admet
    une solution seulement si le discriminant \ est nul. Ici
    <math|\<Delta\>=4 <around|[|Cov<around|(|X,Y|)>|]><rsup|2>-4Var<around|(|X|)>Var<around|(|Y|)>=4
    Var<around|(|X|)> Var<around|(|Y|)> <around|(|\<rho\><rsub|X,Y><rsup|2>-1|)>\<leqslant\>0>
    et donc <math|\<Delta\>=0 \<Leftrightarrow\>
    <around|\||\<rho\><rsub|X,Y>|\|>=1>. Apres il est clair que si
    <math|X=\<alpha\> Y +c> avec <math|c> constant on doit avoir

    <\equation*>
      \<rho\><rsub|X,Y>=<frac|Cov<around|(|\<alpha\>Y+c,Y|)>|<sqrt|Var<around|(|\<alpha\>
      Y+c|)>*Var<around|(|Y|)>>>=<frac|\<alpha\>Cov<around|(|Y,Y|)>|<sqrt|\<alpha\><rsup|2>Var<around|(|Y|)>*Var<around|(|Y|)>>>=<frac|\<alpha\>|<around|\||\<alpha\>|\|>>=sgn
      <around|(|\<alpha\>|)>.
    </equation*>
  </example>

  <\exercise>
    Montrer que <math|\<rho\><rsub|X,Y>=sgn<around|(|a*d|)> \<rho\><rsub|a
    X+b,d Y+d>>, c-�-d que le coefficient de corr�lation est invariante par
    des transformation affines des variables elles v�rifient
    <math|sgn<around|(|a d|)>=1>.
  </exercise>

  <\definition>
    On appelle variance conditionnelle de <math|X> sachant <math|Y> et on
    notera <math|Var<around|(|X\|Y|)>> la v.a.

    <\equation*>
      Var<around|(|X\|Y|)>=\<bbb-E\><around|[|<around|(|X-\<bbb-E\><around|[|X\|Y|]>|)><rsup|2>\|Y|]>
    </equation*>
  </definition>

  <\proposition>
    On a <math|Var<around|(|X\|Y|)>=\<bbb-E\><around|[|X<rsup|2>\|Y|]>-<around|(|\<bbb-E\><around|[|X\|Y|]>|)><rsup|2>>
  </proposition>

  <\proof>
    \;

    <\eqnarray>
      <tformat|<cwith|1|3|2|2|cell-halign|l>|<table|<row|<cell|Var<around|(|X\|Y|)>>|<cell|=\<bbb-E\><around|[|X<rsup|2>-2X\<bbb-E\><around|[|X\|Y|]>+<around|(|\<bbb-E\><around|[|X\|Y|]>|)><rsup|2>\|Y|]>>|<cell|>>|<row|<cell|>|<cell|=\<bbb-E\><around|[|X<rsup|2>\|Y|]>-2<around|(|\<bbb-E\><around|[|X\|Y|]>|)><rsup|2>+<around|(|\<bbb-E\><around|[|X\|Y|]>|)><rsup|2>>|<cell|>>|<row|<cell|>|<cell|=\<bbb-E\><around|[|X<rsup|2>\|Y|]>-<around|(|\<bbb-E\><around|[|X\|Y|]>|)><rsup|2>>|<cell|>>>>
    </eqnarray>

    car <math|\<bbb-E\><around|[|X*\<bbb-E\><around|[|X\|Y|]>\|Y|]>=\<bbb-E\><around|[|X\|Y|]>*\<bbb-E\><around|[|X\|Y|]>>
    et <math|\<bbb-E\><around|[|<around|(|\<bbb-E\><around|[|X\|Y|]>|)><rsup|2>\|Y|]>=<around|(|\<bbb-E\><around|[|X\|Y|]>|)><rsup|2>>.
  </proof>

  <\proposition>
    (Identit� de la variance conditionnelle) Soient <math|X> et <math|Y> 2
    v.a. sur le m�me espace de probabilit� et
    <math|\<bbb-E\><around|[|X<rsup|2>|]>\<less\>+\<infty\>>. Alors
    <math|Var<around|(|X|)>=\<bbb-E\><around|[|Var<around|(|X\|Y|)>|]>+Var<around|[|\<bbb-E\><around|(|X\|Y|)>|]>>
  </proposition>

  <\proof>
    \;

    <\equation*>
      Var<around|(|X|)>=\<bbb-E\><around|[|X<rsup|2>|]>-<around|(|\<bbb-E\><around|[|X|]>|)><rsup|2>=\<bbb-E\><around|[|\<bbb-E\><around|[|X<rsup|2>\|Y|]>-<around|(|\<bbb-E\><around|(|X\|Y|)>|)><rsup|2>|]>+\<bbb-E\><around|[|<around|(|\<bbb-E\><around|(|X\|Y|)>|)><rsup|2>|]>-<around|(|\<bbb-E\><around|[|\<bbb-E\><around|[|X\|Y|]>|]>|)><rsup|2>
    </equation*>

    <\equation*>
      =\<bbb-E\><around|[|Var<around|(|X\|Y|)>|]>+Var<around|[|\<bbb-E\><around|(|X\|Y|)>|]>
    </equation*>
  </proof>

  <section|Meilleure pr�vision et regression>

  Soit <math|X,Y> un couple al�atoire de densit� jointe <math|f<rsub|X,Y>> et
  tel que <math|\<bbb-E\><around*|[|Y<rsup|2>|]>\<less\>\<infty\>>. Le
  probl�me de la meilleure prevision est de trouver une fonction <math|g>
  telle que l'�cart moyen quadratique de <math|Y> � <math|g<around*|(|X|)>>
  soit le plus petit possible:

  <\equation*>
    \<bbb-E\><around*|[|<around*|(|Y-g<around*|(|X|)>|)><rsup|2>|]>=inf<rsub|h>
    \<bbb-E\><around*|[|<around*|(|Y-h<around*|(|X|)>|)><rsup|2>|]>
  </equation*>

  Dans le contexte de la meilleure prevision la variable <math|X> est appel�e
  <with|font-shape|italic|variable explicative> ou
  <with|font-shape|italic|predicteur> et <math|Y> est appel�e
  <with|font-shape|italic|variable expliqu�e>. \ L'esperance conditionnelle
  <math|\<Psi\><around*|(|x|)>=\<bbb-E\><around*|[|Y<around*|\||X=x|\<nobracket\>>|]>>
  donn� l'unique solution de ce probl�me.\ 

  <\theorem>
    (<name|Meilleure prevision>) Soit <math|\<Psi\><around*|(|x|)>=\<bbb-E\><around*|[|Y<around*|\||X=x|\<nobracket\>>|]>>
    alors

    <\equation*>
      \<bbb-E\><around*|[|<around*|(|Y-\<Psi\><around*|(|X|)>|)><rsup|2>|]>\<leqslant\>\<bbb-E\><around*|[|<around*|(|Y-h<around*|(|X|)>|)><rsup|2>|]>
    </equation*>

    pour tout <math|h:\<bbb-R\>\<rightarrow\>\<bbb-R\>> mesurable et telle
    que <math|\<bbb-E\><around*|[|h<around*|(|X|)><rsup|2>|]>\<less\>\<infty\>>.
  </theorem>

  <\proof>
    On a que

    <\equation*>
      \<bbb-E\><around*|[|<around*|(|Y-h<around*|(|X|)>|)><rsup|2>|]>=\<bbb-E\><around*|[|<around*|(|Y-\<Psi\><around*|(|X|)>+\<Psi\><around*|(|X|)>-h<around*|(|X|)>|)><rsup|2>|]>
    </equation*>

    <\equation*>
      =\<bbb-E\><around*|[|<around*|(|Y-\<Psi\><around*|(|X|)>|)><rsup|2>|]>+\<bbb-E\><around*|[|<around*|(|\<Psi\><around*|(|X|)>-h<around*|(|X|)>|)><rsup|2>|]>+2*\<bbb-E\><around*|[|<around*|(|Y-\<Psi\><around*|(|X|)>|)><around*|(|\<Psi\><around*|(|X|)>-h<around*|(|X|)>|)>|]>
      .
    </equation*>

    Or

    <\equation*>
      \<bbb-E\><around*|[|<around*|(|Y-\<Psi\><around*|(|X|)>|)><around*|(|\<Psi\><around*|(|X|)>-h<around*|(|X|)>|)>|]>=\<bbb-E\><around*|[|\<bbb-E\><around*|[|<around*|(|Y-\<Psi\><around*|(|X|)>|)><around*|\||X|\<nobracket\>>|]><around*|(|\<Psi\><around*|(|X|)>-h<around*|(|X|)>|)>|]>=0
    </equation*>

    et donc

    <\equation*>
      \<bbb-E\><around*|[|<around*|(|Y-h<around*|(|X|)>|)><rsup|2>|]>=\<bbb-E\><around*|[|<around*|(|Y-\<Psi\><around*|(|X|)>|)><rsup|2>|]>+\<bbb-E\><around*|[|<around*|(|\<Psi\><around*|(|X|)>-h<around*|(|X|)>|)><rsup|2>|]>
    </equation*>

    ce qu'implique que\ 

    <\equation*>
      \<bbb-E\><around*|[|<around*|(|Y-h<around*|(|X|)>|)><rsup|2>|]>\<geqslant\>\<bbb-E\><around*|[|<around*|(|Y-\<Psi\><around*|(|X|)>|)><rsup|2>|]>
    </equation*>

    avec �galit� si et seulement si <math|\<bbb-E\><around*|[|<around*|(|\<Psi\><around*|(|X|)>-h<around*|(|X|)>|)><rsup|2>|]>=0>
    c'est � dire si <math|\<Psi\><around*|(|X|)>=h<around*|(|X|)>>.

    \;
  </proof>

  La fonction <math|g<around*|(|x|)>=\<bbb-E\><around*|[|Y<around*|\||X=x|\<nobracket\>>|]>>
  est dite <strong|fonction de regression de <math|Y> sur <math|X>>. Dans le
  cas o� <math|X,Y> sont des v.a. r�elles la regression est dite simple. Si
  <math|X,Y> sont des v.a. � valeurs vectorielles alors la regression est
  dite multiple ou multivari�e.

  <\example>
    Soit <math|<around*|(|X,Y|)>> un vecteur al�atoire dans
    <math|\<bbb-R\><rsup|2>> de densit�

    <\equation*>
      f<rsub|X,Y><around*|(|x,y|)>=<around*|(|x+y|)>\<bbb-I\><rsub|0\<less\>x,y\<less\>1>
      .
    </equation*>

    Explicitions la fonction de regression de <math|X> sur <math|Y:
    g<around*|(|x|)>=\<bbb-E\><around*|[|Y<around*|\||X=x|\<nobracket\>>|]>>.
    La densit� marginale de <math|X> est donn�e par

    <\equation*>
      f<rsub|X><around*|(|x|)>=<big-around|\<int\>|<rsub|\<bbb-R\>>f<rsub|X,Y><around*|(|x,y|)>\<mathd\>y>=<around*|(|x+<frac|1|2>|)>\<bbb-I\><rsub|0\<less\>x\<less\>1>
      .
    </equation*>

    Alors la \ densit� conditionnelle est donn�e par

    <\equation*>
      f<rsub|Y<around*|\||X|\<nobracket\>>><around*|(|y<around*|\||x|\<nobracket\>>|)>=<frac|x+y|x+1/2>\<bbb-I\><rsub|0\<less\>x,y\<less\>1>
    </equation*>

    et

    <\equation*>
      g<around*|(|x|)>=<big-around|\<int\>|<rsub|\<bbb-R\>>y>*f<rsub|Y<around*|\||X|\<nobracket\>>><around*|(|y<around*|\||x|\<nobracket\>>|)>\<mathd\>y=<big-around|\<int\>|<rsub|\<bbb-R\>>y>*<frac|x+y|x+1/2>\<bbb-I\><rsub|0\<less\>x,y\<less\>1>\<mathd\>y=<frac|<frac|x|2>+<frac|1|3>|x+<frac|1|2>>
    </equation*>

    pour tout <math|x\<in\><around*|]|0,1|[>>. Soulignons que, en general,
    <math|g> est une fonction non-lineaire de <math|x>.
  </example>

  Si <math|g> est la fonction de regression de <math|X> sur <math|Y> alors la
  v.a. <math|\<xi\>=Y-g<around*|(|X|)>=Y-\<bbb-E\><around*|[|Y<around*|\||X|\<nobracket\>>|]>>
  represente l'erreur stochastique dans la prevision de <math|Y> par
  <math|g<around*|(|X|)>>. On appelle <math|\<xi\>> le residu de regression.
  Par definition d'esperance conditionnelle

  <\equation*>
    \<bbb-E\><around*|[|\<xi\><around*|\||X|\<nobracket\>>|]>=0
  </equation*>

  \ et donc aussi <math|\<bbb-E\><around*|[|\<xi\>|]>=0>. L'erreur
  quadratique de l'approximation de <math|Y> par <math|g<around*|(|X|)>> est\ 

  <\equation*>
    \<Delta\>=\<bbb-E\><around*|[|<around*|(|Y-g<around*|(|X|)>|)><rsup|2>|]>=\<bbb-E\><around*|(|\<xi\><rsup|2>|)>=Var<around*|(|\<xi\>|)>.
  </equation*>

  On appelle <math|\<Delta\>> la variance r�siduelle. On a que
  <math|\<Delta\>\<leqslant\>Var<around*|(|Y|)>>: par le th�or�me<strong|> de
  meilleur prevision, pour tout <math|h:\<bbb-R\>\<rightarrow\>\<bbb-R\>>
  mesurable <math|\<Delta\>\<leqslant\>\<bbb-E\><around*|[|<around*|(|Y-h<around*|(|X|)>|)><rsup|2>|]>>.
  En choisissant <math|h<around*|(|x|)>=\<bbb-E\><around*|[|Y|]>> (constante)
  on a que\ 

  <\equation*>
    \<Delta\>\<leqslant\>\<bbb-E\><around*|[|<around*|(|Y-h<around*|(|X|)>|)><rsup|2>|]>=\<bbb-E\><around*|[|<around*|(|Y-\<bbb-E\><around*|[|Y|]>|)><rsup|2>|]>=Var<around*|(|Y|)>.
  </equation*>

  On a aussi que

  <\equation*>
    Var<around*|(|Y|)>=Var<around*|(|\<bbb-E\><around*|[|Y<around*|\||X|\<nobracket\>>|]>|)>+\<bbb-E\><around*|[|Var<around*|(|Y<around*|\||X|\<nobracket\>>|)>|]>=Var<around*|(|g<around*|(|X|)>|)>+\<Delta\>
  </equation*>

  car\ 

  <\equation*>
    \<Delta\>=\<bbb-E\><around*|[|Y<rsup|2>|]>-\<bbb-E\><around*|[|\<bbb-E\><around*|[|Y<around*|\||X|\<nobracket\>>|]><rsup|2>|]>=\<bbb-E\><around*|[|Var<around*|(|Y<around*|\||X|\<nobracket\>>|)>|]>.
  </equation*>

  \;
</body>

<\initial>
  <\collection>
    <associate|language|french>
    <associate|par-hyphen|normal>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|3>>
    <associate|auto-4|<tuple|2.2|4>>
    <associate|auto-5|<tuple|2.3|6>>
    <associate|auto-6|<tuple|2.4|?>>
    <associate|auto-7|<tuple|3|?>>
    <associate|eq:expectation|<tuple|1|6>>
    <associate|ex:double-exp|<tuple|16|4>>
    <associate|th:change-var|<tuple|4|?>>
    <associate|th:cov|<tuple|4|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Rappels
      sur les int�grales multiples> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Vecteurs
      al�atoires> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|Densit�s marginales
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1.5fn>|Densit� et esp�rance conditionnelle
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1.5fn>|Esp�rance et esp�rance conditionnelle
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1.5fn>|Variance, covariance et corr�lation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Meilleure
      pr�vision et regression> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>