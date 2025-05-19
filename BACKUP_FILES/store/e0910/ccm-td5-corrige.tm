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

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|1|2|2|cell-halign|r>|<twith|table-lborder|0>|<twith|table-rborder|0>|<cwith|1|2|1|2|cell-lsep|0>|<cwith|1|2|1|2|cell-rsep|0>|<cwith|1|2|1|2|cell-tsep|0>|<cwith|1|2|1|2|cell-lborder|0>|<cwith|1|2|1|2|cell-rborder|0>|<cwith|1|2|1|2|cell-bborder|0>|<cwith|1|2|1|2|cell-tborder|0>|<twith|table-bborder|.5pt>|<twith|table-tborder|.5pt>|<cwith|1|2|1|2|cell-bsep|5pt>|<cwith|1|1|1|2|cell-tsep|5pt>|<twith|table-lsep|0>|<twith|table-rsep|0>|<twith|table-bsep|0>|<twith|table-tsep|0>|<cwith|1|1|1|2|cell-bsep|2pt>|<cwith|2|2|2|2|cell-halign|r>|<table|<row|<cell|
  MIDO M1 MMD>|<cell|Universit� Paris-Dauphine 09/10 >>|<row|<cell|<em|
  Contr�le de cha�nes de Markov>>|<cell|<verbatim|<small|[v.2
  20100107]>>>>>>>

  \;

  <strong|<with|font-base-size|14|<strong|Corrig� TD5>. >Arr�t optimal>

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

  <em|Solution.>

  Pour d�terminer la r�gle d'arr�t optimal on observe qu'� cause du fait que
  <math|Y<rsub|n>\<in\>\<sigma\>(X<rsub|n>)> on a que la fonction valeur
  <math|Z<rsub|n>> est aussi <math|\<sigma\>(X<rsub|n>)> mesurable.
  D�monstration par r�currence (r�trograde): c'est vrai pour <math|n=N>, en
  effet <math|Z<rsub|N>=Y<rsub|N>\<in\>\<sigma\>(X<rsub|N>)>. Supposons qu'il
  est vrai pour tout <math|k\<geqslant\>n+1> et d�montrons qu'il est aussi
  vrai pour <math|k=n>. De la d�finition de <math|Z<rsub|n>> on a que
  <math|Z<rsub|n>=sup(Y<rsub|n>,\<bbb-E\>[Z<rsub|n+1>\|\<cal-F\><rsub|n>])>.
  Par ind�pendance des <math|(X<rsub|i>)<rsub|i>> \ et par le fait qu'on
  suppose que <math|Z<rsub|n+1>\<in\>\<sigma\>(X<rsub|n+1>)> on a que <math|>
  <with|mode|math|\<bbb-E\>[Z<rsub|n+1>\|\<cal-F\><rsub|n>]=\<bbb-E\>[Z<rsub|n+1>]>.
  Donc <math|Z<rsub|n>=sup(Y<rsub|n>,\<bbb-E\>[Z<rsub|n+1>])\<in\>\<sigma\>(Y<rsub|n>)=\<sigma\>(X<rsub|n>)>,
  ce qui permet <space|0.2spc>de conclure. Donc
  <math|Z<rsub|n>=sup(X<rsub|n>,\<bbb-E\>[Z<rsub|n+1>])> pour tout
  <math|1\<leqslant\>n\<less\>N> et <math|Z<rsub|N>=X<rsub|N>>. En utilisant
  l'identit� <math|max(\<alpha\>,\<beta\>)=\<beta\>+(\<alpha\>-\<beta\>)<rsub|+>>
  on a que

  <\equation*>
    \<bbb-E\>[Z<rsub|n>]=\<bbb-E\>[sup(Y<rsub|n>,\<bbb-E\>[Z<rsub|n+1>])=\<varphi\>(\<bbb-E\>[Z<rsub|n+1>])
  </equation*>

  o� <math|\<varphi\>(x)=\<bbb-E\>[sup(x,X<rsub|1>)]=x+\<bbb-E\>[(X<rsub|1>-x)<rsub|+>]>
  est une fonction positive, croissante et telle que <math|\<varphi\>(x)-x>
  est d�croissante et <math|\<varphi\>(x)-x\<rightarrow\>0> quand
  <math|x\<rightarrow\>\<infty\>> car <math|\<bbb-E\>[(X<rsub|1>-x)<rsub|+>]\<leqslant\>\<bbb-E\>[\<bbb-I\><rsub|X<rsub|1>\<gtr\>x>X<rsub|1>]\<rightarrow\>0>
  par le th�or�me de convergence domin�e:
  <with|mode|math|\<bbb-I\><rsub|X<rsub|1>\<gtr\>x>X<rsub|1>\<leqslant\>X<rsub|1>>,
  <math|X<rsub|1>> est int�grable et \ <math|lim<rsub|x\<rightarrow\>\<infty\>>\<bbb-I\><rsub|X<rsub|1>(\<omega\>)\<gtr\>x>=0>
  pour tout <math|\<omega\>>. Si l'on d�fini
  <math|W<rsub|1>=\<bbb-E\>[X<rsub|1>]> et
  <math|W<rsub|n>=\<varphi\>(V<rsub|n-1>)> pour
  <math|1\<less\>n\<leqslant\>N> alors <math|\<bbb-E\>[Z<rsub|N>]=\<bbb-E\>[X<rsub|N>]=W<rsub|1>>
  et <math|\<bbb-E\>[Z<rsub|n>]=W<rsub|N-n+1>> qui est une fonction
  d�croissante de <math|n>. Donc le gain optimal est
  <math|J<rsub|N>=\<bbb-E\>[Z<rsub|1>]=W<rsub|N>> et la r�gle d'arr�t optimal
  est donn�e par

  <\equation*>
    T<rsup|\<star\>>=inf{k\<leqslant\>N: X<rsub|k>\<geqslant\>\<bbb-E\>[Z<rsub|k+1>]}=inf{k\<leqslant\>N:
    X<rsub|k>\<geqslant\>W<rsub|N-k>}
  </equation*>

  Il faut donc s'arr�ter d�s que l'on observe une valeur de <math|X<rsub|k>>
  sup�rieure au seuil <math|W<rsub|N-k>> (qui est d�croissant). La strat�gie
  optimale demande au d�but d'avoir des grandes observations pour s'arr�ter,
  mais au fur et � mesure que le temps passe le seuil d'arr�t baisse pour
  approcher la moyenne de <math|X<rsub|1>>.

  Consid�rons le probl�me de Moser avec des
  <math|X<rsub|i>\<sim\>\<cal-U\>([0,1])>. On a
  <math|\<bbb-E\>[X<rsub|1>]=1/2> et\ 

  <\equation*>
    \<bbb-E\>[(X-x)<rsub|+>]=<big|int><rsub|0><rsup|1>(u-x)<rsub|+>\<mathd\>u=<big|int><rsub|x><rsup|1>(u-x)\<mathd\>u=<frac|1-x<rsup|2>|2>-x(1-x)=<frac|1+x<rsup|2>|2>-x
  </equation*>

  donc <math|\<varphi\>(x)=(x<rsup|2>+1)/2>. Un calcul direct donne
  <math|W<rsub|1>=1/2>, <math|W<rsub|2>= 0.625>, <math|W<rsub|3>=0.695>,
  <math|W<rsub|4>=0.742>, <math|W<rsub|5>=0.775>, <math|W<rsub|6>=0.8004>,
  <math|W<rsub|7>=0.820>, <math|W<rsub|8>=0.836>, <math|W<rsub|9>=0.850>,
  <math|W<rsub|10>=0.861>...\ 

  Par exemple: si <math|N=3> on retrouve la strat�gie optimale qu'on a d�j�
  vu. Si <math|N=6> la strat�gie optimale donn�e par <math|T<rsup|\<star\>>>
  est de s'arr�ter au temps 1 si <math|X<rsub|1>\<geqslant\>\<bbb-E\>[Z<rsub|2>]=W<rsub|5>=0.775>,
  s'arr�ter au temps 2 si <math|X<rsub|2>\<geqslant\>W<rsub|4>=0.742>,
  s'arr�ter au temps 3 si <math|X<rsub|3>\<geqslant\>W<rsub|3>=0.695>,
  s'arr�ter au temps 4 si <math|X<rsub|2>\<geqslant\>W<rsub|2>=0.625>,
  s'arr�ter au temps 5 si <math|X<rsub|5>\<geqslant\>W<rsub|1>=1/2> ou
  s'arr�ter � 6.

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

  <em|Solution>.

  Soit <math|\<Xi\>={(x<rsub|1>,\<ldots\>,x<rsub|N>)\<in\>\<bbb-N\><rsup|N>:
  1\<leqslant\>x<rsub|k>\<leqslant\>k, k=1,\<ldots\>,N}> l'ensemble des
  valeurs possibles pour le vecteur al�atoire
  <math|X=(X<rsub|1>,\<ldots\>,X<rsub|N>)>. On remarque que la taille de
  <math|\<Xi\>> est <math|N!>. On commence par montrer que pour tout
  <math|><math|(x<rsub|1>,\<ldots\>,x<rsub|N>)\<in\>\<Xi\>> on a

  <\equation*>
    \<bbb-P\>(X<rsub|1>=x<rsub|1>,X<rsub|2>=x<rsub|2>,\<ldots\>,X<rsub|N>=x<rsub|N>)=1/N!
  </equation*>

  En effet l'application <math|X:\<Omega\>\<rightarrow\>\<Xi\>> que envoie
  chaque possible permutation des <math|N> objet vers la correspondante suite
  des rangs relatifs est bijective, i.e. existe
  <math|\<Psi\>:\<Xi\>\<rightarrow\>\<Omega\>> telle que
  <math|\<Psi\>(X(\<omega\>))=\<omega\>>. Ce qu'il est �quivalent � dire que
  donn� la suite des rangs relatifs <math|x<rsub|1>,\<ldots\>,x<rsub|N>> on
  peut reconstruire le valeurs de <math|\<omega\><rsub|1>,\<omega\><rsub|2>,\<ldots\>,\<omega\><rsub|N>>.
  Donc <math|\<bbb-P\>(X=x)=\<bbb-P\>(\<Psi\>(X)=\<Psi\>(x))=\<bbb-P\>(\<omega\>=\<Psi\>(x))=1/N!>
  car <math|\<omega\>> est uniforme sur <math|\<Omega\>> et
  <math|Card(\<Omega\>)=N!>. Maintenant on a aussi

  <\equation*>
    \<bbb-P\>(X<rsub|n>=j)=<big|sum><rsub|x<rsub|1>=1><rsup|1><big|sum><rsub|x<rsub|2>=1><rsup|2>\<cdots\><big|sum><rsup|n-1><rsub|x<rsub|n-1>=1><big|sum><rsub|x<rsub|n+1>=1><rsup|n+1>\<ldots\><big|sum><rsub|x<rsub|N>=1><rsup|N>\<bbb-P\>(X<rsub|1>=x<rsub|1>,X<rsub|2>=x<rsub|2>,\<ldots\>,X<rsub|N>=x<rsub|N>)=<frac|1|n>
  </equation*>

  et donc <math|\<bbb-P\>(X<rsub|1>=x<rsub|1>,X<rsub|2>=x<rsub|2>,\<ldots\>,X<rsub|N>=x<rsub|N>)=\<bbb-P\>(X<rsub|1>=x<rsub|1>)\<cdots\>\<bbb-P\>(X<rsub|N>=x<rsub|N>)>
  qui montre l'ind�pendance.

  On doit d'abord r�crire notre crit�re � optimiser dans la forme d'une
  esp�rance d'une v.a. <math|\<cal-F\><rsub|T>> mesurable:

  <\equation*>
    \<bbb-E\>[1<rsub|\<omega\>(T)=1>]=<big|sum><rsub|k=1><rsup|N>\<bbb-E\>[1<rsub|\<omega\>(T)=1>
    \<cdot\> 1<rsub|T=k>]=<big|sum><rsub|k=1><rsup|N>\<bbb-E\>[1<rsub|\<omega\>(k)=1>
    \<cdot\> 1<rsub|T=k>]=<big|sum><rsub|k=1><rsup|N>\<bbb-E\>[\<bbb-E\>[1<rsub|\<omega\>(k)=1>\|\<cal-F\><rsub|k>]
    \<cdot\> 1<rsub|T=k>]
  </equation*>

  o� on a utilis� le fait que <math|{T=k}\<in\>\<cal-F\><rsub|k>> par
  d�finition de t.a. et les propri�t�s de l'esp�rance conditionnelle. Si l'on
  d�fini un processus adapt� <math|Y> par <math|Y<rsub|k>=
  \<bbb-E\>[1<rsub|\<omega\>(k)=1>\|\<cal-F\><rsub|k>]\<in\>\<cal-F\><rsub|k>>,
  l'on a

  <\equation*>
    \<bbb-E\>[1<rsub|\<omega\>(T)=1>]=<big|sum><rsub|k=1><rsup|N>\<bbb-E\>[Y<rsub|k>
    \<cdot\>1<rsub|T=k>]=<with|mode|text|><big|sum><rsub|k=1><rsup|N>\<bbb-E\>[Y<rsub|T>
    \<cdot\>1<rsub|T=k>]=\<bbb-E\>[Y<rsub|T>]
  </equation*>

  et <math|Y<rsub|T>\<in\>\<cal-F\><rsub|T>>: le crit�re adapt� qui nous
  cherchions. On est donc dans le cadre du th�or�me pr�c�dent: horizon fini
  <math|N>, fonction de gain <math|Y<rsub|n>\<in\>[0,1]> et donc int�grable
  pour tout <math|0\<leqslant\>n\<leqslant\>N>. La solution du probl�me
  d'optimisation est donn� par <math|T<rsup|\<star\>>=inf{k\<leqslant\>N:Y<rsub|k>=Z<rsub|k>}>
  o� <math|Z> est l'enveloppe de Snell de <math|Y>. Il nous reste donc �
  calculer cette fonction valeur et expliciter le temps d'arr�t
  <math|T<rsup|\<star\>>> comme fonction de
  <math|X<rsub|1>,\<ldots\>,X<rsub|T<rsup|\<star\>>>> (qui sont les quantit�s
  qu'on observe pratiquement).

  On commence par expliciter le crit�re <math|Y<rsub|n>=\<bbb-P\>(\<omega\>(n)=1\|\<cal-F\><rsub|n>)>.
  On remarque que l'�v�nement <math|{\<omega\>(n)=1}> est �quivalent �
  <math|{X<rsub|n>=1,X<rsub|n+1>\<neq\>1,\<ldots\>,X<rsub|N>\<neq\>1}> et par
  l'ind�pendance des <math|(X<rsub|k>)<rsub|1\<leqslant\>k\<leqslant\>N>>:

  <\equation*>
    Y<rsub|n>=\<bbb-P\>(X<rsub|n>=1,X<rsub|n+1>\<neq\>1,\<ldots\>,X<rsub|N>\<neq\>1\|\<cal-F\><rsub|n>)=\<bbb-P\>(X<rsub|n>=1\|\<cal-F\><rsub|n>)\<bbb-P\>(X<rsub|n+1>\<neq\>1)\<cdots\>\<bbb-P\>(X<rsub|N>\<neq\>1)
  </equation*>

  <\equation*>
    =1<rsub|X<rsub|n>=1>\<cdot\><frac|n|n+1>\<cdot\>\<cdots\>\<cdot\><frac|N-1|N>=1<rsub|X<rsub|n>=1><frac|n|N>
    \ .\ 
  </equation*>

  donc <math|Y<rsub|n>\<in\>\<sigma\>(X<rsub|n>)>. Cette propri�t� entra�ne
  que <math|Z<rsub|n+1>> est ind�pendante de <math|\<cal-F\><rsub|n>>: en
  effet <math|Z<rsub|N>=Y<rsub|N>=1<rsub|X<rsub|N>=1>\<in\>\<sigma\>(X<rsub|N>)>,
  <math|Z<rsub|N-1>=sup(Y<rsub|N-1>,\<bbb-E\>(Z<rsub|N>\|\<cal-F\><rsub|N-1>))\<in\>\<sigma\>(X<rsub|N-1>)>
  et par induction on obtient <math|Z<rsub|n>\<in\>\<sigma\>(X<rsub|n>)>
  donc, par ind�pendance des <math|X> on a bien que
  <math|Z<rsub|n+1>\<in\>\<sigma\>(X<rsub|n+1>) \<bot\> \<cal-F\><rsub|n>>.
  Cela implique qu'on a <math|Z<rsub|n>=sup(Y<rsub|n>,\<bbb-E\>(Z<rsub|n+1>))>
  et qui

  <\equation*>
    T<rsup|\<star\>>=inf{k\<leqslant\>N :
    \<bbb-E\>(Z<rsub|k+1>)\<leqslant\>Y<rsub|k>}=inf{k\<leqslant\>N:\<bbb-E\>(Z<rsub|k+1>)\<leqslant\>k/N,
    X<rsub|k>=1}
  </equation*>

  en effet on a toujours <math|\<bbb-E\>(Z<rsub|n>)\<geqslant\>\<bbb-E\>(Z<rsub|N>)=\<bbb-P\>(X<rsub|N>=1)=1/N>\<gtr\>0
  par la propri�t� de sur-martingale de <math|Z>. L'esp�rance de
  <math|Z<rsub|n>> est donc d�croissante en <math|n> et la strat�gie est
  d'attendre que <math|\<bbb-E\>(Z<rsub|k+1>)> tombe au dessous du seuil
  <math|k/N> et apr�s de s'arr�ter sur le premier objet meilleur de tous les
  autres vus auparavant. En effet si on appelle <math|r> le premier entier
  <math|\<leqslant\>N> tel que <math|\<bbb-E\>(Z<rsub|r+1>)\<leqslant\>r/N>,
  on a que <math|\<bbb-E\>(Z<rsub|k>)\<geqslant\>\<bbb-E\>(Z<rsub|r>)\<gtr\>(r-1)/N\<gtr\>k/N>
  pour tout <math|k\<less\>r> et que <math|\<bbb-E\>(Z<rsub|k>)\<leqslant\>\<bbb-E\>(Z<rsub|r+1>)\<leqslant\>r/N\<leqslant\>k/N>
  pour tout <math|k\<geqslant\>r>:

  <\equation*>
    T<rsup|\<star\>>=inf{k\<in\>[r,N]:X<rsub|k>=1} =:T<rsub|r>
  </equation*>

  la strat�gie optimale est donn�e par le temps d'arr�t <math|T<rsub|r>>:
  attendre le premier instant <math|k >apr�s <math|r> o� on observe
  <math|X<rsub|k>=1>.\ 

  Ayant �tabli que la r�gle optimale est de la forme <math|T<rsub|r>> il nous
  reste � d�terminer <math|r\<in\>[1,N]> de fa�on telle que
  <math|\<bbb-E\>[Y<rsub|T<rsub|r>>]> soit maximale. Cela est �quivalent a
  maximiser <math|\<bbb-P\>(\<omega\>(T<rsub|r>)=1)> (car en effet on a d�j�
  montre que pour tout t.a. <math|\<bbb-P\>(\<omega\>(T)=1)=\<bbb-E\>[Y<rsub|T>]>).
  Or

  <\equation*>
    \<bbb-P\>(\<omega\>(T<rsub|r>)=1)=<big|sum><rsub|k=1><rsup|N>\<bbb-P\>(\<omega\>(T<rsub|r>)=1,T<rsub|r>=k)=<big|sum><rsub|k=1><rsup|N>\<bbb-P\>(\<omega\>(k)=1,T<rsub|r>=k)
  </equation*>

  <\equation*>
    =<big|sum><rsub|k=r><rsup|N>\<bbb-P\>(X<rsub|r>\<neq\>1,\<ldots\>,X<rsub|k-1>\<neq\>1,X<rsub|k>=1,X<rsub|k+1>\<neq\>1,\<ldots\>,X<rsub|N>\<neq\>1)
  </equation*>

  <\equation*>
    =<big|sum><rsub|k=r><rsup|N>\<bbb-P\>(X<rsub|r>\<neq\>1)\<cdots\>\<bbb-P\>(X<rsub|k-1>\<neq\>1)\<bbb-P\>(X<rsub|k>=1)\<bbb-P\>(X<rsub|k+1>\<neq\>1)\<cdots\>\<bbb-P\>(X<rsub|N>\<neq\>1)
  </equation*>

  o� on a utilise le fait que <math|{\<omega\>(k)=1,T<rsub|r>=k}={X<rsub|r>\<neq\>1,\<ldots\>,X<rsub|k-1>\<neq\>1,X<rsub|k>=1,X<rsub|k+1>\<neq\>1,\<ldots\>,X<rsub|N>\<neq\>1}>
  et l'ind�pendance des <math|X<rsub|k>>. Donc

  <\equation*>
    G<rsub|r>=\<bbb-P\>(\<omega\>(T<rsub|r>)=1)=<big|sum><rsub|k=r><rsup|N><frac|r-1|r>\<cdots\><frac|k-2|k-1>*<frac|1|k>*<frac|k|k+1>\<cdots\><frac|N-1|N>=<frac|r-1|N><big|sum><rsub|k=r><rsup|N><frac|1|k-1>
  </equation*>

  est le gain moyen de la strat�gie <math|T<rsub|r>> pour tout
  <math|r\<in\>[1,N]>. La strat�gie optimale est donc donn� par le
  <math|r\<in\>[1,N]> qui maximise la fonction <math|G<rsub|r>>. Si l'on note
  <math|r<rsub|\<ast\>>> la valeur optimale on peut facilement calculer la
  table suivante

  <\equation*>
    <tabular*|<tformat|<cwith|1|1|1|1|cell-valign|b>|<twith|table-lborder|0.5pt>|<twith|table-rborder|0.5pt>|<twith|table-tborder|0.5pt>|<twith|table-bborder|0.5pt>|<cwith|1|3|1|9|cell-lborder|0.5pt>|<cwith|1|3|1|9|cell-rborder|0.5pt>|<cwith|1|3|1|9|cell-bborder|0.5pt>|<cwith|1|3|1|9|cell-tborder|0.5pt>|<table|<row|<cell|n>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|6>|<cell|7>|<cell|8>>|<row|<cell|r<rsub|\<ast\>>>|<cell|1>|<cell|1>|<cell|2>|<cell|2>|<cell|3>|<cell|3>|<cell|3>|<cell|4>>|<row|<cell|G<rsub|r<rsub|\<ast\>>>>|<cell|1.0>|<cell|0.5>|<cell|0.5>|<cell|0.458>|<cell|0.433>|<cell|0.428>|<cell|0.414>|<cell|0.41>>>>>
  </equation*>

  Dans la limite o� <math|N\<rightarrow\>\<infty\>> et
  <math|r/N=x\<in\>(0,1)> on a

  <\equation*>
    G<rsub|r>=<frac|N x -1|N><big|sum><rsub|k=N
    x><rsup|N><frac|1|k-1>\<simeq\>x<big|int><rsub|x><rsup|1><frac|\<mathd\>x|x>=-x
    log x
  </equation*>

  cette fonction a un maximum pour <math|log x=-1> et donc pour
  <math|x=1/e\<simeq\>0.368>. La valeur asymptotique de <math|G<rsub|N x>>
  est aussi <math|\<simeq\>0.368>. La strat�gie optimale est donc de laisser
  d�filer les premiers <math|r\<simeq\>N/e> objets et apr�s de choisir le
  premier qu'on trouve le meilleur. De cette fa�on on a une probabilit� de
  <math|\<simeq\>36.8 %> de tomber sur l'objet de rang maximal.
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