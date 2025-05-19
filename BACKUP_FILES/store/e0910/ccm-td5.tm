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
  Contr�le de cha�nes de Markov>>|<cell|<verbatim|<small|[v.1
  20091217]>>>>>>>

  \;

  <strong|<with|font-base-size|14|<strong|TD5>. >Arr�t optimal>

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