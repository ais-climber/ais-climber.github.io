<TeXmacs|1.0.7.14>

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
  MIDO M1 MMD>|<cell|Universit� Paris-Dauphine 11/12 >>|<row|<cell|<em|
  Processus de Poisson>>|<cell|<small|<verbatim|[v.1 20120304]>>>>>>>

  \;

  <strong|<with|font-base-size|14|<strong|TD2>. >M�lange de Processus de
  Poisson. �tude de la charge sinistrale totale � temps fixe.>

  <\exercise>
    Soit <math|<wide|N|~>> un m�lange de processus de Poisson et
    <math|0\<less\><wide|T|~><rsub|1>\<less\>...\<less\><wide|T|~><rsub|n>\<less\>>...
    ses temps de saut. Montrer que la loi de
    <math|<around|(|<wide|T|~><rsub|1>,...,<wide|T|~><rsub|n>|)>> sachant
    <math|<wide|N|~><around|(|t|)>=n> (<math|n\<in\><with|math-font|Bbb|N><rsup|\<ast\>>>)
    est celle de la statistique d'ordre de <math|n> v.a. i.i.d. uniform�ment
    distribu�es sur <math|<around|[|0,t|]>>.
  </exercise>

  <\exercise>
    On rappelle qu'une variable al�atoire <math|X> suit une loi binomiale
    n�gative sur <math|<around|{|0,1,2,\<ldots\>|}>> de param�tres
    <math|r\<gtr\>0> et <math|p\<in\><around|]|0,1|[>> si

    <\equation*>
      \<bbb-P\><around|(|X=k|)>=<frac|\<Gamma\>*<around|(|r+k|)>|\<Gamma\><around|(|r|)>*k!>*p<rsup|r>*<around|(|1-p|)><rsup|k>,<space|1em>\<forall\>k\<geq\>0.
    </equation*>

    Soit <math|<wide|N|~>> un m�lange de processus de Poisson de loi
    m�langeante <math|\<Theta\>\<sim\>\<Gamma\><around|(|\<gamma\>,\<beta\>|)>>.
    Quelle est la loi de <math|<wide|N|~><around|(|t|)>>? Le processus
    <math|<wide|N|~>> est alors appel� <with|font-shape|italic|processus
    binomial n�gatif>. La loi binomiale n�gative est aussi appel�e loi de
    Poisson-m�lange ou loi m�lange Gamma-Poisson.
  </exercise>

  <\exercise>
    Soit <math|B> une variable de loi binomiale n�gative de param�tres
    <math|r\<gtr\>0>, <math|q\<in\><around|]|0,1|[>>.

    <\enumerate>
      <item>Calculer la fonction g�n�ratrice des moments de <math|B>.

      <item>Soit <math|N\<sim\>\<cal-P\><around|(|\<lambda\>|)>> le nombre de
      sinistres dans un portefeuille de risques sur une p�riode donn�e. Les
      co�ts de ces sinistres sont mod�lis�s par des variables i.i.d.
      <math|X<rsub|i>,i\<geqslant\>1>, ind�pendantes de <math|N> et de loi

      <\equation*>
        <with|math-font|Bbb|\<bbb-P\>><around|(|X<rsub|i>=k|)>=<frac|k<rsup|-1>*p<rsup|k>|-log<around|(|1-p|)>>,k=1,2,3,...<space|1em>(p\<in\>]0,1<around|[||)>.
      </equation*>

      <\enumerate>
        <item>V�rifier que l'on d�finit bien ainsi une loi de probabilit� sur
        <math|<with|math-font|Bbb|N><rsup|\<ast\>>>.

        <item>Calculer la fonction g�n�ratrice des moments de la loi du co�t
        total <math|S=<big|sum><rsub|i=1><rsup|N>X<rsub|i>>.

        <item>En d�duire que <math|S> suit une loi binomiale n�gative dont on
        pr�cisera les param�tres.

        <item>Calculer la prime pure et la prime d'assurance (fond�e sur le
        principe de l'esp�rance) associ�es, pour un coefficient de chargement
        technique <math|\<rho\>\<gtr\>0>.
      </enumerate>
    </enumerate>
  </exercise>

  <\exercise>
    La charge sinistrale d'un portefeuille de risques pour une ann�e est
    repr�sent�e par la variable <math|X=<big|sum><rsub|j=1><rsup|N>C<rsub|j>>
    o� <math|N> est le nombre de sinistres de l'ann�e et <math|C<rsub|j>> le
    co�t du <math|j>-�me sinistre de l'ann�e. On suppose que <math|N> suit
    une loi de Poisson de param�tre al�atoire <math|\<Lambda\>> (c'est-�-dire
    que la loi conditionnelle de <math|N> sachant
    <math|\<Lambda\>=\<lambda\>> est une loi de Poisson de param�tres
    <math|\<lambda\>>). La variable <math|\<Lambda\>> suit ici une loi
    <math|\<Gamma\><around|(|b,b|)>,b\<gtr\>0>. On suppose que les co�ts des
    sinistres <math|<around|(|C<rsub|j>|)><rsub|j\<geqslant\>1>> sont des
    variables ind�pendantes entre elles et ind�pendantes de <math|N>,
    �quidistribu�es selon la loi de <math|C<rsub|1>>.

    <\enumerate>
      <item>Calculer <math|<with|math-font|Bbb|\<bbb-E\>><around|(|\<Lambda\>|)>>
      et Var<math|<around|(|\<Lambda\>|)>>

      <item>Rappeler les valeurs de <math|<with|math-font|Bbb|E><around|(|N\|\<Lambda\>|)>>
      et Var<math|<around|(|N\|\<Lambda\>|)>> et en d�duire
      <math|<with|math-font|Bbb|E><around|(|N|)>> et
      Var<math|<around|(|N|)>>.

      <item>On suppose que la loi de <math|C<rsub|1>> est la loi
      exponentielle de param�tre <math|\<alpha\>\<gtr\>0>. Montrer que la loi
      de <math|X> sachant <math|N> est une loi Gamma dont on pr�cisera les
      param�tres. D�terminer la prime pure propos�e par l'assureur.

      <item>Montrer que la loi de <math|<around|(|\<Lambda\>\|X,N|)>> est
      ind�pendante de <math|X>, et que c'est une loi Gamma dont on pr�cisera
      les param�tres.
    </enumerate>
  </exercise>

  <\exercise>
    On consid�re un groupe de risques dont le nombre <math|N> de sinistres
    annuel suit une loi g�om�trique de param�tre
    <math|p\<in\><around|]|0,1|[>> (i.e <math|<with|math-font|Bbb|\<bbb-P\>><around|(|N|)>=p*<around|(|1-p|)><rsup|n>>,
    <math|\<forall\>n\<in\><with|math-font|Bbb|N>>). On suppose que le
    montant annuel cumul� des sinistres <math|S> est d�fini par :

    <\equation*>
      S=<big|sum><rsub|i=1><rsup|N>X<rsub|i>
    </equation*>

    o� les <math|X<rsub|i>,i\<in\><with|math-font|Bbb|N><rsup|\<ast\>>>
    repr�sentent les co�ts des sinistres (<math|S=0> si <math|N=0>).

    <\enumerate>
      <item>Rappeler les hypoth�ses usuelles de ce mod�le.

      <item>D�terminer la fonction g�n�ratrice des moments de <math|S> en
      fonction de celle de <math|X<rsub|1>>.

      <item>Exprimer <math|<with|math-font|Bbb|E><around|[|S|]>> et
      Var<math|<around|(|S|)>> en fonction de <math|p> et des moments de
      <math|X<rsub|1>>.

      <item>Indiquer ce que deviennent les formules de la question pr�c�dente
      lorsque les <math|X<rsub|i>,i\<geq\>1> sont distribu�es suivant une loi
      exponentielle de param�tre <math|\<alpha\>\<gtr\>0>. D�terminer ensuite
      la fonction de r�partition de <math|S>.

      <item>On suppose que le chargement technique est fond� sur l'�cart-type
      (i.e. de la forme <math|\<lambda\>*\<sigma\><around|(|S|)>>). On note
      <math|R> le montant des r�serves. Calculer la prime d'assurance
      <math|\<Pi\><around|(|S|)>> et la probabilit� de ruine de l'assureur
      pour l'ann�e en cours, � savoir

      <\equation*>
        \<bbb-P\>*<around|(|R+\<Pi\><around|(|S|)>-S\<less\>0|)>,
      </equation*>

      en fonction de <math|p,\<alpha\>,\<lambda\>> et <math|R>.
    </enumerate>
  </exercise>

  <\exercise>
    On s'int�resse ici � un contrat de r�assurance. Le principe est que le
    r�assureur couvre les pertes sup�rieures � une franchise <math|K> fix�e �
    l'avance. La charge sinistrale totale du r�assureur est donc de la forme

    <\equation*>
      X=<big|sum><rsub|i=1><rsup|N><around|(|C<rsub|i>-K|)><rsub|+> .
    </equation*>

    On suppose que le nombre de sinistres <math|N> est une variable al�atoire
    de Poisson de param�tre <math|\<lambda\>> et que les co�ts
    <math|C<rsub|i>> sont des variables al�atoires ind�pendantes,
    �quidistribu�es de loi <math|F<rsub|C>>, et ind�pendantes de <math|N>.

    <\enumerate>
      <item>Calculer la fonction g�n�ratrice des moments
      <math|\<varphi\><rsub|Y<rsub|1>>> de
      <math|Y<rsub|1>=<around|(|C<rsub|1>-K|)><rsub|+>> quand
      <math|F<rsub|C>> est la loi exponentielle
      <math|<with|math-font|cal|E><around|(|\<gamma\>|)>>. Pr�ciser son
      domaine de d�finition et en d�duire l'esp�rance
      <math|<with|math-font|Bbb|E><around|[|Y<rsub|1>|]>>.

      <item>Rappeler l'expression de la fonction g�n�ratrice des moments
      <math|\<varphi\><rsub|N>> de <math|N> et exprimer la fonction
      g�n�ratrice des moments <math|\<varphi\><rsub|X>> de <math|X> en
      fonction de celle de <math|Y>.

      <item>D�terminer le montant de la prime <math|\<pi\><around|(|X|)>>,
      fond�e sur l'esp�rance, dont le coefficient de chargement technique est
      <math|\<rho\>\<gtr\>0>.

      <item>Soit <math|N<rsub|K>> le nombre de sinistres de co�t sup�rieur �
      <math|K>. Calculer la fonction g�n�ratrice des moments
      <math|\<varphi\><rsub|N<rsub|K>>> de <math|N<rsub|K>>. En d�duire que
      la loi de <math|N<rsub|K>> est une loi de Poisson dont on pr�cisera le
      param�tre.

      <item>Soit

      <\equation*>
        <wide|X|~>=<big|sum><rsub|i=1><rsup|N<rsub|K>><wide|C|~><rsub|i>,
      </equation*>

      o� <math|<around|(|<wide|C|~><rsub|i>,i\<geq\>1|)>> est une suite de
      v.a. ind�pendantes de loi <math|<with|math-font|cal|E><around|(|\<gamma\>|)>>,
      ind�pendantes de <math|N<rsub|K>>. Calculer la fonction g�n�ratrice des
      moments <math|\<varphi\><rsub|<wide|X|~>>> de <math|<wide|X|~>>. En
      d�duire que la loi de <math|<wide|X|~>> est la m�me que celle de
      <math|X> lorsque les <math|C<rsub|i>>-s suivent la loi
      <math|<with|math-font|cal|E><around|(|\<gamma\>|)>>.
    </enumerate>
  </exercise>
</body>

<\initial>
  <\collection>
    <associate|language|french>
    <associate|par-hyphen|normal>
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