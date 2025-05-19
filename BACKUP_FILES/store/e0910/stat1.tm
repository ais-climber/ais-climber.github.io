<TeXmacs|1.0.7.3>

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

  <small|<verbatim|[M. Gubinelli, Fadoua Balabdaoui-Mohr - Statistique - L2
  2009/2010 - 20100211 - v.2]>>

  <section|Rappels sur les int�grales multiples>

  <\theorem>
    [Fubini-Tonelli, cas <math|n=2>] Soit
    <math|f:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-R\>> une fonction positive,
    alors

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|2>>f(x,y) \<mathd\>x
      \<mathd\>y=<big|int><rsub|\<bbb-R\>><left|(><big|int><rsub|\<bbb-R\>>f(x,y)\<mathd\>x<right|)>\<mathd\>y=<big|int><rsub|\<bbb-R\>><left|(><big|int><rsub|\<bbb-R\>>f(x,y)\<mathd\>y<right|)>\<mathd\>x
      .
    </equation*>

    O� les trois termes sont ou bien fini et �gaux ou bien simultan�ment
    <math|+\<infty\>>. Si <math|f> est de signe quelconque mais int�grable au
    sens que <math|<big|int><rsub|\<bbb-R\><rsup|2>>\|f(x,y)\|\<mathd\>x\<mathd\>y\<less\>+\<infty\>>
    alors l'�galit� des trois int�grales reste vraie.
  </theorem>

  <\example>
    <math|f(x,y)=x e<rsup|-x*y>\<bbb-I\><rsub|x\<geqslant\>0>\<bbb-I\><rsub|1\<less\>y\<less\>2>>.
    D'un part

    <\eqnarray*>
      <tformat|<cwith|1|4|2|2|cell-halign|l>|<table|<row|<cell|<big|int><rsub|\<bbb-R\><rsup|2>>f(x,y)\<mathd\>x\<mathd\>y>|<cell|=
      <big|int><rsub|\<bbb-R\>><left|(><big|int><rsub|\<bbb-R\>>x
      e<rsup|-x*y>\<bbb-I\><rsub|x\<geqslant\>0>\<mathd\>x<right|)>\<bbb-I\><rsub|1\<less\>y\<less\>2>\<mathd\>y>|<cell|>>|<row|<cell|>|<cell|=<big|int><rsub|\<bbb-R\>><left|(><big|int><rsub|\<bbb-R\>>y<rsup|2>*x
      e<rsup|-x*y>\<bbb-I\><rsub|x\<geqslant\>0>\<mathd\>
      x<right|)><frac|\<bbb-I\><rsub|1\<less\>y\<less\>2>|y<rsup|2>>\<mathd\>y>|<cell|>>|<row|<cell|>|<cell|=<big|int><rsub|\<bbb-R\>><left|(><big|int><rsub|\<bbb-R\>>x
      e<rsup|-x*>\<bbb-I\><rsub|x\<geqslant\>0>\<mathd\>x<right|)><frac|\<bbb-I\><rsub|1\<less\>y\<less\>2>|y<rsup|2>>\<mathd\>y>|<cell|>>|<row|<cell|>|<cell|=<big|int><rsub|1><rsup|2><frac|\<mathd\>y|y<rsup|2>>=<frac|1|2>
      .>|<cell|>>>>
    </eqnarray*>

    D'autre part

    <\eqnarray>
      <tformat|<cwith|1|2|2|2|cell-halign|l>|<table|<row|<cell|<big|int><rsub|\<bbb-R\><rsup|2>>f(x,y)\<mathd\>x\<mathd\>y>|<cell|=
      <big|int><rsub|0><rsup|+\<infty\>>x<left|(><big|int><rsub|1><rsup|2>
      e<rsup|-x*y>\<mathd\>y<right|)>\<mathd\>x>|<cell|>>|<row|<cell|>|<cell|=<big|int><rsub|0><rsup|+\<infty\>>(e<rsup|-x>-e<rsup|-2*x>)\<mathd\>x=<frac|1|2>>|<cell|.>>>>
    </eqnarray>
  </example>

  <\example>
    Voyons un contre-exemple � l'utilisation de Fubini dans un cas o�
    l'int�grale double n'est pas d�fini. Soit

    <\equation*>
      f(x,y)=<frac|x<rsup|2>-y<rsup|2>|(x<rsup|2>+y<rsup|2>)<rsup|2>>
    </equation*>

    alors <math|I=<big|int><rsub|0><rsup|1><big|int><rsub|0><rsup|1>f(x,y)\<mathd\>x\<mathd\>y>
    n'est pas bien d�fini car

    <\equation*>
      <big|int><rsub|0><rsup|1><big|int><rsub|0><rsup|1>\|f(x,y)\|\<mathd\>x\<mathd\>y=<big|int><rsub|0><rsup|1><left|(><big|int><rsub|0><rsup|y><frac|y<rsup|2>-x<rsup|2>|(x<rsup|2>+y<rsup|2>)<rsup|2>>\<mathd\>x<right|)>\<mathd\>y+<big|int><rsub|0><rsup|1><left|(><big|int><rsub|0><rsup|x><frac|x<rsup|2>-y<rsup|2>|(x<rsup|2>+y<rsup|2>)<rsup|2>>\<mathd\>y<right|)>\<mathd\>x
    </equation*>

    <\equation*>
      =<big|int><rsub|0><rsup|1><left|(><frac|1|y>-<frac|1|1+y<rsup|2>><right|)>\<mathd\>y=+\<infty\>
    </equation*>

    Or, les int�grales\ 

    <\equation*>
      I<rsub|1>=<big|int><rsub|0><rsup|1><left|(><big|int><rsub|0><rsup|1><frac|x<rsup|2>-y<rsup|2>|(x<rsup|2>+y<rsup|2>)<rsup|2>>\<mathd\>x<right|)>\<mathd\>y,<space|2em>I<rsub|2>=<big|int><rsub|0><rsup|1><left|(><big|int><rsub|0><rsup|1><frac|x<rsup|2>-y<rsup|2>|(x<rsup|2>+y<rsup|2>)<rsup|2>>\<mathd\>y<right|)>\<mathd\>x
    </equation*>

    sont bien d�fini et il satisfont <math|I<rsub|1>=-I<rsub|2>>. En effet:

    <\equation*>
      <big|int><rsub|0><rsup|1><frac|x<rsup|2>-y<rsup|2>|(x<rsup|2>+y<rsup|2>)<rsup|2>>\<mathd\>y=<big|int><rsub|0><rsup|1><frac|1|(x<rsup|2>+y<rsup|2>)>\<mathd\>y-2<big|int><rsub|0><rsup|1><frac|y<rsup|2>|(x<rsup|2>+y<rsup|2>)<rsup|2>>\<mathd\>y=<frac|1|1+x<rsup|2>>
    </equation*>

    et alors

    <\equation*>
      I<rsub|2>=<big|int><rsub|0><rsup|1><frac|1|1+x<rsup|2>>\<mathd\>x=[arctan(x)]<rsub|0><rsup|1>=<frac|\<pi\>|4>=-I<rsub|1>
    </equation*>

    ce qui est in contradiction avec une application na�ve de Fubini (car
    dans ce cas <math|I<rsub|1>=I<rsub|2>=I=0>).
  </example>

  <section|Vecteurs al�atoires � densit�>

  Soit <math|(\<Omega\>,\<cal-A\>,\<bbb-P\>)> un espace probabilis�. Un
  vecteur al�atoire <math|X> de dimension <math|n> (ou dans
  <math|\<bbb-R\><rsup|n>>) est une application
  <math|X:\<Omega\>\<rightarrow\>\<bbb-R\><rsup|n>> telle que tout les
  ensembles de la forme <math|{X\<in\>B}={\<omega\>\<in\>\<Omega\>:
  X(\<omega\>)\<in\>B}> pour <math|B> Bor�lien de <math|\<bbb-R\><rsup|n>>
  appartiennent � la tribu <math|\<cal-A\>>. En particulier on peut calculer
  la probabilit� <math|\<bbb-P\>(X\<in\>B)> de l'�v�nement <math|{X\<in\>B}>
  (car <math|\<bbb-P\>(A)> est d�finie seulement pour
  <math|A\<in\>\<cal-A\>>). La loi de <math|X> est la l'application
  <math|\<mu\><rsub|X>:\<cal-B\>(\<bbb-R\><rsup|n>)\<rightarrow\>[0,1]> qui �
  tout <math|B> Bor�lien de <math|\<bbb-R\><rsup|n>> associe
  <math|\<bbb-P\>(X\<in\>B>). On appelle fonction de r�partition de <math|X>
  la fonction <math|F<rsub|X>:\<bbb-R\><rsup|n>\<rightarrow\>[0,1]> d�finie
  par

  <\equation*>
    F<rsub|X>(x<rsub|1>,\<ldots\>,x<rsub|n>)=\<bbb-P\>(X<rsub|1>\<leqslant\>x<rsub|1>,\<ldots\>,X<rsub|n>\<leqslant\>x<rsub|n>)
  </equation*>

  o� <math|(X<rsub|i>)<rsub|i=1,\<ldots\>,n>> sont les composantes de
  <math|X(\<omega\>)=(X<rsub|1>(\<omega\>),\<ldots\>,X<rsub|n>(\<omega\>))>
  (donc des v.a. r�elles). La fonction de r�partition caract�rise la loi de
  <math|X>, i.e. n'importe quel �v�nement <math|{X\<in\>B}> peut �tre calcul�
  � l'aide de <math|F<rsub|X>>.

  <\example>
    Soit <math|n=2> et <math|B=[x<rsub|1,>y<rsub|1>]\<times\>[x<rsub|2>,y<rsub|2>]>
    alors il est facile de v�rifier que

    <\equation*>
      \<bbb-P\>(X\<in\>B)=\<bbb-P\>(X<rsub|1>\<in\>[x<rsub|1>,y<rsub|1>],Y\<in\>[x<rsub|2>,y<rsub|2>])=F<rsub|X>(y<rsub|1>,y<rsub|2>)-F<rsub|X>(y<rsub|1>,x<rsub|2>)-F<rsub|X>(x<rsub|1>,y<rsub|2>)+F<rsub|X>(x<rsub|1>,x<rsub|2>)
    </equation*>

    en utilisant les propri�t�s �l�mentaires des probabilit�s (en particulier
    <math|\<bbb-P\>(A\<cup\>B)=\<bbb-P\>(A)+\<bbb-P\>(B)-\<bbb-P\>(A\<cap\>B)>).
  </example>

  <\definition>
    On dit que <math|X> admet une densit�
    <math|f<rsub|X>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsub|+>> ssi
    pour tout Bor�lien <math|B\<in\>\<cal-B\>(\<bbb-R\><rsup|n>)> (la tribu
    Bor�lienne de <math|\<bbb-R\><rsup|n>>) on peut exprimer la probabilit�
    de l'�v�nement <math|{X\<in\>B}> par une int�grale sur <math|B> de
    <math|f<rsub|X>>:

    <\equation*>
      \<bbb-P\>(X\<in\>B)=<big|int><rsub|B>f<rsub|X>(x<rsub|1,>\<ldots\>,x<rsub|n>)\<mathd\>x<rsub|1>\<cdots\>\<mathd\>x<rsub|n>
      .
    </equation*>

    \;
  </definition>

  La densit�, si elle existe, est unique et caract�rise la loi de <math|X>.
  On a que

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>f<rsub|X>(x<rsub|1,>\<ldots\>,x<rsub|n>)\<mathd\>x<rsub|1>\<cdots\>\<mathd\>x<rsub|n>
    =\<bbb-P\>(X\<in\>\<bbb-R\><rsup|n>)=1
  </equation*>

  en particulier <math|f<rsub|X>> est int�grable. La fonction de r�partition
  <math|F<rsub|X>:\<bbb-R\><rsup|n>\<rightarrow\>[0,1]> de <math|X> est donn�
  par

  <\equation*>
    F<rsub|X>(t<rsub|1>,\<ldots\>,t<rsub|n>)<above|=|def>\<bbb-P\>(X<rsub|1>\<leqslant\>t<rsub|1>,\<ldots\>,X<rsub|n>\<leqslant\>t<rsub|n>)=<big|int><rsub|-\<infty\>><rsup|t<rsub|1>>\<cdots\><big|int><rsub|-\<infty\>><rsup|t<rsub|n>>f<rsub|X>(x<rsub|1>,\<ldots\>,x<rsub|n>)\<mathd\>x<rsub|1>\<cdots\>\<mathd\>x<rsub|n>
    .
  </equation*>

  c'est la probabilit� de l'�v�nement <math|{X\<in\>B}> pour
  <math|B=]-\<infty\>,t<rsub|1>]\<times\>\<cdots\>\<times\>]-\<infty\>,t<rsub|n>]\<subseteq\>\<bbb-R\><rsup|n>>.
  On peut d�terminer la densit� en d�rivant la fonction de r�partition:

  <\equation*>
    f<rsub|X>(t<rsub|1>,\<ldots\>,t<rsub|n>)=<frac|\<partial\><rsup|n><rsup|>|\<partial\>t<rsub|1>\<cdots\>\<partial\>t<rsub|n>>F<rsub|X>(t<rsub|1>,\<ldots\>,t<rsub|n>)
  </equation*>

  formule valable en tout point de continuit� de
  <math|\<partial\><rsup|n>F<rsub|X>(t<rsub|1>,\<ldots\>,t<rsub|n>)/\<partial\>t<rsub|1>\<cdots\>\<partial\>t<rsub|n>>.\ 

  L'interpr�tation intuitive de la densit� <math|f<rsub|X>> est la suivante:
  si <math|\<Delta\>x<rsub|i>\<ll\>1> alors la probabilit� de l'�v�nement
  <math|{X<rsub|i>\<in\>[x<rsub|i>,x<rsub|i>+\<Delta\>x<rsub|i>] pour
  i=1,\<ldots\>,n}> est approchable par

  <\eqnarray*>
    <tformat|<cwith|1|1|2|2|cell-valign|B>|<cwith|1|3|2|2|cell-halign|l>|<table|<row|<cell|\<bbb-P\>(X<rsub|i>\<in\>[x<rsub|i>,x<rsub|i>+\<Delta\>x<rsub|i>]
    pour i=1,\<ldots\>,n)>|<cell|=<big|int><rsub|x<rsub|1>><rsup|x<rsub|1>+\<Delta\>x<rsub|1>>\<ldots\><big|int><rsub|x<rsub|n>><rsup|x<rsub|n>+\<Delta\>x<rsub|n>>f<rsub|X>(t<rsub|1>,\<ldots\>,t<rsub|n>)\<mathd\>t<rsub|1>\<cdots\>\<mathd\>t<rsub|n>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|\<simeq\>f<rsub|X>(x<rsub|1>,\<ldots\>,x<rsub|n>)\<Delta\>x<rsub|1>\<cdots\>\<Delta\>x<rsub|n>
    .>|<cell|>>>>
  </eqnarray*>

  La densit� est donc proportionnelle � la mesure de probabilit� d'un petit
  voisinage du point <math|(x<rsub|1>,\<ldots\>,x<rsub|n>)>. Autrement dit,
  si <math|B<rsub|n>(x,\<delta\>)={y\<in\>\<bbb-R\><rsup|n> :
  \|x-y\|\<leqslant\>\<delta\>}\<subseteq\>\<bbb-R\><rsup|n>> est la boule
  <math|n>-dimensionnelle de rayon <math|\<delta\>> centr�e en
  <math|x\<in\>\<bbb-R\><rsup|n>> et <math|><math|V<rsub|n>(\<delta\>)=\|B<rsub|n>(x,\<delta\>)\|>
  le volume de <math|B(x,\<delta\>)>, i.e.
  <math|V<rsub|n>(\<delta\>)=<big|int><rsub|B<rsub|n>(x,\<delta\>)>\<mathd\>t<rsub|1>\<cdots\>\<mathd\>t<rsub|n>>
  alors si <math|\<delta\>\<ll\>1> on a l'approximation
  <math|\<bbb-P\>(X\<in\>B(x,\<delta\>))\<simeq\>f<rsub|X>(x)
  V<rsub|n>(\<delta\>)>.

  <\example>
    Soit <math|Z=(X,Y):\<Omega\>\<rightarrow\>\<bbb-R\><rsup|2>> un couple
    al�atoire dont la fonction de r�partition est donn�e par

    <\equation*>
      F<rsub|Z>(x,y)=q(x)*q(y)
    </equation*>

    o� <math|q(s)=max(0,min(s,1))>. Alors

    <\equation*>
      <frac|\<partial\><rsup|2>|\<partial\>x\<partial\>y>F<rsub|Z>(x,y)=<choice|<tformat|<table|<row|<cell|<with|mode|text|non
      definie>>|<cell| si <math|x=0,1> ou
      <math|y=0,1>>>|<row|<cell|1>|<cell|<with|mode|text|si
      <math|(x,y)\<in\>]0,1[<rsup|2>>>>>|<row|<cell|0>|<cell|<with|mode|text|autrement>>>>>>
    </equation*>

    et on peut verifier que

    <\equation*>
      F<rsub|Z>(x,y)=<big|int><rsub|-\<infty\>><rsup|x><big|int><rsub|-\<infty\>><rsup|y>\<bbb-I\><rsub|]0,1[>(z<rsub|1>)
      \<bbb-I\><rsub|]0,1[>(z<rsub|2>)\<mathd\>z<rsub|1>\<mathd\>z<rsub|2> .
    </equation*>

    Donc <math|f<rsub|Z>(z<rsub|1>,z<rsub|2>)=\<bbb-I\><rsub|]0,1[>(z<rsub|1>)
    \<bbb-I\><rsub|]0,1[>(z<rsub|2>)> est la densit� de <math|Z>.
  </example>

  <\definition>
    Soit <math|D\<subseteq\>\<bbb-R\><rsup|n>> un ensemble mesurable et tel
    que <math|Vol(D)=<big|int><rsub|D>\<mathd\>x\<gtr\>0> (son volume est
    positif). On dit que <math|X:\<Omega\>\<rightarrow\>\<bbb-R\><rsup|n>> a
    une loi uniforme sur <math|D> si <math|X> admet densit�

    <\equation*>
      f<rsub|X>(x)=<frac|\<bbb-I\><rsub|D>(x)|Vol(D)>.
    </equation*>
  </definition>

  <subsection|Densit�s marginales>

  <\definition>
    Si <math|Z> est un vecteur al�atoire dans <math|\<bbb-R\><rsup|n>>
    admettant une densit� <math|f<rsub|Z>> alors tout sous-vecteurs <math|Y>
    de <math|Z> de dimension <math|k\<leqslant\>n> admettent une densit�
    qu'on obtient en int�grant <math|f<rsub|Z>> par rapport aux composantes
    qui ne figurent pas dans <math|Y>. On appelle cette densit� la densit�
    marginale de <math|Y>. Explicitement si
    <math|Y=(Z<rsub|1>,\<ldots\>,Z<rsub|k>)> alors

    <\equation*>
      \<bbb-P\>(Y\<in\>B)=\<bbb-P\>((Z<rsub|1>,\<ldots\>,Z<rsub|k>)\<in\>B)=\<bbb-P\>(Z\<in\>B\<times\>\<bbb-R\><rsup|n-k>)=<big|int><rsub|(z<rsub|1>,\<ldots\>,z<rsub|k>)\<in\>B>f<rsub|Z>(z<rsub|1>,\<ldots\>,z<rsub|n>)\<mathd\>z<rsub|1>\<cdots\>\<mathd\>z<rsub|n>
    </equation*>

    <\equation*>
      =<big|int><rsub|B><left|(><big|int><rsub|\<bbb-R\><rsup|n-k>>f<rsub|Z>(z<rsub|1>,\<ldots\>,z<rsub|k>,z<rsub|k+1>,\<ldots\>,z<rsub|n>)\<mathd\>z<rsub|k+1>\<cdots\>\<mathd\>z<rsub|n><right|)>\<mathd\>z<rsub|1>\<cdots\>\<mathd\>z<rsub|k>
    </equation*>

    donc <math|f<rsub|Y>(y<rsub|1>,\<ldots\>,y<rsub|k>)=><with|mode|math|<big|int><rsub|\<bbb-R\><rsup|n-k>>f<rsub|Z>(y<rsub|1>,\<ldots\>y<rsub|k>,z<rsub|k+1>,\<ldots\>,z<rsub|n>)\<mathd\>z<rsub|k+1>\<cdots\>\<mathd\>z<rsub|n>>.
  </definition>

  <strong|Cas particulier (<math|n=2>).> Soit <math|Z=(X,Y)> un vecteur
  al�atoire bidimensionnel de densit� <math|f<rsub|Z>>. La densit� marginale
  de <math|X> est <math|f<rsub|X>(x)=<big|int><rsub|\<bbb-R\>>f<rsub|Z>(x,y)\<mathd\>y>
  et la densit� marginale de <math|Y> est
  <math|f<rsub|Z>(y)=<big|int><rsub|\<bbb-R\>>f<rsub|Z>(x,y)\<mathd\>x>.

  <\example>
    Consid�rons le couple <math|(X,Y)> de densit�

    <\equation*>
      f<rsub|(X,Y)>(x,y)=\<alpha\><frac|e<rsup|-y>|2
      <sqrt|x>>\<bbb-I\><rsub|0\<less\>x\<less\>y<rsup|2>>*\<bbb-I\><rsub|y\<gtr\>0>
    </equation*>

    <\itemize-dot>
      <item>D�terminer <math|\<alpha\>\<gtr\>0> t.q. <math|f<rsub|(X,Y)>>
      soit correctement normalis�e.\ 

      <item>D�terminer les densit�s marginales <math|f<rsub|X>> et
      <math|f<rsub|Y>>.

      <item>Calculer <math|\<bbb-P\>(X\<gtr\>1)>.
    </itemize-dot>

    Calculons

    <\eqnarray>
      <tformat|<cwith|1|2|2|3|cell-halign|l>|<table|<row|<cell|I>|<cell|=<big|int><rsub|\<bbb-R\><rsup|2>>f<rsub|(X,Y)>(x,y)\<mathd\>x\<mathd\>y=\<alpha\><big|int><rsub|0><rsup|\<infty\>><left|(><big|int><rsub|0><rsup|y<rsup|2>><frac|\<mathd\>x|2<sqrt|x>><right|)>e<rsup|-y>\<mathd\>y>|<cell|>>|<row|<cell|>|<cell|=\<alpha\><big|int><rsub|0><rsup|\<infty\>>y*e<rsup|-y>\<mathd\>y=\<alpha\>>|<cell|>>>>
    </eqnarray>

    donc <math|\<alpha\>=1>.

    <\eqnarray>
      <tformat|<table|<row|<cell|f<rsub|X>(x)=<big|int><rsub|\<bbb-R\>>>|<cell|f<rsub|(X,Y)>(x,y)\<mathd\>y=<frac|\<bbb-I\><rsub|x\<gtr\>0>|2<sqrt|x>><big|int><rsub|<sqrt|x>><rsup|\<infty\>>e<rsup|-y>\<mathd\>y=<frac|e<rsup|-<sqrt|x>>|2<sqrt|x>>\<bbb-I\><rsub|x\<gtr\>0>>|<cell|>>>>
    </eqnarray>

    <\eqnarray>
      <tformat|<table|<row|<cell|f<rsub|Y>(y)=>|<cell|<big|int><rsub|\<bbb-R\>>f<rsub|(X,Y)>(x,y)\<mathd\>x=\<bbb-I\><rsub|y\<gtr\>0>*e<rsup|-y><big|int><rsub|0><rsup|y<rsup|2>><frac|\<mathd\>x|2<sqrt|x>>=y*e<rsup|-y>*\<bbb-I\><rsub|y\<gtr\>0>>|<cell|>>>>
    </eqnarray>

    <\equation*>
      \<bbb-P\>(X\<gtr\>1)=<big|int><rsub|1><rsup|\<infty\>>f<rsub|X>(x)\<mathd\>x=<big|int><rsub|1><rsup|\<infty\>><frac|e<rsup|-<sqrt|x>>|2<sqrt|x>>\<mathd\>x=<frac|1|e>
    </equation*>
  </example>

  <\example>
    Deux densit�s <math|f<rsub|X,Y>(x,y)> et <math|g<rsub|X,Y>(x,y)> peuvent
    avoir les m�mes marginales. Par exemple il est facile de montrer que les
    densit�s

    <\equation*>
      f<rsub|X,Y>(x,y)=<frac|1|2\<pi\>>e<rsup|-(x<rsup|2>+y<rsup|2>)/2>,<space|2em>g<rsub|X,Y>(x,y)=<frac|1|2\<pi\>>e<rsup|-(x<rsup|2>+y<rsup|2>)/2>[1+x*y*\<bbb-I\><rsub|[-1,1]>(x)\<bbb-I\><rsub|[-1,1]>(y)]
    </equation*>

    ont les m�mes marginales (<math|f<rsub|X>=g<rsub|X>> et
    <math|f<rsub|Y>=g<rsub|Y>>). En effet en utilisant l'integrale
    remarquable

    <\equation*>
      <big|int><rsub|\<bbb-R\>><frac|1|<sqrt|2\<pi\>>>e<rsup|-x<rsup|2>/2>\<mathd\>x=1
    </equation*>

    on obtient que

    <\equation*>
      f<rsub|X>(x)=<big|int><rsub|\<bbb-R\>>f<rsub|X,Y>(x,y)\<mathd\>y=<frac|1|<sqrt|2\<pi\>>>e<rsup|-x<rsup|2>/2>
    </equation*>

    et

    <\equation*>
      g<rsub|X>(x)=<big|int><rsub|\<bbb-R\>>g<rsub|X,Y>(x,y)\<mathd\>y=<big|int><rsub|\<bbb-R\>><frac|1|2\<pi\>>e<rsup|-(x<rsup|2>+y<rsup|2>)/2>[1+x*y*\<bbb-I\><rsub|[-1,1]>(x)\<bbb-I\><rsub|[-1,1]>(y)]\<mathd\>y
    </equation*>

    <\equation*>
      =<frac|1|<sqrt|2\<pi\>>>e<rsup|-x<rsup|2>/2><big|int><rsub|\<bbb-R\>><frac|1|<sqrt|2\<pi\>>>e<rsup|-y<rsup|2>/2>[1+x*y*\<bbb-I\><rsub|[-1,1]>(x)\<bbb-I\><rsub|[-1,1]>(y)]\<mathd\>y=<frac|1|<sqrt|2\<pi\>>>e<rsup|-x<rsup|2>/2>
    </equation*>

    car

    <\equation*>
      <big|int><rsub|\<bbb-R\>><frac|1|<sqrt|2\<pi\>>>e<rsup|-y<rsup|2>/2>y*\<bbb-I\><rsub|[-1,1]>(y)\<mathd\>y=0
    </equation*>

    par sym�trie.
  </example>

  <subsection|Densit� et esp�rance conditionnelle>

  <\definition>
    Soit <math|Z=(X,Y)> un vecteur al�atoire dans
    <math|\<bbb-R\><rsup|m>\<times\>\<bbb-R\><rsup|n>> admettant une densit�
    <math|f<rsub|Z>>. Soient <math|f<rsub|X>> et <math|f<rsub|Y>> les
    densit�s marginales des vecteurs <math|X> et <math|Y>. On appelle densit�
    conditionnelle de <math|X> sachant <math|Y=y> la densit� donn�e par

    <\equation*>
      f<rsub|X\|Y=y>(x)=<frac|f<rsub|(X,Y)>(x,y)|f<rsub|Y>(y)><space|2em>pour
      tout y \<in\>\<bbb-R\><rsup|n> t.q. f<rsub|Y>(y)\<gtr\>0.
    </equation*>
  </definition>

  Cette d�finition est motiv�e par le fait que, si <math|\<delta\>\<ll\>1>:

  <\equation*>
    \<bbb-P\>(X\<in\>B<rsub|m>(x,\<delta\>)\|Y\<in\>B<rsub|n>(y,\<delta\>))=<frac|\<bbb-P\>(X\<in\>B<rsub|m>(x,\<delta\>),Y\<in\>B<rsub|n>(y,\<delta\>))|\<bbb-P\>(Y\<in\>B<rsub|n>(y,\<delta\>))>\<simeq\><frac|f<rsub|(X,Y)>(x,y)V<rsub|m>(\<delta\>)V<rsub|n>(\<delta\>)|f<rsub|Y>(y)V<rsub|n>(\<delta\>)>
  </equation*>

  <\equation*>
    \<simeq\><frac|f<rsub|(X,Y)>(x,y)|f<rsub|Y>(y)>V<rsub|m>(\<delta\>)=f<rsub|X\|Y=y>(x)V<rsub|m>(\<delta\>)
  </equation*>

  donc la densit� conditionnelle est proportionnelle � la probabilit�
  conditionnelle de trouver <math|X > dans une petite boule centr�e en
  <math|x> sachant que <math|Y> est dans une petite boule centr�e en
  <math|y>.

  <\example>
    <label|ex:double-exp>Consid�rons <math|Z=(X,Y)> de densit�
    <math|f<rsub|Z>(x,y)=2 \<lambda\><rsup|2>e<rsup|-\<lambda\>(x+y)>\<bbb-I\><rsub|0\<less\>x\<less\>y>>.
    Quelle est la densit� conditionnelle de <math|X> sachant <math|Y=y>?

    Calculons d'abord <math|f<rsub|Y>(y)>:

    <\equation*>
      f<rsub|Y>(y)=<big|int><rsub|\<bbb-R\>>2
      \<lambda\><rsup|2>e<rsup|-\<lambda\>(x+y)>\<bbb-I\><rsub|0\<less\>x\<less\>y>\<mathd\>x=2\<lambda\>e<rsup|-\<lambda\>y>\<bbb-I\><rsub|y\<gtr\>0><big|int><rsub|0><rsup|y>\<lambda\>e<rsup|-\<lambda\>x>\<mathd\>x
      = 2 \<lambda\> e<rsup|-\<lambda\>y>(1-e<rsup|-\<lambda\>y>)\<bbb-I\><rsub|y\<gtr\>0>
    </equation*>

    Il vient que

    <\equation*>
      f<rsub|X\|Y=y>(x)=<frac|2 \<lambda\><rsup|2>e<rsup|-\<lambda\>(x+y)>\<bbb-I\><rsub|0\<less\>x\<less\>y>|2
      \<lambda\> e<rsup|-\<lambda\>y>(1-e<rsup|-\<lambda\>y>)\<bbb-I\><rsub|y\<gtr\>0>>=<frac|\<lambda\>e<rsup|-\<lambda\>x>\<bbb-I\><rsub|0\<less\>x\<less\>y>|1-e<rsup|-\<lambda\>y>><space|2em>pour
      tout y\<gtr\>0.
    </equation*>

    \;
  </example>

  <\definition>
    Une famille <math|(X<rsub|i>)<rsub|i=1,\<ldots\>,n>> de v.a. est
    ind�pendante ssi pour tout <math|B<rsub|i>>, <math|i=1,\<ldots\>,n,> \ on
    a que les �v�nements <math|{X<rsub|i>\<in\>B<rsub|i>}<rsub|i=1,\<ldots\>,n>>
    sont ind�pendants, i.e.:

    <\equation*>
      \<bbb-P\>(X<rsub|1>\<in\>B<rsub|1>,\<ldots\>,X<rsub|n>\<in\>B<rsub|n>)=\<bbb-P\>(X<rsub|1>\<in\>B<rsub|1>)\<cdots\>\<bbb-P\>(X<rsub|n>\<in\>B<rsub|n>).
    </equation*>
  </definition>

  Dans cette d�finition les v.a.s <math|X<rsub|i>> peuvent �tre r�elles ou
  bien des vecteurs al�atoires elles m�mes. Les v.a. <math|X,Y> sont
  ind�pendantes ssi <math|F<rsub|(X,Y)>(x,y)=F<rsub|X>(x) F<rsub|Y>(y)>. Pour
  les v.a. avec densit� on a la proposition suivante.

  <\proposition>
    Soient <math|X> et <math|Y> 2 v.a. admettant respectivement les densit�s
    <math|f<rsub|X>> et <math|f<rsub|Y>>. Alors <math|X> et <math|Y> sont
    ind�pendantes ssi <math|f<rsub|X\|Y=y>> ne d�pend de <math|y>. Dans ce
    cas l� <math|f<rsub|X\|Y=y>(x)=f<rsub|X>(x)>.
  </proposition>

  <\proof>
    Si <math|X,Y> sont ind�pendantes alors
    <math|F<rsub|(X,Y)>(x,y)=F<rsub|X>(x)F<rsub|Y>(y)> et donc on a que le
    couple admet la densit� jointe <math|f<rsub|(X,Y)>(x,y)=f<rsub|X>(x)*f<rsub|Y>(y)>
    car\ 

    <\equation*>
      <frac|\<partial\><rsup|2>|\<partial\>x\<partial\>y>F<rsub|(X,Y)>(x,y)=<frac|\<partial\><rsup|2>|\<partial\>x\<partial\>y>F<rsub|X>(x)F<rsub|Y>(y)=f<rsub|X>(x)*f<rsub|Y>(y)
    </equation*>

    et donc <math|f<rsub|X\|Y=y>(x)=f<rsub|(X,Y)>(x,y)/f<rsub|Y>(y)=f<rsub|X>(x)>
    qui ne d�pend pas de <math|y>. R�ciproquement on a
    <math|f<rsub|(X,Y)>(x,y)=f<rsub|X\|Y=y>(x)f<rsub|Y>(y)> et si la densit�
    conditionnelle ne d�pends pas de <math|y>

    <\equation*>
      f<rsub|X>(x)=<big|int><rsub|\<bbb-R\>>f<rsub|(X,Y)>(x,y)\<mathd\>y=f<rsub|X\|Y=y>(x)<big|int><rsub|\<bbb-R\>>f<rsub|Y>(y)\<mathd\>y=f<rsub|X\|Y=y>(x)
    </equation*>

    et donc <math|<with|mode|text|<math|f<rsub|(X,Y)>(x,y)=f<rsub|X>(x)f<rsub|Y>(y)>>>
    qui implique l'ind�pendance de <math|X> et <math|Y>.
  </proof>

  <\proposition>
    Soient <math|X> et <math|Y> deux v.a. avec densit� jointe
    <math|f<rsub|(X,Y)>(x,y)>. Alors <math|X> et <math|Y> sont ind�pendantes
    ssi il existe deux applications <math|g,h> telles que
    <math|f<rsub|(X,Y)>(x,y)=g(x) h(y)> pour tout couple <math|(x,y)> t.q.
    <math|f<rsub|(X,Y)>(x,y)\<gtr\>0>.
  </proposition>

  <\proof>
    Si <math|X> et <math|Y> sont ind�pendantes alors on peut prendre
    <math|g=f<rsub|X>> et <math|h=f<rsub|Y>>. R�ciproquement: supposons que
    <math|f<rsub|(X,Y)>(x,y)=g(x)h(y)>:

    <\equation*>
      f<rsub|X>(x)=<big|int><rsub|\<bbb-R\>>f<rsub|(X,Y)>(x,y)\<mathd\>y=g(x)<big|int><rsub|\<bbb-R\>>h(y)\<mathd\>y,
      <space|2em>f<rsub|Y>(y)=h(y)<big|int><rsub|\<bbb-R\>>g(x)\<mathd\>x
    </equation*>

    <\equation*>
      1=<big|int>f<rsub|X>(x)\<mathd\>x=<big|int><rsub|\<bbb-R\>>g(x)\<mathd\>x<big|int><rsub|\<bbb-R\>>h(y)\<mathd\>y
    </equation*>

    et donc <math|f<rsub|(X,Y)>(x,y)=f<rsub|X>(x)*f<rsub|Y>(y)>.
  </proof>

  <\example>
    Soit <math|(X,Y)> un couple de v.a. dans <math|\<bbb-R\><rsup|2>>
    admettant pour densit� <math|f<rsub|(X,Y)>(x,y)=8*x*y*\<bbb-I\><rsub|0\<less\>x\<less\>y\<less\>1>>.
    <math|X> et <math|Y> ne sont pas ind�pendantes car la fonction
    <math|\<bbb-I\><rsub|0\<less\>x\<less\>y\<less\>1>> ne peut pas s'�crire
    sous la forme d'un produit.
  </example>

  <subsection|Esp�rance conditionnelle>

  Si <math|X> est un vecteur al�atoire dans <math|\<bbb-R\><rsup|n>>
  admettant <math|f<rsub|X>> comme densit� et
  <math|g:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>> est une fonction positive
  alors on d�fini l'esp�rance <math|\<bbb-E\>[g(X)]> de la v.a. <math|g(X)>
  par la formule

  <\equation>
    \<bbb-E\>[g(X)]=<big|int><rsub|\<bbb-R\><rsup|n>>g(x)f<rsub|X>(x)\<mathd\>x<label|eq:expectation>
  </equation>

  qui est toujours une quantit� positive bien d�finie m�me si elle peut
  prendre la valeur <math|+\<infty\>>. Si <math|g> est de signe quelconque et
  <math|\<bbb-E\>[\|g(X)\|]\<less\>\<infty\>> alors on dit que <math|g(X)>
  est int�grable et on peut d�finir l'esp�rance de <math|g(X)> par la m�me
  formule (<reference|eq:expectation>). \ Si <math|g(X)> n'est pas int�grable
  l'int�grale dans la formule (<reference|eq:expectation>) n'est pas bien
  d�finie.\ 

  <\definition>
    Soit <math|Z=(X,Y)> un vecteur al�atoire de
    <math|\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|m>>. Soit
    <math|g:<with|mode|text|<math|\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|m>\<rightarrow\>\<bbb-R\>>>>
    une fonction telle que <math|g(X,Y)> est int�grable, c-�-d
    <math|\<bbb-E\>\|g(X,Y)\|\<less\>+\<infty\>>. On appellera esp�rance
    conditionnelle de <math|g(X,Y)> sachant <math|Y> et on notera
    <math|\<bbb-E\>[g(X,Y)\|Y]> la v.a. <math|\<Psi\>(Y)> o�

    <\equation*>
      \<Psi\>(y) =<big|int><rsub|\<bbb-R\><rsup|n>>g(x,y)f<rsub|X\|Y=y>(x)\<mathd\>x,
      <space|2em>\<forall\>y\<in\>\<bbb-R\><rsup|m> : f<rsub|Y>(y)\<gtr\>0 .
    </equation*>
  </definition>

  Il est importante de remarquer que l'esp�rance conditionnelle
  <math|\<bbb-E\>[g(X\<comma\>Y)\|Y]> est une variable al�atoire.\ 

  <\remark>
    Par convenience on note <math|\<bbb-E\>[g(X)\|Y=y]=<big|int><rsub|\<bbb-R\><rsup|n>>g(x,y)f<rsub|X\|Y=y>(x)\<mathd\>x>
    l'esperance par rapport � la loi conditionelle de <math|X> sachant
    <math|Y=y>. Cette esperance est une fonction r�elle de <math|y>.
  </remark>

  <\example>
    Revenons � l'exemple <reference|ex:double-exp> et calculons
    <math|\<bbb-E\>[X*Y\|Y]> (il faut donc prendre <math|g(x,y)=x*y>).
    V�rifions d'abord la condition d'integrabilit� (qui donne sens au calcul
    de l'esp�rance conditionnelle):

    <\equation*>
      \<bbb-E\>[\|X*Y\|]=<big|int><rsub|\<bbb-R\><rsup|2>>\|x*y\|f<rsub|(X,Y)>(x,y)\<mathd\>x\<mathd\>y=2\<lambda\><rsup|2><big|int><big|int>x
      y e<rsup|-\<lambda\>(x+y)>\<bbb-I\><rsub|0\<less\>x\<less\>y>\<mathd\>x\<mathd\>y
    </equation*>

    <\equation*>
      \<leqslant\>2\<lambda\><rsup|2><big|int><rsub|0><rsup|\<infty\>><big|int><rsub|0><rsup|\<infty\>>x
      y e<rsup|-\<lambda\>(x+y)>\<mathd\>x\<mathd\>y=2\<lambda\><rsup|2><left|(><big|int><rsub|0><rsup|\<infty\>>x
      \ e<rsup|-\<lambda\>x>\<mathd\>x<right|)><rsup|2>\<less\>\<infty\>
    </equation*>

    donc <math|X*Y> est bien int�grable.\ 

    <\equation*>
      \<Psi\>(y)=<big|int><rsub|\<bbb-R\>>x*y*f<rsub|X\|Y=y>(x)\<mathd\>x=y
      \<bbb-I\><rsub|y\<gtr\>0><big|int><rsub|\<bbb-R\>>x*<frac|\<lambda\>e<rsup|-\<lambda\>x>\<bbb-I\><rsub|0\<less\>x\<less\>y>|1-e<rsup|-\<lambda\>y>>*\<mathd\>x=<frac|\<lambda\>y|1-e<rsup|-\<lambda\>y>>*\<bbb-I\><rsub|y\<gtr\>0>*<big|int><rsub|0><rsup|y>x*e<rsup|-\<lambda\>x>\<mathd\>x
    </equation*>

    <\equation*>
      \<Psi\>(y)=<frac|y|1-e<rsup|-\<lambda\>y>>*\<bbb-I\><rsub|y\<gtr\>0>*<frac|1-e<rsup|-\<lambda\>y>-\<lambda\>y*e<rsup|\<um\>\<lambda\>y>|\<lambda\>>
    </equation*>

    et donc

    <\equation*>
      \<bbb-E\>[X Y\|Y]=<frac|Y|1-e<rsup|-\<lambda\>Y>>*<frac|1-e<rsup|-\<lambda\>Y>-\<lambda\>Y*e<rsup|\<um\>\<lambda\>Y>|\<lambda\>>
    </equation*>
  </example>

  <\proposition>
    Soit <math|h> une application de <math|\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|m>\<rightarrow\>\<bbb-R\>>
    telle que <math|g(X,Y)h(Y)> est int�grable. Alors

    <\enumerate-numeric>
      <item><math|\<bbb-E\>[g(X,Y)\|Y]h(Y)=\<bbb-E\>[g(X,Y)h(Y)\|Y]>

      <item><with|mode|math|\<bbb-E\>[\<bbb-E\>[g(X,Y)\|Y]h(Y)]=\<bbb-E\>[g(X,Y)h(Y)]>
    </enumerate-numeric>
  </proposition>

  <\proof>
    Soit <math|\<Phi\>(Y)=\<bbb-E\>[g(X,Y)\|Y]> et
    <math|\<Psi\>(Y)=><with|mode|math|\<bbb-E\>[g(X,Y)h(Y)\|Y]> o�

    <\equation*>
      \<Phi\>(y)=<big|int><rsub|\<bbb-R\><rsup|n>>g(x,y)f<rsub|X\|Y=y>(x)\<mathd\>x,
      <space|2em>\<Psi\>(y)=<big|int><rsub|\<bbb-R\><rsup|n>>g(x,y)h(y)f<rsub|X\|Y=y>(x)\<mathd\>x
    </equation*>

    alors <math|\<Psi\>(y)=h(y)\<Phi\>(y)> qui donne la premi�re �galit�.
    Pour la deuxi�me on remarque que

    <\equation*>
      \<bbb-E\>[\<bbb-E\>[g(X,Y)\|Y]h(Y)]=\<bbb-E\>[\<Phi\>(Y)h(Y)]=\<bbb-E\>[\<Psi\>(Y)]=<big|int><rsub|\<bbb-R\><rsup|m>>\<Psi\>(y)f<rsub|Y>(y)\<mathd\>y
    </equation*>

    <\equation*>
      =<big|int><rsub|\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|m>>g(x,y)h(y)f<rsub|X\|Y=y>(x)f<rsub|Y>(y)\<mathd\>x\<mathd\>y=<big|int><rsub|\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|m>>g(x,y)h(y)f<rsub|(X,Y)>(x,y)\<mathd\>x\<mathd\>y
    </equation*>

    <\equation*>
      =\<bbb-E\>[g(X,Y)h(Y)]
    </equation*>

    par la d�finition de la densit� conditionnelle et d'esp�rance.
  </proof>

  <strong|Cas particuliers:>

  <\itemize-dot>
    <item><math|g(x,y)=x> et <math|h(y)=1>:
    <math|\<bbb-E\>[\<bbb-E\>[X\|Y]]=\<bbb-E\>[X]>

    <item><math|g(x,y)=1>, <math|h(Y)> int�grable:
    <math|\<bbb-E\>[h(Y)\|Y]=h(Y)>.
  </itemize-dot>

  <\example>
    Soient <math|X> et <math|Y> deux v.a. ind�pendantes de loi exponentielle
    de densit� <math|f(x)=\<lambda\> e<rsup|-\<lambda\>
    x>\<bbb-I\><rsub|x\<gtr\>0>> avec <math|\<lambda\>\<gtr\>0>. Calculons la
    densit� conditionnelle <math|f<rsub|X\|X+Y>> et l'esp�rance
    conditionnelle <math|\<bbb-E\>[X\|X+Y]>. Si <math|z\<less\>x>

    <\equation*>
      \<bbb-P\>(X+Y\<less\>z,X\<less\>x)=\<bbb-P\>(X+Y\<less\>z,X\<less\>z)=<big|int><rsub|0><rsup|z><big|int><rsub|0><rsup|z-u>f(u)f(v)\<mathd\>u\<mathd\>v
    </equation*>

    et si <math|z\<geqslant\>x>

    <\equation*>
      \<bbb-P\>(X+Y\<less\>z,X\<less\>x)=<big|int><rsub|0><rsup|x><big|int><rsub|0><rsup|z-u>f(u)f(v)\<mathd\>u\<mathd\>v
      .
    </equation*>

    Par cons�quent, pour <math|z\<geqslant\>x> la densit� jointe du couple
    <math|(X+Y,X)> est

    <\equation*>
      f<rsub|(X+Y,X)>(z,x)=<frac|\<partial\><rsup|2>|\<partial\>u
      \<partial\>v>\<bbb-P\>(X+Y\<less\>z,X\<less\>x)=f(z-x)f(x)=\<lambda\><rsup|2>e<rsup|-\<lambda\>*z>
    </equation*>

    et <math|f<rsub|(X+Y,X)>(z,x)=0> si <math|z\<less\>x>. Par ailleurs, la
    densit� de <math|X+Y> est la convolution de deux densit�s exponentielles,
    i.e. <math|f<rsub|X+Y>(z)=\<lambda\><rsup|2>z
    e<rsup|-\<lambda\>*z>\<bbb-I\><rsub|z\<gtr\>0>>. Donc la densit�
    conditionnelle de <math|X> sachant <math|X+Y> est

    <\equation*>
      f<rsub|X\|X+Y>(x\|z)=<frac|f<rsub|(X+Y,X)>(z,x)|f<rsub|X+Y>(z)>=<frac|1|z>\<bbb-I\><rsub|0\<leqslant\>x\<leqslant\>z>
    </equation*>

    qui est la densit� uniforme sur l'intervalle <math|[0,z]>. Donc on
    calcule facilement que <math|\<bbb-E\>[X\|X+Y=z]=<frac|z|2>> et
    finalement que

    <\equation*>
      \<bbb-E\>[X\|X+Y]=<frac|X+Y|2>.
    </equation*>
  </example>

  <subsection|Variance, covariance et correlation>

  <\definition>
    La covariance <math|Cov(X,Y)> du couple <math|(X,Y)> de v.a. r�elles est
    donn�e par <math|Cov(X,Y)=\<bbb-E\>[(X-\<bbb-E\>[X])(Y-\<bbb-E\>[Y])]>.
    La variance de <math|X> est <math|Var(X)=Cov(X,X)=\<bbb-E\>[(X-\<bbb-E\>[X])<rsup|2>]\<geqslant\>0>.
  </definition>

  Si <math|Var(X)=0> alors <math|X=\<bbb-E\>[X]> est une constante. La
  covariance est une fonction sym�trique (<math|Cov(X,Y)=Cov(Y,X))> et
  lin�aire par rapport � chacun de ses arguments
  \ (<math|Cov(\<alpha\>X+\<beta\>Y,Z)=\<alpha\>Cov(X,Z)+\<beta\>Cov(Y,Z)>).
  <math|Var(\<alpha\>X+c)=\<alpha\><rsup|2> Var(X)>. On a que

  <\equation*>
    Var(X+Y)=Cov(X+Y,X+Y)=Cov(X,X)+2 Cov(X,Y)+Cov(Y,Y)
  </equation*>

  <\equation*>
    =Var(X)+2*Cov(X,Y)+Var(Y).
  </equation*>

  Si <math|X,Y> sont ind�pendantes <math|Cov(X,Y)=0>, le r�ciproque n'est pas
  vrai en g�n�ral.\ 

  <\example>
    Soit <math|X\<sim\>\<cal-N\>(0,1)> et <math|Y=X<rsup|2>>. Alors
    <math|Cov(X,Y)=\<bbb-E\>[X Y]=\<bbb-E\>[X<rsup|3>]=0> mais �videmment
    <math|X,Y> ne sont pas ind�pendantes: par exemple
    <math|0=\<bbb-P\>(X\<gtr\>1,Y\<less\>1)\<neq\>\<bbb-P\>(X\<gtr\>1)\<bbb-P\>(Y\<less\>1)=\<bbb-P\>(X\<gtr\>1)\<bbb-P\>(-1\<less\>X\<less\>1)\<gtr\>0>.
  </example>

  On a l'in�galit�

  <\equation*>
    Cov(X,Y)<rsup|2>\<leqslant\>Var(X)*Var(Y)
  </equation*>

  [Preuve: consid�rer le discriminant du polyn�me positive <math|P(t)=Var(X+t
  Y)\<geqslant\>0>].\ 

  Le coefficient de corr�lation <math|\<rho\><rsub|X,Y>> est d�fini par

  <\equation*>
    \<rho\><rsub|X,Y>=<frac|Cov(X,Y)|<sqrt|Var(X)*Var(Y)>>\<in\>[-1,1]
  </equation*>

  \;

  <\example>
    Si <math|\<rho\><rsub|X,Y>=\<pm\>1> et <math|Var(Y)\<gtr\>0> alors existe
    <math|\<alpha\>\<in\>\<bbb-R\>> tel que <math|Var(X-\<alpha\> Y)=0> et
    donc <math|X-\<alpha\> Y=constante> qui donne que
    <math|Cov(X,Y)=Cov(\<alpha\>Y,Y)=\<alpha\>Var(Y)>,
    <math|Var(X)=\<alpha\><rsup|2 >Var(Y)> et <math|\<rho\><rsub|X,Y>=sign
    \<alpha\>>. Donc on voit bien que le signe de <math|\<alpha\>> est celui
    de <math|\<rho\><rsub|X,Y>>.

    Pour le prouver, consid�rer le polyn�me quadratique en <math|\<alpha\>>
    d�fini par <math|P(\<alpha\>)= Var(X-\<alpha\> Y)=Var(X)-2 \<alpha\>
    Cov(X,Y)+\<alpha\><rsup|2>Var(Y)>. Or <math|P(\<alpha\>)\<geqslant\>0> et
    donc l'�quation <math|P(\<alpha\>)=0> admet au plus une solution et il
    admet une solution seulement si le discriminant \ est nul. Ici
    <math|\<Delta\>=4 [Cov(X,Y)]<rsup|2>-4Var(X)Var(Y)=4 Var(X) Var(Y)
    (\<rho\><rsub|X,Y><rsup|2>-1)\<leqslant\>0> et donc <math|\<Delta\>=0
    \<Leftrightarrow\> \|\<rho\><rsub|X,Y>\|=1>. Apres il est clair que si
    <math|X=\<alpha\> Y +c> avec <math|c> constant on doit avoir

    <\equation*>
      \<rho\><rsub|X,Y>=<frac|Cov(\<alpha\>Y+c,Y)|<sqrt|Var(\<alpha\>
      Y+c)*Var(Y)>>=<frac|\<alpha\>Cov(Y,Y)|<sqrt|\<alpha\><rsup|2>Var(Y)*Var(Y)>>=<frac|\<alpha\>|\|\<alpha\>\|>=sgn
      (\<alpha\>).
    </equation*>
  </example>

  <\exercise>
    Montrer que <math|\<rho\><rsub|X,Y>=sgn(a*d) \<rho\><rsub|a X+b,d Y+d>>,
    c-�-d que le coefficient de corr�lation est invariante par des
    transformation affines des variables elles v�rifient <math|sgn(a d)=1>.
  </exercise>

  <\definition>
    On appelle variance conditionnelle de <math|X> sachant <math|Y> et on
    notera <math|Var(X\|Y)> la v.a.

    <\equation*>
      Var(X\|Y)=\<bbb-E\>[(X-\<bbb-E\>[X\|Y])<rsup|2>\|Y]
    </equation*>
  </definition>

  <\proposition>
    On a <math|Var(X\|Y)=\<bbb-E\>[X<rsup|2>\|Y]-(\<bbb-E\>[X\|Y])<rsup|2>>
  </proposition>

  <\proof>
    \;

    <\eqnarray>
      <tformat|<cwith|1|3|2|2|cell-halign|l>|<table|<row|<cell|Var(X\|Y)>|<cell|=\<bbb-E\>[X<rsup|2>-2X\<bbb-E\>[X\|Y]+(\<bbb-E\>[X\|Y])<rsup|2>\|Y]>|<cell|>>|<row|<cell|>|<cell|=\<bbb-E\>[X<rsup|2>\|Y]-2(\<bbb-E\>[X\|Y])<rsup|2>+(\<bbb-E\>[X\|Y])<rsup|2>>|<cell|>>|<row|<cell|>|<cell|=\<bbb-E\>[X<rsup|2>\|Y]-(\<bbb-E\>[X\|Y])<rsup|2>>|<cell|>>>>
    </eqnarray>

    car <math|><math|\<bbb-E\>[X*\<bbb-E\>[X\|Y]\|Y]=\<bbb-E\>[X\|Y]*\<bbb-E\>[X\|Y]>
    et <math|\<bbb-E\>[(\<bbb-E\>[X\|Y])<rsup|2>\|Y]=(\<bbb-E\>[X\|Y])<rsup|2>>.
  </proof>

  <\proposition>
    (Identit� de la variance conditionnelle) Soient <math|X> et <math|Y> 2
    v.a. sur le m�me espace de probabilit� et
    <math|\<bbb-E\>[X<rsup|2>]\<less\>+\<infty\>>. Alors
    <math|Var(X)=\<bbb-E\>[Var(X\|Y)]+Var[\<bbb-E\>(X\|Y)]>
  </proposition>

  <\proof>
    \;

    <\equation*>
      Var(X)=\<bbb-E\>[X<rsup|2>]-(\<bbb-E\>[X])<rsup|2>=\<bbb-E\>[\<bbb-E\>[X<rsup|2>\|Y]-(\<bbb-E\>(X\|Y))<rsup|2>]+\<bbb-E\>[(\<bbb-E\>(X\|Y))<rsup|2>]-(\<bbb-E\>[\<bbb-E\>[X\|Y]])<rsup|2>
    </equation*>

    <\equation*>
      =\<bbb-E\>[Var(X\|Y)]+Var[\<bbb-E\>(X\|Y)]
    </equation*>
  </proof>
</body>

<\initial>
  <\collection>
    <associate|language|french>
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
    <associate|eq:expectation|<tuple|1|6>>
    <associate|ex:double-exp|<tuple|12|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Rappels
      sur les int�grales multiples> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Vecteurs
      al�atoires � densit�> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|Densit�s marginales
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1.5fn>|Densit� et esp�rance conditionnelle
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1.5fn>|Esp�rance conditionnelle
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>