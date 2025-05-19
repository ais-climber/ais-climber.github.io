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
  Processus de Poisson>>|<cell|<small|<verbatim|[v.2 20120201]>>>>>>>

  \;

  <strong|<with|font-base-size|14|<strong|TD1>. >Processus de Poisson.>

  <\exercise>
    Soit <math|<around|(|\<tau\><rsub|n>,n\<geq\>1|)>> une suite de variables
    al�atoires positives, i.i.d. On pose:

    <\equation*>
      T<rsub|n>=\<tau\><rsub|1>+...+\<tau\><rsub|n>,<space|1em>n\<geq\>1,
    </equation*>

    (<math|T<rsub|0>=0>) et

    <\equation*>
      N<around|(|t|)>=#<around|{|i\<geq\>1:T<rsub|i>\<leq\>t|}>,<space|1em>t\<geq\>0.
    </equation*>

    <\enumerate>
      <item>Donner une condition n�cessaire pour que la probabilit� que le
      processus <math|N> n'ait pas de sauts de taille sup�rieure ou �gale � 2
      soit strictement positive.

      <item>Est-il possible que la suite <math|<around|(|T<rsub|n>,n\<geq\>0|)>>
      ait une limite finie avec une probabilit� strictement positive ?

      <item>En d�duire la probabilit� de l'�v�nement
      <math|<around|{|\<exists\>t\<geq\>0:N<around|(|t|)>=\<infty\>|}>>.
    </enumerate>
  </exercise>

  <\exercise>
    Montrer que un processus de Poisson ne poss�de pas de sauts de taille
    plus grande que <math|1>. Soit <math|t<rsup|<around*|(|n|)>><rsub|k>=k*t/n>
    pour tout <math|k=0,\<ldots\>,n> et

    <\equation*>
      S<rsub|n>=<big|sum><rsub|i=0><rsup|n-1>\<bbb-I\><rsub|<around*|(|N<rsub|t<rsup|<around*|(|n|)>><rsub|i+1>>-N<rsub|t<rsup|<around*|(|n|)>><rsub|i>>|)>\<geqslant\>2>,<space|2em>Q=<big|sum><rsub|n\<geqslant\>1>S<rsub|n<rsup|2>>
    </equation*>

    <\enumerate-alpha>
      <item>Calculer <math|\<bbb-E\><around*|[|S<rsub|n>|]>> et montrer que
      <math|\<bbb-E\><around*|[|Q|]>\<less\>+\<infty\>>;

      <item>Montrer que <math|lim<rsub|n\<rightarrow\>\<infty\>>S<rsub|n<rsup|2>>=0>
      \ presque surement et que <math|\<bbb-P\><around*|(|\<exists\>n\<geqslant\>1
      : S<rsub|n<rsup|2>>=0|)>=1>;

      <item>Conclure que <math|\<bbb-P\><around*|(|\<exists\>s\<in\><around*|[|0,t|]>
      : N<rsub|s>-N<rsub|s->\<geqslant\>2|)>=0>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    \ Soit <math|N> un processus de Poisson d'intensit�
    <math|\<lambda\>\<gtr\>0>. Montrer et interpr�ter les assertions
    suivantes:

    <\enumerate>
      <item><math|<with|math-font|Bbb|P><around|(|N<around|(|h|)>=1|)>=\<lambda\>*h+o<around|(|h|)>>
      (<math|h\<rightarrow\>0>)

      <item><math|<with|math-font|Bbb|P><around|(|N<around|(|h|)>\<geq\>2|)>=o<around|(|h|)>>
      (<math|h\<rightarrow\>0>)

      <item><math|<with|math-font|Bbb|P><around|(|N<around|(|h|)>=0|)>=1-\<lambda\>*h+o<around|(|h|)>>
      (<math|h\<rightarrow\>0>).

      <item><math|\<forall\>t\<geq\>0>, <math|<with|math-font|Bbb|P><around|(|N*<text|saute
      au temps >t|)>=0>.

      <item>Calculer Cov<math|<around|(|N<around|(|s|)>,N<around|(|t|)>|)>>,
      <math|\<forall\>s,t\<geq\>0>.
    </enumerate>
  </exercise>

  <\exercise>
    On veut montrer que un processus de comptage � accroissements
    ind�pendants et stationnaires tel que (<math|\<lambda\>\<gtr\>0>)

    <\equation*>
      \<bbb-P\><around*|(|N<around*|(|h|)>=1|)>=\<lambda\>*h+o<around*|(|h|)>,<space|2em>\<bbb-P\><around*|(|N<around*|(|h|)>\<geqslant\>2|)>=o<around*|(|h|)>
    </equation*>

    est un processus de Poisson d'intensit� <math|\<lambda\>>. Soit
    <math|g<rsub|t><around*|(|u|)>=\<bbb-E\><around*|[|e<rsup|i*u*N<rsub|t>>|]>>.\ 

    <\enumerate-alpha>
      <item>Montrer que <math|g<rsub|t+h><around*|(|u|)>=g<rsub|h><around*|(|u|)>*g<rsub|t><around*|(|u|)>>
      pour tout <math|h,t\<gtr\>0>.

      <item>Montrer que\ 

      <\equation*>
        <frac|\<mathd\>|\<mathd\>t>g<rsub|t><around*|(|u|)>=\<lambda\><around*|(|e<rsup|i*u>-1|)>g<rsub|t><around*|(|u|)>,<space|2em>g<rsub|0><around*|(|u|)>=1
      </equation*>

      \ et conclure que <math|g<rsub|t><around*|(|u|)>=e<rsup|\<lambda\>t<around*|(|e<rsup|i*u>-1|)>>>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    \ Soit <math|N> un processus de Poisson d'intensit�
    <math|\<lambda\>\<gtr\>0>, mod�lisant les temps d'arriv�e des sinistres
    d'une compagnie d'assurance. Soit <math|T<rsub|1>> le temps d'arriv�e du
    premier sinistre. Montrer que la loi de <math|T<rsub|1>> sachant
    <math|N<around|(|t|)>=1> est uniform�ment distribu�e sur
    <math|<around|[|0,t|]>>.
  </exercise>

  <\exercise>
    Soit <math|<around|(|T<rsub|n>,n\<geq\>0|)>> (<math|T<rsub|0>=0>) un
    processus de renouvellement et <math|N> le processus de comptage associ�.
    On suppose que <math|N> est � accroissements ind�pendants et
    stationnaires.

    <\enumerate-alpha>
      <item>Montrer que

      <\equation*>
        <with|math-font|Bbb|P>*<around|(|T<rsub|1>\<gtr\>s+t|)>=<with|math-font|Bbb|P><around|(|T<rsub|1>\<gtr\>t|)><with|math-font|Bbb|P><around|(|T<rsub|1>\<gtr\>s|)>,<space|1em>\<forall\>s,t\<geq\>0.
      </equation*>

      <item>En d�duire que <math|N> est un processus de Poisson.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    \;

    <\enumerate-alpha>
      <item>Montrer que deux processus de Poisson ind�pendants ne sautent
      presque jamais simultan�ment.

      <item>Soient <math|N<rsup|1>> et <math|N<rsup|2>> deux processus de
      Poisson ind�pendants de param�tres respectifs
      <math|\<lambda\><rsub|1>\<gtr\>0> et <math|\<lambda\><rsub|2>\<gtr\>0>.
      Montrer que le processus d�fini pour tout <math|t\<geq\>0> par

      <\equation*>
        N<around|(|t|)>=N<rsup|1><around|(|t|)>+N<rsup|2><around|(|t|)>
      </equation*>

      est un processus de Poisson. Pr�ciser son intensit�.

      <item>En d�duire que la somme de <math|n> processus de Poisson
      ind�pendants d'intensit�s respectives
      <math|\<lambda\><rsub|1>\<gtr\>0,...,\<lambda\><rsub|n>\<gtr\>0> est un
      processus de Poisson dont pr�cisera l'intensit�.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    Des insectes tombent dans une assiette de soupe suivant un processus de
    Poisson <math|N> d'intensit� <math|\<lambda\>\<gtr\>0>
    (<math|N<around|(|t|)>=n> signifie qu'il a <math|n> insectes dans la
    soupe au temps <math|t>). On suppose que chaque insecte est vert avec
    probabilit� <math|p\<in\><around|]|0,1|[>>, et que sa couleur est
    ind�pendante des couleurs des autres insectes. Montrer que le nombre
    d'insectes verts tomb�s dans la soupe, en fonction du temps, est un
    processus de Poisson d'intensit� <math|\<lambda\>*p>.
  </exercise>

  <\exercise>
    Des greffons de foie arrivent � un bloc op�ratoire suivant un processus
    de Poisson <math|N> d'intensit� <math|\<lambda\>\<gtr\>0>. Deux patients
    attendent d'�tre greff�s. Le premier a une dur�e de vie <math|T> (avant
    greffe) qui suit une loi exponentielle de param�tres
    <math|\<mu\><rsub|1>>, le second une dur�e de vie <math|T<rprime|'>> qui
    suit une loi exponentielle de param�tres <math|\<mu\><rsub|2>>. Le
    principe est que le premier greffon qui arrive au bloc est pour le
    premier patient, s'il est encore en vie, sinon il va au second patient.
    On suppose que les v.a. <math|T,T<rprime|'>> et <math|N> sont
    ind�pendantes.

    <\enumerate-alpha>
      <item>Calculer la probabilit� que le premier patient soit greff�.

      <item>Calculer la probabilit� que le deuxi�me patient soit greff�.

      <item>On note <math|X> le nombre de greffons arriv�s entre
      <math|<around|[|0,T|]>>. D�terminer la loi de <math|X>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    <with|font-series|bold|Paradoxe de l'autobus.> On suppose que les
    arriv�es de bus � un arr�t donn� suivent un PP d'intensit�
    <math|\<lambda\>>. Vous arrivez � l'arr�t � l'instant <math|t>.

    <\enumerate-alpha>
      <item>Intuitivement, quel sera votre temps moyen d'attente avant
      l'arriv�e du prochain bus ?

      <item>On note <math|A<around|(|t|)>=T<rsub|N<around|(|t|)>+1>-t> le
      temps d'attente avant l'arriv�e du prochain bus et
      <math|B<around|(|t|)>=t-T<rsub|N<around|(|t|)>>> le temps qui s'est
      �coul� depuis le passage du dernier bus. Calculer la loi jointe de
      <math|<around|(|A<around|(|t|)>,B<around|(|t|)>|)>> (on pourra calculer
      <math|<with|math-font|Bbb|P><around|(|A<around|(|t|)>\<geq\>x<rsub|1>,B<around|(|t|)>\<geq\>x<rsub|2>|)>>
      pour <math|<around|(|x<rsub|1>,x<rsub|2>|)>\<in\><with|math-font|Bbb|R><rsub|+>>).

      <item>En d�duire que les variables <math|A<around|(|t|)>> et
      <math|B<around|(|t|)>> sont ind�pendantes et donner leurs lois
      respectives.

      <item>En particulier, que vaut <math|<with|math-font|Bbb|E><around|[|A<around|(|t|)>|]>>
      ? Cela correspond-t-il � votre r�ponse intuitive ?
    </enumerate-alpha>
  </exercise>

  <\exercise>
    <with|font-series|bold|LFGN et TCL.>

    <\enumerate-alpha>
      <item>Enoncer et montrer la Loi Forte des Grands Nombres pour un
      processus de Poisson <math|N> d'intensit� <math|\<lambda\>>.

      <item>Montrer que <math|N> satisfait le th�or�me Central Limite suivant
      quand <math|t\<rightarrow\>\<infty\>>

      <\equation*>
        <frac|N<around|(|t|)>-\<lambda\>*t|<sqrt|\<lambda\>*t>><above|\<rightarrow\>|<math-up|loi>>Z\<sim\><with|math-font|cal|N><around|(|0,1|)>
      </equation*>

      <\enumerate>
        <item>en utilisant les fonctions caract�ristiques

        <item>en commen�ant par montrer que
        <math|<around*|(|N<around|(|n|)>-\<lambda\>*n|)>/<sqrt|\<lambda\>*n>>
        converge en loi vers <math|Z>, puis que
        <math|max<rsub|t\<in\><around|[|n,n+1|)>><around*|(|N<around|(|t|)>-N<around|(|n|)>|)>/<sqrt|n>\<rightarrow\>0>
        en probabilit�.
      </enumerate>
    </enumerate-alpha>
  </exercise>

  <\exercise>
    \;

    <\enumerate-alpha>
      <item>Rappeler la (une) densit� du <math|n>-uplet
      <math|<around|(|T<rsub|1>,...,T<rsub|n>|)>> sachant
      <math|N<around|(|t|)>=n> lorsque <math|N> est un PP d'intensit�
      <math|\<lambda\>> et <math|0\<less\>T<rsub|1>\<less\>...\<less\>T<rsub|n>\<less\>>...
      ses temps de saut.

      <item>En d�duire une densit� de <math|T<rsub|i>> sachant
      <math|N<around|(|t|)>=n>, <math|\<forall\>1\<leq\>i\<leq\>n> et celle
      de <math|<around|(|T<rsub|i>,T<rsub|j>|)>> sachant
      <math|N<around|(|t|)>=n>, <math|\<forall\>1\<leq\>i\<less\>j\<leq\>n>.

      <item>On pose <math|U<rsub|i,j>=T<rsub|j>-T<rsub|i>>,
      <math|1\<leq\>i\<less\>j\<leq\>n>. Donner une densit� de
      <math|U<rsub|i,j>> sachant <math|N<around|(|t|)>=n>. En d�duire une
      densit� de l'�tendue <math|T<rsub|n>-T<rsub|1>> sachant
      <math|N<around|(|t|)>=n>.
    </enumerate-alpha>
  </exercise>

  <\exercise>
    <strong|Martingales>. Soit <math|X=<around|(|X<around|(|t|)>,t\<geq\>0|)>>
    un processus � temps continu et <math|<with|math-font|cal|F>=<around|(|<with|math-font|cal|F><rsub|t>,t\<geq\>0|)>>
    une <with|font-shape|italic|filtration>, c'est-�-dire une famille de
    tribus emboit�es <math|<with|math-font|cal|F><rsub|s>\<subset\><with|math-font|cal|F><rsub|t>\<subset\><with|math-font|cal|A>>
    <math|\<forall\>s\<leq\>t>, o� <math|<with|math-font|cal|A>> est la tribu
    de l'espace probabilis� <math|<around|(|\<Omega\>,<with|math-font|cal|A>,<with|math-font|Bbb|P>|)>>
    sur lequel on travaille. On dit que <math|X> est une
    <with|font-shape|italic|martingale> par rapport � la filtration
    <math|<with|math-font|cal|F>> si <math|X<around|(|t|)>> est int�grable
    <math|\<forall\>t> et

    <\equation*>
      <with|math-font|Bbb|E><around|[|X<around|(|t|)>\|<with|math-font|cal|F><rsub|s>|]>=X<around|(|s|)>,<space|1em>\<forall\>0\<leq\>s\<leq\>t.
    </equation*>

    Soit <math|N=<around|(|N<around|(|t|)>,t\<geq\>0|)>> un processus de
    Poisson d'intensit� <math|\<lambda\>\<gtr\>0>. Montrer que les processus

    <\enumerate-numeric>
      <item><math|<around*|(|N<around|(|t|)>-\<lambda\>*t|)><rsub|t\<geqslant\>0>>;

      <item><math|<around*|(|<around|(|N<around|(|t|)>-\<lambda\>*t|)><rsup|2>-\<lambda\>*t|)><rsub|t\<geqslant\>0>>;

      <item><math|<around*|(|exp<around|(|u*N<around|(|t|)>+\<lambda\>*t*<around|(|1-e<rsup|u>|)>|)>|)><rsub|t\<geqslant\>0>>
      pour <math|u> fix� dans <math|<with|math-font|Bbb|R>>;
    </enumerate-numeric>

    sont des martingales par rapport � la filtration engendr�e par <math|N>.
  </exercise>

  <\exercise>
    Soit <math|N> un processus de Poisson d'intensit�
    <math|\<lambda\>\<gtr\>0> et <math|0\<less\>T<rsub|1>\<less\>...\<less\>T<rsub|n>\<less\>\<cdots\>>
    ses temps de saut.

    <\enumerate-alpha>
      <item>Montrer que <math|T<rsub|n>/n> converge presque s�rement quand
      <math|n\<rightarrow\>\<infty\>> vers une constante que l'on pr�cisera.

      <item>Montrer que la s�rie <math|<big|sum><rsub|i\<geq\>1>T<rsub|i><rsup|-2>>
      converge presque s�rement. On appelle <math|X> sa limite.

      <item>Montrer que <math|X<rsub|N<around|(|t|)>>\<assign\><big|sum><rsub|i=1><rsup|N<around|(|t|)>>T<rsub|i><rsup|-2>\<rightarrow\>X>
      p.s. quand <math|t\<rightarrow\>\<infty\>>.

      <item>On consid�re<strong|> ici une suite
      <math|<around|(|U<rsub|i>,i\<geq\>1|)>> de v.a. i.i.d. de loi uniforme
      sur <math|<around|]|0,1|[>>. On admet le r�sultat suivant:

      <\equation*>
        n<rsup|-2>*<big|sum><rsub|i=1><rsup|n>U<rsub|i><rsup|-2><above|<below|\<longrightarrow\>|n\<rightarrow\>\<infty\>>|loi><rsub|>Z,
      </equation*>

      o� <math|Z> est une variable al�atoire strictement positive, dont la
      loi est caract�ris�e par sa transform�e de Laplace:
      <math|<with|math-font|Bbb|E><around|[|exp|(>-s*Z)]=exp(-c*<sqrt|s>),\<forall\>s\<geq\>0>,
      pour un <math|c\<gtr\>0> qu'on ne pr�cisera pas.
      <with|font-series|bold|Le but de cette question est de montrer que
      <math|X> a m�me loi que <math|c<rprime|'>*Z> et de pr�ciser
      <math|c<rprime|'>>>.

      On suppose dans ce qui suit que la suite
      <math|<around|(|U<rsub|i>,i\<geq\>1|)>> est ind�pendante du processus
      <math|N>.

      <\enumerate>
        <item>Montrer que pour tout <math|n\<in\><with|math-font|Bbb|N><rsup|\<ast\>>>
        et tout <math|t\<gtr\>0>, sachant <math|N<around|(|t|)>=n>,
        <math|X<rsub|N<around|(|t|)>>> a m�me loi que
        <math|t<rsup|-2>*<big|sum><rsub|i=1><rsup|n>U<rsub|i><rsup|-2>>.

        <item>En d�duire que <math|X<rsub|N<around|(|t|)>>> a m�me loi que
        <math|t<rsup|-2>*<big|sum><rsub|i=1><rsup|N<around|(|t|)>>U<rsub|i><rsup|-2>>.

        <item>Montrer que

        <\equation*>
          N<around|(|t|)><rsup|-2>*<big|sum><rsub|i=1><rsup|N<around|(|t|)>>U<rsub|i><rsup|-2><above|<below|\<longrightarrow\>|t\<rightarrow\>\<infty\>>|loi>Z*<space|1em>
        </equation*>

        <item>Rappeler la loi forte des grands nombres pour le processus de
        Poisson <math|N> et conclure.
      </enumerate>

      <item>En d�duire que <math|<with|math-font|Bbb|E><around|[|X|]>=\<infty\>>.
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
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|eq:15|<tuple|1|2>>
  </collection>
</references>