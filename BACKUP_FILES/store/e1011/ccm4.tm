<TeXmacs|1.0.7.6>

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

  <small|<verbatim|[M. Gubinelli - Controle des chaines de Markov - M1 MMD
  2010/2011 - 20101125 - poly 4 - v.1]>>

  <\chapter*>
    Cha�nes de Markov contr�l�es
  </chapter*>

  <section|Cha�nes contr�l�es>

  On s'int�resse � des �volutions al�atoires sur un espace <math|\<cal-M\>>
  en temps discret et que on peut modifier par la choix, � chaque pas de
  temps, d'une action <math|a> dans un ensemble pr�fix� d'action admissibles
  <math|\<cal-A\>>. Donn� un �tat <math|x\<in\>\<cal-M\>> au temps initial
  <math|k\<in\>\<bbb-N\>> et une politique de choix des actions de contr�le
  <math|u> on peut consid�rer la succession al�atoire
  <math|X<rsub|k>,\<ldots\>,X<rsub|n>,\<ldots\>> des �tats visit� par notre
  syst�me sujet � la politique <math|u>. Le probl�me que on va se poser est
  l'optimisation d'un quelque crit�re moyenne par la choix d'une politique de
  contr�le (tout simplement un contr�le).

  \;

  \ Soit donc <math|\<cal-M\>> une espace d'�tats d�nombrable,
  <math|\<cal-A\>> l'espace des action admissibles et
  <math|\<Pi\>(\<cal-M\>)> l'espace des mesures de probabilit� sur
  <math|\<cal-M\>>. On consid�re une fonction
  <math|P:\<bbb-N\>\<times\>\<cal-A\>\<times\>\<cal-M\>\<rightarrow\>\<Pi\>(\<cal-M\>)>
  qui donn� un temps <math|n\<in\>\<bbb-N\>>, une action
  <math|a\<in\>\<cal-A\>> et un �tat <math|x\<in\>\<cal-M\>> d�termine la
  probabilit� <math|P<rsub|n,a>(x,y)=P<rsub|n,a>(x)({y})> que l'�tat �
  l'�tape suivante soit <math|y\<in\>\<cal-M\>>. \ La fonction <math|P>
  sp�cifie la dynamique al�atoire de notre syst�me. Soit\ 

  <\equation*>
    \<cal-M\><rsup|\<ast\>><rsub|k>={(n,x<rsub|k>,\<ldots\>,x<rsub|n>) :
    n\<in\>\<bbb-N\>, k\<leqslant\>n, x<rsub|k>,\<ldots\>,x<rsub|n>\<in\>\<cal-M\>}
  </equation*>

  on appelle une politique de contr�le (ou simplement un contr�le) une
  fonction <math|u:\<cal-M\><rsup|\<ast\>><rsub|k>\<rightarrow\>\<cal-A\>> et
  on appelle <math|\<cal-C\><rsub|k>> l'espace des controls relatives �
  l'instant initiale <math|k\<geqslant\>0>. La politique de contr�le
  <math|u\<in\>\<cal-C\><rsub|k>> est donc une r�gle qui au temps <math|n>,
  aient observ� la succession d'�tats <math|(x<rsub|k>,\<ldots\>x<rsub|n>)>,
  d�termine l'action <math|u<rsub|n>(x<rsub|k>,\<ldots\>,x<rsub|n>)\<in\>\<cal-A\>>
  pour modifier l'�volution future de notre syst�me al�atoire. Un contr�le
  Markovien et stationnaire est un contr�le <math|u\<in\>\<cal-C\><rsub|k>>
  qui d�pend seulement de l'�tat actuel du syst�me, c-�-d tel que
  <math|u<rsub|n>(x<rsub|k>,\<ldots\>,x<rsub|n>)=\<varphi\>(x<rsub|n>)> pour
  une quelque fonction <math|\<varphi\>:\<cal-M\>\<rightarrow\>\<cal-A\>>.\ 

  \;

  Soit <math|\<Omega\>> l'espace canonique
  <math|\<Omega\>=\<cal-M\><rsup|\<bbb-N\>>> avec la tribu produit
  <math|\<cal-F\>> (sur chaque composante on consid�re la tribu discr�te des
  toutes les parties de <math|\<cal-M\>>). Soit
  <math|X<rsub|n>(\<omega\>)=\<omega\><rsub|n>> la projection sur la
  <math|n>-eme composante de <math|\<omega\>\<in\>\<Omega\>>.

  Donn� un temps initial <math|k\<in\>\<bbb-N\>>, un �tat initial
  <math|x\<in\>\<cal-M\>> et un contr�le <math|u\<in\>\<cal-C\><rsub|k>> on
  consid�re la probabilit� <math|\<bbb-P\><rsup|u><rsub|(k,x)>> telle que

  <\equation>
    \<bbb-P\><rsub|(k,x)><rsup|u>(X<rsub|k>=x<rsub|k>,\<ldots\>,X<rsub|n+1>=x<rsub|n+1>)=\<delta\><rsub|x,x<rsub|k>><big|prod><rsub|i=k><rsup|n>P<rsub|k,u<rsub|i>(x<rsub|k>,\<ldots\>,x<rsub|i>)>(x<rsub|i>,x<rsub|i+1>)<space|2em>\<forall\>n\<geqslant\>k.<label|eq:def-proc-contr>
  </equation>

  On appelle le processus <math|(X<rsub|n>)<rsub|n\<geqslant\>k>> un
  processus contr�l�.

  <\lemma>
    On a que <math|\<bbb-P\><rsup|u><rsub|(k,x)>> v�rifie
    (<reference|eq:def-proc-contr>) ssi, <math|\<forall\>n\<geqslant\>k> on a\ 

    <\equation*>
      \<bbb-P\><rsup|u><rsub|(k,x)>(X<rsub|n+1>=x<rsub|n+1>\|X<rsub|k>=x<rsub|k>,\<ldots\>,X<rsub|n>=x<rsub|n>)=P<rsub|n,u<rsub|n>(x<rsub|k>,\<ldots\>,x<rsub|n>)>(x<rsub|n>,x<rsub|n+1>).
    </equation*>
  </lemma>

  <\proof>
    Exercice.
  </proof>

  Une fa�on canonique de construire un processus contr�l� est de consid�rer
  une fonction\ 

  <\equation*>
    G:\<bbb-N\>\<times\>\<cal-M\>\<times\>\<cal-A\>\<times\>E\<rightarrow\>\<cal-M\>
  </equation*>

  et un espace de probabilit� <math|(\<Omega\>,\<cal-F\>,\<bbb-P\>)> muni
  d'une suite de v.a. iid <math|(Z<rsub|n>)<rsub|n\<geqslant\>k>> � valeurs
  dans l'espace auxiliaire <math|E>. On pose alors

  <\equation>
    X<rsub|k>=x, <space|2em>X<rsub|n+1>=G(n,X<rsub|n>,U<rsub|n>,Z<rsub|n+1>),<space|2em>n\<geqslant\>k
  </equation>

  o� <math|U<rsub|n>=u<rsub|n>(X<rsub|k>,\<ldots\>,X<rsub|n>)>. Une suite
  al�atoire construite de cette fa�on est appel� une r�currence al�atoire
  contr�l�e ou un syst�me dynamique al�atoire contr�l�. Il est facile de
  montrer (exercice) que la suite <math|(X<rsub|n>)<rsub|n\<geqslant\>k>>
  v�rifie

  <\equation>
    \<bbb-P\>(X<rsub|n+1>=x<rsub|n+1>\|X<rsub|k>=x<rsub|k>,\<ldots\>,X<rsub|n>=x<rsub|n>)=P<rsub|n,u<rsub|n>(x<rsub|k>,\<ldots\>,x<rsub|n>)>(x<rsub|n>,x<rsub|n+1>)<label|eq:canon-1>
  </equation>

  o�

  <\equation>
    P<rsub|n,a>(x,y)=\<bbb-P\>(G(n,x,a,Z<rsub|1>)=y).<label|eq:canon-P>
  </equation>

  R�ciproquement, pour tout fonction <math|P:\<bbb-N\>\<times\>\<cal-A\>\<times\>\<cal-M\>\<rightarrow\>\<Pi\>(\<cal-M\>)>
  il est possible de trouver un espace auxiliaire <math|E>, une suite iid
  <math|(Z<rsub|n>)<rsub|n\<geqslant\>k>> et une fonction <math|G> tels que
  les �quations (<reference|eq:canon-1>) et (<reference|eq:canon-P>) soient
  satisfaites (exercice. sugg. prendre <math|E=[0,1]> et les
  <math|Z<rsub|n>\<sim\>\<cal-U\>([0,1])> et construire une <math|G>
  appropri�). La correspondance entre processus contr�l�s et syst�mes
  dynamiques contr�l�s n'est pas univoque (plusieurs syst�mes dynamiques
  contr�l�es diff�rents peuvent avoir la m�me loi et donc correspondre au
  m�me processus contr�l�).

  \ 

  Donn�e une fonction <math|F:\<bbb-N\>\<times\>\<cal-M\>\<rightarrow\>\<bbb-R\>>
  on d�finit la fonction <math|P*F:\<bbb-N\>\<times\>\<cal-M\>\<times\>\<cal-A\>\<rightarrow\>\<bbb-R\>>
  par

  <\equation*>
    (P*F)(n,x,a)=<big|sum><rsub|y\<in\>\<cal-M\>>P<rsub|n,a>(x,y)F(n+1,y)
  </equation*>

  Dans le cas d'un syst�me dynamique contr�l� on a que

  <\equation*>
    P F(n,x,a)=\<bbb-E\>[F(n+1,G(n,x,a,Z<rsub|1>))].
  </equation*>

  On remarque que dans cette �galit� le membre de droite est bien d�fini m�me
  dans le cas d'espace d'�tats non discret.

  <section|Principe d'optimalit�>

  Soit <math|c:\<bbb-N\>\<times\>\<cal-M\>\<times\>\<cal-A\>\<rightarrow\>\<bbb-R\>>
  une fonction que repr�sente un co�t pour unit� de temps et qui peut
  d�pendre du temps, de l'�tat actuel du syst�me et de l'action choisi pour
  continuer. Donn� un �tat initiale <math|(k,x)\<in\>\<bbb-N\>\<times\>\<cal-M\>>
  et un contr�le <math|u\<in\>\<cal-C\><rsub|k>>, le co�t totale moyen pour
  le processus contr�l� <math|(X<rsub|n>)<rsub|n\<geqslant\>k>> est d�termin�
  par\ 

  <\equation*>
    V<rsup|u>(k,x)=\<bbb-E\><rsup|u><rsub|(k,x)><big|sum><rsub|n\<geqslant\>k>c(n,X<rsub|n>,U<rsub|n>)
  </equation*>

  o� l'esp�rance <math|\<bbb-E\><rsup|u><rsub|(k,x)>> est par rapport � la
  probabilit� <math|\<bbb-P\><rsup|u><rsub|(k,x)>>. Pour que cet expression
  ait un sens on admet que une des condition suivantes est satisfaite:
  <math|c(n,x,a)\<geqslant\>0>, <math|c(n,x,a)\<leqslant\>0> ou
  <math|<big|sum><rsub|n\<geqslant\>k>sup<rsub|x,a>\|c(n,x,a<rsub|>)\|\<less\>+\<infty\>>.
  On veut trouver un contr�le <math|u<rsup|\<ast\>>> qui minimise ce co�t
  moyen parmi tout les controls admissibles:

  <\equation*>
    V<rsup|u<rsup|\<ast\>>>(k,x)=V(k,x)=inf<rsub|u\<in\>\<cal-C\><rsub|k>>V<rsup|u>(k,x).
  </equation*>

  On appelle la valeur optimale <math|V(k,x)> du co�t moyen obtenu � partir
  de l'�tat <math|(k,x)> est appel� la fonction valeur
  <math|V:\<bbb-N\>\<times\>\<cal-M\>\<rightarrow\>\<bbb-R\>>.\ 

  <\theorem>
    La fonction valeur satisfait l'�quation (dit de Bellman ou de la
    programmation dynamique)

    <\equation*>
      V(k,x)=inf<rsub|a\<in\>\<cal-A\>>[c(k,x,a)+(P*V)(k,x,a)]
    </equation*>
  </theorem>

  <\proof>
    Sans perte de g�n�ralit� on peut supposer que le processus contr�l�
    <math|(X<rsub|n>)<rsub|n\<geqslant\>k>> est un syst�me dynamique
    contr�l�e associ� � la fonction <math|G> et � la suite al�atoire
    <math|(Z<rsub|n>)<rsub|n\<geqslant\>k>>. Donc

    <\equation*>
      V<rsup|u>(k,x)=\<bbb-E\><big|sum><rsub|n\<geqslant\>k>c(n,X<rsub|n>,U<rsub|n>)=c(k,x,u<rsub|k>(x))+\<bbb-E\><big|sum><rsub|n\<geqslant\>k+1>c(n,X<rsub|n>,U<rsub|n>)
    </equation*>

    o� <math|X<rsub|k>=x>, <math|X<rsub|n+1>=G(n,X<rsub|n>,U<rsub|n>,Z<rsub|n+1>)>
    et <math|U<rsub|n>=u<rsub|n>(X<rsub|k>,\<ldots\>,X<rsub|n>)>. Soit
    <math|a=u<rsub|k>(x)> et <math|<wide|u|~>\<in\>\<cal-C\><rsub|k+1>> le
    contr�le d�finit par <math|<wide|u|~><rsub|n>(x<rsub|k+1>,\<ldots\>,x<rsub|n>)=u<rsub|n>(x,x<rsub|k+1>,\<ldots\>,x<rsub|n>)>.
    On a que <math|U<rsub|n>=<wide|u|~><rsub|n>(X<rsub|k+1>,\<ldots\>,X<rsub|n>)=<wide|U|~><rsub|n>>.
    Si on pose

    <\equation*>
      <wide|X|~><rsub|k+1>=y,<space|2em><wide|X|~><rsub|n+1>=G(n,<wide|X|~><rsub|n>,<wide|U|~><rsub|n>,Z<rsub|n+1>)<space|2em>\<forall\>n\<gtr\>k+1
    </equation*>

    on aura que <math|\<bbb-P\>(<wide|X|~><rsub|n>=X<rsub|n>,
    \<forall\>n\<geqslant\>k+1 \| X<rsub|k+1>=y)=1> et donc

    <\equation*>
      \<bbb-E\><big|sum><rsub|n\<geqslant\>k+1>c(n,X<rsub|n>,U<rsub|n>)=<big|sum><rsub|y\<in\>\<cal-M\>>\<bbb-P\>(X<rsub|k+1>=y)\<bbb-E\>[<big|sum><rsub|n\<geqslant\>k+1>c(n,X<rsub|n>,U<rsub|n>)\|X<rsub|k+1>=y]
    </equation*>

    <\equation*>
      =<big|sum><rsub|y\<in\>\<cal-M\>><wide*|\<bbb-P\>(X<rsub|k+1>=y)|\<wide-underbrace\>><rsub|P<rsub|n,a>(x,y)><wide*|\<bbb-E\><big|sum><rsub|n\<geqslant\>k+1>c(n,<wide|X|~><rsub|n>,<wide|U|~><rsub|n>)|\<wide-underbrace\>><rsub|V<rsup|<wide|u|~>>(k+1,y)>
    </equation*>

    <\equation*>
      =<big|sum><rsub|y\<in\>\<cal-M\>>P<rsub|n,a>(x,y)V<rsup|<wide|u|~>>(k+1,y)=P*V(k,x,a).
    </equation*>

    \;
  </proof>

  <\remark>
    On peut vouloir r�soudre un probl�me de maximisation au lieu d'un
    probl�me de minimisation. Dans ce cas la fonction valeur est d�finie par
    <math|V(k,x)=sup<rsub|u\<in\>\<cal-C\><rsub|k>>V<rsup|u>(k,x)> et
    l'�quation de Bellman prends la forme

    <\equation*>
      V(k,x)=sup<rsub|a\<in\>\<cal-A\>>[c(n,x,a)+P*V(n,x,a)].
    </equation*>
  </remark>

  \;

  On dit que un processus contr�l� est homog�ne si la fonction <math|P> ne
  d�pends pas du temps, i.e. si <math|P:\<cal-A\>\<times\>\<cal-M\>\<rightarrow\>\<Pi\>(\<cal-M\>)>.
  Similairement on dit que un syst�me dynamique contr�l� est homog�ne si la
  fonction <math|G> ne d�pends pas du temps:
  <math|G:\<cal-M\>\<times\>\<cal-A\>\<times\>E\<rightarrow\>\<cal-M\>>. Un
  processus contr�l� est homog�ne ssi il est �quivalent � un syst�me
  dynamique homog�ne.

  \;

  \;

  <\lemma>
    Si la fonction de co�t et la fonction <math|G> ne d�pendants pas du
    temps, c-�-d si

    <\equation*>
      V<rsup|u><rsub|>(k,x)=\<bbb-E\><big|sum><rsub|n\<geqslant\>k>c(X<rsub|n>,U<rsub|n>)
    </equation*>

    et

    <\equation*>
      X<rsub|k>=x,<space|2em>X<rsub|n+1>=G(X<rsub|n>,U<rsub|n>,Z<rsub|n+1>),<space|2em>n\<geqslant\>k
    </equation*>

    alors la fonction valeur <math|V(k,x)> ne d�pends pas du temps et
    l'�quation de Bellman devient

    <\equation>
      V(x)=inf<rsub|a\<in\>\<cal-A\>>[c(x,a)+P*V(x,a)].<label|eq:bellman-homogen>
    </equation>
  </lemma>

  <\proof>
    On consid�re <math|u\<in\>\<cal-C\><rsub|k+1>> et

    <\equation*>
      V<rsup|u><rsub|>(k+1,x)=\<bbb-E\><big|sum><rsub|n\<geqslant\>k+1>c(X<rsub|n>,U<rsub|n>)=\<bbb-E\><big|sum><rsub|n\<geqslant\>k>c(X<rsub|n+1>,U<rsub|n+1>)
    </equation*>

    o� <math|X<rsub|k+1>=x>, <math|X<rsub|n+1>=G(X<rsub|n>,U<rsub|n>,Z<rsub|n+1>),n\<geqslant\>k+1>,
    <math|U<rsub|n>=u<rsub|n>(X<rsub|k+1>,\<ldots\>,X<rsub|n>)>. Soit
    maintenant <math|<wide|X|~><rsub|n>=X<rsub|n+1>>. On a que
    <math|<wide|X|~><rsub|k>=x> et <math|>pour <math|n\<geqslant\>k>
    <math|<wide|X|~><rsub|n+1>=G(<wide|X|~><rsub|n>,u<rsub|n+1>(<wide|X|~><rsub|k>,\<ldots\>,<wide|X|~><rsub|n>),Z<rsub|n+2>)>.
    Soit alors <math|<wide|u|~>\<in\>\<cal-C\><rsub|k>> tel que
    <math|<wide|u|~><rsub|n>(x<rsub|k>,\<ldots\>,x<rsub|n>)=u<rsub|n+1>(x<rsub|k>,\<ldots\>,x<rsub|n>)>
    et <math|<wide|U|~><rsub|n>=<wide|u|~><rsub|n>(<wide|X|~><rsub|k>,\<ldots\>,<wide|X|~><rsub|n>)=U<rsub|n+1>>.
    Le processus <math|(<wide|X|~><rsub|n>)<rsub|n\<geqslant\>k>> est le
    processus contr�l� associ� au syst�me dynamique
    <math|(G,(Z<rsub|n+1>)<rsub|n\<geqslant\>1>)> avec contr�le
    <math|<wide|u|~>> et �tat initiale <math|(k,x)>, donc

    <\equation*>
      \<bbb-E\><rsup|u><rsub|(k+1,x)><big|sum><rsub|n\<geqslant\>k>c(X<rsub|n+1>,U<rsub|n+1>)=\<bbb-E\><big|sum><rsub|n\<geqslant\>k>c(<wide|X|~><rsub|n>,<wide|U|~><rsub|n>)=\<bbb-E\><rsup|<wide|u|~>><rsub|(k,x)><big|sum><rsub|n\<geqslant\>k>c(X<rsub|n>,U<rsub|n>)=V<rsup|<wide|u|~>>(k,x)
    </equation*>

    et donc <math|V(k,x)=V(k+1,x)> pour tout <math|k\<geqslant\>0>. Soit
    <math|V(x)=V(0,x)>, l'�quation de Bellman est

    <\equation*>
      V(x)=V(0,x)=inf<rsub|a\<in\>\<cal-A\>>{c(x,a)+\<bbb-E\>[V(1,G(x,a,Z<rsub|1>))]}=inf<rsub|a\<in\>\<cal-A\>>{c(x,a)+\<bbb-E\>[V(G(x,a,Z<rsub|1>))]}
    </equation*>

    ce qui donne l'eq. (<reference|eq:bellman-homogen>).\ 
  </proof>

  <section|Contr�le en horizon fini>

  L'�quation de Bellman est un outil puissant pour caract�riser (et des fois
  d�terminer) les politiques optimaux dans les probl�mes de contr�le. Le cas
  plus simple est l'optimisation en horizon fini qui on va analyser dans
  cette section. Soit <math|N\<geqslant\>0> un temps et soit
  <math|r:\<bbb-N\>\<times\>\<cal-M\>\<times\>\<cal-A\>\<rightarrow\>\<bbb-R\>>
  une fonction de gain pour laquelle on fait l'hypoth�se que
  <math|r(n,x,a)=0> pour tout <math|n\<gtr\>N> et que <math|r(N,x,a)=C(x)>
  pour une fonction <math|C:\<cal-M\>\<rightarrow\>\<bbb-R\>>. Le gain moyen
  associ� au processus contr�l� par <math|u> et d�marrant en <math|(k,x)> est

  <\equation*>
    V<rsup|u>(k,x)=\<bbb-E\><rsup|u><rsub|(k,x)>[<big|sum><rsub|n=k><rsup|N-1>r(n,X<rsub|n>,U<rsub|n>)+C(X<rsub|N>)].
  </equation*>

  On veut maximiser cette quantit� en fonction de la politique <math|u>. La
  fonction valeur <math|V(k,x)=sup<rsub|u>V<rsup|u>(k,x)> satisfait
  l'�quation de Bellman

  <\equation*>
    V(n,x)=sup<rsub|a>[r(n,x,a)+<big|sum><rsub|y>P<rsub|n,a>(x,y)*V(n+1,y)]
  </equation*>

  pour tout <math|k\<leqslant\>n\<less\>N> et en plus on a la condition au
  bord <math|V(N,x)=C(x)>. Par r�currence r�trograde on peut alors trouver
  <math|V(N-1,\<cdot\>),V(N-2,\<cdot\>)> et ainsi de suite jusque �
  d�terminer <math|V(k,x)> au temps initiale. L'�quation de Bellman a donc
  une seule solution.\ 

  <\theorem>
    Supposons que <math|u> est un contr�le Markovien tel que

    <\equation*>
      V(k,x)=(c+P*V)(k,x,u<rsub|k>(x))<space|2em>0\<leqslant\>k\<leqslant\>N-1,
      x\<in\>\<cal-M\>
    </equation*>

    alors <math|u> est optimale pour tout
    <math|(k,x)\<in\>\<bbb-N\>\<times\>\<cal-M\>>, i.e.
    <math|V(k,x)=V<rsup|u>(k,x)>.
  </theorem>

  <\proof>
    Consid�rons un tel contr�le et soit <math|(X<rsub|n>)<rsub|n\<geqslant\>k>>
    le processus contr�l� associ�. Soit

    <\equation*>
      M<rsub|n>=<big|sum><rsub|j=k><rsup|n-1>r(j,X<rsub|j>,U<rsub|j>)+V(n,X<rsub|n>)<space|2em>k\<leqslant\>n\<leqslant\>N
    </equation*>

    Alors pour tout <math|k\<leqslant\>n\<leqslant\>N-1> on a

    <\equation*>
      M<rsub|n+1>-M<rsub|n>=V(n+1,X<rsub|n+1>)-V(n,X<rsub|n>)-r(n,X<rsub|n>,U<rsub|n>)
    </equation*>

    et donc

    <\equation*>
      \<bbb-E\><rsup|u><rsub|(k,x)>[M<rsub|n+1>-M<rsub|n>\|X<rsub|n>=y]=\<bbb-E\><rsup|u><rsub|(k,x)>[V(n+1,X<rsub|n+1>)-V(n,X<rsub|n>)-r(n,X<rsub|n>,U<rsub|n>)\|X<rsub|n>=y]
    </equation*>

    <\equation*>
      =(r+P*V)(n,y,u<rsub|n>(y))-V(n,y)=0
    </equation*>

    ce qui donne que <math|\<bbb-E\><rsup|u><rsub|(k,x)>[M<rsub|n>]=\<bbb-E\><rsup|u><rsub|(k,x)>[M<rsub|n+1>]>
    pour tout <math|k\<leqslant\>n\<less\>N>. Par cons�quent

    <\equation*>
      V(k,x)=\<bbb-E\><rsup|u><rsub|(k,x)>[M<rsub|k>]=\<bbb-E\><rsup|u><rsub|(k,x)>[M<rsub|N>]=\<bbb-E\><rsup|u><rsub|(k,x)>[<big|sum><rsub|j=k><rsup|N-1>r(j,X<rsub|j>,U<rsub|j>)+C(X<rsub|N>)]=V<rsup|u>(k,x).
    </equation*>

    \;
  </proof>

  <\example>
    <name|(Exercer une option d'achat)> On a la possibilit� d'acheter un
    actif � un prix fix� d'avance <math|p> et � un instant quelconque
    <math|n=0,\<ldots\>,N-1>. Le prix de march� de l'actif est mod�lis� par
    une suite <math|(Y<rsub|n>)<rsub|n\<geqslant\>0>> donn�e par
    <math|Y<rsub|n+1>=Y<rsub|n>+\<varepsilon\><rsub|n+1>> o�
    <math|(\<varepsilon\><rsub|n>)<rsub|n\<geqslant\>1>> est une suite iid
    int�grable. L'objectif est de maximiser le gain moyen relatif �
    l'utilisation de l'option d'achat: si on d�cide de l'utiliser au temps
    <math|n> avec un prix de march� <math|Y<rsub|n>> alors notre gain serait
    de <math|Y<rsub|n>-p>.

    Le processus contr�l� est donn�e par la suite des valeurs de notre option
    et on prend comme espace d'�tats l'ensemble
    <math|\<cal-M\>=\<bbb-R\>\<cup\>{\<Delta\>}> car � un instant d�termin�
    soit on poss�de encore l'option et sa valeur est <math|x\<in\>\<bbb-R\>>,
    soit on a d�j� exerc� l'option et alors on d�cide de fa�on
    conventionnelle de �tre dans l'�tat fictif <math|\<Delta\>>. L'espace des
    actions est <math|\<cal-A\>={0,1}>, <math|0> si on exerce pas et <math|1>
    si on d�cide d'exercer l'option. On n'est pas dans le cas d'espace
    d'�tats discret mais on peut r�aliser la dynamique contr�l�e comme
    dynamique al�atoire contr�l�e. La fonction de gain est donn�e par
    <math|r(n,x,a)=a(x-p)> et la dynamique al�atoire par

    <\equation*>
      G(x,a,\<varepsilon\>)=<choice|<tformat|<table|<row|<cell|x+\<varepsilon\>>|<cell|<text|si
      <math|x\<in\>\<bbb-R\>, a=0>>>>|<row|<cell|\<Delta\>>|<cell|<text|si
      <math|x\<in\>\<bbb-R\>, a=1>>>>|<row|<cell|\<Delta\>>|<cell|<text|si
      <math|x=\<Delta\>>>>>>>>
    </equation*>

    avec espace auxiliaire <math|\<bbb-R\>> et suite iid
    <math|(\<varepsilon\><rsub|n>)<rsub|n\<geqslant\>0>>. En particulier la
    fonction de transition <math|P> est de la forme

    <\equation*>
      P<rsub|n,0>(x,A)=\<bbb-P\>(x+\<varepsilon\><rsub|1>\<in\>A),<space|2em>P<rsub|n,1>(x,\<bbb-R\>)=0,<space|2em>P<rsub|n,1>(x,{\<Delta\>})=1
    </equation*>

    (sur <math|\<cal-M\>> on consid�re la tribu
    <math|\<sigma\>(\<cal-B\>(\<bbb-R\>),{\<Delta\>})>) et on a\ 

    <\equation*>
      P F(n,x,a)=<choice|<tformat|<table|<row|<cell|\<bbb-E\>[F(n+1,x+\<varepsilon\>)]>|<cell|si<space|1em>
      a=1>>|<row|<cell|F(n+1,\<Delta\>)>|<cell|si<space|1em> a=0>>>>>
    </equation*>

    L'�quation de Bellman est alors donn�e par

    <\equation*>
      V(k,x)=max{x-p, \<bbb-E\>[V(k+1,x+\<varepsilon\>)]},
      <space|2em>0\<leqslant\>k\<leqslant\>N-1, x\<in\>\<bbb-R\>
    </equation*>

    et <math|V(N,x)=0> (car � <math|N> on ne peut pas exercer l'option). On
    note que <math|V(N-1,x)=(x-p)<rsub|+>>.\ 

    Montrez que <math|V(k,x)> est une fonction convexe de <math|x> et que
    <math|V(k,x)\<geqslant\>V(k+1,x)> pour tout
    <math|0\<leqslant\>k\<leqslant\>N> et tout <math|x\<in\>\<bbb-R\>>.

    Soit <math|p<rsub|k>=inf{x\<geqslant\>0 : V(k,x)=x-p}>. Montrez que
    <math|p<rsub|k>> est d�croissant en <math|k> et que la politique optimale
    est d'exercer l'option de que <math|Y<rsub|k>\<geqslant\>p<rsub|k>>.\ 
  </example>

  <section|Contr�le en horizon infini: cas des gains positifs>

  On se donne un processus contr�l� homog�ne et une fonction gain homog�ne et
  positive <math|r:\<cal-M\>\<times\>\<cal-A\>\<rightarrow\>\<bbb-R\><rsub|+>>.
  Si <math|u\<in\>\<cal-C\><rsub|0>> on d�finit le gain total moyen

  <\equation*>
    V<rsup|u>(x)=\<bbb-E\><rsup|u><rsub|(0,x)><big|sum><rsub|m\<geqslant\>0>r(X<rsub|m>,U<rsub|m>)
  </equation*>

  et la fonction valeur du probl�me de maximisation de ce gain
  <math|V(x)=sup<rsub|u\<in\>\<cal-C\><rsub|0>>V<rsup|u>(x)>. Pour tout
  <math|n\<geqslant\>0> soit

  <\equation*>
    V<rsup|u><rsub|n>(x)=\<bbb-E\><rsup|u><rsub|(0,x)><big|sum><rsub|0\<leqslant\>m\<leqslant\>n-1>r(X<rsub|m>,U<rsub|m>),<space|2em>V<rsub|n>(x)=sup<rsub|u\<in\>\<cal-C\><rsub|0>>V<rsup|u><rsub|n>(x).
  </equation*>

  Par convergence monotone <math|V<rsub|n><rsup|u>(x)\<nearrow\>V<rsup|u>(x)>
  et donc

  <\equation*>
    sup<rsub|n>V<rsub|n>(x)=sup<rsub|n>sup<rsub|u\<in\>\<cal-C\><rsub|0>>V<rsup|u><rsub|n>(x)=sup<rsub|u\<in\>\<cal-C\><rsub|0>>sup<rsub|n>V<rsup|u><rsub|n>(x)=sup<rsub|u\<in\>\<cal-C\><rsub|0>>V<rsup|u>(x)=V(x).
  </equation*>

  Les fonction <math|V<rsub|n>(x)> peuvent �tre calcul� par r�currence.

  <\lemma>
    On a l'�quation

    <\equation*>
      V<rsub|n+1>(x)=sup<rsub|a\<in\>\<cal-A\>>[r(x,a)+P*V<rsub|n>(x,a)].
    </equation*>
  </lemma>

  <\proof>
    (Exercice, utiliser l'homog�n�it�).
  </proof>

  <\theorem>
    La fonction valeur en horizon infini <math|V> est la plus petite solution
    non-n�gative de l'�quation

    <\equation>
      V(x)=sup<rsub|a\<in\>\<cal-A\>>[r(x,a)+P*V(x,a)],<space|2em>x\<in\>\<cal-M\>.<label|eq:bellman-infty>
    </equation>

    Tout contr�le <math|u\<in\>\<cal-C\><rsub|0>> tel que <math|V<rsup|u>>
    satisfait cette �quation est optimal, pour tout �tat initial
    <math|x\<in\>\<cal-M\>>.
  </theorem>

  <\proof>
    Par le principe d'optimalit� on sait que <math|V> satisfait l'�quation.
    Soit maintenant <math|F:\<cal-M\>\<rightarrow\>\<bbb-R\><rsub|+>> un
    autre solution non-n�gative de (<reference|eq:bellman-infty>). Alors
    <math|F(x)\<geqslant\>0=V<rsub|0>(x)>. Supposons par induction que
    <math|F\<geqslant\>V<rsub|n>>, alors

    <\equation*>
      F(x)=sup<rsub|a\<in\>\<cal-A\>>[r(x,a)+P*F(x,a)]\<geqslant\>sup<rsub|a\<in\>\<cal-A\>>[r(x,a)+P*V<rsub|n>(x,a)]=V<rsub|n+1>(x)
    </equation*>

    et donc <math|F\<geqslant\>V<rsub|n>> pour tout <math|n\<geqslant\>0> ce
    qui implique que <math|V=sup<rsub|n>V<rsub|n>\<leqslant\>F>.
  </proof>

  <section|Contr�le en horizon infini: cas des co�ts actualis�s>

  \ Ici on consid�re un processus contr�l� homog�ne, une fonction co�t
  homog�ne <math|c:\<cal-M\>\<times\>\<cal-A\>\<rightarrow\>\<bbb-R\><rsub|>>
  (non n�cessairement positive) et born�e
  <math|\|c(x,a)\|\<leqslant\>C\<less\>\<infty\>> et une constante
  <math|\<beta\>\<in\>]0,1]>. Si <math|u\<in\>\<cal-C\><rsub|0>> on d�finit
  le co�t total moyen actualis�

  <\equation*>
    V<rsup|u>(x)=\<bbb-E\><rsup|u><rsub|(0,x)><big|sum><rsub|m\<geqslant\>0>\<beta\><rsup|m>*c(X<rsub|m>,U<rsub|m>)
  </equation*>

  et le co�t total moyen actualis� minimale
  <math|V(x)=inf<rsub|u\<in\>\<cal-C\><rsub|0>>V<rsup|u>(x)>. Pour tout
  <math|n\<geqslant\>0> on d�finit aussi les co�t partiels

  <\equation*>
    V<rsup|u><rsub|n>(x)=\<bbb-E\><rsup|u><rsub|(0,x)><big|sum><rsub|m=0><rsup|n-1>\<beta\><rsup|m>*c(X<rsub|m>,U<rsub|m>)
    <space|2em>V<rsub|n>(x)=inf<rsub|u\<in\>\<cal-C\><rsub|0>>V<rsub|n><rsup|u>(x).
  </equation*>

  On remarque que

  <\equation*>
    \|V<rsup|u><rsub|n>(x)-V(x)\|\<leqslant\><big|sum><rsub|m\<geqslant\>n>\<beta\><rsup|m>C=C<frac|\<beta\><rsup|n>|1-\<beta\>>\<rightarrow\>0
  </equation*>

  si <math|n\<rightarrow\>\<infty\>>. De m�me\ 

  <\equation*>
    \|V<rsub|n>(x)-V(x)\|\<leqslant\>C<frac|\<beta\><rsup|n>|1-\<beta\>>\<rightarrow\>0.
  </equation*>

  <\lemma>
    On a l'�quation

    <\equation*>
      V<rsub|n+1>(x)=inf<rsub|a\<in\>\<cal-A\>>[c(x,a)+\<beta\>P*V<rsub|n>(x,a)]<space|2em>n\<geqslant\>0,x\<in\>\<cal-M\>
    </equation*>
  </lemma>

  <\proof>
    (Exercice, utiliser l'homog�n�it�).
  </proof>

  <\theorem>
    Le co�t total moyen actualis� minimale <math|V> est l'unique solution
    born�e de l'�quation d'optimalit�

    <\equation>
      V(x)=inf<rsub|a\<in\>\<cal-A\>>[c(x,a)+\<beta\>P*V(x,a)]<space|2em>x\<in\>\<cal-M\>.<label|eq:optimal-discounted>
    </equation>

    De plus, tout application <math|\<varphi\>:\<cal-M\>\<rightarrow\>\<cal-A\>>
    tel que

    <\equation*>
      V(x)=[c+P*V](x,\<varphi\>(x)),<space|2em>x\<in\>\<cal-M\>
    </equation*>

    d�finit un contr�le markovien homog�ne <math|u\<in\>\<cal-C\><rsub|0>>
    (par <math|u<rsub|k>(x<rsub|0>,\<ldots\>,x<rsub|k>)=\<varphi\>(x<rsub|k>)>)
    qui est optimal pour tout �tat initial <math|x\<in\>\<cal-M\>>.
  </theorem>

  <\proof>
    Est facile de voir que <math|V> est solution de
    (<reference|eq:optimal-discounted>) et que <math|V> est born�e par
    <math|C/(1-\<beta\>)>:

    <\equation*>
      \|V(x)\|\<leqslant\>C<big|sum><rsub|m\<geqslant\>0>\<beta\><rsup|m>=C/(1-\<beta\>).
    </equation*>

    Soit <math|F> une solution born�e de (<reference|eq:optimal-discounted>)
    et soit <math|u\<in\>\<cal-C\><rsub|0>> un contr�le quelconque.
    Consid�rons le processus

    <\equation*>
      M<rsub|n>=<big|sum><rsub|k=0><rsup|n-1>\<beta\><rsup|m>c(X<rsub|k>,U<rsub|k>)+\<beta\><rsup|n>F(X<rsub|n>),<space|2em>n\<geqslant\>0.
    </equation*>

    Alors

    <\equation*>
      M<rsub|n+1>-M<rsub|n>=\<beta\><rsup|n>c(X<rsub|n>,U<rsub|n>)+\<beta\><rsup|n+1>F(X<rsub|n+1>)-\<beta\><rsup|n>F(X<rsub|n>)
    </equation*>

    et

    <\equation*>
      \<bbb-E\>[M<rsub|n+1>-M<rsub|n>\|X<rsub|n>=y,U<rsub|n>=a<rprime|'>]=\<beta\><rsup|n>c(y,a<rprime|'>)+\<beta\><rsup|n+1>P*F(y,a<rprime|'>)-\<beta\><rsup|n>F(y)\<geqslant\>0
    </equation*>

    qui donne que

    <\equation*>
      F(x)=\<bbb-E\><rsub|(0,x)><rsup|u>[M<rsub|0>]\<leqslant\>\<bbb-E\><rsub|(0,x)><rsup|u>[M<rsub|n>]=V<rsup|u><rsub|n>(x)+\<beta\><rsup|n>\<bbb-E\><rsub|(0,x)><rsup|u>[F(X<rsub|n>)].
    </equation*>

    En prenant la limite pour <math|n\<rightarrow\>\<infty\>> et utilisant
    l'hypoth�se de bornitude sur <math|F> on obtient que

    <\equation*>
      F(x)\<leqslant\>V<rsup|u>(x)
    </equation*>

    et par l'arbitrarit� de <math|u> que <math|F\<leqslant\>V>.\ 

    Si il existe un contr�le <math|u> markovien et homog�ne tel que
    <math|F(x<rsub|>)=[c+\<beta\>P*F](x,u(x<rsub|>))> pour tout
    <math|n\<geqslant\>0> et <math|x\<in\>\<cal-M\>> alors on a que

    <\equation*>
      \<bbb-E\>[M<rsub|n+1>-M<rsub|n>\|X<rsub|n>=y,U<rsub|n>=a<rprime|'>]=0
    </equation*>

    et � la limite on obtient <math|F(x)=V<rsup|u>(x)>. Alors
    <math|F(x)\<geqslant\>V(x)> et <math|F(x)=V(x)=V<rsup|u>(x)> ce
    qu'implique que le contr�le <math|u> est optimal. Si un tel contr�le
    n'existe pas on peut toujours raisonner de fa�on approch� et consid�rer
    un contr�le <math|<wide|u|~>> markovien et homog�ne tel que

    <\equation*>
      F(x)\<geqslant\>[c+\<beta\>P*F](x,<wide|u|~>(x))-\<varepsilon\><space|2em>n\<geqslant\>0,
      \ x<rsub|>\<in\>\<cal-M\>
    </equation*>

    pour <math|\<varepsilon\>\<gtr\>0>. Cette in�galit� est �quivalente �
    demander que\ 

    <\equation*>
      F(x)=[<wide|c|~>+\<beta\>*P*F](x,<wide|u|~>(x))
    </equation*>

    pour une certaine fonction <math|<wide|c|~>(x,a)\<geqslant\>c(x,a)-\<varepsilon\>>.
    Alors par l'argument pr�c�dent on obtient que

    <\equation*>
      F(x)=\<bbb-E\><rsub|(0,x)><rsup|<wide|u|~>><big|sum><rsub|m\<geqslant\>0>\<beta\><rsup|m><wide|c|~>(X<rsub|m>,<wide|u|~>(X<rsub|m>))\<geqslant\>V<rsup|<wide|u|~>>(x)-<frac|\<varepsilon\>|1-\<beta\>>\<geqslant\>V(x)-<frac|\<varepsilon\>|1-\<beta\>>
    </equation*>

    et par l'arbitrarit� de <math|\<varepsilon\>\<gtr\>0> on conclut que
    <math|F(x)\<geqslant\>V(x)> et donc que <math|F(x)=V(x)>.
  </proof>

  \ 

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|language|french>
    <associate|par-first|.5fn>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|2|2>>
    <associate|auto-4|<tuple|3|4>>
    <associate|auto-5|<tuple|4|5>>
    <associate|auto-6|<tuple|5|6>>
    <associate|bayes|<tuple|1|?>>
    <associate|eca|<tuple|a)|2>>
    <associate|ecb|<tuple|b)|2>>
    <associate|ecbb|<tuple|b')|2>>
    <associate|ecp1|<tuple|1|3>>
    <associate|ecp2|<tuple|2|3>>
    <associate|eq:15|<tuple|1|?>>
    <associate|eq:bellman-homogen|<tuple|5|3>>
    <associate|eq:bellman-infty|<tuple|6|5>>
    <associate|eq:canon-1|<tuple|3|2>>
    <associate|eq:canon-P|<tuple|4|2>>
    <associate|eq:def-cond-exp|<tuple|1|2>>
    <associate|eq:def-cond-exp-bis|<tuple|2|2>>
    <associate|eq:def-proc-contr|<tuple|1|1>>
    <associate|eq:equi|<tuple|3|?>>
    <associate|eq:faible|<tuple|2|?>>
    <associate|eq:optimal-discounted|<tuple|7|6>>
    <associate|eq:strong-markov|<tuple|1|?>>
    <associate|eq:strong-x1|<tuple|3|?>>
    <associate|eq:typical-event|<tuple|2|?>>
    <associate|part:esp-cond|<tuple|I|1>>
    <associate|sec:ec|<tuple|2|2>>
    <associate|sec:espcon|<tuple|1|?>>
    <associate|sec:espcond|<tuple|1|?>>
    <associate|sec:esper-cond-comme|<tuple|3|?>>
    <associate|sec:st|<tuple|2|?>>
    <associate|th:l2-complete|<tuple|1|1>>
    <associate|th:mes-rv|<tuple|1|?>>
    <associate|th:wald|<tuple|5|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><\with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>>
        Cha�nes de Markov contr�l�es
      </with> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Cha�nes
      contr�l�es> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Principe
      d'optimalit�> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Contr�le
      en horizon fini> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Contr�le
      en horizon infini: cas des gains positifs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Contr�le
      en horizon infini: cas des co�ts actualis�s>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>