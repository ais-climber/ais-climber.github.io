<TeXmacs|1.0.7.2>

<style|generic>

<\body>
  <set-page-number-macro|><small|<tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|1|2|2|cell-halign|r>|<twith|table-height|0.8cm>|<twith|table-vmode|exact>|<cwith|1|1|1|2|cell-valign|c>|<twith|table-lborder|0.6pt>|<twith|table-rborder|0.6pt>|<twith|table-bborder|0.6pt>|<twith|table-tborder|0.6pt>|<table|<row|<cell|Contr�le
  des cha�nes de Markov 2008/09>|<cell|Universit� Paris-Dauphine Dep. MIDO
  M1MMD>>>>>>

  \;

  <huge|<strong|<\with|par-mode|center>
    Rattrapage 2009
  </with>>>

  <with|font-base-size|8|<verbatim|[Dur�e deux heures. Aucun document n'est
  autoris�. Seule les reponses soigneusement justifi�es seront prise en
  compte.]>>

  <strong|1. Temps d'arr�t.>

  Soient <math|T> et <math|S> des temps d'arr�t par rapport � une filtration
  <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>1>> donn�e et<math|> soit
  <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> un processus adapt� � la m�me
  filtration.

  <\enumerate-alpha>
    <item>Montrer que <math|max(T,S)> et <math|min(T,S)> sont des t.a.s.

    <item>Montrer que la v.a. <math|X<rsub|T>> est <math|\<cal-F\><rsub|T>>
    mesurable.

    <item>Montrer que si <math|S\<leqslant\>T> alors
    <math|\<cal-F\><rsub|S>\<subseteq\>\<cal-F\><rsub|T>>.\ 
  </enumerate-alpha>

  <strong|2. Arr�t optimal en horizon fini.>

  Soit <math|(Y<rsub|n>)<rsub|1\<leqslant\>n\<leqslant\>N>> le processus des
  gains pour un probl�me d'arr�t optimal en horizon fini <math|N> pour la
  filtration <math|(\<cal-F\><rsub|n>)<rsub|1\<leqslant\>n\<leqslant\>N>>.

  <\enumerate-alpha>
    <item>Donner la d�finition d'enveloppe de Snell
    <math|(Z<rsub|n>)<rsub|n>> de <math|(Y<rsub|n>)<rsub|n>>.

    <item>Donner la formule r�cursive satisfaite par l'enveloppe de Snell
    <math|(Z<rsub|n>)<rsub|n>>.

    <item>Soit <math|T<rsup|\<ast\>>=inf{k: 1\<leqslant\>k\<leqslant\>N et
    Y<rsub|k>=Z<rsub|k>}>. Montrer que <math|T<rsup|\<ast\>>> est un temps
    d'arr�t.

    <item>Montrer que <math|Z<rsub|n\<wedge\>T<rsup|\<ast\>>>> est une
    martingale.

    <item>Montrer que <math|\<bbb-E\>[Z<rsub|1>]=sup<rsub|T>\<bbb-E\>[Y<rsub|T>]=J<rsub|T>>,
    le gain moyen optimal du probl�me d'arr�t.
  </enumerate-alpha>

  <strong|3. Le probl�me de Moser>

  On consid�re une suite iid <math|(X<rsub|n>)<rsub|1\<leqslant\>n\<leqslant\>N>>
  tel que <math|X<rsub|n>\<geqslant\>0>, <math|\<cal-F\><rsub|n>=\<sigma\>(X<rsub|1>,\<ldots\>,X<rsub|n>)>
  la filtration associ�e et <math|Y<rsub|n>=X<rsub|n>> le processus des
  gains. On veut d�terminer le gain optimal moyen
  <math|J<rsub|T>=sup<rsub|T>\<bbb-E\>[Y<rsub|T>]<rsub|>>.

  <\enumerate-alpha>
    <item>Montrer que <math|Z<rsub|n>> est mesurable par rapport �
    <math|\<sigma\>(X<rsub|n>)>.\ 

    <item>Montrer que <math|\<bbb-E\>[Z<rsub|n>]=\<bbb-E\>[sup(X<rsub|n>,\<bbb-E\>[Z<rsub|n+1>])]>
    pour tout <math|n\<less\>N>.

    <item>Montrer que <math|\<bbb-E\>[Z<rsub|n>]> est une fonction
    d�croissante de <math|n>.

    <item>Montrer que une r�gle optimale est
    <math|T<rsup|\<ast\>>=inf<rsub|N>{k\<less\>N :
    X<rsub|k>\<geqslant\>\<bbb-E\>[Z<rsub|k+1>]}> (o� <math|inf<rsub|N> A =
    inf A> si <math|A<neg|=>\<emptyset\>> et
    <math|inf<rsub|N>\<emptyset\>=N>).
  </enumerate-alpha>

  <strong|3. Horizon infini.>

  On consid�re un probl�me d'arr�t en horizon infini. On suppose que
  <math|\<bbb-E\>[(sup<rsub|n\<geqslant\>1>Y<rsub|n>)<rsub|+>]\<less\>\<infty\>>.
  Soit <math|T> un t.a et <math|<wide|T|~>=inf{n\<geqslant\>1:\<bbb-E\>[Y<rsub|T>\|\<cal-F\><rsub|n>]\<leqslant\>Y<rsub|n>}>(<math|+\<infty\>>
  si l'ensemble est vide). On rappelle que <math|S> est un temps d'arr�t
  regulier si et seulement si pour tout <math|n\<geqslant\>1> on a que
  <math|\<bbb-E\>[Y<rsub|S>\|\<cal-F\><rsub|n>]\<gtr\>Y<rsub|n>> sur
  l'evenement <math|{S\<gtr\>n}>.

  <\enumerate-alpha>
    <item>Montrer que <math|<wide|T|~>\<leqslant\>T>.

    <item>Montrer que <math|\<bbb-E\>[Y<rsub|T>]\<leqslant\>\<bbb-E\>[Y<rsub|<wide|T|~>>]>.\ 

    <item>Montrer que <math|<wide|T|~>> est un t.a. r�gulier.

    <item>Montrer que si <math|T<rsub|1>> et <math|T<rsub|2>> sont t.a.
    r�guliers alors <math|\<bbb-E\>[Y<rsub|max(T<rsub|1>,T<rsub|2>)>]\<geqslant\>max(\<bbb-E\>[Y<rsub|T<rsub|1>>],\<bbb-E\>[Y<rsub|T<rsub|2>>])>.
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