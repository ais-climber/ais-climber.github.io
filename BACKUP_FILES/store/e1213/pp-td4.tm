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
  Processus de Poisson>>|<cell|<small|<verbatim|[v.1 20120513]>>>>>>>

  \;

  <\strong>
    <with|font-base-size|14|<strong|TD4>. >Th�orie de la ruine.

    \;
  </strong>

  <\with|font-shape|italic>
    Dans tous les exercices de cette feuille faisant intervenir le mod�le de
    Cram�r-Lundberg on note <math|c\<gtr\>0> le coefficient de prime
    instantan�e, <math|\<lambda\>\<gtr\>0> l'intensit� du processus de
    Poisson mod�lisant l'�volution du nombre de sinistres au cours du temps
    et <math|u\<geq\>0> le capital initial de l'assureur.
  </with>

  <\exercise>
    \;

    <\enumerate>
      <item>Montrer que les lois suivantes sont � queues fines :

      <\enumerate>
        <item>loi d'une variable al�atoire positive born�e par une constance
        d�terministe

        <item>lois Gamma

        <item>lois de Weibull de param�tres
        <math|C\<gtr\>0,\<gamma\>\<geq\>1> (on rappelle que la densit� d'une
        loi de Weibull de param�tres <math|C,\<gamma\>> est
        <math|f<around|(|x|)>=C*\<gamma\>*x<rsup|\<gamma\>-1>*exp(-C*x<rsup|\<gamma\>>)<with|math-font-family|bf|1><rsub|<around|{|x\<gtr\>0|}>>>)
      </enumerate>

      <item>Montrer que les lois suivantes sont sous-exponentielles :

      <\enumerate>
        <item>lois de Pareto de param�tres
        <math|\<alpha\>\<gtr\>0,\<beta\>\<gtr\>0>
        (<math|f<around|(|x|)>=\<alpha\>*\<beta\><rsup|\<alpha\>>/<around|(|\<beta\>+x|)><rsup|\<alpha\>+1>,x\<gtr\>0>)

        <item>lois de Weibull de param�tres
        <math|C\<gtr\>0,\<gamma\>\<less\>1>.
      </enumerate>
    </enumerate>
  </exercise>

  <\exercise>
    Dans cet exercice, les param�tres <math|c\<gtr\>0>,
    <math|\<lambda\>\<gtr\>0> et <math|\<beta\>\<gtr\>0> sont
    <with|font-shape|italic|fix�s>. Pour chaque entier
    <math|k\<in\><with|math-font|Bbb|N><rsup|\<ast\>>>, on consid�re le
    mod�le de Cram�r-Lundberg o� les co�ts des sinistres sont distribu�s
    suivant une loi <math|\<Gamma\><around|(|k,\<beta\>|)>> et on note
    <math|\<psi\><rsup|<around|(|k|)>><around|(|u|)>> la probabilit� de ruine
    associ�e. Montrer que pour tout <math|u\<gtr\>0> et tout
    <math|k\<in\><with|math-font|Bbb|N><rsup|\<ast\>>>,

    <\equation*>
      \<psi\><rsup|<around|(|k|)>><around|(|u|)>\<leq\>\<psi\><rsup|<around|(|k+1|)>><around|(|u|)>.
    </equation*>
  </exercise>

  <\exercise>
    On consid�re le mod�le de Cram�r-Lundberg o� les co�ts des sinistres
    suivent une loi exponentielle <math|<with|math-font|cal|E><around|(|\<gamma\>|)>>,
    <math|\<gamma\>\<gtr\>0>. Le coefficient de chargement de s�curit�
    <math|\<rho\>> est suppos� strictement positif. On veut calculer
    explicitement la probabilit� de ruine de l'assureur, que l'on note
    <math|\<psi\><around|(|u|)>>.

    <\enumerate>
      <item>Montrer que la loi <math|<with|math-font|cal|E><around|(|\<gamma\>|)>>,
      <math|\<gamma\>\<gtr\>0>, est une loi � queue fine et calculer le
      coefficient d'ajustement <math|R> associ�.

      <item>En d�duire un ``bon" majorant de la probabilit� de ruine � l'aide
      de l'in�galit� de Lundberg.

      <item>Ecrire l'�quation de renouvellement v�rifi�e par la fonction
      <math|u\<mapsto\>e<rsup|R*u>*\<psi\><around|(|u|)>>.

      <item>A l'aide du th�or�me de renouvellement, r�soudre l'�quation de
      renouvellement et expliciter <math|\<psi\><around|(|u|)>> en fonction
      de <math|\<gamma\>,\<rho\>> et <math|u>.
    </enumerate>
  </exercise>

  <\exercise>
    On consid�re le mod�le de Cram�r-Lundberg o� les co�ts
    <math|X<rsub|i>,i\<geq\>1> suivent une loi de Pareto d'indice
    <math|\<alpha\>\<gtr\>1>, <math|\<beta\>=1>, c-�-d

    <\equation*>
      <wide|F|\<bar\>><rsub|X<rsub|1>><around|(|x|)>=<around|(|1+x|)><rsup|-\<alpha\>>,<space|1em>x\<geq\>0.
    </equation*>

    <\enumerate>
      <item>Calculer <math|\<mu\>=<with|math-font|Bbb|E><around|[|X<rsub|1>|]>>
      et le coefficient de chargement de s�curit� <math|\<rho\>>. Pour
      quelles valeurs de <math|c> a-t-on <math|\<rho\>\<gtr\>0>?

      <item>Montrer que <math|<big|int><rsub|0><rsup|\<infty\>>e<rsup|u*x>*F<rsub|X<rsub|1>,I><around|(|<math-up|d>x|)>=\<infty\>>
      pour tout <math|u\<gtr\>0>. En d�duire que <math|F<rsub|X<rsub|1>,I>>
      n'est pas � queue fine.

      <item>Montrer que <math|F<rsub|X<rsub|1>,I>> est sous-exponentielle.
      Que peut-on dire de la probabilit� de ruine
      <math|\<psi\><around|(|u|)>> quand <math|u\<rightarrow\>+\<infty\>>?
    </enumerate>
  </exercise>

  <\exercise>
    <with|font-series|bold|Exercice 5 (partie de l'examen de Mai 2010)>. On
    se place dans le cadre du mod�le de Cram�r-Lundberg.

    <with|font-series|bold|Partie A.> Les variables
    <math|X<rsub|i>,i\<geq\>1> mod�lisant les co�ts des sinistres sont ici
    continues, de densit�

    <\equation*>
      f<around|(|x|)>=<frac|1|2*<sqrt|x>>*e<rsup|-<sqrt|x>>*<with|math-font-family|bf|1><rsub|<around*|{|x\<gtr\>0|}>>.
    </equation*>

    <\enumerate>
      <item>Calculer <math|\<mu\>=<with|math-font|Bbb|E><around|[|X<rsub|1>|]>>
      et la fonction <math|<wide|F|\<bar\>><rsub|X<rsub|1>><around|(|x|)>,x\<geq\>0>.

      <item>Pour tout <math|x\<geq\>0>, on pose
      <math|F<rsub|X<rsub|1>,I><around|(|x|)>=\<mu\><rsup|-1>*<big|int><rsub|0><rsup|x><wide|F|\<bar\>><rsub|X<rsub|1>><around|(|y|)><math-up|d>y>
      et

      <\equation*>
        q<around|(|x|)>=<frac|<wide|F|\<bar\>><rsub|X<rsub|1>><around|(|x|)>/\<mu\>|<wide|F|\<bar\>><rsub|X<rsub|1>,I><around|(|x|)>>.
      </equation*>

      <\enumerate>
        <item>Montrer que

        <\equation*>
          <big|int><rsub|x><rsup|\<infty\>>e<rsup|-<sqrt|y>><math-up|d>y=2*e<rsup|-<sqrt|x>>*<around|(|<sqrt|x>+1|)>,<space|1em>\<forall\>x\<geq\>0,
        </equation*>

        et en d�duire une expression simple de <math|q<around|(|x|)>>.

        <item>En d�duire que <math|F<rsub|X<rsub|1>,I>> est la fonction de
        r�partition d'une loi sous-exponentielle.
      </enumerate>

      <item>Donner alors un �quivalent de la probabilit� de ruine
      <math|\<psi\><around|(|u|)>> quand <math|u\<rightarrow\>\<infty\>>.
      Exprimer cet �quivalent en fonction de la densit� <math|f> et des
      param�tres <math|c,\<lambda\>> de l'�nonc�.
    </enumerate>

    <with|font-series|bold|Partie B.> On suppose � pr�sent que les
    <math|X<rsub|i>,i\<geq\>1> ont pour densit�

    <\equation*>
      g<around|(|x|)>=2*x*e<rsup|-x<rsup|2>>*<with|math-font-family|bf|1><rsub|<around|{|x\<gtr\>0|}>>.
    </equation*>

    <\enumerate>
      <item>Montrer que <math|\<mu\>=<sqrt|\<pi\>>/2>.

      <item>Montrer que <math|X<rsub|1>> est � queue fine.

      <item>Montrer que le coefficient d'ajustement existe.
      <with|font-shape|italic|On ne demande pas de le calculer>. On le notera
      dans la suite <math|R>.

      <item>Exprimer l'int�grale <math|<big|int><rsub|0><rsup|\<infty\>>y*e<rsup|R*y-y<rsup|2>><math-up|d>y>
      en fonction de <math|c,\<lambda\>> et <math|R>. En d�duire une
      expression de l'int�grale <math|<big|int><rsub|0><rsup|\<infty\>>e<rsup|R*y-y<rsup|2>><math-up|d>y>
      en fonction de <math|c,\<lambda\>> et <math|R>.

      <item>Calculer <math|<math-up|d>F<rsub|X<rsub|1>,I>> et rappeler
      l'�quation de renouvellement v�rifi�e par la fonction
      <math|u\<mapsto\>e<rsup|R*u>*\<psi\><around|(|u|)>>, en justifiant que
      les hypoth�ses n�cessaires � sa mise en place sont bien v�rifi�es ici.

      <item>Donner le comportement asymptotique de la probabilit� de ruine
      <math|\<psi\><around|(|u|)>> lorsque <math|u\<rightarrow\>\<infty\>>.
      On exprimera le r�sultat en fonction de <math|c,\<lambda\>,R> et
      <math|\<pi\>>.
    </enumerate>
  </exercise>

  \;

  <\exercise>
    \;

    <\enumerate>
      <item><with|font-series|bold|Premi�re partie>

      Un assureur dispose d'un portefeuille de risques partitionn� en deux
      classes : les grands risques de co�ts not�s
      <math|X<rsup|1><rsub|i>,i\<geq\>1> et les petits risques de co�ts not�s
      <math|X<rsup|2><rsub|i>,i\<geq\>1>, o� les deux types de risque sont
      ind�pendants.

      La charge sinistrale totale au temps <math|t> de la compagnie est not�e

      <\equation*>
        S<rsub|t>=S<rsup|1><rsub|t>+S<rsup|2><rsub|t>
      </equation*>

      o� <math|S<rsup|1><rsub|t>=<big|sum><rsub|i=1><rsup|N<rsup|1><rsub|t>>X<rsub|i><rsup|1>>
      est la charge sinistrale de la premi�re classe et
      <math|S<rsup|2><rsub|t>=<big|sum><rsub|i=1><rsup|N<rsub|t><rsup|2>>X<rsup|2><rsub|i>>
      celle de la seconde classe. Les processus
      <math|<around|(|N<rsup|i>|)><rsub|i=1,2>> sont des processus de Poisson
      d'intensit� <math|\<lambda\><rsup|i>>, ind�pendants entre eux et
      ind�pendants des diff�rents co�ts <math|X<rsup|1><rsub|i>,X<rsup|2><rsub|i>,i\<geq\>1>.
      On suppose que <math|<around|(|X<rsup|1><rsub|i>,i\<geq\>1|)>> est un
      �chantillon de loi <math|F<rsup|1>> et que
      <math|<around|(|X<rsup|2><rsub|i>,i\<geq\>1|)>> un �chantillon de loi
      <math|F<rsup|2>> .

      <\enumerate>
        <item>Rappeler la valeur de la fonction
        <math|M<rsub|S<rsub|t><rsup|1>>>, fonction g�n�ratrice des moments de
        <math|S<rsub|t><rsup|1>>, puis celle de <math|S<rsup|2><rsub|t>> et
        en d�duire celle de <math|S<rsub|t>>.

        <item>Verifier que <math|S> est bien un processus de Poisson compos�
        qu'on �crira sous la forme

        <\equation*>
          S<rsub|t>=<big|sum><rsub|i=1><rsup|N<rsub|t>>Y<rsub|i>,<space|1em>t\<geq\>0,
        </equation*>

        o� <math|N> est un processus de Poisson d'intensit�
        <math|\<lambda\>=\<lambda\><rsup|1>+\<lambda\><rsup|2>> et
        <math|Y<rsub|i>,i\<geq\>1> un �chantillon de loi <math|F> m�lange des
        lois <math|F<rsup|1>> et <math|F<rsup|2>> dont on pr�cisera les
        coefficients du m�lange.

        <item>On suppose � pr�sent que <math|F<rsup|1>=<with|math-font|cal|E><around|(|\<gamma\>|)>>
        est la loi exponentielle de param�tre <math|\<gamma\>\<gtr\>0> et
        <math|F<rsup|2>=<with|math-font|cal|P>*a*r<around|(|\<alpha\>,1|)>>
        est la loi de Pareto de param�tres <math|\<alpha\>>, 1, avec
        <math|\<alpha\>\<gtr\>1>. Calculer dans ce cas la densit�
        <math|f<rsub|Y<rsub|1>,I><around|(|y|)>>, la fonction
        <math|<wide|F|\<bar\>><rsub|Y<rsub|1>,I><around|(|y|)>>, l'esp�rance
        <math|<with|math-font|Bbb|E><around|[|Y<rsub|1>|]>> et le coefficient
        <math|q<around|(|y|)>=<frac|f<rsub|Y<rsub|1>,I><around|(|y|)>|<wide|F|\<bar\>><rsub|Y<rsub|1>,I><around|(|y|)>>>.

        <item>On consid�re le mod�le de Cram�r-Lundberg

        <\equation*>
          U<rsub|t>=u+c*t-S<rsub|t>,<space|1em>t\<geq\>0
        </equation*>

        o� <math|u\<geq\>0> est l'avoir initial de la compagnie. On suppose
        que le coefficient de chargement de s�curit� <math|\<rho\>> est le
        m�me pour chacune des classes et on prend comme coefficient de prime
        instantan�e

        <\equation*>
          c\<assign\><around|(|1+\<rho\>|)>*<with|math-font|Bbb|E><around|[|Y<rsub|1>|]>
        </equation*>

        avec <math|\<rho\>\<gtr\>0>. Sous les hypoth�ses de la question (c),
        calculer <math|c> en fonction des param�tres du mod�le et donner un
        �quivalent � l'infini de la probabilit� de ruine
        <math|\<psi\><around|(|u|)>>.
      </enumerate>

      <item><with|font-series|bold|Deuxi�me partie>

      L'assureur d�cide de ne plus s�parer les deux groupes de risque, mais
      de fixer une franchise <math|a\<gtr\>0> . L'assureur ne payant que pour
      les sinistres exc�dant le seuil <math|a>, remboursera pour un sinistre
      de montant <math|Z\<gtr\>a> le montant
      <math|<around|(|Z-a|)>>.<next-line>On consid�re alors le mod�le de
      Cram�r -Lundberg

      <\equation*>
        U<rsub|t>=u+c*t-S<rsub|t>*<space|0.75spc><space|0.75spc><space|0.75spc><text|o�><space|0.75spc><space|0.75spc><space|0.75spc>S<rsub|t>=<big|sum><rsub|i=1><rsup|N<rsub|t>>Y<rsup|a><rsub|i>*<space|0.75spc><space|0.75spc><space|0.75spc><text|et><space|0.75spc><space|0.75spc><space|0.75spc>Y<rsup|a><rsub|i>=<around|(|Z<rsub|i>-a|)><rsup|+>
      </equation*>

      <math|N> �tant un processus de Poisson d'intensit� <math|\<lambda\>>.

      <\enumerate>
        <item>On demande de calculer la valeur
        <math|\<mu\>=<with|math-font|Bbb|E><around|[|Y<rsub|1><rsup|a>|]>=<with|math-font|Bbb|E><around|[|<around|(|Z<rsub|1>-a|)><rsup|+>|]>>.
        pour des sinistres dont le montant <math|Z> suit une loi
        <math|<with|math-font|cal|E><around|(|\<gamma\>|)>>

        <item>Calculer <math|M<rsub|Y<rsub|1><rsup|a>>>, la fonction
        g�n�ratrice des moments de <math|Y<rsub|1><rsup|a>>, et en d�duire
        celle de <math|S<rsub|t>>.

        <item>Montrer que <math|M<rsub|S<rsub|t>><around|(|u|)>=M<rsub|S<rprime|'><rsub|t>><around|(|u|)>>
        o�

        <\equation*>
          S<rprime|'><rsub|t>=<big|sum><rsub|i=1><rsup|N<rprime|'><rsub|t>>Z<rsub|i>
        </equation*>

        <math|N<rprime|'><rsub|t>> �tant un processus de Poisson d'intensit�
        <math|\<lambda\>*exp(-\<gamma\>*a)> ind�pendant des
        <math|Z<rsub|i>>s.

        <item>En d�duire que les processus <math|S> et <math|S<rprime|'>> ont
        la m�me loi.

        <item>En d�duire que le processus de risque <math|U> a m�me loi que
        <math|U<rprime|'>> d�fini par

        <\equation*>
          U<rprime|'><rsub|t>=u+c*t-S<rprime|'><rsub|t>,<space|1em>t\<geq\>0.
        </equation*>

        Montrer que <math|\<psi\><around|(|u|)>=<with|math-font|Bbb|P><around|[|inf<rsub|t\<geq\>0>
        U<rsub|t>\<less\>0|]>=<with|math-font|Bbb|P><around|[|inf<rsub|t\<geq\>0>
        U<rprime|'><rsub|t>\<less\>0|]>> et donner un �quivalent � l'infini
        pout <math|\<psi\><around|(|u|)>>.
      </enumerate>
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
    <associate|eq1|<tuple|1|?>>
    <associate|eq:15|<tuple|1|2>>
  </collection>
</references>