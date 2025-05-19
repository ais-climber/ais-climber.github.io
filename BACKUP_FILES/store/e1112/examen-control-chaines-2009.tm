<TeXmacs|1.0.7.2>

<style|generic>

<\body>
  <set-page-number-macro|><small|<tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|1|2|2|cell-halign|r>|<twith|table-height|0.8cm>|<twith|table-vmode|exact>|<cwith|1|1|1|2|cell-valign|c>|<twith|table-lborder|0.6pt>|<twith|table-rborder|0.6pt>|<twith|table-bborder|0.6pt>|<twith|table-tborder|0.6pt>|<table|<row|<cell|Contr�le
  des cha�nes de Markov 2008/09>|<cell|Universit� Paris-Dauphine Dep. MIDO
  M1MMD>>>>>>

  \;

  <huge|<strong|<\with|par-mode|center>
    Examen 2009
  </with>>>

  <with|font-base-size|8|<verbatim|[Dur�e une heure et demi. Aucun document
  n'est autoris�. Tous les exercices sont independantes. Seule les reponses
  soigneusement justifi�es seront prise en compte.]>>

  \;

  <strong|1. Vendre un bien avec actualisation du future>

  Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> une suite iid avec
  <math|\<bbb-E\>[\|X<rsub|n>\|]\<less\>+\<infty\>> et
  <math|\<cal-F\><rsub|n>=\<sigma\>(X<rsub|1>,\<ldots\>,X<rsub|n>)> la
  filtration associ�e. Soit <math|\<beta\>\<in\>]0,1[> on veut r�soudre le
  probl�me d'arr�t optimal pour le processus
  <math|Y<rsub|n>=\<beta\><rsup|n>X<rsub|n>>. C'est la situation o� on re�oit
  des offres <math|X<rsub|n>> pour un bien � vendre et on consid�re le gain
  en prenant en compte un facteur d'actualisation <math|\<beta\>>. C'est
  naturel de poser <math|Y<rsub|\<infty\>>=0>.

  <\enumerate-alpha>
    <item>Montrer que <math|\<bbb-E\>[(sup<rsub|n\<geqslant\>1>Y<rsub|n>)<rsub|+>]\<less\>\<infty\>>.

    <item>Montrer que <math|lim<rsub|n\<rightarrow\>\<infty\>>Y<rsub|n>=0>.

    <item>Soit <math|T> un t.a., montrer que
    <math|<wide|T|~>=inf{n\<geqslant\>1 :
    \<bbb-E\>[Y<rsub|T>\|\<cal-F\><rsub|n>]\<leqslant\>Y<rsub|n>}> est un
    t.a. et que <math|\<bbb-E\>[Y<rsub|<wide|T|~>>]\<geqslant\>\<bbb-E\>[Y<rsub|T>]>.\ 

    <item>Rappeler la definition de t.a. r�gulier et montrer que
    <math|<wide|T|~>> est r�gulier.\ 

    <item>Expliquer pourquoi on est bien dans un cadre Markovien.

    <item>Soit <math|v<rsub|n>(x)=sup<rsub|T\<geqslant\>n>\<bbb-E\>[Y<rsub|T>\|X<rsub|n>=x]>
    la fonction valeur. � partir du principe d'optimalit� g�n�rale pour
    <math|V<rsup|\<ast\>><rsub|n>=esssup<rsub|T\<geqslant\>n>\<bbb-E\>[Y<rsub|T>\|\<cal-F\><rsub|n>]>
    retrouver la forme simplifi�e du principe d'optimalit� dans le cadre
    Markovien:

    <\equation*>
      v<rsub|n>(x)=max(y<rsub|n>(x),\<bbb-E\>[v<rsub|n+1>(X<rsub|n+1>)\|X<rsub|n>=x]).
    </equation*>

    <item>Montrer que dans ce probl�me <math|v<rsub|n>(x)=\<beta\><rsup|n-1>v<rsub|1>(x)>.

    <item>On admet que <math|T<rsup|\<star\>>=inf{n\<geqslant\>1 :
    y<rsub|n>(X<rsub|n>)=v<rsub|n>(X<rsub|n>)}> est un t.a. optimal pour le
    probl�me. Montrer qui si <math|T<rsup|\<flat\>>> est un autre t.a.
    optimal, alors on doit avoir <math|T<rsup|\<star\>>\<leqslant\>T<rsup|\<flat\>>>
    presque s�rement (suggestion: commencer par montrer que sur l'evenement
    <math|{T<rsup|\<flat\>>=n}> on a <math|Y<rsub|n>=V<rsup|\<star\>><rsub|n>>).

    <item>Montrer que dans ce probl�me le t.a. optimal
    <math|T<rsup|\<star\>>> peut �tre mis dans la forme

    <\equation*>
      T<rsup|\<star\>>=inf{n\<geqslant\>1 : X<rsub|n>\<geqslant\>\<ell\>}
    </equation*>

    et que <math|\<ell\>> satisfait <math|\<ell\>=\<beta\>\<bbb-E\>[max(X<rsub|1>,\<ell\>)]>.

    <item>Expliquer le lien entre le seuil <math|\<ell\>> et le gain moyen
    optimal <math|V<rsup|\<ast\>>=sup<rsub|T\<geqslant\>1>\<bbb-E\>[Y<rsub|T>]>.

    <item>Donner une expression pour <math|\<ell\>> dans le cas
    <math|X<rsub|n>\<sim\>\<cal-U\>([0,1])> et <math|\<beta\>=1/2>.
  </enumerate-alpha>

  \;

  <strong|2. N'est jamais trop tard pour s'arr�ter.>

  Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> une suite iid de v.a.
  Bernoulli<math|(1/2)>. On consid�re le processus des gains

  <\equation*>
    Y<rsub|n>=(2<rsup|n>-1)X<rsub|1>\<cdots\>X<rsub|n> ,
    <space|2em>Y<rsub|\<infty\>>=0 .
  </equation*>

  <\enumerate-alpha>
    <item>Montrer que <math|limsup<rsub|n\<rightarrow\>\<infty\>>Y<rsub|n>\<leqslant\>Y<rsub|\<infty\>>>
    .\ 

    <item>Montrer que <math|\<bbb-E\>[sup<rsub|n\<geqslant\>1>Y<rsub|n>]=+\<infty\>>
    .

    <item>Montrer que le probl�me d'arr�t associ� n'admet aucun t.a. optimal.
  </enumerate-alpha>

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
  </collection>
</references>