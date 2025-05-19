<TeXmacs|1.0.7.6>

<style|article>

<\body>
  <\hide-preamble>
    \;
  </hide-preamble>

  <small|<verbatim|[M. Gubinelli - Contr�le des cha�nes de Markov - M1 MMD
  2010/2011 - 20100929 - poly 2 - v.1]>>

  <\chapter*>
    Arr�t optimal
  </chapter*>

  <section|Rappels sur les processus et sur les temps d'arr�t>

  Soit <math|(\<Omega\>,\<cal-A\>,\<bbb-P\>)> un espace probabilis� et
  <math|\<cal-F\>={\<cal-F\><rsub|n>}<rsub|n\<geqslant\>1>> une filtration
  (c-�-d une famille croissante des sous-tribus de <math|\<cal-A\>>). La
  filtration d�termine ce qu'on sait et ce qu'on n sait pas � un instant de
  temps donn�: tout �v�nement <math|A\<in\>\<cal-F\><rsub|n>> est d�termin�
  au temps <math|n>. Un processus <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> est
  dit adapt� ssi <math|X<rsub|n>\<in\>\<cal-F\><rsub|n>> pour tout
  <math|n\<in\>\<bbb-N\>>. Il est pr�visible si <math|X<rsub|1>> est
  constante et <math|X<rsub|n>\<in\>\<cal-F\><rsub|n-1>> pour tout
  <math|n\<gtr\>1>. Il est int�grable si <math|X<rsub|n>\<in\>L<rsup|1>(\<Omega\>)>
  pour tout <math|n>. Il est une martingale (sur/sous) si il est int�grable
  et <math|X<rsub|n>=\<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>]>
  (<math|\<geqslant\>>,<math|\<leqslant\>>) pour tout <math|n\<geqslant\>1>.

  L'esp�rance conditionnelle d'une v.a. <math|F> int�grable par rapport � une
  tribu <math|\<cal-G\>> est une v.a. int�grable
  <math|\<bbb-E\>[F\|\<cal-G\>]> telle que <math|\<bbb-E\>[G F]=\<bbb-E\>[G
  \<bbb-E\>[F\|\<cal-G\>]]> pour tout v.a. born�e <math|F> qui est
  <math|\<cal-G\>>--mesurable.

  Un temps d'arr�t <math|T> est une v.a. <math|T:\<Omega\>\<rightarrow\>\<bbb-N\>>
  telle que les �v�nements <math|{T=k}> sont
  <math|\<cal-F\><rsub|k>>--mesurables pour tout <math|k\<in\>\<bbb-N\>>.
  Cette condition �quivaut � demander que
  <math|{T\<leqslant\>k}\<in\>\<cal-F\><rsub|k>> pour tout
  <math|k\<in\>\<bbb-N\>>. Quelques propri�t�s des temps d'arr�t:
  <math|{T\<gtr\>k}\<in\>\<cal-F\><rsub|k>>,
  <math|{T\<geqslant\>k}\<in\>\<cal-F\><rsub|k-1>>, si <math|T,S> sont t.a.
  alors <math|T\<wedge\>S=min(T,S)> et <math|T\<wedge\>S=max(T,S)> sont t.a.
  (<math|(T\<wedge\>S)(\<omega\>)=min(T(\<omega\>),S(\<omega\>))>).

  La tribu <math|\<cal-F\><rsub|T>> engendr�e par le temps d'arr�t <math|T>
  est la plus petite tribu qui contient les �v�nements
  <math|A\<in\>\<cal-A\>> tels que <math|{T\<leqslant\>k}\<cap\>A\<in\>\<cal-F\><rsub|k>>
  pour tout <math|k\<in\>\<bbb-N\>>, i.e.

  <\equation*>
    \<cal-F\><rsub|T>=\<sigma\>(A\<in\>\<cal-A\> :{T\<leqslant\>k}\<cap\>A :
    k\<in\>\<bbb-N\>, A\<in\>\<cal-F\><rsub|k>)
  </equation*>

  Une fonction <math|G> est <math|\<cal-F\><rsub|T>>--mesurable ssi <math|G
  \<bbb-I\><rsub|{T=k}>> est <math|\<cal-F\><rsub|k>>--mesurable pour tout
  <math|k\<in\>\<bbb-N\>>. C'est une caract�risation �quivalente des
  fonctions <math|\<cal-F\><rsub|T>>--mesurables. Pour le prouver on note que
  il est vrai pour les fonction caract�ristiques <math|G=\<bbb-I\><rsub|B>>
  o� <math|B\<in\>\<cal-F\><rsub|T>> et que on peut approcher n'importe
  quelle fonction <math|\<cal-F\><rsub|T>> mesurable par des combinaison
  lin�aires des fonctions caract�ristiques. Si on note
  <math|G<rsub|k>=><math|G \<bbb-I\><rsub|{T=k}>> alors on a que
  <math|(G<rsub|k>)<rsub|k\<geqslant\>1>> est un processus adapt� et que
  <math|G = G<rsub|T>>. Donc toute fonction <math|G\<in\>\<cal-F\><rsub|T>>
  peut �tre �crite comme la valeur au temps <math|T> d'un processus adapt�
  <math|(G<rsub|k>)<rsub|k\<geqslant\>1>>.\ 

  Si <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> est un processus adapt� alors le
  processus arr�t� en <math|T>: <math|<wide|X|~><rsub|n>=X<rsub|n\<wedge\>T>>
  est adapt� et <math|X<rsub|T>> est <math|\<cal-F\><rsub|T>>--mesurable. Si
  <math|(M<rsub|n>)<rsub|n\<geqslant\>1>> est une martingale alors
  <math|(<wide|M|~><rsub|n>)<rsub|n\<geqslant\>1>> est une martingale. Si
  <math|S,T> sont deux t.a. alors on dit que <math|S\<leqslant\>T> si
  <math|S(\<omega\>)\<leqslant\>T(\<omega\>)> presque s�rement.

  Si <math|S,T> sont deux t.a. tels que <math|S\<leqslant\>T> alors
  <math|\<cal-F\><rsub|S>\<subseteq\>\<cal-F\><rsub|T>>. Preuve: La tribu
  <math|\<cal-F\><rsub|S>> est engendr�e par les �v�nements
  <math|A\<in\>\<cal-A\>> tels que <math|{S\<leqslant\>k}\<cap\>A\<in\>\<cal-F\><rsub|k>>.
  Mais alors si <math|A\<in\>\<cal-F\><rsub|S>> on a que
  <math|{T\<leqslant\>k}\<cap\>A={S\<leqslant\>T\<leqslant\>k}\<cap\>A={T\<leqslant\>k}\<cap\>({S\<leqslant\>k}\<cap\>A)\<in\>\<cal-F\><rsub|k>>
  car <math|{T\<leqslant\>k}\<in\>\<cal-F\><rsub|k>> et
  <math|{S\<leqslant\>k}\<cap\>A\<in\>\<cal-F\><rsub|k>> par hypoth�se. Donc
  tous les g�n�rateurs <math|A<rsub|>> de <math|\<cal-F\><rsub|S>> sont aussi
  g�n�rateurs de <math|\<cal-F\><rsub|T>> et donc
  <math|\<cal-F\><rsub|S>\<subseteq\>\<cal-F\><rsub|T>>.

  <\lemma>
    \ Si les t.a. sont born�es et <math|(M<rsub|n>)<rsub|n\<geqslant\>1>> est
    une martingale, alors\ 

    <\equation>
      \<bbb-E\>[M<rsub|T>\|\<cal-F\><rsub|S>]=M<rsub|S>.<label|eq:stopping-time-mart>
    </equation>
  </lemma>

  <\proof>
    Soit <math|N\<in\>\<bbb-N\>> tel que <math|S\<leqslant\>T\<leqslant\>N>
    par l'hypoth�se de borninude des t.a. On montre d'abord que
    <math|><math|\<bbb-E\>[M<rsub|N>\|\<cal-F\><rsub|T>]=M<rsub|T>>. Par la
    d�finition d'esp�rance conditionnelle on doit montrer que
    <math|\<bbb-E\>[M<rsub|N> G]=\<bbb-E\>[M<rsub|T> G]> pour toute fonction
    born�e <math|G> qui est <math|\<cal-F\><rsub|T>>--mesurable. On a que
    <math|G \<bbb-I\><rsub|{T=n}>\<in\>\<cal-F\><rsub|n>> et que

    <\equation*>
      \<bbb-E\>[M<rsub|N> G]=<big|sum><rsub|n=1><rsup|N>\<bbb-E\>[M<rsub|N> G
      \<bbb-I\><rsub|{T=n}>]=<big|sum><rsub|n=1><rsup|N>\<bbb-E\>[\<bbb-E\>[M<rsub|N>\|\<cal-F\><rsub|n>]
      G \<bbb-I\><rsub|{T=n}>]
    </equation*>

    <\equation*>
      =<big|sum><rsub|n=1><rsup|N>\<bbb-E\>[M<rsub|n> G
      \<bbb-I\><rsub|{T=n}>]=<big|sum><rsub|n=1><rsup|N>\<bbb-E\>[M<rsub|T> G
      \<bbb-I\><rsub|{T=n}>]=\<bbb-E\>[M<rsub|T> G].
    </equation*>

    Maintenant on a que <math|\<bbb-E\>[M<rsub|T>\|\<cal-F\><rsub|S>]=\<bbb-E\>[\<bbb-E\>[M<rsub|N>\|\<cal-F\><rsub|T>]\|\<cal-F\><rsub|S>]=\<bbb-E\>[M<rsub|N>\|\<cal-F\><rsub|S>]=M<rsub|S>>
    car <math|\<cal-F\><rsub|S>\<subseteq\>\<cal-F\><rsub|T>>.
  </proof>

  <\remark>
    Une propri�t�s analogues sont vraie pour les sous/sur--martingales. Soit
    <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> une sous-martingale, alors il
    existe toujours une martingale <math|(M<rsub|n>)<rsub|n\<geqslant\>1>> et
    un processus pr�visible croissante <math|(A<rsub|n>)<rsub|n\<geqslant\>1>>
    (i.e. <math|A<rsub|n>\<in\>\<cal-F\><rsub|n-1>> et
    <math|A<rsub|n+1>\<geqslant\>A<rsub|n>>) tels que
    <math|X<rsub|n>=M<rsub|n>+A<rsub|n>>. En effet si <math|M> doit �tre une
    martingale on a que

    <\equation*>
      X<rsub|n>-A<rsub|n>=M<rsub|n>=\<bbb-E\>[M<rsub|n+1>\|\<cal-F\><rsub|n>]=\<bbb-E\>[X<rsub|n+1>-A<rsub|n+1>\|\<cal-F\><rsub|n>]=\<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>]-A<rsub|n+1>
    </equation*>

    et donc il suffit d�finir <math|A> par <math|A<rsub|1>=0> et
    <math|A<rsub|n+1>-A<rsub|n>=\<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>]-X<rsub|n>\<geqslant\>0>
    pour tout <math|n\<gtr\>1>. Alors si <math|X> est une sous-martingales
    avec d�composition <math|X<rsub|n>=M<rsub|n>+A<rsub|n>> on a que

    <\equation*>
      \<bbb-E\>[X<rsub|T>\|\<cal-F\><rsub|S>]=\<bbb-E\>[M<rsub|T>\|\<cal-F\><rsub|S>]+\<bbb-E\>[A<rsub|T>\|\<cal-F\><rsub|S>]=M<rsub|S>+\<bbb-E\>[A<rsub|T>\|\<cal-F\><rsub|S>]\<geqslant\>M<rsub|S>+\<bbb-E\>[A<rsub|S>\|\<cal-F\><rsub|S>]=M<rsub|S>+A<rsub|S>=X<rsub|S>
    </equation*>

    car <math|A<rsub|T>\<geqslant\>A<rsub|S>> par la croissance de
    <math|(A<rsub|n>)<rsub|n\<geqslant\>1>> et le fait que
    <math|T\<geqslant\>S>.\ 
  </remark>

  <\remark>
    Si <math|F> est une v.a. int�grable alors
    <math|F<rsub|n>=\<bbb-E\>[F\|\<cal-F\><rsub|n>]> est une martingale. Donc
    le lemme pr�c�dent donne que <math|\<bbb-E\>[F<rsub|>\|\<cal-F\><rsub|S>]=F<rsub|S>>
    pour tout t.a. born�e <math|S>. Donc on peut calculer l'esp�rance
    conditionnelle par rapport � la tribu <math|\<cal-F\><rsub|S>> en prenant
    la valeur au temps <math|n=S> de l'esp�rance conditionnelle calcul� par
    rapport � <math|\<cal-F\><rsub|n>>.
  </remark>

  <section|Arr�t optimal en horizon fini>

  On consid�re un processus adapt� <math|(Y<rsub|n>)<rsub|n\<geqslant\>1>> et
  on se pose le probl�me d'optimiser la valeur <math|\<bbb-E\>[Y<rsub|T>]>
  parmi tous les temps d'arr�t <math|T> (pour la filtration
  <math|\<cal-F\>>). L'interpr�tation est que <math|Y<rsub|n>(\<omega\>)> est
  le gain qu'on obtient si on d�cide de s'arr�ter au temps <math|n> et qu'on
  cherche � optimiser le gain moyen attendu en fonction de la r�gle d'arr�t
  que on se donne (que est la seule chose raisonnable au temps initial, i.e.
  sans conna�tre au pr�alable l'�volution du syst�me). On retient seulement
  les r�gles d'arr�t <math|T:\<Omega\>\<rightarrow\>\<bbb-R\>> qui sont
  telles que <math|{T=n}\<in\>\<cal-F\><rsub|n>>, c-�-d pour lesquelles on
  sait dire si il faut s'arr�ter au temps <math|n> seulement en fonction de
  l'histoire observ�e jusqu'� ce moment-l�<math|>.\ 

  On consid�re d'abord le probl�me en horizon fini, i.e. on se donne
  <math|N\<in\>\<bbb-N\>> fix�, on appelle <math|\<cal-T\><rsub|N>>
  l'ensemble des temps d'arr�t born�s par <math|N> et on optimise parmi tous
  les t.a. <math|T\<in\>\<cal-T\><rsub|N>>. \ Soit <math|J<rsub|N>=
  sup<rsub|T\<in\>\<cal-T\><rsub|N>>\<bbb-E\>[Y<rsub|T>]> le gain moyen
  optimal. On appelle <math|T<rsup|*****\<star\>>\<leqslant\>N> temps d'arr�t
  optimal si <math|\<bbb-E\>[Y<rsub|T<rsup|\<star\>>>]=J<rsub|N>>.\ 

  <strong|Notation:> L'infimum tronqu� <math|inf<rsub|N> A> pour un ensemble
  <math|A\<subseteq\>\<bbb-R\>> est donn� par <math|inf<rsub|N>A=inf A> si
  <math|A\<neq\>\<emptyset\>> et <math|inf<rsub|N>\<emptyset\>=N>.\ 

  \;

  La solution du probl�me d'arr�t optimal (comme de la plus part des
  probl�mes d'optimisation) passe par la d�termination d'une <em|fonction
  valeur> <math|Z<rsub|n>> associ� aux diff�rent choix qui sont encore
  disponibles au temps <math|n>. La fonction valeur repr�sente le gain sur
  lequel on peut esp�rer en fonction de tous l'information que j'ai accumul�
  jusqu'au temps <math|n>, i.e. de <math|\<cal-F\><rsub|n>>. Elle doit
  satisfaire les propri�t�s suivantes:

  <\itemize-minus>
    <item><math|Z<rsub|n>\<in\>\<cal-F\><rsub|n>> : elle est un processus
    adapt�. On doit �tre capable de la d�terminer seulement en fonction des
    informations disponibles au temps <math|n>.

    <item><math|Z<rsub|n>\<geqslant\>Y<rsub|n>> : au temps <math|n> ce que
    j'esp�re gagner ne peut pas �tre inf�rieur � ce que je peux gagner en
    m'arr�tant tout de suite � <math|n>.\ 

    <item><math|Z<rsub|n>\<geqslant\>\<bbb-E\>[Z<rsub|n+1>\|\<cal-F\><rsub|n>]>
    : ma position a une valeur qui n'est pas inf�rieure � ce que j'esp�re
    gagner en moyenne � l'�tape suivante (�tant donn� que je connais d�j�
    <math|\<cal-F\><rsub|n>>) .
  </itemize-minus>

  En effet � chaque �tape j'ai deux choix (m'arr�ter ou continuer) sauf au
  temps final <math|N> o� je dois forcement m'arr�ter et donc gagner
  <math|Y<rsub|N>>. On d�fini donc la fonction valeur par

  <\equation>
    Z<rsub|N>=Y<rsub|N>, <space|1em><with|mode|text|
    <math|Z<rsub|n>=sup(Y<rsub|n>,\<bbb-E\>[Z<rsub|n+1>\|\<cal-F\><rsub|n>])>><space|1em>pour
    1\<leqslant\>n\<less\>N <space|1em><label|eq:snell-envelope>
  </equation>

  Elle est une sur-martingale qui majore <math|Y>. En effet on va montrer
  qu'elle est l'<em|enveloppe de Snell> de <math|Y>, i.e. la plus petite
  sur-martingale <math|Q> tel que <math|Q<rsub|n>\<geqslant\>Y<rsub|n>> pour
  tout <math|0\<leqslant\>n\<leqslant\>N>.

  <\theorem>
    Soit <math|(Y<rsub|n>)<rsub|n\<geqslant\>1>> un processus adapt� tel que
    <math|\<bbb-E\>\|Y<rsub|n>\|\<less\>\<infty\>>pour tout
    <math|n\<geqslant\>1>. On d�fini <math|Z<rsub|n>> par
    l'eq.<space|0.2spc>(<reference|eq:snell-envelope>) et un t.a.
    <math|T<rsup|\<star\>>=inf{k\<leqslant\>N: Y<rsub|k>=Z<rsub|k>}>. Alors
    la suite <math|(Z<rsub|n\<wedge\>T<rsup|*\<star\>>>)<rsub|n\<geqslant\>1>>
    est une martingale et

    <\equation*>
      \<bbb-E\>[Z<rsub|1>]=\<bbb-E\>[Z<rsub|T<rsup|\<star\>>>]=\<bbb-E\>[Y<rsub|T<rsup|\<star\>>>]=J<rsub|N>.
    </equation*>

    Le t.a. <math|T<rsup|\<star\>>> est optimal et <math|Z> est l'enveloppe
    de Snell de <math|Y>.
  </theorem>

  <\remark>
    On utilisera souvent des �critures du genre
    <math|T<rsup|\<star\>>=inf{k\<leqslant\>N: Y<rsub|k>=Z<rsub|k>}> pour
    d�finir des temps d'arr�t. Ils sont abr�g�es pour
    <math|T<rsup|\<star\>>(\<omega\>)=inf{k\<leqslant\>N:
    Y<rsub|k>(\<omega\>)=Z<rsub|k>(\<omega\>)}>. Exercice: montrer que \ il
    s'agit bien d'un temps d'arr�t.\ 
  </remark>

  <\proof>
    Par d�finition <math|Z<rsub|n>\<geqslant\>\<bbb-E\>[Z<rsub|n+1>\|\<cal-F\><rsub|n>]>
    et <math|Z<rsub|n>\<geqslant\>Y<rsub|n>>. Sur l'�v�nement
    <math|{T<rsup|\<star\>>\<geqslant\>n}> on a
    <math|Z<rsub|n>=\<bbb-E\>[Z<rsub|n+1>\|\<cal-F\><rsub|n>]> donc le
    processus <math|<wide|Z|~><rsub|n>\<assign\>Z<rsub|n\<wedge\>T<rsup|\<star\>>>>
    est une martingale par rapport � <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>1>>.
    En effet <math|\<bbb-E\>[1<rsub|A>Z<rsub|(n+1)\<wedge\>T<rsup|\<star\>>>]=\<bbb-E\>[1<rsub|A>Z<rsub|n\<wedge\>T<rsup|\<star\>>>]>
    pour tout <math|A\<in\>\<cal-F\><rsub|n>>. Donc si on consid�re les deux
    temps d'arr�t <math|n\<wedge\>T<rsup|\<star\>>> et
    <math|T<rsup|\<star\>>> on a <math|n\<wedge\>T<rsup|\<star\>>\<leqslant\>T<rsup|\<star\>><rsup|>>
    et <math|\<bbb-E\>[<wide|Z|~><rsub|T<rsup|\<star\>>>\|\<cal-F\><rsub|n\<wedge\>T<rsup|*\<star\>>>]=<wide|Z|~><rsub|n\<wedge\>T<rsup|\<star\>>>>
    qui �quivaut � dire <math|\<bbb-E\>[Z<rsub|T<rsup|\<star\>>>\|\<cal-F\><rsub|n\<wedge\>T<rsup|*\<star\>>>]=Z<rsub|n\<wedge\>T<rsup|\<star\>>>>.
    En prenant l'esp�rance on a, pour tout t.a. <math|T\<leqslant\>N>:

    <\equation*>
      \<bbb-E\>[Y<rsub|T>]\<leqslant\><rsub|(1)>\<bbb-E\>[Z<rsub|T>]\<leqslant\><rsub|(2)>\<bbb-E\>[Z<rsub|1>]=<rsub|(3)>\<bbb-E\>[Z<rsub|T<rsup|*\<star\>>>]=<rsub|(4)>\<bbb-E\>[Y<rsub|T<rsup|\<star\>>>]
    </equation*>

    o� l'in�galit� (1) est donne par la propri�t� que
    <math|Y<rsub|n>\<leqslant\>Z<rsub|n><rsub|>> pour tout <math|n> et donc
    pour tout t.a. <math|T \<leqslant\> N>, l'in�galit� (2) est la propri�t�
    de sur-martingale de <math|Z<rsub|n>> par rapport au t.a. <math|T>,
    l'�galit� (3) est donne par la propri�t� de martingale du processus
    arr�t� <math|<wide|Z|~><rsub|n>> et enfin l'�galit� (4) est du au fait
    que <math|Y<rsub|T<rsup|\<star\>>>=Z<rsub|T<rsup|\<star\>>>> par
    d�finition de <math|T<rsup|\<star\>>>. Cela �tant vrai pour n'importe
    quelle t.a. <math|T\<leqslant\>N> on a que
    <math|\<bbb-E\>[Y<rsub|T<rsup|\<star\>>>]=J<rsub|N>> et donc que
    <math|T<rsup|\<star\>>> est un t.a. optimal pour <math|Y>. Le gain
    optimal est donn� par <math|J<rsub|N>=\<bbb-E\>[Z<rsub|1>].> On va
    montrer que <math|Z<rsub|>> est l'enveloppe de Snell de <math|Y>: en
    effet soit <math|Q> un autre sur-martingale qui domine <math|Y>: au temps
    final on a <math|><math|Q<rsub|N>\<geqslant\>Y<rsub|N>=Z<rsub|N>>. De
    plus si on a <math|Q<rsub|n>\<geqslant\>Z<rsub|n>> pour tout
    <math|N\<geqslant\>n\<gtr\>k> alors <math|Q<rsub|k>\<geqslant\>\<bbb-E\>[Q<rsub|k+1>\|\<cal-F\><rsub|k>]\<geqslant\>\<bbb-E\>[Z<rsub|k+1>\|\<cal-F\><rsub|k>]>
    et <math|Q<rsub|k>\<geqslant\>Y<rsub|k>>, donc on a aussi
    <math|Q<rsub|k>\<geqslant\>Z<rsub|k>> et on a �tabli la domination aussi
    a l'instant <math|k>. Par induction (r�trograde) on a domination � tout
    temps <math|1\<leqslant\>k\<leqslant\>N> et donc <math|Z> est
    effectivement la plus petite des sur-martingales qui dominent <math|Y>.
    On peut conclure que le gain optimal est donn� par l'esp�rance en
    <math|1> de l'enveloppe de Snell de <math|Y>.
  </proof>

  <\corollary>
    <label|cor:lower-bound-optimal>Le t.a. <math|T<rsup|\<star\>>> est le
    plus petit t.a. optimal: si <math|S> est un autre t.a. optimal alors
    <math|T<rsup|\<star\>>\<leqslant\>S<rsup|>> presque s�rement.
  </corollary>

  <\proof>
    Supposons que <math|\<bbb-P\>(T<rsup|\<star\>>\<gtr\>S)\<gtr\>0>. Alors
    pour <math|\<omega\>\<in\>\<Omega\>> tel que
    <math|T<rsup|\<star\>>(\<omega\>)\<gtr\>S(\<omega\>)> on a que
    <math|Y<rsub|S>(\<omega\>)\<less\>Z<rsub|S>(\<omega\>)> car
    <math|T<rsup|\<star\>>(\<omega\>)> est le premier <math|k> ou on a
    l'�galit� <math|Y<rsub|k>(\<omega\>)=Z<rsub|k>(\<omega\>)>. Comme
    l'�v�nement <math|{T<rsup|\<star\>>\<gtr\>S}> a une probabilit� positive
    on obtient que <math|\<bbb-E\>[Y<rsub|S>]\<less\>\<bbb-E\>[Z<rsub|S>]>
    strictement. Mais par la propri�t� de sur-martingale de <math|Z> on en
    d�duit que <math|\<bbb-E\>[Y<rsub|S>]\<less\>\<bbb-E\>[Z<rsub|S>]\<leqslant\>\<bbb-E\>[Z<rsub|1>]=J<rsub|N>>
    et cela est en contradiction avec l'hypoth�se que <math|S> est optimal
    (i.e. <math|\<bbb-E\>[Y<rsub|S>]=sup<rsub|T>\<bbb-E\>[Y<rsub|T>]=J<rsub|N>>).
  </proof>

  <\remark>
    Si <math|F> est une v.a. positive (<math|\<geqslant\>0>) et l'�v�nement
    <math|{F\<gtr\>0}> a probabilit� strictement positive, alors
    <math|\<bbb-E\>[F]\<gtr\>0>. En effet si
    <math|\<bbb-P\>(F\<gtr\>0)\<gtr\>0> alors
    <math|\<bbb-P\>(F\<geqslant\>\<varepsilon\>)\<gtr\>0> pour
    <math|\<varepsilon\>\<gtr\>0> suffisamment petit (pourquoi?). Et donc
    <math|\<bbb-E\>[F]\<geqslant\>\<bbb-E\>[F
    \<bbb-I\><rsub|F\<geqslant\>\<varepsilon\>>]\<geqslant\>\<bbb-E\>[\<varepsilon\>
    *\<bbb-I\><rsub|F\<geqslant\>\<varepsilon\>>]\<geqslant\>\<varepsilon\>*\<bbb-P\>(F\<geqslant\>\<varepsilon\>)\<gtr\>0>.
  </remark>

  <\remark>
    On observe qu'une d�finition �quivalente de <math|T<rsup|\<star\>>> est

    <\equation*>
      T<rsup|\<star\>>=inf{k\<leqslant\>N :
      Y<rsub|k>\<geqslant\>\<bbb-E\>[Z<rsub|k+1>\|\<cal-F\><rsub|k>] }
    </equation*>
  </remark>

  <\corollary>
    Le temps d'arr�t <math|T<rsup|\<sharp\>>=inf{k\<leqslant\>N :
    Y<rsub|k>\<gtr\>\<bbb-E\>[Z<rsub|k+1>\|\<cal-F\><rsub|k>]}> est le plus
    grand temps d'arr�t optimal: si <math|S> est un t.a. optimal alors
    <math|S\<leqslant\>T<rsup|\<sharp\>>> p.s..
  </corollary>

  <\proof>
    Supposons que <math|\<bbb-P\>(T<rsup|\<sharp\>>\<less\>S)\<gtr\>0>. On
    remarque que <math|<wide|Z|~><rsub|n>=Z<rsub|n\<wedge\>(T<rsup|\<sharp\>>+1)>>
    est une martingale (en effet si <math|n\<leqslant\>T<rsup|\<sharp\>>>
    alors <math|Y<rsub|n>\<leqslant\>\<bbb-E\>[Z<rsub|n+1>\|\<cal-F\><rsub|n>]>
    et donc <math|Z<rsub|n>=\<bbb-E\>[Z<rsub|n+1>\|\<cal-F\><rsub|n>]>).
    D'une part on a que <math|\<bbb-E\>[<wide|Z|~><rsub|S>\|\<cal-F\><rsub|S>]=<wide|Z|~><rsub|S>>
    par la martingalit� de <math|<wide|Z|~>>. On remarque aussi que
    <math|{T<rsup|\<sharp\>>\<geqslant\>S}\<in\>\<cal-F\><rsub|S>> et donc
    que

    <\equation>
      Y<rsub|S>*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<geqslant\>S>\<leqslant\>Z<rsub|S>*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<geqslant\>S>=<wide|Z|~><rsub|S>*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<geqslant\>S>=
      \<bbb-E\>[<wide|Z|~><rsub|T<rsup|\<sharp\>>>
      \<bbb-I\><rsub|T<rsup|\<sharp\>>\<geqslant\>S>\|\<cal-F\><rsub|S>]*=
      \<bbb-E\>[Z<rsub|T<rsup|\<sharp\>>>
      \<bbb-I\><rsub|T<rsup|\<sharp\>>\<geqslant\>S>\|\<cal-F\><rsub|S>]<label|eq:sharp1>.
    </equation>

    D'autre part, si on pose <math|Z<rsub|N+1>=Z<rsub|N>> alors
    <math|(Z<rsub|n>)<rsub|n=1,\<ldots\>,N+1>> est encore une sur-martingale
    et donc on a que <math|\<bbb-E\>[Z<rsub|S\<vee\>(T<rsup|\<sharp\>>+1)>\|\<cal-F\><rsub|T<rsup|\<sharp\>>+1>]\<leqslant\>Z<rsub|T<rsup|\<sharp\>>+1>>
    (in�galit� de sur-martingale avec les deux t.a.
    <math|T<rsup|\<sharp\>>+1\<leqslant\>S\<vee\>(T<rsup|\<sharp\>>+1)\<leqslant\>N+1>).
    Pour le fait que <math|{T<rsup|\<sharp\>>\<less\>S}\<in\>\<cal-F\><rsub|T<rsup|\<sharp\>>>>
    et que <math|Y<rsub|S>\<leqslant\>Z<rsub|S>> :

    <\eqnarray>
      <tformat|<cwith|1|1|2|2|cell-valign|b>|<cwith|1|2|2|2|cell-halign|l>|<table|<row|<cell|\<bbb-E\>[Y<rsub|S>*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<less\>S>]>|<cell|\<leqslant\>
      \ \<bbb-E\>[Z<rsub|S>*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<less\>S>]=
      \<bbb-E\>[Z<rsub|S\<vee\>(T<rsup|\<sharp\>>+1)>*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<less\>S>]=\<bbb-E\>[\<bbb-E\>[Z<rsub|S\<vee\>(T<rsup|\<sharp\>>+1)>\|\<cal-F\><rsub|T<rsup|\<sharp\>>+1>]*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<less\>S>]>|<cell|<eq-number><label|eq:sharp2>>>|<row|<cell|>|<cell|\<leqslant\>
      \<bbb-E\>[Z<rsub|T<rsup|\<sharp\>>+1>**\<bbb-I\><rsub|T<rsup|\<sharp\>>\<less\>S>]=
      \ \<bbb-E\>[\<bbb-E\>[Z<rsub|T<rsup|\<sharp\>>+1>*\|\<cal-F\><rsub|T<rsup|\<sharp\>>>]*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<less\>S>]\<less\>\<bbb-E\>[Y<rsub|T<rsup|\<sharp\>>>*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<less\>S>]\<leqslant\>\<bbb-E\>[Z<rsub|T<rsup|\<sharp\>>>*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<less\>S>]>|<cell|>>>>
    </eqnarray>

    o� on a utilis� aussi le fait que par la d�finition de
    <math|T<rsup|\<sharp\>>> on a <math|Y<rsub|T<rsup|\<sharp\>>>\<gtr\>\<bbb-E\>[Z<rsub|T<rsup|\<sharp\>>+1>\|\<cal-F\><rsub|T<rsup|\<sharp\>>>]<rsub|>>.
    L'eq. (<reference|eq:sharp1>) et l'eq. (<reference|eq:sharp2>) donnent
    que

    <\equation*>
      \<bbb-E\>[Y<rsub|S>]=\<bbb-E\>[Y<rsub|S>*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<geqslant\>S>]+\<bbb-E\>[Y<rsub|S>*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<less\>S>]\<less\>\<bbb-E\>[Z<rsub|T<rsup|\<sharp\>>>*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<geqslant\>S>]+\<bbb-E\>[Z<rsub|T<rsup|\<sharp\>>>*\<bbb-I\><rsub|T<rsup|\<sharp\>>\<less\>S>]=\<bbb-E\>[Z<rsub|T<rsup|\<sharp\>>>]=\<bbb-E\>[Y<rsub|T<rsup|\<sharp\>>>]
    </equation*>

    qui est en contradiction avec l'hypoth�se d'optimalit� de <math|S>.
  </proof>

  <\remark>
    Il sera utile de donner une preuve d�taill� du fait que
    <math|<with|mode|text|<math|Y<rsub|T<rsup|\<sharp\>>>\<gtr\>\<bbb-E\>[Z<rsub|T<rsup|\<sharp\>>+1>\|\<cal-F\><rsub|T<rsup|\<sharp\>>>]<rsub|>>>>.
    Commencer par montrer que si <math|F> est une v.a. int�grable et <math|T>
    est un t.a. alors <math|\<bbb-E\>[F\|\<cal-F\><rsub|T>]\<bbb-I\><rsub|T=n>=\<bbb-E\>[F\|\<cal-F\><rsub|n>]\<bbb-I\><rsub|T=n>=\<bbb-E\>[F
    \<bbb-I\><rsub|T=n>\|\<cal-F\><rsub|n>]>. De suite �crire
    <math|Y<rsub|T<rsup|\<sharp\>>>=<big|sum><rsub|n=1><rsup|N>Y<rsub|n>\<bbb-I\><rsub|T<rsup|\<sharp\>>=n>>
    et conclure.\ 
  </remark>

  <subsection|Probl�mes avec structure markovienne>

  Dans cette section on consid�re des probl�mes d'arr�t optimal (horizon
  fini) pour lesquels le processus des gains <math|Y<rsub|>> est une fonction
  connue d'une cha�ne de Markov <math|X> pour la filtration <math|\<cal-F\>>.
  On montre que pour cette classe de probl�mes la fonction valeur <math|Z >a
  une forme simple.\ 

  Un processus de Markov <math|X> pour la filtration <math|\<cal-F\>> et �
  valeurs dans l'espace d�nombrable <math|\<cal-S\>> \ est un processus
  adapt� <math|(X<rsub|n>)<rsub|n=1,2,\<ldots\>>> tel que <math|X<rsub|n> :
  \<Omega\>\<rightarrow\>\<cal-S\>> et que

  <\equation*>
    \<bbb-P\>(X<rsub|n+1>=x\|\<cal-F\><rsub|n>)=\<bbb-P\>(X<rsub|n+1>=x\|X<rsub|n>)=P<rsub|n>(X<rsub|n>,x)<space|2em>\<forall\>x\<in\>\<cal-S\>,n\<geqslant\>1
  </equation*>

  o� <math|P<rsub|n>> est le noyau de transition du processus de Markov au
  temps <math|n> <math|P<rsub|n>(x,y)=\<bbb-P\>(X<rsub|n+1>=y\|X<rsub|n>=x)>
  qui v�rifie <math|<big|sum><rsub|y\<in\>\<cal-S\>>P<rsub|n>(x,y)=1> pour
  tout <math|x\<in\>\<cal-S\>> et <math|n\<geqslant\>1>. Si
  <math|P<rsub|n>(x,y)=P(x,y)> ind�pendamment de <math|n> on dit que le
  processus de Markov est homog�ne. <math|P<rsub|n>> est aussi appel� matrice
  de transition.

  <\example>
    Dans le probl�me de la princesse la suite
    <math|(X<rsub|n>)<rsub|n=1,\<ldots\>,N>> est un processus de Markov avec
    espace d'�tats <math|\<cal-S\>={1,\<ldots\>,N}> et noyau de transition
    donn� par

    <\equation*>
      P<rsub|n>(x,y)=\<bbb-P\>(X<rsub|n+1>=y\|X<rsub|n>=x)=\<bbb-P\>(X<rsub|n+1>=y)=<frac|1|n+1>\<bbb-I\><rsub|1\<leqslant\>y\<leqslant\>n+1>
    </equation*>

    par ind�pendance des <math|X<rsub|n>>. On remarque que ce n'est par un
    processus homog�ne en temps.
  </example>

  <\example>
    Dans le probl�me de Moser si on fait l'hypoth�se que la loi <math|>des
    <math|X<rsub|n>> est � valeurs dans l'espace d�nombrable <math|\<cal-S\>>
    on a que les <math|X<rsub|n>> constituent un processus de Markov avec
    matrice de transition homog�ne <math|P(x,y)=\<pi\>(y)> o�
    <math|\<pi\>(y)=\<bbb-P\>(X<rsub|1>=y)>.
  </example>

  Soit <math|X> un processus de Markov pour la filtration <math|\<cal-F\>> et
  le processus des gains soit de la forme
  <math|Y<rsub|n>=\<varphi\><rsub|n>(X<rsub|n>)> pour une famille de
  fonctions <math|{\<varphi\><rsub|n>:\<cal-S\>\<rightarrow\>\<bbb-R\> :
  n=1,\<ldots\>,N}>. Consid�rons le probl�me d'arr�t optimal associ�. Par
  induction on montre que <math|Z<rsub|n>\<in\>\<sigma\>(X<rsub|n>)> i.e.
  qu'il existent des fonctions <math|V<rsub|n>:\<cal-S\>\<rightarrow\>\<bbb-R\>>
  telles que <math|Z<rsub|n>=V<rsub|n>(X<rsub|n>)>. En effet
  <math|Z<rsub|N>=Y<rsub|N>=\<varphi\><rsub|N>(X<rsub|N>)\<in\>\<sigma\>(X<rsub|N>)>
  donc on peut prendre <math|V<rsub|N>(x)=\<varphi\><rsub|N>(x)>. Si on
  suppose que <math|Z<rsub|n+1>=V<rsub|n+1>(X<rsub|n+1>)\<in\>\<sigma\>(X<rsub|n+1>)>
  \ alors on a que <math|\<bbb-E\>[Z<rsub|n+1>\|\<cal-F\><rsub|n>]=\<bbb-E\>[V<rsub|n+1>(X<rsub|n+1>)\|\<cal-F\><rsub|n>]=\<bbb-E\>[V<rsub|n+1>(X<rsub|n+1>)\|X<rsub|n>]>
  par la propri�t� de Markov et donc que \ <math|Z<rsub|n>=sup(Y<rsub|n>,\<bbb-E\>[Z<rsub|n+1>\|\<cal-F\><rsub|n>])=sup(\<varphi\><rsub|n>(X<rsub|n>),\<bbb-E\>[V<rsub|n+1>(X<rsub|n+1>)\|X<rsub|n>])=V<rsub|n>(X<rsub|n>)>
  pour une fonction <math|V<rsub|n>>. Cela conclut l'argument d'induction.\ 

  En utilisant la matrice de transition on peut �crire que <math|>

  <\equation*>
    <with|mode|text|<with|mode|math|\<bbb-E\>[V<rsub|n+1>(X<rsub|n+1>)\|X<rsub|n>]=<big|sum><rsub|y\<in\>\<cal-S\>>V<rsub|n+1>(y)P<rsub|n>(X<rsub|n>,y)>>=P<rsub|n>V<rsub|n+1>(X<rsub|n>)
  </equation*>

  o� on a utilis� la notation <math|P\<psi\>(x)=<big|sum><rsub|y\<in\>\<cal-S\>>P(x,y)\<psi\>(y)>.

  Les fonctions <math|V<rsub|n>> sont donn�es par l'it�ration suivante:

  <\equation*>
    V<rsub|N>(x)=\<varphi\><rsub|N>(x)<space|2em>et<space|2em>V<rsub|n>(x)=sup(\<varphi\><rsub|n>(x),
    P<rsub|n>V<rsub|n+1>(x)) pour 1\<leqslant\>n\<less\>N.
  </equation*>

  La r�gle d'arr�t <math|T<rsup|\<star\>>> devient
  <math|T<rsup|\<star\>>=inf{n\<leqslant\>N :
  \<varphi\><rsub|n>(X<rsub|n>)=V<rsub|n>(X<rsub|n>)}=inf{n\<leqslant\>N :
  \<varphi\><rsub|n>(X<rsub|n>)\<geqslant\>P<rsub|n>V<rsub|n+1>(X<rsub|n>)}>.
  Donc si on d�fini les ensembles <math|\<cal-D\><rsub|n>={x\<in\>\<cal-S\>:\<varphi\><rsub|n>(x)=V<rsub|n>(x)}=><with|mode|math|{x\<in\>\<cal-S\>:\<varphi\><rsub|n>(x)\<geqslant\>P<rsub|n>V<rsub|n+1>(x)}>
  on a que <math|T<rsup|\<star\>>=inf{n\<leqslant\>N :
  X<rsub|n>\<in\>\<cal-D\><rsub|n>}>: le premier temps o� <math|X<rsub|n>>
  entre dans le domaine <math|\<cal-D\><rsub|n>> (qui change lui aussi avec
  le temps).

  Supposons que la suite <math|X> soit donn�e par des v.a. ind�pendantes.
  Dans ce cas la matrice de transition est
  <math|P<rsub|n>(x,y)=\<pi\><rsub|n>(y)> o�
  <math|\<pi\><rsub|n>(y)=\<bbb-P\>(X<rsub|n>=y)> est la loi de
  <math|X<rsub|n>>. On voit que <math|P<rsub|n>\<psi\>(x)> ne d�pend pas de
  <math|x> et <math|P<rsub|n>\<psi\>(x)=<big|sum><rsub|y\<in\>\<cal-S\>>\<psi\>(y)\<pi\><rsub|n>(y)=\<bbb-E\>[\<psi\>(X<rsub|n>)]>.
  La fonction valeur est <math|V<rsub|n>(x)=sup(\<varphi\><rsub|n>(x),\<bbb-E\>[V<rsub|n+1>(X<rsub|n+1>)])>.
  Si on note <math|c<rsub|n>=\<bbb-E\>[V<rsub|n>(X<rsub|n>)]> alors

  <\equation*>
    c<rsub|N>=\<bbb-E\>[\<varphi\><rsub|N>(X<rsub|N>)],
    <space|2em>c<rsub|n>=\<bbb-E\>[sup(\<varphi\><rsub|n>(X<rsub|n>),c<rsub|n+1>)]
  </equation*>

  et <math|T<rsup|\<star\>>=inf{n\<leqslant\>N :
  \<varphi\><rsub|n>(X<rsub|n>)\<gtr\>c<rsub|n+1>}>. Le probl�me de la
  d�termination de la fonction valeur est donc ramen� au calcul des
  constantes <math|c<rsub|n>> qui d�pendent seulement des
  <math|\<varphi\><rsub|n>> et des lois des <math|X<rsub|n>>. Le gain moyen
  optimal est donn� par <math|c<rsub|1>=\<bbb-E\>[Z<rsub|1>]>.

  \;

  <subsection|Probl�mes monotones>

  <\definition>
    On d�fini la r�gle d'anticipation � une �tape (1-step lookahead rule ou
    1-sla) pour le probl�me avec horizon <math|N> en �tant donn�e par le
    temps d'arr�t

    <\equation*>
      T<rsub|1sla>=inf<rsub|N>{n\<less\>N:
      Y<rsub|n>\<geqslant\>\<bbb-E\>[Y<rsub|n+1>\|\<cal-F\><rsub|n>]}.
    </equation*>
  </definition>

  Autrement dit la r�gle 1-sla demande de s'arr�ter � <math|n> si <math|n>
  est le premier temps o� le gain <math|Y<rsub|n>> est sup�rieur ou �gale au
  gain moyen qu'on peut r�aliser en s'arr�tant � la prochaine �tape. On
  s'arr�te � <math|N> si <math|Y<rsub|n>\<less\>\<bbb-E\>[Y<rsub|n+1>\|\<cal-F\><rsub|n>]>
  pour tout <math|n\<in\>[1,N-1]>.\ 

  <\lemma>
    On a que <math|T<rsub|1sla>\<leqslant\>T<rsup|\<star\>>> et donc par le
    Corollaire <reference|cor:lower-bound-optimal> que
    <math|T<rsub|1sla>\<leqslant\><wide|T|^>> pour tout t.a. optimal
    <math|<wide|T|^>.>
  </lemma>

  <\proof>
    Pour tout <math|n\<less\>N> on a que <math|\<bbb-E\>[Y<rsub|n+1>\|\<cal-F\><rsub|n>]\<leqslant\>\<bbb-E\>[Z<rsub|n+1>\|\<cal-F\><rsub|n>]>.
    Alors <math|Y<rsub|n>\<less\>\<bbb-E\>[Y<rsub|n+1>\|\<cal-F\><rsub|n>]\<leqslant\>\<bbb-E\>[Z<rsub|n+1>\|\<cal-F\><rsub|n>]>
    pour tout <math|n\<less\>T<rsub|1sla>> ce que implique que
    <math|T<rsub|1sla>\<leqslant\>T<rsup|\<star\>>>.<math|>\ 
  </proof>

  Le lemme dit que si la r�gle 1-sla demande de continuer alors il est
  optimale de le faire (car n'importe quelle r�gle d'arr�t optimale demande
  aussi de continuer).

  <\definition>
    Le probl�me d'arr�t est dit monotone ssi
    <math|A<rsub|1>\<subseteq\>A<rsub|2>\<subseteq\>A<rsub|3>\<subseteq\>\<cdots\>\<subseteq\>A<rsub|N-1>>
    presque s�rement o� <math|A<rsub|k>> est l'�v�nement
    <math|A<rsub|n>={Y<rsub|n>\<geqslant\>\<bbb-E\>[Y<rsub|n+1>\|\<cal-F\><rsub|n>]}\<in\>\<cal-F\><rsub|n>>.
  </definition>

  <\theorem>
    La r�gle 1-sla est optimale pour tout probl�me monotone d'horizon fini.
  </theorem>

  <\proof>
    Il suffit de montrer que <math|T<rsub|1sla>=T<rsup|\<star\>>>. On sait
    d�j� que <math|T<rsub|1sla>\<leqslant\>T<rsup|\<star\>>>. Pour conclure
    il nous reste � �tablir que <math|T<rsub|1sla>\<geqslant\>T<rsup|\<star\>>>
    p.s.. Sur l'�v�nement <math|{T<rsub|1sla>=k}> on a que <math|A<rsub|k>>
    est v�rifie. En cons�quence, pour la monotonie du probl�me, on a que tout
    <math|A<rsub|n>> pour <math|k\<leqslant\>n\<leqslant\>N-1> sont v�rifies.
    Mais cela entra�ne que

    <\equation*>
      A<rsub|N-1>\<Longrightarrow\><with|mode|text|<math|Y<rsub|N-1>\<geqslant\>\<bbb-E\>[Y<rsub|N>\|\<cal-F\><rsub|N-1>]=\<bbb-E\>[Z<rsub|N>\|\<cal-F\><rsub|N-1>]>>\<Longrightarrow\>Z<rsub|N-1>=Y<rsub|N-1>
    </equation*>

    par <math|A<rsub|N-2>> on a que <math|Y<rsub|N-2>\<geqslant\>\<bbb-E\>[Y<rsub|N-1>\|\<cal-F\><rsub|N-2>]=\<bbb-E\>[Z<rsub|N-1>\|\<cal-F\><rsub|N-2>]\<Rightarrow\>Z<rsub|N-2>=Y<rsub|N-2>>
    et aussi de suite jusqu'au prouver que <math|Y<rsub|k>=Z<rsub|k>> et donc
    que <math|T<rsup|\<star\>>\<leqslant\>k=T<rsub|1sla>> car
    <math|T<rsup|\<star\>>> est le premier temps <math|n >o� l'�galit�
    <math|Y<rsub|n>=Z<rsub|n>> est v�rifi�. Donc on a montr� que
    n�cessairement <math|T<rsup|\<star\>>\<leqslant\>T<rsub|1sla>> et donc
    que <math|T<rsup|\<star\>>=T<rsub|1sla>>.
  </proof>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|language|french>
    <associate|page-medium|papyrus>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-10|<tuple|2.7|11>>
    <associate|auto-11|<tuple|2.8|?>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|2|2>>
    <associate|auto-4|<tuple|2.1|4>>
    <associate|auto-5|<tuple|2.2|5>>
    <associate|auto-6|<tuple|2.3|6>>
    <associate|auto-7|<tuple|2.4|8>>
    <associate|auto-8|<tuple|2.5|9>>
    <associate|auto-9|<tuple|2.6|10>>
    <associate|cor:lower-bound-optimal|<tuple|6|3>>
    <associate|eq:sharp1|<tuple|3|3>>
    <associate|eq:sharp2|<tuple|4|4>>
    <associate|eq:snell-envelope|<tuple|2|2>>
    <associate|eq:stopping-time-mart|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><\with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>>
        Arr�t optimal
      </with> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Rappels
      sur les processus et sur les temps d'arr�t>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Arr�t
      optimal en horizon fini> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|2.1<space|2spc>Probl�mes avec structure
      markovienne <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>
    </associate>
  </collection>
</auxiliary>