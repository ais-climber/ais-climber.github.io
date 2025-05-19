<TeXmacs|1.0.7.9>

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
  MIDO DU2 (Eco IGD Math/Eco Mat/Info)>|<cell|Universit� Paris-Dauphine 10/11
  >>|<row|<cell|<em| Statistiques>>|<cell|<small|<verbatim|[v.1
  201<strong|>10318]>>>>>>>

  \;

  <strong|<with|font-base-size|14|<strong|TD5>. >Estimation ponctuelle.>

  <\exercise>
    On consid�re une variable al�atoire <math|X> dont la loi d�pend de deux
    param�tres <math|p<rsub|1>> et <math|p<rsub|2>> de la mani�re suivante :

    <\equation*>
      \<bbb-P\><around|(|X=0|)>=1-p<rsub|1>-p<rsub|2>,<space|1em>\<bbb-P\><around|(|X=1|)>=p<rsub|1>,<space|1em>\<bbb-P\><around|(|X=2|)>=p<rsub|2>.
    </equation*>

    <\enumerate-alpha>
      <item>Indiquer les conditions que doivent v�rifier <math|p<rsub|1>> et
      <math|p<rsub|2>> pour que le support de la loi probabilit� pr�c�dente
      soit �gal � <math|<around|{|0,1,2|}>>. Calculer
      <math|\<bbb-E\><around|(|X|)>>, <math|\<bbb-E\><around*|(|X<rsup|2>|)>>
      et <math|Var<around|(|X|)>>.

      <item>Soit <math|X<rsub|1>,\<ldots\>,X<rsub|n>> un �chantillon i.i.d.
      comme <math|X>. D�terminer les estimateurs <math|L<rsub|1>> et
      <math|L<rsub|2>> de <math|p<rsub|1>> et <math|p<rsub|2>> par la m�thode
      des moments. Montrer que ces estimateurs sont sans biais et convergents
      en probabilit�.

      <item>Pour tout <math|j=0,1,2>, on d�signe par <math|n<rsub|j>> le
      nombre de <math|X<rsub|i>> �gaux � <math|j>. �crire la vraisemblance de
      l'�chantillon en fonction de <math|p<rsub|1>>, <math|p<rsub|2>>,
      <math|n<rsub|0>>, <math|n<rsub|1>> et <math|n<rsub|2>>. D�terminer les
      estimateurs <math|Z<rsub|1>> et <math|Z<rsub|2>> de <math|p<rsub|1>> et
      <math|p<rsub|2>> par la m�thode du maximum de vraisemblance.

      <item>Montrer que <math|L<rsub|1>=Z<rsub|1>> et
      <math|L<rsub|2>=Z<rsub|2>>.

      <item>Un �chantillon de taille <math|n=100> de <math|X> a donn� les
      observations suivantes <math|n<rsub|0>=20>, <math|n<rsub|1>=50> et
      <math|n<rsub|2>=30>. A quelles estimations de <math|p<rsub|1>> et
      <math|p<rsub|2>> conduisent les estimateurs <math|L<rsub|1>> et
      <math|L<rsub|2>>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    On considere le mod�le uniforme <math|<with|math-font|cal|P>=<around|{|<with|math-font|cal|U><around|(|<around|[|0,\<theta\>|]>|)>,\<theta\>\<gtr\>0|}>>
    et les estimateurs de <math|\<theta\>> suivantes=
    <math|T<rsub|1>=2<overline|X><rsub|n>> et
    <math|T<rsub|2>=<around|(|<around|(|n+1|)>/n|)>max<rsub|1\<le\>i\<le\>n>X<rsub|i>>.

    <\enumerate-alpha>
      <item>Montrer qu'ils sont sans biais.

      <item>Montrer que <math|T<rsub|2>> est plus efficace que
      <math|T<rsub|1>>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Soit <math|<around|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>> un <math|n>-uplet
    de variables al�atoires i.i.d. tel que
    <math|X<rsub|k>:=\<mu\>+U<rsub|k>>, o� <math|U<rsub|k>> suit une loi
    uniforme sur <math|[-\<nu\>,\<nu\>]>.

    <\enumerate-alpha>
      <item>On suppose <math|\<nu\>> connu et <math|\<mu\>> inconnu,
      d�terminer un estimateur de <math|\<mu\>> par la m�thode des moments,

      <item>On suppose <math|\<nu\>> et <math|\<mu\>> inconnus, montrer que
      <math|<around|(|inf<rsub|i\<le\>n>X<rsub|i>,sup<rsub|i\<le\>n>X<rsub|i>|)>>
      est une statistique exhaustive.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Soit <math|X<rsub|1>,\<ldots\>,X<rsub|n>> un �chantillon i.i.d. comme
    <math|X>. D�terminer les estimateurs du maximum de vraisemblance dans les
    cas suivants :

    <\enumerate-alpha>
      <item><math|X> suit une loi de Bernoulli de param�tre <math|p>.

      <item><math|X> suit une loi normale de moyenne <math|\<mu\>> et de
      variance <math|\<sigma\><rsup|2>>.

      <item><math|X> suit une loi exponentielle de param�tre
      <math|\<lambda\>>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Soit <math|X<rsub|1>,\<ldots\>,X<rsub|n>> un �chantillon i.i.d. comme
    <math|X> de densit� :

    <\equation*>
      f<rsub|X><around|(|x|)>=<around|(|1+\<theta\>|)><space|0.25spc>x<rsup|\<theta\>><space|0.25spc>1<rsub|<around|[|0,1|]>><around|(|x|)>.
    </equation*>

    <\enumerate-alpha>
      <item>Quelles sont les valeurs possibles de <math|\<theta\>> ? Trouver
      une statistique exhaustive pour le param�tre <math|\<theta\>>.

      <item>D�terminer l'estimateur <math|Z<rsub|n>> de <math|\<theta\>> par
      la m�thode du maximum de vraisemblance.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Le responsable d'une exposition s'int�resse au rythme d'arriv�e des
    groupes de visiteurs � partir des observations faites au cours des
    premi�res journ�es. Il constate que le temps s�parant l'arriv�e de deux
    groupes successifs peut �tre assimil� � une variable al�atoire <math|X>
    de loi uniforme sur <math|<around|[|0,r|]>> et que les temps
    inter-arriv�es sont des variables al�atoires ind�pendantes. Pour
    l'organisation ult�rieure des caisses r�serv�es aux entr�e des groupes,
    il souhaite estimer avec pr�cision le param�tre <math|\<theta\>>, ayant �
    sa disposition un �chantillon de taille <math|n> de ces variables
    inter-arriv�es.

    <\enumerate-alpha>
      <item>Calculer l'esp�rance math�matique et la variance de <math|X>.

      <item>D�terminer l'estimateur <math|L<rsub|n>> de <math|r> par la
      m�thode des moments. Montrer que <math|L<rsub|n>> est sans biais et
      convergent en probabilit�.

      <item>D�terminer l'estimateur <math|Z<rsub|n>> de <math|r> par la
      m�thode du maximum de vraisemblance.

      <item>� partir de la statistique <math|Z<rsub|n>>, proposer un
      estimateur <math|W<rsub|n>> non biais� de <math|r>.

      <item>Montrer que <math|W<rsub|n>> est convergent en probabilit�.

      <item>Comparer <math|L<rsub|n>> et <math|W<rsub|n>>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Soit <math|X> une variable al�atoire suivant une loi de Poisson de
    param�tre <math|\<lambda\>> (<math|\<lambda\>\<gtr\>0>) et
    <math|X<rsub|1>,\<ldots\>,X<rsub|n>> un �chantillon i.i.d. comme
    <math|X>.

    <\enumerate-alpha>
      <item>D�terminer une statistique exhaustive pour le param�tre
      <math|\<lambda\>>.

      <item>D�terminer l'estimateur <math|L<rsub|n>> de <math|\<lambda\>> par
      la m�thode des moments.

      <item>D�terminer l'estimateur <math|Z<rsub|n>> de <math|\<lambda\>> par
      la m�thode du maximum de vraisemblance.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Soit <math|<around|(|X<rsub|1>,X<rsub|2>|)>> un �chantillon de deux
    variables al�atoires i.i.d admettant pour densit�:

    <\equation*>
      f<around|(|x|)><space|0.75spc>=<space|0.75spc><frac|3x<rsup|2>|\<theta\><rsup|3>>\<bbb-I\><rsub|<around|[|0,\<theta\>|]>><around|(|x|)><space|0.75spc>,
    </equation*>

    o� <math|\<theta\>> est un param�tre strictement positif.

    <\enumerate-alpha>
      <item>Montrez que les estimateurs de <math|\<theta\>> suivants sont
      sans biais<nbsp>:

      <\equation*>
        <wide|\<theta\>|^><rsub|1><space|0.75spc>=<space|0.75spc><frac|2|3><around*|(|X<rsub|1>+X<rsub|2>|)><space|0.75spc><text|et><space|0.75spc><wide|\<theta\>|^><rsub|2><space|0.75spc>=<space|0.75spc><frac|7|6><space|0.25spc><text|<with|font-family|rm|max>><around|(|X<rsub|1>,X<rsub|2>|)><space|0.75spc>.
      </equation*>

      <item>Calculez <math|R<rsub|i>> <math|:=>
      <math|\<bbb-E\><around*|[|<around|(|\<theta\>-<wide|\<theta\>|^><rsub|i>|)><rsup|2>|]>>
      pour <math|i=1,2>.

      <item>Entre <math|<wide|\<theta\>|^><rsub|1>> et
      <math|<wide|\<theta\>|^><rsub|2>>, quel estimateur choisiriez-vous?
      (justifiez votre choix).
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Soit <math|<around|(|X<rsub|n>|)><rsub|n\<geqslant\>1>> un �chantillon de
    la loi g�om�trique de param�tre <math|\<theta\>> strictement positif.

    <\enumerate-alpha>
      <item>Calculez <math|\<bbb-E\><around|[|X<rsub|1>|]>> et
      <math|\<bbb-E\><around|[|1/X<rsub|1>|]>>.

      <item>D�duire un estimateur convergent de <math|\<theta\>>.

      <item>Calculez l'estimateur de maximum de vraisemblance de
      <math|\<theta\>>.

      <item>Cet estimateur est-il sans biais ? (Consid�rez un �chantillon de
      taille <math|1>).
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Soit <math|<around|(|X<rsub|1>,...,X<rsub|n>|)>> un �chantillon de taille
    <math|n> de loi de Bernoulli de param�tre <math|p>. On consid�re
    l'estimateur <math|T<rsub|n>> <math|=>
    <math|<wide|X|\<bar\>><rsub|n><around|(|1-<wide|X|\<bar\>><rsub|n>|)>>
    pour le param�tre <math|\<theta\>> <math|=> <math|p<around|(|1-p|)>>. Ici
    <math|<wide|X|\<bar\>><rsub|n>> <math|:=>
    <math|<frac|1|n><big-around|\<sum\>|<rsub|i=1><rsup|n>X<rsub|i>>>.

    <\enumerate-alpha>
      <item>Montrez que <math|T<rsub|n>> est un estimateur qui converge en
      loi.

      <item>Montrez que <math|T<rsub|n>> est biais�. Proposez un estimateur
      sans biais de <math|\<theta\>>.
    </enumerate-alpha>
  </exercise>

  \;
</body>

<\initial>
  <\collection>
    <associate|language|french>
    <associate|par-hyphen|normal>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|10|?>>
    <associate|auto-11|<tuple|11|?>>
    <associate|auto-12|<tuple|12|?>>
    <associate|auto-13|<tuple|13|?>>
    <associate|auto-14|<tuple|14|?>>
    <associate|auto-15|<tuple|15|?>>
    <associate|auto-16|<tuple|16|?>>
    <associate|auto-17|<tuple|17|?>>
    <associate|auto-18|<tuple|18|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|4|?>>
    <associate|auto-5|<tuple|5|?>>
    <associate|auto-6|<tuple|6|?>>
    <associate|auto-7|<tuple|7|?>>
    <associate|auto-8|<tuple|8|?>>
    <associate|auto-9|<tuple|9|?>>
    <associate|eq:15|<tuple|1|2>>
  </collection>
</references>