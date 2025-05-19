<TeXmacs|1.0.7.6>

<style|article>

<\body>
  <\hide-preamble>
    <assign|eqref|<macro|r|<nbsp>(<reference|<arg|r>>)>><assign|chapter-nr|1>

    <assign|render-exercise|<\macro|which|body>
      <\padded-normal|0.5fn|0.5fn>
        <surround|<exercise-name|<arg|which><exercise-sep>>||<arg|body>>
      </padded-normal>
    </macro>>

    <assign|indep|\<bot\><space|-4pt||>\<bot\>>

    \;
  </hide-preamble>

  <small|<verbatim|[M. Gubinelli - Processus discrets - M1 MMD 2010/2011 -
  20101019 - poly 2 - v.4]>>

  <chapter|Martingales et strat�gies><label|part:martingales>

  <section|Processus, filtrations et temps d'arr�t>

  On consid�re un espace probabilis� <math|(\<Omega\>,\<cal-F\>,\<bbb-P\>)>.
  Un processus stochastique <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> est une
  suite infinie des v.a. index�es par <math|\<bbb-N\>>. Alternativement on
  peut consid�rer l'application mesurable
  <math|X:\<Omega\>\<times\>\<bbb-N\>\<rightarrow\>\<bbb-R\>>. Pour tout
  <math|\<omega\>\<in\>\<Omega\>>, <math|X(\<omega\>)> est une suite r�elle
  et pour tout <math|n\<geqslant\>0>,<strong|> \ <math|X<rsub|n>> est une
  v.a. r�elle.

  <\definition>
    Une filtration est une famille <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>0>>
    de sous-tribus de <math|\<cal-F\>> telles que
    <math|\<cal-F\><rsub|n>\<subseteq\>\<cal-F\><rsub|n+1>> pour tout
    <math|n\<geqslant\>0>. On pose toujours
    <math|\<cal-F\><rsub|-1>={\<emptyset\>,\<Omega\>}> et
    <math|\<cal-F\><rsub|\<infty\>>=\<sigma\>(\<cal-F\><rsub|n>,
    n\<geqslant\>0)> (<math|\<cal-F\><rsub|\<infty\>>> est la plus petite
    tribu qui contienne toutes les <math|\<cal-F\><rsub|n>> pour
    <math|n\<geqslant\>0>). Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> un
    processus stochastique, sa filtration naturelle
    <math|(\<cal-F\><rsup|X><rsub|n>)<rsub|n\<geqslant\>0>> est la filtration
    d�finie par <math|\<cal-F\><rsup|X><rsub|n>=\<sigma\>(X<rsub|0>,\<ldots\>,X<rsub|n>)>.
  </definition>

  <\definition>
    Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> un processus stochastique et
    <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>0>> une filtration, on dit
    que <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> est adapt� (� la filtration
    <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>0>>) ssi
    <math|X<rsub|n><wide|\<in\>|^>\<cal-F\><rsub|n>> pour tout
    <math|n\<geqslant\>0>. On dit que <math|(X<rsub|n>)<rsub|n\<geqslant\>0>>
    est pr�visible (par rapport � la filtration
    <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>0>>) ssi
    <math|X<rsub|n><wide|\<in\>|^>\<cal-F\><rsub|n-1>> pour tout
    <math|n\<geqslant\>0>. La filtration naturelle de <math|X> est la plus
    petite filtration qui rende <math|X> adapt�.
  </definition>

  Une filtration <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>0>> repr�sente
  l'information accumul�e � fur et � mesure que le temps passe. Un processus
  adapt� <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> est un processus qu'on
  d�couvre progressivement: � l'instant <math|n\<geqslant\>0> \ on dispose de
  l'information contenue dans <math|\<cal-F\><rsub|n>> et on peut d�terminer
  la valeur de <math|X<rsub|k>> pour tout <math|k\<leqslant\>n> (ce que est
  arriv� au processus <math|X> dans le pass�) mais � priori on ne peut pas
  d�terminer pr�cis�ment la valeur de <math|X<rsub|k>> pour <math|k\<gtr\>n>
  (la valeur du processus <math|X> dans le futur).

  <\example>
    (<name|marche al�atoire>) Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>1>>
    une suite i.i.d. et <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>0>> sa
    filtration naturelle (<math|\<cal-F\><rsub|n>=\<sigma\>(X<rsub|1>,\<ldots\>,X<rsub|n>)>,
    <math|\<cal-F\><rsub|0>={\<varnothing\>,\<Omega\>}>). On pose
    <math|S<rsub|n>=S<rsub|0>+X<rsub|1>+\<cdots\>+X<rsub|n>> avec
    <math|S<rsub|0><wide|\<in\>|^>\<cal-F\><rsub|0>> (une constante). Alors
    <math|(S<rsub|n>)<rsub|n\<geqslant\>0>> est un processus adapt� �
    <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>0>>.<strong|>
  </example>

  <\exercise>
    \;

    <\enumerate-alpha>
      <item>Montrer que pour tout <math|n\<geqslant\>1>,
      <math|\<cal-F\><rsub|n>=\<sigma\>(S<rsub|1>,\<ldots\>,S<rsub|n>)>.<strong|>

      <item>Monter que le processus <math|(Y<rsub|n>)<rsub|n\<geqslant\>1>>
      d�fini par r�currence par\ 

      <\equation*>
        Y<rsub|0>=1,<space|1em>Y<rsub|n>=Y<rsub|n-1>*\<bbb-I\><rsub|X<rsub|n>=1>
        \ \ <with|mode|text|pour <math|n\<geqslant\>1>><rsub|>
      </equation*>

      est un processus adapt� � la filtration naturelle des
      <math|(X<rsub|n>)<rsub|n\<geqslant\>1>>.\ 
    </enumerate-alpha>

    \;
  </exercise>

  Supposons de jouer � pile ou face en misant <math|1><euro> � chaque fois et
  que <math|X<rsub|n>> repr�sente le gain dans la <math|n>-�me partie:
  <math|\<bbb-P\>(X<rsub|n>=\<pm\>1)=1/2>. Le processus
  <math|S<rsub|n>=S<rsub|0>+X<rsub|1>+\<cdots\>+X<rsub|n>> repr�sente alors
  le gain total apr�s les premi�res <math|n> parties. On permet
  <math|S<rsub|n>\<less\>0> : dans ce cas on imagine que
  <math|(S<rsub|n>)<rsub|->> repr�sente la quantit� d'argent emprunt�e (au
  casino, par exemple) pour nous permettre de continuer � jouer. Bien
  �videmment:

  <\equation*>
    \<bbb-E\>[S<rsub|n>]=S<rsub|0>+n*\<bbb-E\>[X<rsub|1>]=S<rsub|0>,
  </equation*>

  dans un jeu �quitable<strong|> le gain moyen est nul. <strong|>

  On voudrait se permettre de quitter le jeu � un instant que peut d�pendre
  le l'issue du jeu m�me, en autre termes, quitter le jeu � un instant
  <em|al�atoire> <math|T:\<Omega\>\<rightarrow\>\<bbb-N\><rsup|*\<ast\>>=\<bbb-N\>\<cup\>{+\<infty\>}>
  (<math|T=+\<infty\>> c'est pour nous permettre de continuer � jouer pour
  t<strong|>oujours...). Il est claire que l'on ne peut pas accepter
  n'importe quelle v.a. <math|T> comme strat�gie d'arr�t. Voyons quelques
  exemples:

  <\enumerate-numeric>
    <item>Je quitte des que je perd la premi�re fois:
    <math|T<rsub|1>=inf{n\<geqslant\>1: X<rsub|n>=-1}>

    <item>Je quitte des que je gagne au moins <math|100><euro> :
    <math|T<rsub|2>=inf{n\<geqslant\>1 : S<rsub|n>\<geqslant\>S<rsub|0>+100}>

    <item>Je quitte juste avant de perdre la premi�re fois:
    <math|T<rsub|3>=inf{n\<geqslant\>0: X<rsub|n+1>=-1}><strong|>
  </enumerate-numeric>

  Les strat�gies <math|1> et 2 sont acceptables, par contre la strat�gie
  <math|3> demande de la prevoyance. Les deux premi�res strat�gies sont
  donn�es par des temps d'arr�t, la derni�re non, selon la d�finition
  suivante.<strong|>

  <\definition>
    Une v.a. <math|T:\<Omega\>\<rightarrow\>\<bbb-N\><rsub|\<ast\>>=\<bbb-N\>\<cup\>{+\<infty\>}>
    est un temps d'arr�t si <math|{T\<leqslant\>n}\<in\>\<cal-F\><rsub|n>>
    pour tout <math|0\<leqslant\>n\<leqslant\>+\<infty\>>. De mani�re
    �quivalente <math|T> est un t.a. ssi <math|{T=n}\<in\>\<cal-F\><rsub|n>>
    pour tout <math|0\<leqslant\>n\<leqslant\>+\<infty\>>.\ 
  </definition>

  <\example>
    Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> un processus adapt� et
    <math|A> un borelien de <math|\<bbb-R\>>, alors\ 

    <\equation*>
      T<rsub|A>=inf{n\<geqslant\>1 : X<rsub|n>\<in\>A}
    </equation*>

    (avec <math|inf(\<varnothing\>)=+\<infty\>>) est un temps d'arr�t: pour
    tout <math|0\<leqslant\>n\<leqslant\>+\<infty\>> on a\ 

    <\equation*>
      {T\<leqslant\>n}=\<cup\><rsub|0\<less\>k\<leqslant\>n>{X<rsub|k>\<in\>A}\<in\>\<cal-F\><rsub|n>.
    </equation*>
  </example>

  <\exercise>
    Montrer que <math|T<rsub|2>> est un temps d'arr�t et que <math|T<rsub|3>>
    non.<strong|>
  </exercise>

  Si <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> est un processus al�atoire on
  note <math|X<rsub|T>:\<Omega\>\<rightarrow\>\<bbb-R\>> la v.a. donn�e par

  <\equation*>
    X<rsub|T>(\<omega\>)=X<rsub|T(\<omega\>)>(\<omega\>),<space|2em>\<omega\>\<in\>\<Omega\>
  </equation*>

  <\exercise>
    Montrer que si <math|T> est un t.a. et
    <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> un processus adapt� alors le
    processus <math|X<rsub|n><rsup|T>(\<omega\>)=X<rsub|n\<wedge\>T(\<omega\>)>(\<omega\>)>
    est encore adapt�. Il <strong|>s'appelle <em|processus arr�t� en
    <math|T>>.
  </exercise>

  Si on utilise une strat�gie d'arr�t <math|T> dans le jeu du pile ou face on
  obtient un gain final de <math|S<rsub|T>>. Le r�sultat suivant donne la
  moyenne de cette v.a.

  <\theorem>
    (<name|Identit� de Wald>) Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> un
    processus i.i.d. tel que <math|\<bbb-E\>[\|X<rsub|1>\|]\<less\>+\<infty\><rsub|>>
    et <math|T> un temps d'arr�t pour la filtration engendr�e par les
    <math|X>. Si <math|\<bbb-E\>[T]\<less\>+\<infty\>> alors

    <\equation*>
      \<bbb-E\>[S<rsub|T>]=\<bbb-E\>[T]*\<bbb-E\>[X<rsub|1>]
    </equation*>

    o� <math|S<rsub|n>=X<rsub|1>+\<cdots\>+X<rsub|n>>.
  </theorem>

  <\proof>
    On note que

    <\equation*>
      S<rsub|T>(\<omega\>)=<big|sum><rsub|n\<geqslant\>1>X<rsub|n>(\<omega\>)\<bbb-I\><rsub|n\<leqslant\>T(\<omega\>)>,<space|2em>T(\<omega\>)=<big|sum><rsub|n=1><rsup|T(\<omega\>)>1=<big|sum><rsub|n\<geqslant\>1>\<bbb-I\><rsub|n\<leqslant\>T(\<omega\>)>
    </equation*>

    les sommes �tant finies p.s. car <math|\<bbb-E\>[T]\<less\>+\<infty\>> et
    donc <math|\<bbb-P\>(T=+\<infty\>)=0>. En majorant <math|\|S<rsub|T>\|>
    on a

    <\equation*>
      \|S<rsub|T>\|\<leqslant\><big|sum><rsub|n\<geqslant\>1>\|X<rsub|n>\|\<bbb-I\><rsub|n\<leqslant\>T>
      .
    </equation*>

    Par Fubini (la fonction est positive)

    <\equation*>
      \<bbb-E\>[<big|sum><rsub|n\<geqslant\>1>\|X<rsub|n>\|\<bbb-I\><rsub|n\<leqslant\>T>
      ]=<big|sum><rsub|n\<geqslant\>1>\<bbb-E\>[\|X<rsub|n>\|\<bbb-I\><rsub|n\<leqslant\>T>
      ]
    </equation*>

    Comme <math|T> est un temps d'arr�t on a
    <math|{T\<geqslant\>n}={T\<less\>n}<rsup|c>={T\<leqslant\>n-1}<rsup|c>\<in\>\<cal-F\><rsub|n-1>>
    et par les propri�t�s de l'esp�rance conditionnelle

    <\equation*>
      <big|sum><rsub|n\<geqslant\>1>\<bbb-E\>[\|X<rsub|n>\|\<bbb-I\><rsub|n\<leqslant\>T>
      ]=<big|sum><rsub|n\<geqslant\>1>\<bbb-E\>[\<bbb-E\>[\|X<rsub|n>\|<wide*|\<bbb-I\><rsub|n\<leqslant\>T>|\<wide-underbrace\>><rsub|<wide|\<in\>|^>\<cal-F\><rsub|n-1>>\|\<cal-F\><rsub|n-1>]
      ]=<big|sum><rsub|n\<geqslant\>1>\<bbb-E\>[\<bbb-E\>[<wide*|\|X<rsub|n>\||\<wide-underbrace\>><rsub|<value|indep>
      \<cal-F\><rsub|n-1>>\|\<cal-F\><rsub|n-1>]\<bbb-I\><rsub|n\<leqslant\>T>
      ]
    </equation*>

    <\equation*>
      =<big|sum><rsub|n\<geqslant\>1>\<bbb-E\>[\|X<rsub|n>\|]\<bbb-E\>[\<bbb-I\><rsub|n\<leqslant\>T>
      ]=\<bbb-E\>[\|X<rsub|1>\|]\<bbb-E\>[<big|sum><rsub|n\<geqslant\>1>\<bbb-I\><rsub|n\<leqslant\>T>
      ]=\<bbb-E\>[\|X<rsub|1>\|]\<bbb-E\>[T ]
    </equation*>

    ce qui montre que la fonction <math|(\<omega\>,n)\<mapsto\>\|X<rsub|n>(\<omega\>)\|\<bbb-I\><rsub|n\<leqslant\>T(\<omega\>)>>
    est int�grable par rapport � la mesure <math|\<bbb-P\>\<times\>\<bbb-Q\>>
    sur <math|\<Omega\>\<times\>\<bbb-N\>> o� <math|\<bbb-Q\>> est la mesure
    de comptage sur <math|\<bbb-N\>>. Nous avons donc le droit d'utiliser le
    th�or�me de Fubini-Tonelli pour la fonction
    <math|(\<omega\>,n)\<mapsto\>X<rsub|n>(\<omega\>)\<bbb-I\><rsub|n\<leqslant\>T(\<omega\>)>>.
    Par le m�me raisonnement nous obtenons

    <\equation*>
      \<bbb-E\>[S<rsub|T>]=\<bbb-E\>[<big|sum><rsub|n\<geqslant\>1>X<rsub|n>\<bbb-I\><rsub|n\<leqslant\>T>]<above|=|Fubini><big|sum><rsub|n\<geqslant\>1>\<bbb-E\>[X<rsub|n>\<bbb-I\><rsub|n\<leqslant\>T>]<above|=|<value|indep>><big|sum><rsub|n\<geqslant\>1>\<bbb-E\>[X<rsub|n>]\<bbb-E\>[\<bbb-I\><rsub|n\<leqslant\>T>]=\<bbb-E\>[X<rsub|1>]\<bbb-E\>[T].
    </equation*>

    \;

    \;
  </proof>

  L'identit� de Wald appliqu�e au jeu du pile ou face (�quitable) nous donne
  que peu importe la strat�gie d'arr�t qu'on utilise, si on triche pas (en
  regardant dans le futur) le gain moyen <math|\<bbb-E\>[S<rsub|T>]-S<rsub|0>>
  sera toujours nul.

  <\remark>
    La condition d'integrabilit� sur <math|T> dans l'identit� de Wald est
    tr�s importante. Consid�rons le temps d'arr�t
    <math|T=T<rsub|2>=inf{n\<geqslant\>1 :
    S<rsub|n>\<geqslant\>S<rsub|0>+100}>. Alors par definition
    <math|T\<less\>+\<infty\>\<Rightarrow\>S<rsub|T>=S<rsub|0>+100> \ mais si
    l'on pouvait appliquer l'identit� on obtiendrait
    <math|S<rsub|0>=\<bbb-E\>[S<rsub|T>]=S<rsub|0>+100> ! Cela montre que
    dans ce cas, n�cessairement <math|\<bbb-E\>[T]=+\<infty\>>. (En effet si
    <math|\<bbb-E\>[T]\<less\>+\<infty\>> alors <math|T\<less\>+\<infty\>>
    p.s. et <math|S<rsub|T>=S<rsub|0>+100> p.s.)
  </remark>

  <\remark>
    En g�n�ral, si le processus <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> est
    adapt� et int�grable (c-�-d <math|X<rsub|n>\<in\>L<rsup|1>> pour tout
    <math|n\<geqslant\>0>) et <math|T> est un temps d'arr�t born� (c-�-d tel
    que il existe un entier <math|N\<less\>+\<infty\>> pour lequel
    <math|\<bbb-P\>(T\<leqslant\>N)=1>) alors <math|X<rsub|T>\<in\>L<rsup|1>>
    car

    <\equation*>
      \|X<rsub|T>\|=\|<big|sum><rsub|n=1><rsup|N>X<rsub|n>\<bbb-I\><rsub|T=n>\|\<leqslant\><big|sum><rsub|n=1><rsup|N>\|X<rsub|n>\|
      \<bbb-I\><rsub|T=n>\<in\>L<rsup|1>
    </equation*>

    �tant somme finie de v.a. dans <math|L<rsup|1>>.
  </remark>

  Apr�s ces observations il est int�ressant d'�tudier la classe
  <math|\<cal-M\>> des processus <math|(X<rsub|n>)<rsub|n\<geqslant\>0>>
  adapt�s et int�grables tels que

  <\equation>
    \<bbb-E\>[X<rsub|T>]=X<rsub|0><space|2em><with|mode|text|pour tout t.a.
    <math|T> born�.><label|eq:cond-ta>
  </equation>

  ce que reviendrait � consid�rer <math|(X<rsub|n>)<rsub|n\<geqslant\>0>>
  comme le gain dans un jeu �quitable qui n'admet pas de strat�gie d'arr�t
  qui soit gagnante en moyenne. Par l'identit� de Wald, toute somme partielle
  de suites iid � moyenne nulle satisfait cette contrainte. On se demande
  donc les propri�t�s g�n�rales de tels processus.\ 

  Une propri�t� qui s'est r�v�l�e basique pour caract�riser et �tudier cette
  classe de processus est la suivante :

  <\lemma>
    Le processus <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> \ adapt� et
    int�grable, satisfait (<reference|eq:cond-ta>) ssi pour tout
    <math|n\<geqslant\>0>

    <\equation>
      \<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>]=X<rsub|n>
      <space|2em>p.s.<label|eq:martingale>
    </equation>

    \ 
  </lemma>

  <\proof>
    Montrons d'abord que (<reference|eq:martingale>) <math|\<Rightarrow\>>
    (<reference|eq:cond-ta>). Pour tout <math|n\<geqslant\>0> et
    <math|A\<in\>\<cal-F\><rsub|n>> on consid�re le t.a. (v�rifier)

    <\equation*>
      T<rsub|n,A>(\<omega\>)=<choice|<tformat|<cwith|1|1|1|1|cell-halign|c>|<cwith|1|1|2|2|cell-valign|b>|<table|<row|<cell|n+1>|<cell|<with|mode|text|si
      <math|\<omega\>\<in\>A>>>>|<row|<cell|n>|<cell|sinon>>>>>
    </equation*>

    alors la condition <math|\<bbb-E\>[X<rsub|T<rsub|n,A>>]-X<rsub|0>=0>
    donne

    <\equation*>
      0=\<bbb-E\>[X<rsub|n+1>\<bbb-I\><rsub|A>+X<rsub|n>(1-\<bbb-I\><rsub|A>)]-X<rsub|0>=\<bbb-E\>[(X<rsub|n+1>-X<rsub|n>)\<bbb-I\><rsub|A>]+\<bbb-E\>[X<rsub|n>]-X<rsub|0>=\<bbb-E\>[(X<rsub|n+1>-X<rsub|n>)\<bbb-I\><rsub|A>]
    </equation*>

    (car <math|\<bbb-E\>[X<rsub|n>]=X<rsub|0>> par d�finition de la classe
    <math|\<cal-M\>>). Cette derni�re �galit� est vraie pour tout
    <math|A\<in\>\<cal-F\><rsub|n>> et donc aussi pour toute fonction
    <math|G<wide|\<in\>|^>\<cal-F\><rsub|n>> born�e ce qui nous donne que
    <math|\<bbb-E\>[X<rsub|n+1>-X<rsub|n>\|\<cal-F\><rsub|n>]=0> p.s.

    Montrons maintenant que (<reference|eq:martingale>) <math|\<Rightarrow\>>
    (<reference|eq:cond-ta>) : soit <math|T> un t.a. born�e et <math|N> tel
    que <math|T\<leqslant\>N>. Notons d'abord que la condition
    (<reference|eq:martingale>) et implique que pour tout <math|k\<gtr\>n>

    <\equation*>
      \<bbb-E\>[X<rsub|k>\|\<cal-F\><rsub|n>]=\<bbb-E\>[\<bbb-E\>[X<rsub|k>\|\<cal-F\><rsub|k-1>]\|\<cal-F\><rsub|n>]=\<bbb-E\>[X<rsub|k-1>\|\<cal-F\><rsub|n>]=\<cdots\>=\<bbb-E\>[X<rsub|n>\|\<cal-F\><rsub|n>]=X<rsub|n>
    </equation*>

    car <math|\<cal-F\><rsub|k>\<supseteq\>\<cal-F\><rsub|n>> pour tout
    <math|k\<geqslant\>n>. Donc <math|\<bbb-E\>[X<rsub|N>\|\<cal-F\><rsub|n>]=X<rsub|n>>
    pour tout <math|n\<leqslant\>N> et aussi
    <math|\<bbb-E\>[X<rsub|N>]=X<rsub|0>> en prenant l'esp�rance des deux
    c�tes avec <math|n=0>. Gr�ce aux hypoth�ses d'integrabilit� de
    <math|X<rsub|n>> et bornitude de <math|T> on a que

    <\equation*>
      \<bbb-E\>[X<rsub|T>]=<big|sum><rsub|n=1><rsup|N>\<bbb-E\>[X<rsub|n>\<bbb-I\><rsub|n=T><rsub|>]<above|=|eq.
      (<reference|eq:martingale>)><big|sum><rsub|n=1><rsup|N>\<bbb-E\>[\<bbb-E\>[X<rsub|N>\|\<cal-F\><rsub|n>]<wide*|\<bbb-I\><rsub|n=T>|\<wide-underbrace\>><rsub|<wide|\<in\>|^>\<cal-F\><rsub|n>>]=<big|sum><rsub|n=1><rsup|N>\<bbb-E\>[\<bbb-E\>[X<rsub|N>\<bbb-I\><rsub|n=T>\|\<cal-F\><rsub|n>]]
    </equation*>

    <\equation*>
      =<big|sum><rsub|n=1><rsup|N>\<bbb-E\>[X<rsub|N>\<bbb-I\><rsub|n=T>]=\<bbb-E\>[X<rsub|N>]=X<rsub|0>
      .
    </equation*>

    ce qui donne la propri�t� (<reference|eq:cond-ta>).
  </proof>

  L'equation (<reference|eq:martingale>) peut etre interpret� en terms de
  jeux en disant que dans un jeu equitable si <math|X<rsub|n+1>-X<rsub|n>>
  represente le gain dans la <math|(n+1)> partie alors, conditionellement �
  tout ce que c'est pass� avant (c-�-d conditionellement �
  <math|\<cal-F\><rsub|n>>), ce gain est en moyenne nul:
  <math|\<bbb-E\>[X<rsub|n+1>-X<rsub|n>\|\<cal-F\><rsub|n>]=0>.\ 

  <\remark>
    La preuve du th�or�me pr�c�dent montre (implicitement) que si la
    condition <math|\<bbb-E\>[X<rsub|n+1>-X<rsub|n>\|\<cal-F\><rsub|n>]=0>
    n'est pas toujours v�rifi�e on peut construire une strat�gie d'arr�t
    <math|T> telle que <math|\<bbb-E\>[X<rsub|T>]\<neq\>X<rsub|0>>.\ 

    En effet supposons que il existe <math|n\<gtr\>0> tel que l'�v�nement
    <math|A={\<bbb-E\>[X<rsub|n+1>-X<rsub|n>\|\<cal-F\><rsub|n>]\<gtr\>0}>
    \ (par exemple, un raisonnement similaire marche dans le cas
    <math|\<less\>0>) ait une probabilit� positive :
    <math|\<bbb-P\>(A)\<gtr\>0>. Notons que <math|A\<in\>\<cal-F\><rsub|n>>
    (v�rifier) et donc que � l'instant <math|n> on sait si on est dans
    l'�v�nement <math|A> ou pas. La strat�gie est la suivante: si on est dans
    <math|A> on s'arr�te � l'instant <math|(n+1)>, sinon on s'arr�te �
    l'instant <math|n>. L'id�e c'est que si on est dans <math|A> alors on
    sait que <math|\<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>]\<gtr\>X<rsub|n>>
    et donc que si on joue encore une fois en moyenne on gagne quelque chose
    en plus. On pose donc <math|T=(n+1) \<bbb-I\><rsub|A>+n\<bbb-I\><rsub|A<rsup|c>>>.
    Avec cette strat�gie d'arr�t on obtient:

    <\equation*>
      \<bbb-E\>[X<rsub|T>]=\<bbb-E\>[X<rsub|n+1>\<bbb-I\><rsub|A>+X<rsub|n>\<bbb-I\><rsub|A<rsup|c>>]=\<bbb-E\>[\<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>]\<bbb-I\><rsub|A>+X<rsub|n>\<bbb-I\><rsub|A<rsup|c>>]\<gtr\>\<bbb-E\>[X<rsub|n>\<bbb-I\><rsub|A>+X<rsub|n>\<bbb-I\><rsub|A<rsup|c>>]=\<bbb-E\>[X<rsub|n>]=X<rsub|0>.
    </equation*>

    L'in�galit� stricte est due au fait que la v.a.
    <math|Q=\<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>]\<bbb-I\><rsub|A>-X<rsub|n>\<bbb-I\><rsub|A>\<geqslant\>0>
    et que <math|><math|Q\<gtr\>0> avec probabilit� positive
    <math|\<bbb-P\>(Q\<gtr\>0)=\<bbb-P\>(A)\<gtr\>0>. Cela entraine que
    <math|\<bbb-E\>[Q]\<gtr\>0> et donc que
    \ <math|\<bbb-E\>[\<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>]\<bbb-I\><rsub|A>]\<gtr\>\<bbb-E\>[X<rsub|n>\<bbb-I\><rsub|A>]>.
  </remark>

  On va appeler les processus satisfaisant (<reference|eq:martingale>) des
  <em|martingales>. Dans la suite on va �tudier leurs propri�t�s g�n�rales.

  <section|Martingales><label|sec:martingales>

  <\definition>
    Un processus <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> r�el, adapt� et
    int�grable (c-�-d tel que <math|\<bbb-E\>[\|X<rsub|n>\|]\<less\>+\<infty\>>
    pour tout <math|n\<geqslant\>0>) est\ 

    <\enumerate-roman>
      <item>une martingale ssi <math|\<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>]=X<rsub|n>>
      p.s. pour tout <math|n\<geqslant\>0> ;

      <item>une sur-martingale ssi <math|\<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>]\<leqslant\>X<rsub|n>>
      p.s. pour tout <math|n\<geqslant\>0> ;

      <item>une sous-martingale ssi <math|\<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>]\<geqslant\>X<rsub|n>>
      p.s. pour tout <math|n\<geqslant\>0> .
    </enumerate-roman>
  </definition>

  Si on interpr�te <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> comme les gains
  dans un jeu de hasard et la filtration <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>0>>
  comme l'information disponible � chaque instant de temps, alors une
  martingale est un jeu �quitable, une sur-martingale est un jeu d�favorable
  et une sous-martingale un jeu favorable.

  <\remark>
    Si <math|X> est une martingale, alors par r�currence on a que
    \ <math|\<bbb-E\>[X<rsub|m>\|\<cal-F\><rsub|n>]=X<rsub|n>> pour tout
    <math|m\<geqslant\>n\<geqslant\>0>. Une propri�t� analogue est valable
    pour les sous/sur-martingales. Si on note
    <math|\<Delta\>X<rsub|n>=X<rsub|n>-X<rsub|n-1>> alors la propri�t� de
    (sous-/sur-)martingale est �quivalente �

    <\equation*>
      \<bbb-E\>[\<Delta\>X<rsub|n+1>\|\<cal-F\><rsub|n>]=0 (ou \<geqslant\>,
      ou \<leqslant\>) pour tout n\<geqslant\>0.
    </equation*>
  </remark>

  <\example>
    Soit <math|Z> une v.a. r�elle et int�grable. Alors
    <math|X<rsub|n>=\<bbb-E\>[Z\|\<cal-F\><rsub|n>]> est une martingale. Si
    <math|(A<rsub|n>)<rsub|n\<geqslant\>0>> est un processus r�el adapt� et
    croissant (resp. d�croissant) (c-�-d tel que <math|A<rsub|n>\<leqslant\>
    (resp. \<geqslant\>)A<rsub|n+1>> p.s.) alors il est aussi une sous-(resp.
    sur-) martingale.
  </example>

  <\example>
    Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> une suite de v.a.
    ind�pendantes telles que <math|\<bbb-E\>[X<rsub|n>]=0 > pour tout
    <math|n\<geqslant\>1>. On pose <math|Y<rsub|0>=0> et
    <math|Y<rsub|n>=X<rsub|1>+\<cdots\>+X<rsub|n>> pour
    <math|n\<geqslant\>1>. Alors <math|(Y<rsub|n>)<rsub|n\<geqslant\>0>> est
    une martingale par rapport � <math|(\<cal-F\><rsup|X><rsub|n>)<rsub|n\<geqslant\>0>>
    et donc aussi par rapport � <math|(\<cal-F\><rsup|Y><rsub|n>)<rsub|n\<geqslant\>0>>.
  </example>

  <\proposition>
    (<name|D�composition de Doob>) Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>0>>
    une suite adapt�e et int�grable, alors il existe un unique martingale
    <math|(M<rsub|n>)<rsub|n\<geqslant\>0>> et un unique processus
    <math|(I<rsub|n>)<rsub|n\<geqslant\>0>> pr�visible, int�grable et tel que
    <math|I<rsub|0>=0> tels que on ait

    <\equation*>
      X<rsub|n>=X<rsub|0>+M<rsub|n>+I<rsub|n>,<space|2em>n\<geqslant\>0.
    </equation*>

    De plus

    <\enumerate-alpha>
      <item><math|I<rsub|n>=0> pour tout <math|n\<geqslant\>0> ssi
      <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> est une martingale ;

      <item><math|(I<rsub|n>)<rsub|n\<geqslant\>0>> est croissant ssi
      <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> est une sous-martingale ;

      <item><math|(I<rsub|n>)<rsub|n\<geqslant\>0>> est d�croissant ssi
      <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> est une sur-martingale .
    </enumerate-alpha>
  </proposition>

  <\proof>
    On d�montre d'abord l'unicit� de la d�composition : si
    <math|<wide|M|~>,<wide|I|~>> sont une autre d�composition possible de
    <math|X> en partie martingale et processus pr�visible int�grable, alors
    on doit avoir\ 

    <\equation*>
      <wide|M|~><rsub|n>+<wide|I|~><rsub|n>=M<rsub|n>+I<rsub|n>=X<rsub|n>-X<rsub|0>
    </equation*>

    et donc si on pose <math|N<rsub|n>=<wide|M|~><rsub|n>-M<rsub|n>=I<rsub|n>-<wide|I|~><rsub|n>>
    on a que <math|N<rsub|n>> est une martingale et aussi un processus
    pr�visible int�grable, donc pour tout <math|n\<geqslant\>0>

    <\equation*>
      N<rsub|n>=\<bbb-E\>[N<rsub|n+1>\|\<cal-F\><rsub|n>]=N<rsub|n+1>
    </equation*>

    car <math|N<rsub|n+1><wide|\<in\>|^>\<cal-F\><rsub|n>> ce qu'implique que
    <math|N<rsub|n>> est constant en <math|n> et donc que
    <math|N<rsub|n>=N<rsub|0>=0> car <math|I<rsub|0>=<wide|I|~><rsub|0>=0>.
    Donc <math|I<rsub|n>=<wide|I|~><rsub|n>> et
    <math|M<rsub|n>=<wide|M|~><rsub|n>>. Pour l'existence on remarque que
    <math|\<Delta\>M<rsub|n>=\<Delta\>X<rsub|n>-\<Delta\>I<rsub|n>> et en
    prenant l'esp�rance conditionnelle on obtient que

    <\equation*>
      0=\<bbb-E\>[\<Delta\>M<rsub|n+1>\|\<cal-F\><rsub|n>]=\<bbb-E\>[\<Delta\>X<rsub|n+1>\|\<cal-F\><rsub|n>]-\<bbb-E\>[\<Delta\>I<rsub|n+1>\|\<cal-F\><rsub|n>]=\<bbb-E\>[\<Delta\>X<rsub|n+1>\|\<cal-F\><rsub|n>]-\<Delta\>I<rsub|n+1>
    </equation*>

    car par la pr�visibilit� de <math|I<rsub|n>> on a
    <math|\<Delta\>I<rsub|n+1><wide|\<in\>|^>\<cal-F\><rsub|n>>. Donc on peut
    poser

    <\equation*>
      I<rsub|n>=<big|sum><rsub|i=0><rsup|n-1>\<bbb-E\>[\<Delta\>X<rsub|i+1>\|\<cal-F\><rsub|i>],<space|2em>I<rsub|0>=0
    </equation*>

    ce qui nous donne un processus pr�visible et int�grable. Il est aussi
    �vident que si on pose <math|M<rsub|n>=X<rsub|n>-X<rsub|0>-I<rsub|n>>
    alors <math|(M<rsub|n>)<rsub|n\<geqslant\>0>> est une martingale.

    La formule pour <math|I<rsub|n>> donne directement que \ si
    <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> est martingale alors
    <math|I<rsub|n>=0> pour tout <math|n\<geqslant\>0>, l'implication oppos�e
    est �vidente. Si <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> est une
    (sur-)sous-martingale alors <math|>pour tout <math|n>:
    <math|\<bbb-E\>[\<Delta\>X<rsub|n+1>\|\<cal-F\><rsub|n>]\<geqslant\>X<rsub|n>>
    (ou <math|\<leqslant\>>) et donc le processus <math|I<rsub|n>> est
    (de-)croissant.\ 
  </proof>

  <\proposition>
    Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> une (sous-)martingale et
    <math|\<Phi\>> une fonction convexe (convexe et croissante) telle que
    <math|\<bbb-E\>[\|\<Phi\>(X<rsub|n>)\|]\<less\>+\<infty\>> pour tout
    <math|n\<geqslant\>0>, alors <math|(\<Phi\>(X<rsub|n>))<rsub|n\<geqslant\>0>>
    est une sous-martingale.
  </proposition>

  <\proof>
    Par l'in�galit� de Jensen on a que\ 

    <\equation*>
      \<bbb-E\>[\<Phi\>(X<rsub|n+1>)\|\<cal-F\><rsub|n>]\<geqslant\>\<Phi\>(\<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>])=\<Phi\>(X<rsub|n>)
    </equation*>

    ou la derni�re �galit� est due � la propri�t� de martingale de <math|X>.
    Si <math|X> est sous-martingale,\ 

    <\equation*>
      \<bbb-E\>[\<Phi\>(X<rsub|n+1>)\|\<cal-F\><rsub|n>]\<geqslant\>\<Phi\>(\<bbb-E\>[X<rsub|n+1>\|\<cal-F\><rsub|n>])\<geqslant\>\<Phi\>(X<rsub|n>)
    </equation*>

    car <math|\<Phi\>> est croissante.
  </proof>

  <\proposition>
    Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> une martingale de carre
    int�grable (c-�-d <math|\<bbb-E\>[X<rsub|n><rsup|2>]\<less\>+\<infty\>>
    pour tout <math|n\<geqslant\>0>). Alors la sous-martingale
    <math|(X<rsub|n><rsup|2>)<rsub|n\<geqslant\>0>> admet la d�composition

    <\equation*>
      X<rsub|n><rsup|2>=X<rsub|0><rsup|2>+N<rsub|n>+[X]<rsub|n>
    </equation*>

    avec

    <\equation*>
      N<rsub|n>=2<big|sum><rsub|i=1><rsup|n>X<rsub|i-1>\<Delta\>X<rsub|i>,<space|2em>[X]<rsub|n>=<big|sum><rsub|i=1><rsup|n>(\<Delta\>X<rsub|i>)<rsup|2>
    </equation*>

    o� le processus <math|(N<rsub|n>)<rsub|n\<geqslant\>0>> est un martingale
    et le processus <math|([X]<rsub|n>)<rsub|n\<geqslant\>0>> est un
    processus croissant appel� variation quadratique de <math|X>.
  </proposition>

  <\proof>
    (exercice)
  </proof>

  <\exercise>
    Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> une martingale. D�terminer
    la d�composition de Doob de <math|(X<rsub|n><rsup|2>)<rsub|n\<geqslant\>0>>:

    <\equation*>
      X<rsub|n><rsup|2>=X<rsub|0><rsup|2>+M<rsub|n>+\<langle\>X\<rangle\><rsub|n>
    </equation*>

    avec <math|(M<rsub|n>)<rsub|n\<geqslant\>0>> martingale et
    <math|(\<langle\>X\<rangle\><rsub|n>)<rsub|n\<geqslant\>0>> processus
    pr�visible (et croissante). Montrer que

    <\equation*>
      \<Delta\>\<langle\>X\<rangle\><rsub|n>=\<bbb-E\>[(\<Delta\>X<rsub|n>)<rsup|2>\|\<cal-F\><rsub|n-1>]=\<bbb-E\>[
      \<Delta\>[X]<rsub|n> \|\<cal-F\><rsub|n-1>].
    </equation*>
  </exercise>

  <section|Strat�gies>

  <\definition>
    (<name|Transformation de Martingale>) Soit
    <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> un processus adapt� et
    <math|(C<rsub|n>)<rsub|n\<geqslant\>1>> un processus pr�visible. On
    d�finit le nouveau processus <math|((C\<cdot\>X)<rsub|n>)<rsub|n\<geqslant\>0>>
    par <math|(C\<cdot\>X)<rsub|0>=0> et <math|\<Delta\>(C\<cdot\>X)<rsub|n>=C<rsub|n>\<Delta\>X<rsub|n>>
    pour tout <math|n\<geqslant\>1>. Alors

    <\equation*>
      (C\<cdot\>X)<rsub|n>=<big|sum><rsub|i=1><rsup|n>C<rsub|i>(X<rsub|i>-X<rsub|i-1>).
    </equation*>
  </definition>

  <\lemma>
    Soit <math|(C<rsub|n>)<rsub|n\<geqslant\>1>> un processus pr�visible
    born� (c-�-d <math|\|C<rsub|n>\|\<leqslant\>K> pour tout
    <math|n\<geqslant\>1>).

    <\enumerate-roman>
      <item>Si <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> est une martingale
      alors <math|((C\<cdot\>X)<rsub|n>)<rsub|n\<geqslant\>0>> est une
      martingale.

      <item>Si <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> est une
      (sous-)sur-martingale et <math|C<rsub|n>\<geqslant\>0> pour tout
      <math|n\<geqslant\>1> alors <math|((C\<cdot\>X)<rsub|n>)<rsub|n\<geqslant\>0>>
      est une (sous-)sur-martingale.
    </enumerate-roman>

    Ces propri�t�s sont aussi valables sans condition de bornitude si
    <math|C<rsub|n>\<in\>L<rsup|2>> pour tout <math|n\<geqslant\>1> et
    <math|X<rsub|n>\<in\>L<rsup|2>> pour tout <math|n\<geqslant\>0>. \ \ 
  </lemma>

  <\proof>
    L'integrabilit� et l'adaptation de <math|((C\<cdot\>X)<rsub|n>)<rsub|n\<geqslant\>0>>
    sont laisses en exercice. On a pour tout <math|n\<geqslant\>1>,

    <\equation*>
      \<bbb-E\>[\<Delta\>(C*\<cdot\>X)<rsub|n>\|\<cal-F\><rsub|n-1>]=\<bbb-E\>[C<rsub|n>\<Delta\>X<rsub|n>\|\<cal-F\><rsub|n-1>]=C<rsub|n>\<bbb-E\>[\<Delta\>X<rsub|n>\|\<cal-F\><rsub|n-1>]
    </equation*>

    par la pr�visibilit� de <math|(C<rsub|n>)<rsub|n\<geqslant\>1>>, ce que
    nous permet de conclure.\ 
  </proof>

  \ Il est facile de montrer que si on pose

  <\equation*>
    C<rsub|n>=1<rsub|n\<leqslant\>T>
  </equation*>

  alors le processus <math|(C<rsub|n>)<rsub|n\<geqslant\>1>> est pr�visible
  et <math|X<rsub|0>+(C\<cdot\>X)<rsub|n>=X<rsup|T><rsub|n>=X<rsub|T\<wedge\>n>>
  donc on peut conclure que

  <\theorem>
    Si <math|T> est un temps d'arr�t et <math|(X<rsub|n>)<rsub|n\<geqslant\>0>>
    est une (sur-)martingale, alors <math|(X<rsup|T><rsub|n>)<rsub|n\<geqslant\>0>>
    est une (sur-)martingale et en particulier

    <\equation*>
      \<bbb-E\>[X<rsub|n\<wedge\>T>]\<leqslant\>\<bbb-E\>[X<rsub|0>]
    </equation*>

    dans le cas des sur-martingales (avec �galit� pour les martingales).\ 
  </theorem>

  <\remark>
    La bornitude de <math|T> n'est pas requise.
  </remark>

  <\remark>
    Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> la marche al�atoire simple
    sur <math|\<bbb-Z\>> avec <math|X<rsub|0>=0>, alors
    <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> est une martingale et pour tout
    t.a. <math|T> on a que

    <\equation*>
      \<bbb-E\>[X<rsub|n\<wedge\>T>]=\<bbb-E\>[X<rsub|0>]=0
    </equation*>

    Mais en g�n�ral

    <\equation*>
      \<bbb-E\>[X<rsub|T>]\<neq\>0
    </equation*>

    en effet si <math|T=inf{n\<gtr\>0 : X<rsub|n>=1}> alors par r�currence on
    a que <math|\<bbb-P\>(T\<less\>+\<infty\>)=1> et <math|X<rsub|T>=1> donc
    <math|\<bbb-E\>[X<rsub|T>]=1>. Donc la convergence <math|L<rsup|1>> de
    <math|X<rsub|T\<wedge\>n>> vers <math|X<rsub|T>> n'a pas toujours lieu.
  </remark>

  Voici une importante g�n�ralisation de l'identit� de Wald pour les
  (sur-)martingales.

  <\theorem>
    (<name|th�or�me d'arr�t optionnel de Doob>) Soit <math|T> un t.a. et
    <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> une sur-martingale, alors
    <math|X<rsub|T>> est int�grable et <math|\<bbb-E\>[X<rsub|T>]\<leqslant\>\<bbb-E\>[X<rsub|0>]>
    dans les cas suivantes :

    <\enumerate-roman>
      <item><math|T> est born�

      <item><math|X> est born� et <math|T\<less\>+\<infty\>> p.s.

      <item><math|\<bbb-E\>[T]\<less\>+\<infty\>> et existe <math|K\<gtr\>0>
      tel que pour tout tout <math|n\<geqslant\>1>

      <\equation*>
        \|X<rsub|n>-X<rsub|n-1>\|\<leqslant\>K .
      </equation*>

      <item><math|X<rsub|n>\<geqslant\>0> pour tout <math|n\<geqslant\>0> et
      <math|T\<less\>+\<infty\>> p.s.
    </enumerate-roman>
  </theorem>

  <\proof>
    On sait que pour tout <math|n\<geqslant\>1>

    <\equation*>
      \<bbb-E\>[X<rsub|n\<wedge\>T>-X<rsub|0>]\<leqslant\>0.
    </equation*>

    (i) Si <math|T\<leqslant\>N> il suffit de prendre <math|n=N>. (ii) On
    peut utiliser la convergence domin�e pour montrer que

    <\equation*>
      0\<geqslant\>lim<rsub|n>\<bbb-E\>[X<rsub|n\<wedge\>T>-X<rsub|0>]=\<bbb-E\>[lim<rsub|n>(X<rsub|n\<wedge\>T>-X<rsub|0>)]=\<bbb-E\>[X<rsub|T>-X<rsub|0>].
    </equation*>

    (iii) On a que

    <\equation*>
      \|X<rsub|n\<wedge\>T>-X<rsub|0>\|\<leqslant\><big|sum><rsub|k=1><rsup|T\<wedge\>n>\|\<Delta\>X<rsub|k>\|\<leqslant\>K
      T
    </equation*>

    car <math|\|\<Delta\>X<rsub|k>\|\<leqslant\>K> pour tout
    <math|k\<geqslant\>0>. Comme <math|\<bbb-E\>[T]\<less\>+\<infty\>> on en
    d�duit par convergence domin�e que <math|\<bbb-E\>[X<rsub|T>]\<leqslant\>\<bbb-E\>[X<rsub|0>]>.
    (iv) La suite <math|(X<rsub|n\<wedge\>T>)<rsub|n\<geqslant\>0>> est
    positive et converge p.s. � <math|X<rsub|T>> donc par le lemme de
    Fatou<strong|> on a que

    <\equation*>
      \<bbb-E\>[X<rsub|0>]\<geqslant\>liminf<rsub|n>\<bbb-E\>[X<rsub|n\<wedge\>T>]\<geqslant\>\<bbb-E\>[liminf<rsub|n>
      X<rsub|n\<wedge\>T>]=\<bbb-E\>[X<rsub|T>].
    </equation*>

    \;
  </proof>

  \;
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|language|french>
    <associate|preamble|false>
    <associate|sfactor|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Cor1|<tuple|38|11>>
    <associate|PropStat|<tuple|35|10>>
    <associate|auto-1|<tuple|2|1>>
    <associate|auto-10|<tuple|1.8|7>>
    <associate|auto-11|<tuple|1.9|9>>
    <associate|auto-12|<tuple|2|11>>
    <associate|auto-13|<tuple|2.1|12>>
    <associate|auto-14|<tuple|2.2|14>>
    <associate|auto-15|<tuple|3.2|14>>
    <associate|auto-16|<tuple|2.4|17>>
    <associate|auto-17|<tuple|3|18>>
    <associate|auto-18|<tuple|3.1|20>>
    <associate|auto-19|<tuple|3.2|20>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|2.3.2|22>>
    <associate|auto-21|<tuple|3|25>>
    <associate|auto-3|<tuple|2|4>>
    <associate|auto-4|<tuple|3|6>>
    <associate|auto-5|<tuple|4|3>>
    <associate|auto-6|<tuple|5|4>>
    <associate|auto-7|<tuple|1.5|5>>
    <associate|auto-8|<tuple|1.6|6>>
    <associate|auto-9|<tuple|1.7|6>>
    <associate|auto.2-1|<tuple|1|?|#2>>
    <associate|auto.3-1|<tuple|2|?|#3>>
    <associate|bayes|<tuple|1|3>>
    <associate|cost|<tuple|2|6>>
    <associate|cycle|<tuple|a|6>>
    <associate|eca|<tuple|a)|5>>
    <associate|ecb|<tuple|b)|5>>
    <associate|ecbb|<tuple|b')|5>>
    <associate|ecp1|<tuple|1|5>>
    <associate|ecp2|<tuple|2|5>>
    <associate|eq:1|<tuple|2|1>>
    <associate|eq:10|<tuple|25|4>>
    <associate|eq:11|<tuple|9|7>>
    <associate|eq:12|<tuple|15|9>>
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
    <associate|eq:9|<tuple|11|4>>
    <associate|eq:N|<tuple|20|11>>
    <associate|eq:cond-ta|<tuple|1|3>>
    <associate|eq:equi|<tuple|3|3>>
    <associate|eq:exp|<tuple|4|12>>
    <associate|eq:faible|<tuple|2|3>>
    <associate|eq:int-expecation|<tuple|14|?>>
    <associate|eq:int-expectaion|<tuple|14|?>>
    <associate|eq:int-expectation|<tuple|10|?>>
    <associate|eq:martingale|<tuple|2|3>>
    <associate|eq:mu-first-eq|<tuple|33|?>>
    <associate|eq:mu-first-eqn|<tuple|33|?>>
    <associate|eq:mufirsteqn|<tuple|16|?>>
    <associate|eq:nx|<tuple|1|11>>
    <associate|eq:pi|<tuple|19|11>>
    <associate|eq:rev|<tuple|14|6>>
    <associate|eq:rho|<tuple|3|12>>
    <associate|eq:therg|<tuple|2|11>>
    <associate|ex:rw1|<tuple|3|1>>
    <associate|lemma:doob-1|<tuple|19|4>>
    <associate|lemma:doob-2|<tuple|20|4>>
    <associate|lemma:effex|<tuple|16|?>>
    <associate|mat1|<tuple|12|4>>
    <associate|part:chai-nes-de|<tuple|IV|1>>
    <associate|part:esp-cond|<tuple|1|3>>
    <associate|part:mart|<tuple|3|25>>
    <associate|part:martingales|<tuple|2|1>>
    <associate|pi|<tuple|1|6>>
    <associate|prop:irred|<tuple|33|6>>
    <associate|prop:regen|<tuple|15|?>>
    <associate|revcy|<tuple|b|6>>
    <associate|rhoth|<tuple|8|12>>
    <associate|sec:aperiod|<tuple|2.2|14>>
    <associate|sec:chai-nes-irred|<tuple|2|6>>
    <associate|sec:chai-nes-irred-1|<tuple|1.4|7>>
    <associate|sec:classification|<tuple|1.3|3>>
    <associate|sec:definitions|<tuple|1|1>>
    <associate|sec:ec|<tuple|1.2|5>>
    <associate|sec:equation-de-chapman|<tuple|1.2|3>>
    <associate|sec:equilibre|<tuple|2|12>>
    <associate|sec:espcon|<tuple|1|3>>
    <associate|sec:esper-cond-comme|<tuple|1.3|7>>
    <associate|sec:irr-fort|<tuple|2.1|14>>
    <associate|sec:martingales|<tuple|2|4>>
    <associate|sec:prob-revers|<tuple|1.6|5>>
    <associate|sec:prob-stat|<tuple|1.5|4>>
    <associate|sec:st|<tuple|1.1|4>>
    <associate|sec:sys-dyn|<tuple|1.1|2>>
    <associate|sec:th-erg|<tuple|1|11>>
    <associate|sub|<tuple|1|12>>
    <associate|subb|<tuple|2|12>>
    <associate|th:dichotomy|<tuple|30|8>>
    <associate|th:l2-complete|<tuple|14|7>>
    <associate|th:mes-rv|<tuple|1|4>>
    <associate|tot|<tuple|17|9>>
    <associate|uniq|<tuple|3|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|2<space|2spc>Martingales
      et strat�gies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Processus,
      filtrations et temps d'arr�t> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Martingales>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Strat�gies>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>