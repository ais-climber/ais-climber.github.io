<TeXmacs|1.0.7.2>

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
  20091110]>>>>>>>

  \;

  <strong|<with|font-base-size|14|<strong|TD3>. >Cha�nes de Markov
  contr�l�es.>

  <\exercise>
    (<name|Exercer une option d'achat>) On a la possibilit� d'acheter un
    actif � un prix fix� d'avance <math|p> et � un instant quelconque
    <math|n=0,\<ldots\>,N-1>. Le prix de march� de l'actif est mod�lis� par
    une suite <math|(Y<rsub|n>)<rsub|n\<geqslant\>0>> donn�e par
    <math|Y<rsub|n+1>=Y<rsub|n>+\<varepsilon\><rsub|n+1>> o�
    <math|(\<varepsilon\><rsub|n>)<rsub|n\<geqslant\>1>> est une suite iid
    int�grable. L'objectif est de maximiser le gain moyen relatif �
    l'utilisation de l'option d'achat: si on d�cide de l'utiliser au temps
    <math|n> avec un prix de march� <math|Y<rsub|n>> alors notre gain serait
    de <math|Y<rsub|n>-p>. On mod�lisera le probl�me avec un syst�me
    dynamique contr�l� homog�ne sur l'espace d'�tats
    <math|\<cal-M\>=\<bbb-R\>\<cup\>{\<Delta\>}>: � un instant d�termin� soit
    on poss�de encore l'option et sa valeur est <math|x\<in\>\<bbb-R\>>, soit
    on a d�j� exerc� l'option et alors on d�cide de fa�on conventionnelle
    d'�tre dans l'�tat fictif <math|\<Delta\>>. L'espace des actions est
    <math|\<cal-A\>={0,1}>, <math|0> si on n'exerce pas et <math|1> si on
    d�cide d'exercer l'option.

    <\enumerate-alpha>
      <item>D�terminer la fonction <math|G:\<cal-A\>\<times\>\<cal-M\>\<times\>\<bbb-R\>\<rightarrow\>\<cal-M\>>
      qui intervient dans la d�finition de syst�me dynamique contr�l� par
      rapport � la suite iid <math|(\<varepsilon\><rsub|n>)<rsub|n\<geqslant\>1>>.

      <item>D�terminer une fonction de gain homog�ne
      <math|r:\<cal-M\>\<times\>\<cal-A\>\<rightarrow\>\<bbb-R\><rsub|+>>
      associ� au probl�me.

      <item>Montrer que la fonction valeur satisfait

      <\equation*>
        V(k,x)=max{x-p, \<bbb-E\>[V(k+1,x+\<varepsilon\>)]},
        <space|2em>0\<leqslant\>k\<leqslant\>N-1, x\<in\>\<bbb-R\>
      </equation*>

      et <math|V(N,x)=0> si <math|x\<in\>\<bbb-R\>>.

      <item>Par r�currence r�trograde montrer que <math|V(k,x)> est une
      fonction convexe de <math|x> pour tout
      <math|0\<leqslant\>k\<leqslant\>N>.

      <item>Par r�currence r�trograde montrer que
      <math|V(k,x)\<geqslant\>V(k+1,x)> pour tout
      <math|0\<leqslant\>k\<leqslant\>N-1>.

      <item>Soit <math|p<rsub|k>=inf{x\<geqslant\>0 : V(k,x)=x-p}>. Montrez
      que <math|p<rsub|k>> est d�croissant en <math|k>.

      <item>Montrer que la politique optimale est d'exercer l'option de que
      <math|Y<rsub|k>\<geqslant\>p<rsub|k>>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    (<name|� la poste>) On est en queue � la poste. Avant nous il y a
    <math|x\<in\>\<bbb-N\>> personnes et � chaque pas de temps il y a une
    probabilit� <math|p\<in\>]0,1[> que la queue avance d'une position. On
    estime que l'utilit� d'arriver � �tre servi soit <math|r\<gtr\>0> et que
    attendre dans la queue nous co�t <math|c\<gtr\>0> � chaque instant du
    temps. On a toujours la possibilit� de partir da la queue et de ne pas
    �tre servit. On veut trouver une strat�gie (a savoir si on doit rester
    dans la queue et attendre ou partir) qui maximise notre gain moyen.

    On mod�lisera le probl�me avec un syst�me dynamique contr�l� homog�ne sur
    l'espace d'�tats <math|\<cal-M\>=\<bbb-N\>\<cup\>{\<Delta\>}>: � un
    instant d�termin� soit on est dans la queue et on a
    <math|x\<in\>\<bbb-N\>> clients avant nous, soit on est parti et alors on
    d�cide de fa�on conventionnelle d'�tre dans l'�tat fictif
    <math|\<Delta\>>. L'espace des actions est <math|\<cal-A\>={0,1}>,
    <math|0> si on reste dans la queue pour un autre interval de temps et
    <math|1> si on d�cide de partir.

    <\enumerate-alpha>
      <item>D�terminer la fonction <math|G:\<cal-A\>\<times\>\<cal-M\>\<times\>\<bbb-R\>\<rightarrow\>\<cal-M\>>
      qui intervient dans la d�finition de syst�me dynamique contr�l� par
      rapport � la suite iid <math|(\<varepsilon\><rsub|n>)<rsub|n\<geqslant\>1>>.

      <item>D�terminer une fonction de gain homog�ne
      <math|r:\<cal-M\>\<times\>\<cal-A\>\<rightarrow\>\<bbb-R\><rsub|+>>
      associ� au probl�me.

      <item>D�terminer l'�quation de Bellman et montrer que on a

      <\equation*>
        V(x)=(V(x-1)-c/p)<rsub|+>,<space|2em>x\<geqslant\>1.
      </equation*>

      <item>Montrer par r�currence que <math|V(x)\<leqslant\>V(x-1)>. Donner
      une explication intuitive de cette in�galit�.\ 

      <item>Montrer qu'il existe <math|x<rsup|\<ast\>>\<in\>\<bbb-N\>> tel
      que la strat�gie optimale est de rester ssi
      <math|x\<leqslant\>x<rsup|\<ast\>>>.

      <item>D�terminer <math|V(x)> et <math|x<rsup|\<ast\>>> en fonction de
      <math|r,c,p>.
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
    <associate|ex:gundy|<tuple|4|1>>
    <associate|ex:wald-l2|<tuple|3|1>>
    <associate|ex:ward-l2|<tuple|3|?>>
  </collection>
</references>