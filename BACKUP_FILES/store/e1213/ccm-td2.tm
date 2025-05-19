<TeXmacs|1.0.7.6>

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
  MIDO M1 MMD>|<cell|Universit� Paris-Dauphine 10/11 >>|<row|<cell|<em|
  Contr�le de cha�nes de Markov>>|<cell|<verbatim|<small|[v.1
  20100930]>>>>>>>

  \;

  <strong|<with|font-base-size|14|<strong|TD2>. >Arr�t optimal>

  <\exercise>
    (<name|Le probleme de moser>) Il s'agit du probl�me d'arr�t optimal
    suivant. Soient <math|X<rsub|1>,\<ldots\>,X<rsub|N>> des v.a. iid
    positives avec fonction de r�partition <math|F> et moyenne
    <math|\<bbb-E\>[X<rsub|i>]> finie. On imagine conna�tre la loi <math|F>.
    Soit <math|\<cal-F\><rsub|n>=\<sigma\>(X<rsub|1>,\<ldots\>,X<rsub|n>)> et
    <math|Y<rsub|n>=X<rsub|n>>: on observe en s�quence <math|N> r�alisations
    ind�pendantes de <math|F>, notre gain est la derni�re valeur observ�e
    avant de s'arr�ter. L'horizon est <math|N>: si nous ne nous arr�tons pas
    avant <math|N> on est oblig� d'accepter le gain
    <math|Y<rsub|N>=X<rsub|N>>.

    <\enumerate-alpha>
      <item>Montrer que la fonction valeur <math|Z<rsub|n>> est mesurable par
      rapport � <math|\<sigma\>(X<rsub|n>)> pour tout
      <math|1\<leqslant\>n\<leqslant\>N> (sugg: utiliser que
      <math|Y<rsub|n><wide|\<in\>|^>\<sigma\>(X<rsub|n>)> et une recurrence
      retrograde)

      <item>Soit <math|V<rsub|n>=\<bbb-E\>[Z<rsub|n>]>. Montrer que
      <math|V<rsub|n>=\<varphi\>(V<rsub|n+1>)> o�
      <math|\<varphi\>(x)=\<bbb-E\>[sup(X<rsub|1>,x)]>.

      <item>Montrer que <math|\<varphi\>> est une fonction positive et
      croissante, telle que <math|\<varphi\>(x)-x> est decroissante et
      <math|\<varphi\>(x)-x\<rightarrow\>0> si
      <math|x\<rightarrow\>+\<infty\>>.

      <item>Montrer que une regle optimale est

      <\equation*>
        T<rsup|\<star\>>=inf{k\<leqslant\>N:
        X<rsub|k>\<geqslant\>V<rsub|N-k>}
      </equation*>

      <item>Soit <math|><math|<math|X<rsub|i>\<sim\>\<cal-U\>([0,1])>> pour
      <math|1\<leqslant\>i\<leqslant\>N> et <math|N=6>. Montrer que la
      strategie optimale est donn� par la procedure suivante: s'arr�ter au
      temps 1 si <math|X<rsub|1>\<geqslant\>0.775>, s'arr�ter au temps 2 si
      <math|X<rsub|2>\<geqslant\>0.742>, s'arr�ter au temps 3 si
      <math|X<rsub|3>\<geqslant\>0.695>, s'arr�ter au temps 4 si
      <math|X<rsub|2>\<geqslant\>0.625>, s'arr�ter au temps 5 si
      <math|X<rsub|5>\<geqslant\>1/2> ou s'arr�ter � 6.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    (<name|probleme de la secretaire>) Il s'agit de choisir parmi <math|N>
    objet le meilleur. On a le droit d'inspecter un objet � la fois et de
    d�cider de le choisir et donc s'arr�ter ou de passer � l'inspection du
    suivant. Ce n'est pas possible de revenir sur ses propres pas: chaque
    fois on ne peut seulement garder que le dernier objet ou continuer. On
    veut d�terminer une strat�gie d'arr�t qui nous permet de maximiser la
    probabilit� de choisir l'objet qui est le meilleur parmi les <math|N> �
    notre disposition. Ce probl�me porte le nom de \S probl�me de la
    princesse \T o�, dans la litt�rature anglo-saxonne, probl�me classique de
    la secr�taire (CSP - classic secretary problem).

    Le mod�le math�matique est bas� sur un espace d'�tats <math|\<Omega\>>
    donn� par les possible permutations des <math|N> objets:
    <math|\<omega\>\<in\>\<Omega\>> est un vecteur
    <math|\<omega\>\<in\>{1,\<ldots\>,N}<rsup|N>> tel que
    <math|\<omega\>(i)\<neq\>\<omega\>(j)> si <math|i\<neq\>j> pour tout
    <math|i,j=1,\<ldots\>,N>. Sur <math|\<Omega\>> on consid�re la
    distribution uniforme qui donne le m�me poids <math|1/N!> � chaque
    permutation. La valeur <math|\<omega\>(i)> est le rang absolu de
    l'<math|n>-�me objet inspect�, donc si <math|\<omega\>(i)=1> le meilleur
    objet se trouve dans la position <math|i>. On remarque qu'on ne peut pas
    observer directement les <math|\<omega\>> (on ne conna�t pas le
    classement des objets jusqu'a ce qu'on ai inspect� tous les <math|N>
    objets). A chaque pas <math|n> on observe une variable
    <math|X<rsub|n>(\<omega\>)> qui donne le rang <em|relatif> de
    l'<math|n>-�me objet inspect� par rapport � tous les <math|n-1> objets
    inspect�s auparavant. Donc <math|X<rsub|1>=1>,
    <math|X<rsub|2>\<in\>{1,2}>,<math|\<ldots\>>,<math|
    X<rsub|n>\<in\>{1,\<ldots\>,n}> et <math|X<rsub|N>(\<omega\>)=\<omega\>(N)>:
    une fois que j'ai inspect� tous les objets je connais leur classement
    absolu. A chaque instant <math|n> je connais
    <math|\<cal-F\><rsub|n>=\<sigma\>(X<rsub|1>,\<ldots\>,X<rsub|n>)> la
    tribu engendr�e par le rangs relatifs des premiers <math|n> objets.
    \ Exemple: si <math|N=4> et <math|\<omega\>=(3,4,1,2)> alors
    <math|X<rsub|1>(\<omega\>)=1, X<rsub|2>(\<omega\>)=2,
    X<rsub|3>(\<omega\>)=1, X<rsub|4>(\<omega\>)=2>. Soit
    <math|\<Xi\>={(x<rsub|1>,\<ldots\>,x<rsub|N>)\<in\>\<bbb-N\><rsup|N>:
    1\<leqslant\>x<rsub|k>\<leqslant\>k, k=1,\<ldots\>,N}> l'ensemble des
    valeurs possibles pour le vecteur al�atoire
    <math|X=(X<rsub|1>,\<ldots\>,X<rsub|N>)>. On remarque que l'application
    <math|X:\<Omega\>\<rightarrow\>\<Xi\>> que envoie chaque possible
    permutation des <math|N> objet vers la correspondante suite des rangs
    relatifs est bijective, i.e. existe <math|\<Psi\>:\<Xi\>\<rightarrow\>\<Omega\>>
    telle que <math|\<Psi\>(X(\<omega\>))=\<omega\>>. Ce qu'il est �quivalent
    � dire que donn� la suite des rangs relatifs
    <math|x<rsub|1>,\<ldots\>,x<rsub|N>> on peut reconstruire le valeurs de
    <math|\<omega\><rsub|1>,\<omega\><rsub|2>,\<ldots\>,\<omega\><rsub|N>>.

    <\enumerate-alpha>
      <item> Montrer que pour tout <math|><math|(x<rsub|1>,\<ldots\>,x<rsub|N>)\<in\>\<Xi\>>
      on a

      <\equation*>
        \<bbb-P\>(X<rsub|1>=x<rsub|1>,X<rsub|2>=x<rsub|2>,\<ldots\>,X<rsub|N>=x<rsub|N>)=1/N!
      </equation*>

      <item>Monter que pour tout <math|n\<leqslant\>N> on a que<space|0.2spc>
      <math|\<bbb-P\>(X<rsub|n>=j)=1/n> pour <math|j=1,\<ldots\>,n> et que
      les v.a. <math|X<rsub|1>,\<ldots\>,X<rsub|n>> sont ind�pendantes.

      <item>L'objectif est de trouver une strat�gie d'arr�t (donn� par un
      t.a.) qui nous permet de optimiser la probabilit� de choisir l'objet
      meilleur parmi les <math|N> disponibles. Autrement dit on veut
      maximiser <math|\<bbb-P\>(\<omega\>(T)=1)=\<bbb-E\>
      [1<rsub|\<omega\>(T)=1>]> pour tout <math|T> t.a. de la filtration
      <math|\<cal-F\>> et born� par <math|N>. On d�fini un processus adapt�
      <math|Y> par <math|Y<rsub|k>= \<bbb-E\>[1<rsub|\<omega\>(k)=1>\|\<cal-F\><rsub|k>]\<in\>\<cal-F\><rsub|k>>.
      Montrer que

      <\equation*>
        \<bbb-P\>(\<omega\>(T)=1)=\<bbb-E\>[Y<rsub|T>].
      </equation*>

      <item>Montrer que <math|Y<rsub|n>=1<rsub|X<rsub|n>=1><frac|n|N> > et
      donc que <math|Y<rsub|n><wide|\<in\>|^>\<sigma\>(X<rsub|n>)>.\ 

      <item>Montrer que <math|Z<rsub|n><wide|\<in\>|^>\<sigma\>(X<rsub|n>)>
      et donc que un temps d'arr�t optimal est donn� par

      <\equation*>
        T<rsup|\<star\>>=inf{k\<leqslant\>N:\<bbb-E\>(Z<rsub|k+1>)\<leqslant\>k/N,
        X<rsub|k>=1}
      </equation*>

      <item>Montrer que <math|\<bbb-E\>[Z<rsub|n>]> est une fonction
      decroissante de <math|n> et donc que il existe <math|r> tel que

      <\equation*>
        T<rsup|\<star\>>=T<rsub|r>=inf{r\<leqslant\>k\<leqslant\>N
        :X<rsub|k>=1 \ }\<cup\>{N}
      </equation*>

      <item>Montrer que pour tout <math|1\<leqslant\>r\<leqslant\>N>:

      <\equation*>
        G<rsub|N>(r)=\<bbb-E\>[Y<rsub|T<rsub|r>>]=\<bbb-P\>(\<omega\>(T<rsub|r>)=1)=<frac|r-1|N><big|sum><rsub|k=r><rsup|N><frac|1|k-1>
      </equation*>

      <item>Montrer que <math|lim<rsub|N\<rightarrow\>\<infty\>>G<rsub|N>(x
      N)=-x*log*x> et que cette fonction � un maximum pour
      <math|x=1/e\<simeq\>0.37>. Donc dans la limite d'un grand nombre
      d'objects la strategie optimale est de ne laisser defiler une
      proportion du <math|37%> et apres choisir le premier meilleur de tout
      les precedents.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    (<name|Le probl�me du stationnement)> Ce probl�me est du � MacQueen et
    Miller (1960). On conduit une voiture sur une voie infinie � la recherche
    d'une place de stationnement mais les places ne sont pas forcement
    toujours libres. L'objectif c'est de se garer le plus proche possible du
    th��tre sans pouvoir revenir en arri�re. On voit une place libre �
    distance <math|d> du th��tre. Est-que on doit s'y garer?

    On imagine un mod�le discret. On part de l'origine et on voit des places
    de stationnement a tout point entiers sur la droite r�elle. Soient
    <math|X<rsub|0>,X<rsub|1>,\<ldots\>> des Bernoulli iid de param�tre
    <math|p\<in\>]0,1[> telles que <math|X<rsub|n>=1> signifie que
    l'<math|n>-�me place est d�j� occup� et <math|X<rsub|n>=0> signifie que
    il est libre. Soit <math|N> la position du th��tre. On peut s'arr�ter �
    la place <math|n> ssi <math|X<rsub|n>=0> et si on d�cide de s'arr�ter la
    on perd la quantit� <math|\|n-N\|>. Quand on est � <math|n> on ne peut
    pas voir si la place <math|n+1> est libre et si on passe outre on ne peut
    plus revenir en arri�re. Si on arrive � la place <math|N> et si elle
    n'est pas libre alors on va prendre la premi�re place libre qui on trouve
    en continuant, dans ce cas la perte attendue est donn�e par
    <math|(1-p)+2p(1-p)+3p<rsup|2>(1-p)+\<cdots\>=1/(1-p)>.

    <\enumerate-numeric>
      <item>Formuler le probl�me d'arr�t optimale: donner la filtration
      <math|{\<cal-F\><rsub|n>}<rsub|n=0,\<ldots\>,N>>, les pertes
      <math|(Y<rsub|n>)<rsub|n=0,\<ldots\>,N>> et sp�cifier la d�finition
      d'optimalit� pour un t.a. <math|T>.\ 

      <item>Utiliser l'hypoth�se d'ind�pendance des <math|X<rsub|n>> et la
      forme sp�cifique des gains <math|Y<rsub|n>> pour simplifier la forme de
      la fonction valeur <math|Z> et de la r�gle d'arr�t optimale associ�.

      <item>Remarquer que la r�gle optimale est de la forme
      <math|T<rsub|r>=inf{n\<in\>[r,N] : X<rsub|n>=0}>.

      <item>Montrer que la perte moyenne <math|C(r)=\<bbb-E\>[Y<rsub|T<rsub|r>>]>
      si on utilise <math|T<rsub|r>> \ est donn� par la formule\ 

      <\equation*>
        C(N-n<rsub|>)=n<rsub|>+1+<frac|2p<rsup|n+1>-1|1-p>,
        <space|2em>n=0,\<ldots\>,N
      </equation*>

      <item>Trouver le <math|r> optimale en fonction de <math|p> et <math|N>
      pour <math|p=.9>.
    </enumerate-numeric>
  </exercise>

  <\exercise>
    (<name|Une variation sur le probl�me de la princesse>) Consid�rer le
    probl�me de la princesse avec la fonction de gain
    suivante:<space|0.2spc>si on s'arr�t au temps <math|n> alors on gain
    <math|Y<rsub|n>=1> si on choisit l'objet meilleur, <math|Y<rsub|n>=-1> si
    l'objet choisi n'est pas le meilleur. On se donne aussi la possibilit� de
    ne pas choisir aucun des <math|N> objets dans quel cas notre gain est
    <math|0>.

    <\enumerate-numeric>
      <item>Donner une formule pour le gain <math|Y<rsub|n>> pour
      <math|n=1,\<ldots\>,N>.

      <item>Observer que cette variante donne un gain qui est plus petit du
      gain dans le probl�me classique.

      <item>Montrer que une r�gle d'arr�t optimale est de la forme
      <math|><math|T<rsub|r>=inf{n\<in\>[r,N] : X<rsub|n>=1}>.

      <item>Soit <math|r<rsub|\<ast\>>> la valeur optimale de <math|r>.
      Montrer que <math|r<rsub|\<ast\>>/N\<rightarrow\>1/<sqrt|e>> quand
      <math|N\<rightarrow\>\<infty\>>.
    </enumerate-numeric>
  </exercise>

  <\exercise>
    (<name|Sum-of-the-odds>) \ Soit <math|N\<geqslant\>1> et
    <math|X<rsub|1>,\<ldots\>,X<rsub|N>> des v.a. ind�pendantes telles que
    <math|X<rsub|j>\<sim\>Bernoulli(p<rsub|j>)> avec
    <math|p<rsub|j>\<in\>[0,1]>, <math|j=1,\<ldots\>,N>. On observe les
    <math|{X<rsub|j>}<rsub|j=1,\<ldots\>,N>> une � la fois et on peut
    s'arr�ter � tout moment. Si on s'arr�t � <math|j> on gagne si
    <math|X<rsub|j>=1> et si <math|X<rsub|k>=0> pour
    <math|j\<leqslant\>k\<leqslant\>N> (c-�-d si <math|X<rsub|j>> est la
    derni�re v.a. � valoir <math|1>). Soit <math|L=sup{k\<in\>[1,N] :
    X<rsub|k>=1}> (on utilise la convention que
    <math|sup\<emptyset\>=+\<infty\>>). La probabilit� de gagner en
    s'arr�tant au temps d'arr�t <math|T> est donc

    <\equation*>
      V(T)=\<bbb-P\>(T=L)=\<bbb-P\>(X<rsub|T>=1,X<rsub|T+1>=0,\<ldots\>,X<rsub|N>=0).
    </equation*>

    On veut maximiser la probabilit� de victoire parmi tous les t.a. <math|T>
    born�s par <math|N> et associ�s � la filtration
    <math|{\<cal-F\><rsub|k>}<rsub|k=1,\<ldots\>,N>> engendr�e par les
    <math|{X<rsub|k>}<rsub|k=1,\<ldots\>,N>>. On note <math|V<rsub|N> =
    sup<rsub|T\<leqslant\>N>V(T)> le gain optimal pour le probl�me d'arr�t
    d'horizon <math|N>.

    <\enumerate-alpha>
      <item>Donner la d�finition de temps d'arr�t. La v.a. <math|L> est-elle
      un temps d'arr�t?\ 

      <item>Montrer que <math|Y<rsub|k>=\<bbb-P\>(L=k\|\<cal-F\><rsub|k>)=<big|prod><rsub|j=k+1><rsup|N>(1-p<rsub|j>)
      \<bbb-I\><rsub|X<rsub|k>=1>> pour <math|k=1,\<ldots\>,N>.

      <item>Montrer que l'on peut �crire la probabilit� de victoire
      <math|V(T)=\<bbb-P\>(L=T)> en s'arr�tant au t.a. <math|T> comme
      <math|\<bbb-E\>[Y<rsub|T>]>.

      <item>Montrer par un calcul explicit que
      <math|\<bbb-E\>[Z<rsub|N>\|\<cal-F\><rsub|N-1>]> est une constante.\ 

      <item>Montrer par induction que <math|\<bbb-E\>[Z<rsub|k+1>\|\<cal-F\><rsub|k>]=\<bbb-E\>[Z<rsub|k+1>]>
      pour tout <math|k=1,\<ldots\>,N-1>.

      <item>Montrer que <math|\<bbb-E\>[Z<rsub|k>], k=1,\<ldots\>,N> est une
      fonction d�croissante de <math|k>.

      <item>Rappeler la d�finition de <math|T<rsup|\<star\>>> et montrer
      qu'il est un temps d'arr�t pour <math|\<cal-F\>>.

      <item>Quelle est la propriet� principale du processus arr�te
      <math|(Z<rsub|k\<wedge\>T<rsup|\<star\>>>)<rsub|k=1,\<ldots\>,N>>?
      (Eventuellement donner une preuve).

      <item>Montrer qu'il existe un entier <math|r\<in\>[1,N]> tel que
      <math|T<rsup|\<star\>>=T<rsub|r>> o�

      <\equation*>
        T<rsub|r>=inf<rsub|N>{k\<in\>[r,N]:X<rsub|k>=1}
      </equation*>

      (Rappel: <math|inf<rsub|N>A=inf A> si <math|A\<neq\>\<emptyset\>> et
      <math|inf<rsub|N>A=N> si <math|A=\<emptyset\>>).

      <item>Montrer que\ 

      <\equation*>
        G(r)=V(T<rsub|r>)=<left|[><big|prod><rsub|k=r><rsup|N>(1-p<rsub|k>)<right|]><big|sum><rsub|k=r><rsup|N><frac|p<rsub|k>|1-p<rsub|k>>.
      </equation*>

      et donc que la r�gle d'arr�t optimale est
      <math|T<rsub|r<rsub|\<ast\>>>> o� <math|r<rsub|\<ast\>>> est la valeur
      qui maximise <math|G(r)>.

      <item>Donner une expression pour <math|\<bbb-E\>[Z<rsub|1>]>.

      <item>Calculer <math|G(r)-G(r-1)> pour <math|r=2,\<ldots\>,N> et donner
      une condition explicite pour <math|r<rsub|\<ast\>>>.

      <item>Calculer <math|r<rsub|\<star\>>> et <math|G(r<rsub|\<star\>>)>
      pour <math|N=10> et <math|p<rsub|k>= 0.2> pour <math|k=1,\<ldots\>,10>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    (<name|Le jeu Googol>) Soit <math|\<theta\>><math|> une
    v.a.<space|0.2spc>de loi de Pareto <math|\<cal-P\>a(\<alpha\>,1)>. La loi
    de Pareto <math|\<cal-P\>a(\<alpha\>,x)> est la loi sur <math|\<bbb-R\>>
    de densit�

    <\equation*>
      f(\<theta\>)=\<alpha\>x<rsup|\<alpha\>> \<theta\><rsup|-\<alpha\>-1>
      \<bbb-I\><rsub|\<theta\>\<gtr\>x>
    </equation*>

    o� <math|\<theta\>\<gtr\>0> et <math|x\<in\>\<bbb-R\>>.<space|0.2spc>
    Soient <math|X<rsub|1>,\<ldots\>,X<rsub|n>> des v.a. qui
    conditionnellement � <math|\<theta\>> sont i.i.d. avec loi uniforme sur
    <math|[0,\<theta\>]>. Soit <math|M<rsub|0>=X<rsub|0>=1> et pour
    <math|j=1,\<ldots\>,n><space|0.2spc> soit
    <math|M<rsub|j>=max(X<rsub|0>,\<ldots\>,X<rsub|j>)=max(M<rsub|j-1>,X<rsub|j>)>.
    On observe les <math|{X<rsub|j>}<rsub|j=0,\<ldots\>,n>> une � la fois et
    on peut s'arr�ter � tout moment. Quand on s`arr�te<space|0.2spc> on gagne
    si la derni�re v.a. <math|X<rsub|j>> observ�e est la plus grande parmi
    toutes les <math|{X<rsub|j>}<rsub|j=0,\<ldots\>,n>> (<math|X<rsub|0>>
    comprise<strong|>). On veut maximiser la probabilit� de victoire parmi
    tous les t.a. associ�s � la filtration
    <math|{\<cal-F\><rsub|k>}<rsub|k=1,\<ldots\>,n>> engendr�e par les
    <math|{X<rsub|k>}<rsub|k=1,\<ldots\>,n>>.\ 

    <\enumerate-alpha>
      <item>Les v.a. <math|X<rsub|1>,\<ldots\>,X<rsub|n>> sont elles
      ind�pendantes ?

      <item>Montrer que la loi conditionnelle de <math|\<theta\>> sachant
      <math|X<rsub|1>,\<ldots\>,X<rsub|k>> est
      <math|\<cal-P\>a(k+\<alpha\>,M<rsub|k>)>.

      <item>Montrer que <math|Y<rsub|k>=\<bbb-P\>(X<rsub|k>=M<rsub|n>\|X<rsub|1>,\<ldots\>,X<rsub|k>)=<left|(>(k+\<alpha\>)/(n+\<alpha\>))
      \<bbb-I\><rsub|X<rsub|k>=M<rsub|k>>>.

      <item>Montrer que <math|\<bbb-P\>(X<rsub|k>=M<rsub|k>\|X<rsub|1>,\<ldots\>,X<rsub|k-1>)=1/(\<alpha\>+k)>
      et donc que <math|{X<rsub|k>=M<rsub|k>}> est ind�pendant de
      <math|\<cal-F\><rsub|k-1>>.\ 

      <item>Montrer que l'on peut donc �crire la probabilit� de victoire en
      s'arr�tant au t.a. <math|T> comme <math|\<bbb-E\>[Y<rsub|T>]>.

      <item>Montrer par un calcul explicite que
      <math|\<bbb-E\>[Z<rsub|n>\|\<cal-F\><rsub|n-1>]> est une constante.\ 

      <item>Montrer par induction que <math|\<bbb-E\>[Z<rsub|k+1>\|\<cal-F\><rsub|k>]=\<bbb-E\>[Z<rsub|k+1>]>
      pour tout <math|k=1,\<ldots\>,n-1>.

      <item>Montrer que <math|\<bbb-E\>[Z<rsub|k>], k=1,\<ldots\>,n> est une
      fonction decroissante de <math|k>.

      <item>Montrer qu'une strat�gie d'arr�t optimale est de laisser passer
      <math|r-1> nombres et ensuite de s'arr�ter au
      premier<space|0.2spc><math|j\<geqslant\>r> tel que
      <math|X<rsub|j>=M<rsub|j>>, o� <math|r> est un entier compris entre 1
      et <math|n-1>. Soit <math|T<rsub|r>> cette r�gle d'arr�t.

      <item>Montrer que\ 

      <\equation*>
        \<bbb-P\>(X<rsub|T<rsub|r>>=M<rsub|n>)=<frac|r-1+\<alpha\>|n+\<alpha\>><big|sum><rsub|j=r><rsup|n><frac|1|j-1+\<alpha\>>
      </equation*>

      et donc que la r�gle d'arr�t optimale est <math|T<rsub|r>> o� <math|r>
      est la valeur qui maximise cette expression.

      \;
    </enumerate-alpha>
  </exercise>
</body>

<\initial>
  <\collection>
    <associate|language|french>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|eq:15|<tuple|1|2>>
    <associate|eq:gundy|<tuple|4|?>>
    <associate|eq:non-existence|<tuple|2|?>>
    <associate|eq:optimality-condition|<tuple|1|?>>
    <associate|ex:gundy|<tuple|4|1>>
    <associate|ex:wald-l2|<tuple|3|1>>
    <associate|ex:ward-l2|<tuple|3|?>>
  </collection>
</references>