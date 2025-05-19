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
  MIDO M1 MMD>|<cell|Universit� Paris-Dauphine 09/10
  >>|<row|<cell|<em|Contr�le des Cha�nes de
  Markov>>|<cell|<small|<verbatim|[v.1 20091119]>>>>>>>

  \;

  <\with|par-mode|center>
    <huge|<strong|Partiel>>
  </with>

  <with|font-base-size|8|<verbatim|[Dur�e une heure et demi. Aucun document
  n'est autoris�. Tous les exercices sont independantes. Seule les reponses
  soigneusement justifi�es seront prise en compte.]>>

  <\exercise>
    Soient <math|T,S> des temps d'arr�t pour une filtration
    <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>0>>.\ 

    <\enumerate-alpha>
      <item>Montrer que <math|U=min(T,S)> est un temps d'arr�t .

      <item>Montrer que si <math|S(\<omega\>)\<leqslant\>T(\<omega\>)> pour
      tout <math|\<omega\>\<in\>\<Omega\>> alors
      <math|\<cal-F\><rsub|S>\<subseteq\>\<cal-F\><rsub|T>> .
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Soit <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> une suite iid � valeurs dans
    <math|\<bbb-R\>> et <math|g(\<theta\>)=\<bbb-E\>[e<rsup|\<theta\>
    X<rsub|1>>]\<less\>+\<infty\>> pour tout <math|\<theta\>\<in\>\<bbb-R\>>.
    Soit <math|(\<cal-F\><rsub|n>)<rsub|n\<geqslant\>0>> la filtration
    naturelle de la suite <math|(X<rsub|n>)<rsub|n\<geqslant\>1>> (c-�-d
    <math|\<cal-F\><rsub|0>={\<emptyset\>,\<Omega\>}>,
    <math|\<cal-F\><rsub|n>=\<sigma\>(X<rsub|1>,\<ldots\>,X<rsub|n>)> pour
    <math|n\<geqslant\>1>) et soit <math|S<rsub|0>=0>,
    <math|S<rsub|n>=X<rsub|1>+\<cdots\>+X<rsub|n>> la marche al�atoire
    engendr�e par les <math|(X<rsub|n>)<rsub|n\<geqslant\>1>>.

    <\enumerate-alpha>
      <item>Montrer que pour tout t.a. <math|T> born� associ� � la filtration
      naturelle on a que

      <\equation*>
        \<bbb-E\>[e<rsup|\<lambda\> S<rsub|T>>g(\<lambda\>)<rsup|-T>]=1,<space|2em>\<lambda\>\<in\>\<bbb-R\>.
      </equation*>

      <item>Soit <math|a\<less\>0 \<less\>b> et <math|T=inf{n\<gtr\>0 :
      S<rsub|n><neg|\<in\>>(a,b)}>. Utiliser le r�sultat de la question a)
      pour montrer que si <math|<wide|\<theta\>|^>> est tel que
      <math|g(<wide|\<theta\>|^>)=1> alors
      <math|\<bbb-P\>(S<rsub|T>\<leqslant\>a)\<leqslant\>e<rsup|<wide|\<theta\>|^>a>>.

      <item>Soit <math|X<rsub|k>=1> avec probabilit� <math|p> et
      <math|X<rsub|k>=-1> avec probabilit� <math|q=1-p> et
      <math|p\<gtr\>1/2>. Soit <math|T=inf{n\<gtr\>0 : S<rsub|n>=1}>. On
      suppose que <math|\<bbb-P\>(T\<less\>+\<infty\>)=1>. Montrer que

      <\equation*>
        1=e<rsup|\<theta\>>\<bbb-E\>[g(\<theta\>)<rsup|-T>]
      </equation*>

      pour tout <math|\<theta\>\<gtr\>0> et utiliser cet �quation pour
      obtenir la fonction g�n�ratrice de <math|T>
      \ <math|\<varphi\>(s)=\<bbb-E\>[s<rsup|T>]> pour <math|\|s\|\<less\>1>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Une cha�ne de Markov contr�l�e <math|(X<rsub|n>)<rsub|n\<geqslant\>0>> �
    valeurs dans <math|\<bbb-R\>> �volue selon la r�currence al�atoire
    contr�l�e\ 

    <\equation*>
      X<rsub|n+1>=\<lambda\>X<rsub|n>+U<rsub|n>+\<varepsilon\><rsub|n+1>
    </equation*>

    o� <math|U<rsub|n>=u<rsub|n>(X<rsub|k>,\<ldots\>,X<rsub|n>)>, <math|u> un
    contr�le � valeurs dans <math|\<bbb-R\>> et o�
    <math|(\<varepsilon\><rsub|n>)<rsub|n\<geqslant\>1>> est une suite des
    v.a. iid<space|0.2spc> de moyenne nulle et variance
    <math|\<sigma\><rsup|2><with|mode|text|\<gtr\>0>>.<space|0.2spc> On se
    fixe un horizon fini <math|T\<gtr\>0> et une constante
    <math|\<beta\>\<in\>]0,1[>. On veut trouver un contr�le <math|u> qui
    minimise le co�t moyen (actualis�)

    <\equation*>
      W<rsup|u><rsub|T>(t,x)=\<bbb-E\><rsup|u><rsub|(t,x)>[<big|sum><rsub|k=t><rsup|T-1>\<beta\><rsup|k-t>C(X<rsub|k>,U<rsub|k>)+\<beta\><rsup|T-t>R(X<rsub|T>)]
    </equation*>

    o� <math|C(x,u)=<left|(>u<rsup|2>+a*x<rsup|2>)/2> et
    <math|R(x)=a<rsub|0>x<rsup|2>/2+b<rsub|0>> avec
    <math|a,a<rsub|0>,b<rsub|0>> constantes fix�es.

    <\enumerate-alpha>
      <item>Montrer que la fonction <math|W<rsub|T>(t,x)=inf<rsub|u\<in\>\<cal-C\><rsub|t>>W<rsup|u><rsub|T>(t,x)>
      satisfait l'�quation

      <\equation*>
        W<rsub|T>(t,x)=inf<rsub|u\<in\>\<bbb-R\>>{c(x,u)+\<beta\>\<bbb-E\>[W<rsub|T>(t+1,\<lambda\>x+u+\<varepsilon\><rsub|1>)]}.
      </equation*>

      <item>Montrer par r�currence r�trograde que <math|W<rsub|T>(t)> est de
      la forme <math|W<rsub|T>(t)=<frac|1|2>a<rsub|T-t>x<rsup|2>+b<rsub|T-t>>
      avec <math|(a<rsub|j>)<rsub|j\<geqslant\>0>> et
      <math|(b<rsub|j>)<rsub|j\<geqslant\>0>> des constantes � d�terminer.

      <item>Montrer que le contr�le optimal <math|u<rsup|\<ast\>>> est
      Markovien et tel que <math|u<rsup|\<ast\>><rsub|t>(x)=k<rsub|T-t>*x>
      pour une certaine suite <math|(k<rsub|j>)<rsub|j\<geqslant\>0>> de
      constantes.

      <item>Calculer les constantes <math|a<rsub|j>,b<rsub|j>,k<rsub|j>> pour
      <math|j\<geqslant\>0>.\ 
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
    <associate|eq:15|<tuple|1|2>>
  </collection>
</references>