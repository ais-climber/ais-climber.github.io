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
  MIDO M1 MMD>|<cell|Universit� Paris-Dauphine 09/10
  >>|<row|<cell|<em|Contr�le des Cha�nes de
  Markov>>|<cell|<small|<verbatim|[v.2 20100831]>>>>>>>

  \;

  <\with|par-mode|center>
    <huge|<strong|Rattrapage>>
  </with>

  <with|font-base-size|8|<\verbatim>
    [Dur�e deux heures. Aucun document n'est autoris�. Tous les exercices
    sont independants. Seule les reponses soigneusement justifi�es seront
    prise en compte.]
  </verbatim>>

  <\exercise>
    Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> un processus adapt� et
    <math|S,T> deux temps d'arr�t (tout par rapport � une seule et m�me
    filtration <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>0>>).\ 

    <\enumerate-alpha>
      <item>Montrer que <math|<wide|T|^>=inf{n\<geqslant\>1 \ :
      X<rsub|n>\<geqslant\>5}> est un temps d'arr�t .

      <item>Montrer que <math|T<rprime|'>=T \<bbb-I\><rsub|T\<less\>S>+S
      \<bbb-I\><rsub|T\<geqslant\>S>> est un temps d'arr�t .

      <item>Donner la d�finition de la tribu <math|\<cal-F\><rsub|T>> .

      <item>Montrer que <math|T> et <math|X<rsub|T>> sont
      <math|\<cal-F\><rsub|T>>-mesurables .

      <item>Donner un exemple pour montrer que en g�n�ral
      <math|S<rprime|'>=\<bbb-I\><rsub|S\<geqslant\>1>(S-1)> n'est pas un
      temps d'arr�t .
    </enumerate-alpha>
  </exercise>

  <\exercise>
    On suppose la situation suivante: dans un jeux � quiz on doit r�pondre �
    <math|N> questions diff�rentes, une r�ponse correcte � la question
    <math|i>-�me rapporte un gain <math|R<rsub|i>\<gtr\>0> fix� a-priori. On
    se donne aussi un mod�le probabiliste de notre capacit� � donner les
    r�ponses correctes: on suppose que la probabilit� de donner la r�ponse
    correcte � la <math|i>-�me question est <math|p<rsub|i>\<in\>]0,1[> et
    que les r�ponses sont toutes ind�pendantes. Le jeux termine � la premi�re
    r�ponse erron� et � ce moment on gagne la somme des gains des r�ponses
    correctes d�j� donn�es. On a la possibilit� de choisir la s�quence de
    questions. Notre but sera de d�terminer une s�quence optimale de
    questions pour maximiser notre gain moyen.\ 

    On consid�re donc une cha�ne de Markov contr�l�e
    <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> sur l'espace
    <math|M=\<cal-P\>(<left|llbracket>N<right|rrbracket>)> des parties de
    l'ensemble <math|<left|llbracket>N<right|rrbracket>={1,\<ldots\>,N}> qui
    repr�sentent les questions qui restent � r�pondre � un certain instant de
    temps. Pour formaliser le probl�me dans le cadre �tudi� dans le cours on
    prend comme espace des actions <math|\<cal-A\>> l'ensemble
    <math|<left|llbracket>N<right|rrbracket>> des choix possibles des
    diff�rentes questions (sans consid�rer si la question a �t� d�j� r�pondue
    ou pas) et on consid�re la fonction de transition homog�ne
    <math|P:\<cal-A\>\<times\>M\<rightarrow\>\<Pi\>(M)> suivante

    <\equation*>
      P<rsub|i>(x,y)<rsub|>=<choice|<tformat|<table|<row|<cell|p<rsub|i>>|<cell|<with|mode|text|si
      <math|x=y\<cup\>{i}>>>>|<row|<cell|1-p<rsub|i>>|<cell|<with|mode|text|si
      <math|i\<in\>x> et <math|y= \<varnothing\>>>>>|<row|<cell|1>|<cell|<with|mode|text|si
      <math|i\<nin\> x> et <math|y= \<varnothing\>>
      >>>|<row|<cell|1>|<cell|si x,y= \<varnothing\>>>>>><with|mode|text|pour
      tout <math|i\<in\>\<cal-A\>> et tout <math|x,y\<in\>M>> .
    </equation*>

    On rappelle que <math|P<rsub|i>(x,y)> est la probabilit� que, une fois
    choisie l'action <math|i>-�me on passe de l'�tat <math|x> � l'�tat
    <math|y>. Comme d'habitude on d�note aussi

    <\equation*>
      V<rsup|u>(x)=\<bbb-E\><rsub|(0,x)>[<big|sum><rsub|n\<geqslant\>0>c(X<rsub|n>,U<rsub|n>)],<space|2em>V(x)=sup<rsub|u\<in\>\<cal-C\><rsub|0>>V<rsup|u>(x)
    </equation*>

    la fonction valeur du probl�me de contr�le. La fonction
    <math|c:M\<times\>\<cal-A\>\<rightarrow\>\<bbb-R\>\<cup\>{-\<infty\>}>
    est donn�e par

    <\equation*>
      c(x,i)=<choice|<tformat|<table|<row|<cell|R<rsub|i>>|<cell|<with|mode|text|si
      <math|i\<in\>x>>>>|<row|<cell|0>|<cell|<with|mode|text|si <math|x=
      \<varnothing\>>>>>|<row|<cell|-\<infty\>>|<cell|<with|mode|text|si
      <math|i\<nin\>x>>>>>>>
    </equation*>

    Notre but est de donc de calculer <math|V(<left|llbracket>N<right|rrbracket>)>.

    <\enumerate-alpha>
      <item>Donner une explication intuitive de la forme des fonctions
      <math|P,c,V(x)> et <math|V<rsup|u>(x)> et leur lien avec le probl�me �
      r�soudre.

      <item>Donner la valeur de <math|V(\<varnothing\>)>, <math|V({i})> et
      <math|V({i,j})> pour tout <math|i,j\<in\><left|llbracket>N<right|rrbracket>>.

      <item>En utilisant l'�quation de Bellman montrer que <math|V> satisfait
      l'�quation

      <\equation>
        V(x)=max<rsub|i\<in\>x>(p<rsub|i>
        R<rsub|i>+p<rsub|i>V(x\<backslash\>{i}))<label|eq:1>
      </equation>

      pour tout <math|x> de cardinalit� au moins <math|1>. Ici
      <math|x\<backslash\>z={j\<in\>x : j\<nin\>z}>.

      <item>Expliquer comment � partir de <math|V> on peut d�terminer une
      politique markovienne optimale <math|u:M\<rightarrow\>\<cal-A\>>.\ 

      <item>En iterant une fois l'�quation (<reference|eq:1>) \ on obtient
      que

      <\equation*>
        V(x)=max<rsub|i\<in\>x,j\<in\>x,j\<neq\>i>(p<rsub|i>*R<rsub|i>+p<rsub|j>*p<rsub|i>R<rsub|j>+p<rsub|i>p<rsub|j>V(x\<backslash\>{i,j}))
      </equation*>

      pour tout <math|x> de cardinalit� au moins <math|2>. En d�duire que une
      suite optimale <math|i<rsup|\<star\>><rsub|1>,\<ldots\>,i<rsup|\<star\>><rsub|N>>
      de questions doit satisfaire l'�quation

      <\equation*>
        <frac|p<rsub|i<rsup|\<star\>><rsub|k>>R<rsub|i<rsup|\<star\>><rsub|k>>|1-p<rsub|i<rsup|\<star\>><rsub|k>>>\<geqslant\><frac|p<rsub|i<rsup|\<star\>><rsub|k+1>>R<rsub|i<rsup|\<star\>><rsub|k+1>>|1-p<rsub|i<rsup|\<star\>><rsub|k+1>>>
      </equation*>

      et donc que les questions doivent �tre ordonn� en suite d�croissante
      par rapport � la valeur de la quantit�
      <math|p<rsub|i>R<rsub|i>/(1-p<rsub|i>)>. [Sugg: comparer la valeur de
      la strat�gie optimale <math|<with|mode|text|<math|i<rsup|\<star\>><rsub|1>,i<rsup|\<star\>><rsub|1>,i<rsup|\<star\>><rsub|2>\<ldots\>,i<rsup|\<star\>><rsub|N>>>>
      avec la strat�gie <math|i<rsup|\<star\>><rsub|2>,i<rsup|\<star\>><rsub|1>,\<ldots\>,i<rsup|\<star\>><rsub|N>>
      o� on a invers� les deux premiers questions].
    </enumerate-alpha>
  </exercise>

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|language|french>
    <associate|sfactor|4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|eq:1|<tuple|1|2>>
    <associate|eq:15|<tuple|1|2>>
    <associate|eq:bellman|<tuple|2|?>>
  </collection>
</references>