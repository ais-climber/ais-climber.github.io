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
  MIDO M1 MMD>|<cell|Universit� Paris-Dauphine 09/10 >>|<row|<cell|<em|
  Processus discrets>>|<cell|<small|<verbatim|[v.3 20091223]>>>>>>>

  \;

  <strong|<with|font-base-size|14|<strong|TD5>. >Cha�nes de Markov (IV).>

  <\exercise>
    On r�partit <with|mode|math|2N> boules, <with|mode|math|N> noires et
    <with|mode|math|N> blanches, dans 2 urnes � raison de <with|mode|math|N>
    boules par urne. Puis � chaque instant on choisit un boule au hasard dans
    chacune des urnes et on les �change. On d�signe par
    <with|mode|math|X<rsub|n>> le nombre de boules noires dans l'urne
    <with|mode|math|1> apr�s <with|mode|math|n> �changes.

    <\enumerate>
      <item>Pr�ciser l'espace d'�tats M de la cha�ne de Markov
      <with|mode|math|(X<rsub|n>)<rsub|n\<in\><with|math-font|Bbb|N>>> et
      calculer sa matrice de transition <with|mode|math|P>.

      <item>Montrer que cette cha�ne est irr�ductible. Est-elle fortement
      irr�ductible (c'est-�-dire: existe-t-il un entier
      <with|mode|math|n<rsub|0>> tel que <with|mode|math|P<rsup|n<rsub|0>>(i,j)\<gtr\>0>
      pour tout <with|mode|math|i,j\<in\>M>) ?

      <item>On rappelle que <with|mode|math|<binom|N|k>=<frac|N!|k!(N-k)!>,\<forall\>k\<leq\>N,k,N\<in\><with|math-font|Bbb|N>>.
      Montrer que la probabilit� d�finie par
      <with|mode|math|\<pi\>(k)=c<binom|N|k><rsup|2>>,
      <with|mode|math|\<forall\>k\<in\>M> (o� <with|mode|math|c> est une
      constante que l'on pr�cisera) est une probabilit� stationnaire
      r�versible. Y-a-t-'il d'autres probabilit�s stationnaires pour cette
      cha�ne ?

      <item>Que peut-on dire sur le comportement de

      <\equation*>
        <frac|1|n><big|sum><rsub|k=1><rsup|n><with|math-font-family|bf|1><rsub|X<rsub|k>=i>,
      </equation*>

      pour tout <with|mode|math|i\<in\>M>, quand
      <with|mode|math|n\<rightarrow\>\<infty\>> ?

      <item>Quel est le temps moyen de retour � l'�tat <with|mode|math|N>?
      Confronter avec le temps moyen de retour � l'�tat <with|mode|math|N/2>
      (<with|mode|math|(N+1)/2> si <with|mode|math|N> impair)
    </enumerate>
  </exercise>

  <\exercise>
    (<name|Ch�teau de cartes>). On consid�re la suite de v.a. d�finie par

    <\equation*>
      X<rsub|t+1>=<choice|<tformat|<table|<row|<cell|X<rsub|t>+1>|<cell|<with|mode|text|avec
      probabilit� <math|p\<in\>]0,1[>> >>|<row|<cell|0>|<cell|<with|mode|text|avec
      probabilit� <math|1-p> ;>>>>>>
    </equation*>

    ind�pendamment de ce qui pr�c�de.

    <\enumerate>
      <item>V�rifier que <with|mode|math|(X<rsub|n>)<rsub|n\<ge\>1>> est une
      cha�ne de Markov, et donner sa matrice de transition.

      <item>Calculer la probabilit� invariante par la cha�ne (on pourra en
      chercher la fonction g�n�ratrice).

      <item>Calculer la correspondant matrice
      <with|mode|math|P<rsup|\<ast\>>> de la cha�ne retourn�e dans le temps.

      <item>Montrer que, <with|mode|math|\<forall\>y>,
      <with|mode|math|lim<rsub|t\<to\>\<infty\>>\<bbb-P\><rsub|y>(X<rsub|t>=x)=\<pi\>(x)>,
      o� <with|mode|math|\<pi\>> est la probabilit� invariante.

      <item>Soit <with|mode|math|\<tau\><rsub|k>=inf{n\<ge\>1:X<rsub|n>=k}>
      pour <with|mode|math|k=0,1,2,\<ldots\>>. Calculer
      <with|mode|math|<with|math-font|Bbb|E><rsub|k>(\<tau\><rsub|k>)>.

      <item>Calculer, en partant de <with|mode|math|0>
      (<with|mode|math|X<rsub|0>=0>) l'esp�rance du temps pass� au-dessus de
      <with|mode|math|k> avant de tomber sur <with|mode|math|0> la premi�re
      fois

      <\equation*>
        <with|math-font|Bbb|E><rsub|0><left|(><big|sum><rsub|n=0><rsup|\<tau\><rsub|0>-1>1<rsub|[X<rsub|n>\<ge\>k]><right|)>
      </equation*>
    </enumerate>
  </exercise>

  <\exercise>
    (<name|M�thode Monte-Carlo>) Soit <with|mode|math|M> un espace fini et
    <with|mode|math|\<pi\>=<left|{>\<pi\>(x),x\<in\>M<right|}>> une
    probabilit� sur <with|mode|math|M> telle que <math|\<pi\>(x)\<gtr\>0>
    pour tout <math|x\<in\>M>. On se donne une matrice de transition
    <with|mode|math|math-font|cal|P> sur <with|mode|math|M>, irr�ductible et
    telle que <with|mode|math|<with|math-font|cal|P>(x,y)\<gtr\>0\<Longleftrightarrow\><with|math-font|cal|P>(y,x)\<gtr\>0>.
    Soit <with|mode|math|h:]0,\<infty\>]\<rightarrow\>]0,1]> une fonction
    v�rifiant

    <\equation*>
      h(u)=u*h<left|(><frac|1|u><right|)>.
    </equation*>

    Par exemple <with|mode|math|h(u)=inf (u,1)> ou bien
    <with|mode|math|h(u)=<frac|u|1+u>>. Pour <with|mode|math|x\<neq\>y>
    posons

    <\equation>
      <label|eq:4>R(x,y)=<left|{><tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|2|2|cell-halign|l>|<table|<row|<cell|h<left|(><frac|\<pi\>(y)<with|math-font|cal|P>(y,x)|\<pi\>(x)<with|math-font|cal|P>(x,y)><right|)>>|<cell|<with|mode|text|si
      <with|mode|math|<with|math-font|cal|P>(y,x)\<gtr\>0>>>>|<row|<cell|0>|<cell|<with|mode|text|sinon.>>>>>><right|.>
    </equation>

    On construit alors une probabilit� de transition <with|mode|math|Q>
    d�finie par

    <\equation>
      <label|eq:5><left|{><tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|2|2|cell-halign|l>|<table|<row|<cell|Q(x,y)>|<cell|=<with|math-font|cal|P>(x,y)R(x,y)<space|2em><with|mode|text|si
      <with|mode|math|x\<neq\>y>>>>|<row|<cell|Q(x,x)>|<cell|=1-<big|sum><rsub|y\<neq\>x>Q(x,y)>>>>><right|.>
    </equation>

    <\enumerate>
      <item>Montrer que <with|mode|math|Q> est une matrice de transition bien
      d�finie et que <with|mode|math|\<pi\>> est r�versible pour
      <with|mode|math|Q>.

      <item>Montrer que <math|Q> est une matrice de transition irr�ductible.

      <item>Montrer que si <with|mode|math|h(u)\<less\>1> alors
      <with|mode|math|Q> est ap�riodique. En d�duire que dans ce cas
      <with|mode|math|Q<rsup|n>(x,y)\<to\>\<pi\>(y)> quand
      <with|mode|math|n\<to\>\<infty\>>, <with|mode|math|\<forall\>x\<in\>M>.
    </enumerate>
  </exercise>

  <\exercise>
    On consid�re la cha�ne de Markov � valeurs dans
    <with|mode|math|E={1,2,3,4}> de matrice de transition

    <\equation*>
      <left|(><tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|-1|4|4|cell-halign|c>|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|<frac|1|2>>|<cell|0>|<cell|<frac|1|4>>|<cell|<frac|1|4>>>|<row|<cell|<frac|1|2>>|<cell|<frac|1|2>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>>>><right|)>
    </equation*>

    1. Montrer que la cha�ne est irr�ductible et calculer sa probabilit�
    invariante.

    2. Soit <with|mode|math|N<rsub|n>(i)> le nombre de fois o� la cha�ne
    passe par l'�tat <with|mode|math|i> au cours des <with|mode|math|n>
    premi�res �tapes. Quel est le comportement asymptotique de
    <with|mode|math|N<rsub|n>(i)> quand <with|mode|math|n> tend vers l'infini
    ?
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
    <associate|eq:4|<tuple|1|3>>
    <associate|eq:5|<tuple|2|3>>
    <associate|eq:gambling|<tuple|2|1>>
    <associate|ex|<tuple|2|7>>
    <associate|inv|<tuple|1|7>>
  </collection>
</references>