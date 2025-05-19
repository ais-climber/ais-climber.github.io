<TeXmacs|1.0.7.14>

<style|article>

<\body>
  <tabular|<tformat|<cwith|1|1|2|2|cell-halign|r>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|2|2|2|2|cell-halign|r>|<twith|table-lborder|1px>|<twith|table-rborder|1px>|<twith|table-bborder|1px>|<twith|table-tborder|1px>|<cwith|1|2|1|2|cell-lsep|0.5em>|<cwith|1|2|1|2|cell-rsep|0.5em>|<cwith|1|2|1|2|cell-bsep|0.5em>|<cwith|1|2|1|2|cell-tsep|0.5em>|<cwith|1|2|1|2|cell-background|pastel
  grey>|<table|<row|<cell|<strong|Processus de Poisson et meth.
  actuariels>>|<cell|M1 MMD>>|<row|<cell|Gubinelli Massimiliano>|<cell|Poly 1
  - v.3 20120216>>>>>

  \;

  <chapter|Le processus de Poisson>

  <section|Processus de renouvellement et de comptage>

  Un <with|font-shape|italic|processus de renouvellement> est une suite
  croissante <math|<around*|(|T<rsub|n>|)><rsub|n\<in\>\<bbb-N\>>> de v.a.s
  telles que les <with|font-shape|italic|temps inter-arriv�e>
  <math|<around*|(|\<tau\><rsub|n>=T<rsub|n>-T<rsub|n-1>\<geqslant\>0|)><rsub|n\<geqslant\>1>>
  forment une famille iid de v.a. positives. Un processus de renouvellement
  d�crit les temps dans lesquels certains �v�nements al�atoires se
  produisent: arriv�e de clients � un magasin, appels t�l�phoniques � un
  standard, temps de replacement de materiel d�fectueux (des ampoules par
  exemple), arriv�es des demandes de remboursement � un institut d'assurance,
  tremblements de terre, accidents de voiture, decadiments radioactives,
  etc...\ 

  Associ�e � un processus de renouvellement donn� il y a le correspondent
  <with|font-shape|italic|processus de comptage>
  <math|<around*|(|N<rsub|t>|)><rsub|t\<in\>\<bbb-R\><rsub|+>>> qui compte le
  nombre d'�v�nements jusqu'� l'instant <math|t\<in\>\<bbb-R\><rsub|+>>

  <\equation>
    N<rsub|t>=#<around*|{|n\<geqslant\>0 :
    T<rsub|n>\<leqslant\>t|}>=<big|sum><rsub|n\<geqslant\>0>\<bbb-I\><rsub|T<rsub|n>\<leqslant\>t>
    .<label|eq:n-from-t>
  </equation>

  Un processus de comptage est donc une famille de v.a.
  <math|<around*|(|N<rsub|t>|)><rsub|t\<in\>\<bbb-R\><rsub|+>>> � valeurs
  dans <math|\<bbb-N\>> et index� par la demi-droite r�elle
  <math|\<bbb-R\><rsub|+>=<around*|[|0,+\<infty\>|[>>. C'est un exemple (avec
  le mouvement Brownien) de processus al�atoire � temps continu.\ 

  <\remark>
    La loi d'un processus � temps continu
    <math|<around*|(|X<rsub|t>|)><rsub|t\<in\>I>> est donn�e par la
    collection des lois des tous les <math|n>-uplets
    <math|<around*|(|X<rsub|t<rsub|1>>,\<ldots\>,X<rsub|t<rsub|n>>|)>> pour
    tout <math|n\<geqslant\>1> et toute choix
    <math|<around*|(|t<rsub|i>\<in\>I|)><rsub|i=1,\<ldots\>,n>>. \ \ 
  </remark>

  <\definition>
    Un processus continu <math|<around*|(|X<rsub|t>|)><rsub|t\<in\>\<bbb-R\>>>
    est continu � droite ssi <math|X<rsub|t+>=lim<rsub|s\<rightarrow\>t,t\<leqslant\>s>X<rsub|s>=X<rsub|t>>
    pour tout <math|t\<in\>\<bbb-R\>> presque s�rement. Il admet limite �
    gauche si <math|X<rsub|t->=lim<rsub|s\<rightarrow\>t,s\<leqslant\>t>
    X<rsub|s>> \ pour tout <math|t\<in\>\<bbb-R\>> existe p.s. . Il est �
    accroissement ind�pendants si pour tout <math|n\<geqslant\>0> et tout
    <math|t<rsub|1>\<leqslant\> \<cdots\>\<leqslant\>t<rsub|n>> les v.a.
    <math|<around*|(|X<rsub|t<rsub|2>>-X<rsub|t<rsub|1>>,\<ldots\>,X<rsub|t<rsub|n>>-X<rsub|t<rsub|n-1>>|)>>
    sont ind�pendantes. Il est � accroissements stationnaires si pour tout
    <math|t\<leqslant\>s> et <math|h\<geqslant\>0> la loi de
    <math|X<rsub|t>-X<rsub|s>> est la m�me que la loi de
    <math|X<rsub|t+h>-X<rsub|s+h>>.\ 
  </definition>

  <\definition>
    Un processus de comptage <math|<around*|(|N<rsub|t>|)><rsub|t\<geqslant\>0>>
    est un processus � temps continu et � valeurs dans
    <math|\<bbb-N\>\<cup\><around*|{|+\<infty\>|}>>, croissant, continu �
    droite (cad) avec <math|N<rsub|0>=0>.
  </definition>

  Donn� un processus de comptage on peut definir les temps al�atoires

  <\equation*>
    T<rsub|n>=inf<around*|{|t\<geqslant\>0 : N<rsub|t>\<geqslant\>n|}>
  </equation*>

  (avec la convention que <math|inf \<varnothing\>=+\<infty\>>). C'est la
  suite de temps de saut de <math|<around*|(|N<rsub|t>|)><rsub|t\<geqslant\>0>>,
  elle est une suite croissante avec <math|T<rsub|0>=0>,
  <math|T<rsub|1>\<gtr\>0> (consequence de la continuit� � droite, exercice).

  <section|Le processus de Poisson>

  Si <math|<around*|(|T<rsub|n>|)><rsub|n\<geqslant\>0>> est le processus de
  renouvellement avec des temps d'interarriv�e de loi exponentielle de
  param�tre <math|\<lambda\>\<gtr\>0> alors le processus de comptage
  correspondant est appel� un <with|font-shape|italic|processus de Poisson>
  (PP).

  On rappelle les propri�t�s suivantes de la loi exponentielle:

  <\enumerate-numeric>
    <item>La loi de la somme de <math|n> v.a.
    <math|\<cal-E\><around*|(|\<lambda\>|)>> ind�pendantes est la loi
    <math|\<Gamma\><around*|(|n,\<lambda\>|)>>. La densit� de la loi Gamma
    <math|\<Gamma\><around*|(|\<alpha\>,\<beta\>|)>> de param�tres
    <math|\<alpha\>\<gtr\>0,\<beta\>\<gtr\>0> est donn�e par

    <\equation*>
      f<rsub|\<Gamma\><around*|(|\<alpha\>,\<beta\>|)>><around*|(|x|)>=<frac|\<beta\><rsup|\<alpha\>>|\<Gamma\><around*|(|\<alpha\>|)>>x<rsup|\<alpha\>-1>
      e<rsup|-\<beta\>*x>\<bbb-I\><rsub|x\<gtr\>0> .
    </equation*>

    <item>Absence de m�moire: si <math|X\<sim\>\<cal-E\><around*|(|\<lambda\>|)>>
    alors

    <\equation*>
      \<bbb-P\><around*|(|X\<gtr\>t+h<around*|\||X\<gtr\>t|\<nobracket\>>|)>=\<bbb-P\><around*|(|X\<gtr\>h|)>=e<rsup|-\<lambda\>h>
    </equation*>

    pour tout <math|t,h\<geqslant\>0>.\ 
  </enumerate-numeric>

  <\theorem>
    Si <math|T> est une v.a. positive telle que
    <math|\<bbb-P\><around*|(|T\<gtr\>t+h<around*|\||T\<gtr\>t|\<nobracket\>>|)>=\<bbb-P\><around*|(|T\<gtr\>h|)>>
    alors, il existe <math|\<lambda\>\<gtr\>0> tel que
    <math|T\<sim\>\<cal-E\><around*|(|\<lambda\>|)>>
  </theorem>

  <\proof>
    Soit <math|g<around*|(|t|)>=\<bbb-P\><around*|(|T\<gtr\>t|)>>. On a que
    <math|g<around*|(|t+s|)>/g<around*|(|t|)>=g<around*|(|s|)>>. Donc
    <math|g<around*|(|k|)>=g<around*|(|1|)><rsup|k >> pour tout
    <math|k\<in\>\<bbb-N\>>. <math|g<around*|(|k|)>=g<around*|(|k/p|)><rsup|p>>
    et <math|g<around*|(|k/p|)>=g<around*|(|1|)><rsup|k/p>>. Par densit� et
    continuit� (� droite) de <math|g>: <math|g<around*|(|x|)>=g<around*|(|1|)><rsup|x>>
    pour tout <math|x\<geqslant\>0>. On doit avoir
    <math|0\<less\>g<around*|(|1|)>\<less\>1> car si
    <math|g<around*|(|1|)>=0> alors <math|T=0> et si
    <math|g<around*|(|1|)>=1> alors <math|T=+\<infty\>>. Alors, avec
    <math|\<lambda\>=-log g<around*|(|1|)>\<gtr\>0> on a que
    <math|g<around*|(|t|)>=e<rsup|-\<lambda\>t>>.\ 
  </proof>

  On a que la loi de <math|T<rsub|n>> est donn�e par\ 

  <\equation*>
    f<rsub|T<rsub|n>><around*|(|t|)>=<frac|\<lambda\><rsup|n-1>|<around*|(|n-1|)>!>t<rsup|n-1>e<rsup|-\<lambda\>*t>\<bbb-I\><rsub|t\<gtr\>0>
  </equation*>

  et que

  <\equation*>
    \<bbb-P\><around*|(|T<rsub|n>\<geqslant\>t|)>=<big|int><rsub|0><rsup|+\<infty\>><frac|\<lambda\><rsup|n-1>|<around*|(|n-1|)>!>t<rsup|n-1>e<rsup|-\<lambda\>*t>\<mathd\>t=<big|sum><rsub|k=0><rsup|n-1><frac|<around*|(|\<lambda\>*t|)><rsup|k>|k!>e<rsup|-\<lambda\>*t><space|2em>t\<geqslant\>0
    .
  </equation*>

  Mais alors il est facile de voir que

  <\equation*>
    \<bbb-P\><around*|(|N<rsub|t>\<geqslant\>n|)>=\<bbb-P\><around*|(|T<rsub|n>\<leqslant\>t|)>=1-<big|sum><rsub|k=0><rsup|n-1><frac|<around*|(|\<lambda\>*t|)><rsup|k>|k!>e<rsup|-\<lambda\>*t>
  </equation*>

  avec <math|\<bbb-P\><around*|(|N<rsub|t>\<geqslant\>0|)>=1>. Ce qu'implique
  que\ 

  <\equation*>
    \<bbb-P\><around*|(|N<rsub|t>=n|)>=\<bbb-P\><around*|(|N<rsub|t>\<geqslant\>n|)>-\<bbb-P\><around*|(|N<rsub|t>\<geqslant\>n+1|)>=<frac|<around*|(|\<lambda\>*t|)><rsup|n>|n!>e<rsup|-\<lambda\>*t>
  </equation*>

  pour tout <math|n\<geqslant\>0>. La loi de <math|N<rsub|t>> est donc une
  loi de Poisson de param�tre <math|\<lambda\>*t> pour tout
  <math|t\<geqslant\>0> (avec la convention qu'une loi de Poisson de
  param�tre <math|0> est la loi d'une v.a. constante et egale � 0).\ 

  La densit� jointe de <math|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>> est
  donn�e par

  <\equation*>
    f<rsub|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>><around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>=\<lambda\><rsup|n>e<rsup|-\<lambda\>t<rsub|n>>\<bbb-I\><rsub|0\<less\>t<rsub|1>\<less\>t<rsub|2>\<less\>
    \<cdots\>\<less\>t<rsub|n>>
  </equation*>

  Calculons

  <\equation*>
    \<bbb-P\><around*|(|T<rsub|l>\<leqslant\>s\<leqslant\>T<rsub|l+1>\<leqslant\>T<rsub|l+k>\<leqslant\>t\<leqslant\>T<rsub|l+k+1>|)>=<big|int><rsub|A>\<lambda\><rsup|l+k+1>e<rsup|-\<lambda\>r<rsub|l+k+1>>\<bbb-I\><rsub|0\<less\>r<rsub|1>\<less\>r<rsub|2>\<less\>
    \<cdots\>\<less\>r<rsub|l+k+1>>\<mathd\>r<rsub|1>\<cdots\>\<mathd\>r<rsub|l+k+1>
  </equation*>

  o� <math|A=<around*|{|<around*|(|r<rsub|1>,\<ldots\>,r<rsub|l+k+1>|)>:r<rsub|1>\<less\>r<rsub|2>\<less\>
  \<cdots\>\<less\>r<rsub|l>\<less\>s\<less\>r<rsub|l+1>\<less\>
  \<cdots\>\<less\>r<rsub|l+k>\<less\>t\<less\>r<rsub|l+k+1>|}>>. Mais alors
  un calcul direct donne

  <\equation*>
    =e<rsup|-\<lambda\>*t><frac|<around*|(|\<lambda\>*s|)><rsup|l>|l!><frac|<around*|(|\<lambda\><around*|(|t-s|)>|)><rsup|k>|k!>
  </equation*>

  ce qu'implique

  <\equation*>
    \<bbb-P\><around*|(|N<rsub|t>=l+k<around*|\||N<rsub|s>=l|\<nobracket\>>|)>=\<bbb-P\><around*|(|T<rsub|l+k>\<leqslant\>t\<leqslant\>T<rsub|l+k+1><around*|\||T<rsub|l>\<leqslant\>s\<leqslant\>T<rsub|l+1>|\<nobracket\>>|)>=e<rsup|-\<lambda\><around*|(|t-s|)>><frac|<around*|(|\<lambda\><around*|(|t-s|)>|)><rsup|k>|k!>.
  </equation*>

  On veut maintenant montrer que la m�me propri�t� est vraie pour un nombre
  arbitraire d'increments. Soit <math|0\<leqslant\>t<rsub|1>\<leqslant\>t<rsub|2>\<leqslant\>
  \<cdots\>\<leqslant\>t<rsub|n+1>> des temps et <math|k<rsub|1>\<leqslant\>
  \<cdots\>\<leqslant\>k<rsub|n+1>> une suite croissante d'entiers.\ 

  L'evenement <math|<around*|{|N<rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,N<rsub|t<rsub|n+1>>=k<rsub|n+1>|}>>
  est equivalent � <math|<around*|{|T<rsub|k<rsub|i>>\<leqslant\>t<rsub|i>\<leqslant\>T<rsub|k<rsub|i>+1>
  : i=1,\<ldots\>,n+1|}>> et

  <\equation*>
    \<bbb-P\><around*|(|N<rsub|t<rsub|n+1>>=k<rsub|n+1><around*|\||N<rsub|t<rsub|n>>=k<rsub|n>,\<ldots\>,N<rsub|t<rsub|1>>=k<rsub|1>|\<nobracket\>>|)>=\<bbb-P\><around*|(|T<rsub|k<rsub|n+1>>\<leqslant\>t<rsub|n+1>\<leqslant\>T<rsub|k<rsub|n+1>+1><around*|\|||\<nobracket\>>T<rsub|k<rsub|i>>\<leqslant\>t<rsub|i>\<leqslant\>T<rsub|k<rsub|i>+1>
    : i=1,\<ldots\>,n|)>.
  </equation*>

  par un calcul analogue au precedent on a que

  <\equation*>
    \<bbb-P\><around*|(|T<rsub|k<rsub|n+1>>\<leqslant\>t<rsub|n+1>\<leqslant\>T<rsub|k<rsub|n+1>+1><around*|\|||\<nobracket\>>T<rsub|k<rsub|i>>\<leqslant\>t<rsub|i>\<leqslant\>T<rsub|k<rsub|i>+1>
    : i=1,\<ldots\>,n|)>
  </equation*>

  <\equation*>
    =<frac|\<bbb-P\><around*|(|T<rsub|k<rsub|1>>\<leqslant\>t<rsub|1>\<leqslant\>T<rsub|k<rsub|1>+1>\<leqslant\>T<rsub|k<rsub|2>>\<leqslant\>t<rsub|2>\<leqslant\>T<rsub|k<rsub|2>+1>\<leqslant\>
    \<cdots\>\<leqslant\>T<rsub|k<rsub|n+1>>\<leqslant\>t<rsub|n+1>\<leqslant\>T<rsub|k<rsub|n+1>+1>|)>|\<bbb-P\><around*|(|T<rsub|k<rsub|1>>\<leqslant\>t<rsub|1>\<leqslant\>T<rsub|k<rsub|1>+1>\<leqslant\>T<rsub|k<rsub|2>>\<leqslant\>t<rsub|2>\<leqslant\>T<rsub|k<rsub|2>+1>\<leqslant\>
    \<cdots\>\<leqslant\>T<rsub|k<rsub|n>>\<leqslant\>t<rsub|n>\<leqslant\>T<rsub|k<rsub|n>+1>|)>>
  </equation*>

  <\equation*>
    =<frac|e<rsup|-\<lambda\>t<rsub|n+1>>|e<rsup|-\<lambda\>t<rsub|n>>><frac|<big|prod><rsub|i=0><rsup|n><frac|<around*|(|\<lambda\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)><rsup|k<rsub|i+1>-k<rsub|i>>|<around*|(|k<rsub|i+1>-k<rsub|i>|)>!>|<big|prod><rsub|i=0><rsup|n-1><frac|<around*|(|\<lambda\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)><rsup|k<rsub|i+1>-k<rsub|i>>|<around*|(|k<rsub|i+1>-k<rsub|i>|)>!>>=e<rsup|-\<lambda\><around*|(|t<rsub|n+1>-t<rsub|n>|)>><around*|(|\<lambda\><around*|(|t<rsub|n+1>-t<rsub|n>|)>|)><rsup|k<rsub|n+1>-k<rsub|n>>
  </equation*>

  Et donc

  <\equation*>
    \<bbb-P\><around*|(|N<rsub|t<rsub|n>+h>-N<rsub|t<rsub|n>>=l<around*|\||N<rsub|t<rsub|n>>=k<rsub|n>,\<ldots\>,N<rsub|t<rsub|1>>=k<rsub|1>|\<nobracket\>>|)>=e<rsup|-\<lambda\>h><frac|<around*|(|\<lambda\>*h|)><rsup|l>|l!>=\<bbb-P\><around*|(|N<rsub|h>=l|)>
  </equation*>

  qui montre que les increments du processus de Poisson sont stationnaires et
  ne dependent pas du pass�.\ 

  Les observations precedentes nous permettent de donner une nouvelle
  definition du processus de Poisson, equivalente � celle de processus de
  comptage pour le processus de renouvellement avec intertemps exponentiels.\ 

  <\definition>
    Un processus de Poisson d'intensit� <math|\<lambda\>\<gtr\>0> est un
    processus de comptage � accroissements ind�pendantes et stationnaires
    (PAIS) tel que

    <\equation*>
      N<rsub|t>\<sim\>\<cal-P\><around*|(|\<lambda\>*t|)>.
    </equation*>
  </definition>

  Pour montrer l'equivalente, il nous reste � montrer que les temps
  d'accroissement d'un tel processus de comptage forment un processus de
  renouvellement avec intertemps exponentiels. Calculons la densit� de
  <math|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n><rsub|>|)>>:\ 

  Pour <math|s<rsub|1>\<less\>s<rsub|2>\<less\> \<cdots\>\<less\>s<rsub|n>>
  on a que

  <\equation*>
    f<rsub|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>><around*|(|s<rsub|1>,\<ldots\>,s<rsub|n>|)>=lim<rsub|h<rsub|1>,\<ldots\>,h<rsub|n>\<rightarrow\>0><frac|\<bbb-P\><around*|(|T<rsub|1>\<in\><around*|[|s<rsub|1>,s<rsub|1>+h<rsub|1>|[>,\<ldots\>,T<rsub|n>\<in\><around*|[|s<rsub|n>,s<rsub|n>+h<rsub|n>|[>|)>|h<rsub|1>\<cdots\>h<rsub|n>>
  </equation*>

  o�

  <\equation*>
    \<bbb-P\><around*|(|T<rsub|1>\<in\><around*|[|s<rsub|1>,s<rsub|1>+h<rsub|1>|[>,\<ldots\>,T<rsub|n>\<in\><around*|[|s<rsub|n>,s<rsub|n>+h<rsub|n>|[>|)>
  </equation*>

  <\equation*>
    =\<bbb-P\><around*|(|N<rsub|s<rsub|1>>=0,N<rsub|s<rsub|1>+h<rsub|1>>=1,N<rsub|s<rsub|2>>=1,\<ldots\>,N<rsub|s<rsub|2>+h<rsub|2>>=2,\<ldots\>,N<rsub|s<rsub|n>+h<rsub|n>>=n+1|)>
  </equation*>

  <\equation*>
    =e<rsup|-\<lambda\>s<rsub|1>>*\<lambda\>h<rsub|1>e<rsup|-\<lambda\>h<rsub|1>><big|prod><rsub|i=1><rsup|n-1>*e<rsup|-\<lambda\><around*|(|s<rsub|i+1>-s<rsub|i>-h<rsub|i>|)>>\<lambda\>h<rsub|i+1>e<rsup|-\<lambda\>h<rsub|i+1>>.
  </equation*>

  Donc

  <\equation*>
    f<rsub|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>><around*|(|s<rsub|1>,\<ldots\>,s<rsub|n>|)>=e<rsup|-\<lambda\>s<rsub|n>>\<lambda\><rsup|n>
    .
  </equation*>

  Pour les autres valeurs de <math|<around*|(|s<rsub|1>,\<ldots\>,s<rsub|n>|)>>
  on a <math|f<rsub|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>><around*|(|s<rsub|1>,\<ldots\>,s<rsub|n>|)>=0>
  de sorte que

  <\equation*>
    f<rsub|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>><around*|(|s<rsub|1>,\<ldots\>,s<rsub|n>|)>=e<rsup|-\<lambda\>s<rsub|n>>\<lambda\><rsup|n>\<bbb-I\><rsub|0\<less\>s<rsub|1>\<less\>
    \<cdots\>\<less\>s<rsub|n>>.
  </equation*>

  D'ici est facile voir que le vecteur <math|<around*|(|\<tau\><rsub|1>,\<ldots\>,\<tau\><rsub|n>|)>>
  est iid de loi <math|\<cal-E\><around*|(|\<lambda\>|)>>.

  <section|Propri�t�s du processus de Poisson>

  <\theorem>
    (Loi des grandes nombres) Soit <math|<around*|(|N<rsub|t>|)><rsub|t\<geqslant\>0>>
    un processus de Poisson d'intensit� <math|\<lambda\>>, alors

    <\equation*>
      lim<rsub|t\<rightarrow\>+\<infty\>><frac|N<rsub|t>|t>=\<lambda\><space|2em>p.s.
    </equation*>
  </theorem>

  <\proof>
    (1�re methode) On �crit

    <\equation*>
      <frac|N<rsub|n>|n>=<frac|1|n><big|sum><rsub|k=1><rsup|n><around*|[|N<rsub|k>-N<rsub|k-1>|]>\<nosymbol\>.
    </equation*>

    Par l'ind�pendance et la stationnarit� des increments la suite
    <math|<around*|(|N<rsub|k>-N<rsub|k-1>|)><rsub|k\<geqslant\>1>> est iid
    de loi <math|\<cal-P\><around*|(|\<lambda\>|)>>. Donc par la loi forte
    des grandes nombres pour les suites iid on a que

    <\equation*>
      N<rsub|n>/n\<rightarrow\>\<bbb-E\><around*|[|N<rsub|1>|]>=\<lambda\> .
    </equation*>

    Or le processus <math|<around*|(|N<rsub|t>|)><rsub|t\<geqslant\>0>> est
    croissante, donc

    <\equation*>
      <frac|N<rsub|<around*|\<lfloor\>|t|\<rfloor\>>>|<around*|\<lfloor\>|t|\<rfloor\>>+1>\<leqslant\><frac|N<rsub|<around*|\<lfloor\>|t|\<rfloor\>>>|t>\<leqslant\><frac|N<rsub|t>|t>\<leqslant\><frac|N<rsub|<around*|\<lfloor\>|t|\<rfloor\>>+1>|t>\<leqslant\><frac|N<rsub|<around*|\<lfloor\>|t|\<rfloor\>>+1>|<around*|\<lfloor\>|t|\<rfloor\>>>
    </equation*>

    mais maintenant <math|N<rsub|n>/<around*|(|n+1|)>\<rightarrow\>\<lambda\>>
    et aussi <math|N<rsub|n+1>/n\<rightarrow\>\<lambda\>> et donc
    <math|N<rsub|t>/t\<rightarrow\>\<lambda\>>.\ 
  </proof>

  <\proof>
    (2�me methode) Par la loi forte des grandes nombres pour les v.a. iid:

    <\equation*>
      <frac|T<rsub|n>|n>=<frac|1|n><big|sum><rsub|k=1><rsup|n>\<tau\><rsub|k>\<rightarrow\>\<bbb-E\><around*|[|\<tau\><rsub|1>|]>=<frac|1|\<lambda\>>
    </equation*>

    Mais <math|T<rsub|N<rsub|t>>\<leqslant\>t\<leqslant\>T<rsub|N<rsub|t>+1>>,
    donc

    <\equation*>
      <frac|T<rsub|N<rsub|t>>|N<rsub|t>>\<leqslant\><frac|t|N<rsub|t>>\<leqslant\><frac|T<rsub|N<rsub|t>+1>|N<rsub|t>>\<leqslant\><frac|T<rsub|N<rsub|t>+1>|N<rsub|t>+1>\<cdot\><frac|N<rsub|t>+1|N<rsub|t>>
    </equation*>

    Le processus <math|N<rsub|t>> est croissante, donc
    <math|N<rsub|+\<infty\>>=lim<rsub|t\<rightarrow\>+\<infty\>>N<rsub|t>>
    existe p.s.. Maintenant il est impossible que
    <math|N<rsub|+\<infty\>>\<less\>+\<infty\>> car sinon on obtiens que
    <math|+\<infty\>\<leqslant\>T<rsub|N<rsub|+\<infty\>>+1>> mais
    <math|T<rsub|k>\<less\>+\<infty\>> pour tout <math|k\<geqslant\>1>. Alors
    <math|N<rsub|+\<infty\>>=+\<infty\>> et donc on obtiens que\ 

    <\equation*>
      lim<rsub|t\<rightarrow\>+\<infty\>><frac|t|N<rsub|t>>=<frac|1|\<lambda\>>.
    </equation*>

    \;
  </proof>

  Soit <math|<around*|(|\<cal-F\><rsub|t>|)><rsub|t\<geqslant\>0>> la
  filtration naturelle du processus <math|<around*|(|N<rsub|t>|)><rsub|t\<geqslant\>0>>,
  c-�-d <math|\<cal-F\><rsub|t>=\<sigma\><around*|(|N<rsub|s>:s\<in\><around*|[|0,t|]>|)>>.
  Soit <math|\<cal-F\><rsub|t+>=\<cap\><rsub|s\<geqslant\>t>\<cal-F\><rsub|s>>
  et <math|\<cal-F\><rsub|t->=\<sigma\><around*|(|\<cal-F\><rsub|s> :
  s\<less\>t|)>=\<sigma\><around*|(|N<rsub|s>:0\<leqslant\>s\<less\>t|)>>. On
  remarque (sans donner de preuve) que \ <math|\<cal-F\><rsub|t>=\<cal-F\><rsub|t+>>
  et <math|\<cal-F\><rsub|t->\<neq\>\<cal-F\><rsub|t>>. Cela, intuitivement
  veut dire qu'on ne peut pas prevoir les instants de saut de <math|N>.

  <\theorem>
    (Propri�t� de Markov) \ On a que, pout toute fonction
    <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>> mesurable et born�e

    <\equation*>
      \<bbb-E\><around*|[|f<around*|(|N<rsub|t+h>|)><around*|\||\<cal-F\><rsub|t>|\<nobracket\>>|]>=<around*|(|Q<rsub|h>f|)><around*|(|N<rsub|t>|)>
    </equation*>

    avec

    <\equation*>
      Q<rsub|h>f<around*|(|x|)>=\<bbb-E\><around*|[|f<around*|(|x+N<rsub|h>|)>|]>=<big|sum><rsub|k\<geqslant\>0>f<around*|(|x+k|)><frac|<around*|(|\<lambda\>h|)><rsup|k>|k!>e<rsup|-\<lambda\>h>
    </equation*>
  </theorem>

  <\proof>
    Il suffit montrer que

    <\equation*>
      \<bbb-E\><around*|[|f<around*|(|N<rsub|t+h>|)>
      g<around*|(|N<rsub|t<rsub|1>>,\<ldots\>,N<rsub|t<rsub|n>>|)>|]>=\<bbb-E\><around*|[|<around*|(|Q<rsub|h>f|)><around*|(|N<rsub|t>|)>
      g<around*|(|N<rsub|t<rsub|1>>,\<ldots\>,N<rsub|t<rsub|n>>|)>|]>
    </equation*>

    pour tout sequence <math|0\<leqslant\>t<rsub|1>\<leqslant\>
    \<cdots\>\<leqslant\>t<rsub|n>\<leqslant\>t> car
    <math|G<wide|\<in\>|^>\<cal-F\><rsub|t>> et positive est une limite
    croissante de fonctions de cette forme. Mais alors

    <\equation*>
      \<bbb-E\><around*|[|f<around*|(|N<rsub|t+h>|)>
      g<around*|(|N<rsub|t<rsub|1>>,\<ldots\>,N<rsub|t<rsub|n>>|)>|]>=\<bbb-E\><around*|[|\<bbb-E\><around*|[|f<around*|(|N<rsub|t+h>-N<rsub|t>+N<rsub|t>|)><around*|\||N<rsub|t>,N<rsub|t<rsub|1>>,\<ldots\>,N<rsub|t<rsub|n>>|\<nobracket\>>|]>
      g<around*|(|N<rsub|t<rsub|1>>,\<ldots\>,N<rsub|t<rsub|n>>|)>|]>
    </equation*>

    et

    <\equation*>
      \<bbb-E\><around*|[|f<around*|(|N<rsub|t+h>-N<rsub|t>+N<rsub|t>|)><around*|\||N<rsub|t>,N<rsub|t<rsub|1>>,\<ldots\>,N<rsub|t<rsub|n>>|\<nobracket\>>|]>=\<varphi\><around*|(|N<rsub|t>|)>
    </equation*>

    o� <math|\<varphi\><around*|(|x|)>=\<bbb-E\><around*|[|f<around*|(|N<rsub|t+h>-N<rsub|t>+x|)>|]>>
    car la v.a. <math|N<rsub|t+h>-N<rsub|t>> est ind�pendante de
    <math|<around*|(|N<rsub|t<rsub|1>>,\<ldots\>,N<rsub|t<rsub|n>>,N<rsub|t>|)>>.
    Par stationnarit� <math|\<varphi\><around*|(|x|)>=\<bbb-E\><around*|[|f<around*|(|N<rsub|h>+x|)>|]>=Q<rsub|h>f<around*|(|x|)>>.
  </proof>

  <\exercise>
    Montrer que <math|Q<rsub|h>Q<rsub|r>f=Q<rsub|r+h>f> pour tout
    <math|h,r\<geqslant\>0>.
  </exercise>

  <\theorem>
    (Somme de PP) La somme de deux processus de Poisson
    <math|N<rsup|<around*|(|1|)>>,N<rsup|<around*|(|2|)>>> ind�pendants
    d'intensit�s \ respectives <math|\<lambda\><rsub|1>> et
    <math|\<lambda\><rsub|2>> est un processus de Poisson d'intensit�
    <math|\<lambda\><rsub|1>+\<lambda\><rsub|2>>.
  </theorem>

  <\proof>
    Le processus <math|N<rsub|t>=N<rsub|t><rsup|<around*|(|1|)>>+N<rsub|t><rsup|<around*|(|2|)>>>
    est � increments ind�pendants et stationnaires et la loi de
    <math|N<rsub|t>> est <math|\<cal-P\><around*|(|<around*|(|\<lambda\><rsub|1>+\<lambda\><rsub|2>|)>t|)>>
    �tant la somme de deux lois de Poisson de param�tres
    <math|\<lambda\><rsub|1>t> et <math|\<lambda\><rsub|2>t>.
  </proof>

  Soit <math|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>> un <math|n>-uplet
  de v.a. r�elles. On note <math|<around*|(|X<rsub|<around*|(|1|)>>,\<ldots\>,X<rsub|<around*|(|n|)>>|)>>
  les statistiques d'ordre des <math|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>>,
  c-�-d la suite des valeurs de <math|X<rsub|1>,\<ldots\>,X<rsub|n>>
  ordonn�es de fa�on croissante: <math|X<rsub|<around*|(|1|)>>\<leqslant\>X<rsub|<around*|(|2|)>>\<leqslant\>X<rsub|<around*|(|3|)>>\<leqslant\>
  \<cdots\>\<leqslant\>X<rsub|<around*|(|n|)>>> et
  <math|<around*|{|X<rsub|<around*|(|i|)>>|}><rsub|i=1,\<ldots\>,n>=<around*|{|X<rsub|i>|}><rsub|i=1,\<ldots\>,n>>.\ 

  Un vecteur al�atoire <math|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)><rsub|>>
  est <with|font-shape|italic|�changeable> ssi
  <math|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>\<sim\><around*|(|X<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,X<rsub|\<sigma\><around*|(|n|)>>|)>>
  pour tout <math|\<sigma\>\<in\>S<rsub|n>> (permutations de <math|n>
  objects). Un vecteur iid est toujours �changeable. La densit� d'un vecteur
  �changeable est une fonction sym�trique de ses arguments.

  <\theorem>
    Soit <math|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)><rsub|>> un vecteur
    al�atoire �changeable de densit� <math|f<rsub|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
    alors le vecteur des statistiques d'ordre
    <math|<around*|(|X<rsub|<around*|(|1|)>>,\<ldots\>,X<rsub|<around*|(|n|)>>|)>>
    a densit�

    <\equation*>
      f<rsub|<around*|(|X<rsub|<around*|(|1|)>>,\<ldots\>,X<rsub|<around*|(|n|)>>|)>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=n!
      f<rsub|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>
      \<bbb-I\><rsub|x<rsub|1>\<less\>x<rsub|2>\<less\>
      \<cdots\>\<less\>x<rsub|n>> .
    </equation*>
  </theorem>

  <\proof>
    On remarque d'abord que pour tout <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
    tel que <math|x<rsub|i>\<neq\>x<rsub|j>> pour tout
    <math|1\<leqslant\>i\<less\>j\<less\>n> il existe une seule permutation
    <math|\<sigma\>\<in\>S<rsub|n>> telle que
    <math|x<rsub|\<sigma\><around*|(|1|)>>\<less\>x<rsub|\<sigma\><around*|(|2|)>>\<less\>
    \<cdots\>\<less\>x<rsub|\<sigma\><around*|(|n|)>>> et en particulier que

    <\equation*>
      \<bbb-I\><rsub|<around*|{|x<rsub|i>\<neq\>x<rsub|j>,1\<leqslant\>i\<less\>j\<leqslant\>n|}>>=<big|sum><rsub|\<sigma\>\<in\>S<rsub|n>>\<bbb-I\><rsub|x<rsub|\<sigma\><around*|(|1|)>>\<less\>x<rsub|\<sigma\><around*|(|2|)>>\<less\>
      \<cdots\>\<less\>x<rsub|\<sigma\><around*|(|n|)>>> .
    </equation*>

    Maintenant

    <\equation*>
      \<bbb-E\><around*|[|\<varphi\><around*|(|X<rsub|<around*|(|1|)>>,\<ldots\>,X<rsub|<around*|(|n|)>>|)>|]>=<big|int><rsub|\<bbb-R\><rsup|n>>\<varphi\><around*|(|x<rsub|<around*|(|1|)>>,\<ldots\>,x<rsub|<around*|(|n|)>>|)>f<rsub|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<mathd\>x<rsub|1>\<cdots\>\<mathd\>x<rsub|n>
    </equation*>

    <\equation*>
      =<big|int><rsub|\<bbb-R\><rsup|n>>\<varphi\><around*|(|x<rsub|<around*|(|1|)>>,\<ldots\>,x<rsub|<around*|(|n|)>>|)>f<rsub|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<bbb-I\><rsub|<around*|{|x<rsub|i>\<neq\>x<rsub|j>,1\<leqslant\>i\<less\>j\<leqslant\>n|}>>\<mathd\>x<rsub|1>\<cdots\>\<mathd\>x<rsub|n>
    </equation*>

    <\equation*>
      =<big|sum><rsub|\<sigma\>\<in\>S<rsub|n>><big|int><rsub|\<bbb-R\><rsup|n>>\<varphi\><around*|(|x<rsub|<around*|(|1|)>>,\<ldots\>,x<rsub|<around*|(|n|)>>|)>f<rsub|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<bbb-I\><rsub|x<rsub|\<sigma\><around*|(|1|)>>\<less\>x<rsub|\<sigma\><around*|(|2|)>>\<less\>
      \<cdots\>\<less\>x<rsub|\<sigma\><around*|(|n|)>>>\<mathd\>x<rsub|1>\<cdots\>\<mathd\>x<rsub|n>
    </equation*>

    mais sur l'ensemble <math|<around*|{|x<rsub|\<sigma\><around*|(|1|)>>\<less\>
    \<cdots\>\<less\>x<rsub|\<sigma\><around*|(|n|)>>|}>> on a que exactement
    <math|x<rsub|<around*|(|i|)>>=x<rsub|\<sigma\><around*|(|i|)>>> pour tout
    <math|i=1,\<ldots\>,n>:

    <math|>

    <\equation*>
      =<big|sum><rsub|\<sigma\>\<in\>S<rsub|n>><big|int><rsub|\<bbb-R\><rsup|n>>\<varphi\><around*|(|x<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|n|)>>|)>f<rsub|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<bbb-I\><rsub|x<rsub|\<sigma\><around*|(|1|)>>\<less\>x<rsub|\<sigma\><around*|(|2|)>>\<less\>
      \<cdots\>\<less\>x<rsub|\<sigma\><around*|(|n|)>>>\<mathd\>x<rsub|1>\<cdots\>\<mathd\>x<rsub|n>
    </equation*>

    <math|>changement de variables <math|y<rsub|i>=x<rsub|\<sigma\><around*|(|i|)>>>
    <math|<around*|(|x<rsub|i>=y<rsub|\<sigma\><rsup|-1><around*|(|i|)>>|)>>

    <\equation*>
      =<big|sum><rsub|\<sigma\>\<in\>S<rsub|n>><big|int><rsub|\<bbb-R\><rsup|n>>\<varphi\><around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>f<rsub|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>><around*|(|y<rsub|\<sigma\><rsup|-1><around*|(|1|)>>,\<ldots\>,y<rsub|\<sigma\><rsup|-1><around*|(|n|)>>|)>\<bbb-I\><rsub|y<rsub|1>\<less\>y<rsub|2>\<less\>
      \<cdots\>\<less\>y<rsub|n>>\<mathd\>y<rsub|1>\<cdots\>\<mathd\>y<rsub|n>
    </equation*>

    par echangeabilit�

    <\equation*>
      =<big|sum><rsub|\<sigma\>\<in\>S<rsub|n>><big|int><rsub|\<bbb-R\><rsup|n>>\<varphi\><around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>f<rsub|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>><around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>\<bbb-I\><rsub|y<rsub|1>\<less\>y<rsub|2>\<less\>
      \<cdots\>\<less\>y<rsub|n>>\<mathd\>y<rsub|1>\<cdots\>\<mathd\>y<rsub|n>
    </equation*>

    comme rien plus depends de la permutation <math|\<sigma\>> on peut
    calculer la somme et obtenir

    <\equation*>
      =n! <big|int><rsub|\<bbb-R\><rsup|n>>\<varphi\><around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>f<rsub|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>><around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>\<bbb-I\><rsub|y<rsub|1>\<less\>y<rsub|2>\<less\>
      \<cdots\>\<less\>y<rsub|n>>\<mathd\>y<rsub|1>\<cdots\>\<mathd\>y<rsub|n>
    </equation*>

    ce qu'implique que la densit� des statistiques d'ordre est

    <\equation*>
      f<rsub|<around*|(|X<rsub|<around*|(|1|)>>,\<ldots\>,X<rsub|<around*|(|n|)>>|)>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=n!
      f<rsub|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<bbb-I\><rsub|x<rsub|1>\<less\>
      \<cdots\>\<less\>x<rsub|n>>.
    </equation*>

    \;
  </proof>

  <\theorem>
    (Statistiques d'ordre) Conditionnellement � l'evenement
    <math|<around*|{|N<rsub|t>=n|}>> le vecteur al�atoire
    <math|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>> a la m�me loi des
    statistiques d'ordre <math|<around*|(|U<rsub|<around*|(|1|)>>,\<ldots\>,U<rsub|<around*|(|n|)>>|)>>
    d'un <math|n>-uplet <math|<around*|(|U<rsub|1>,\<ldots\>,U<rsub|n>|)>> de
    v.a. iid uniformes sur <math|<around*|[|0,t|]>>.
  </theorem>

  <\proof>
    Calculons la loi de <math|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>>
    conditionnellement � <math|<around*|{|N<rsub|t>=n|}>>: soit
    <math|<around*|(|s<rsub|1>,\<ldots\>,s<rsub|n>|)>\<in\>\<bbb-R\><rsub|+><rsup|n>>
    et <math|h<rsub|1>,\<ldots\>,h<rsub|n>> des quantit�s positives et
    petites: la probabilit�

    <\equation*>
      F<around*|(|s<rsub|1>,\<ldots\>,s<rsub|n>|)>=\<bbb-P\><around*|(|T<rsub|1>\<leqslant\>s<rsub|1>,\<ldots\>,T<rsub|n>\<leqslant\>s<rsub|n><around*|\|||\<nobracket\>>N<rsub|t>=n|)>=<frac|\<bbb-P\><around*|(|T<rsub|1>\<leqslant\>s<rsub|1>,\<ldots\>,T<rsub|n>\<leqslant\>s<rsub|n>,N<rsub|t>=n|)>|\<bbb-P\><around*|(|N<rsub|t>=n|)>>
    </equation*>

    <\equation*>
      =<frac|\<bbb-P\><around*|(|T<rsub|1>\<leqslant\>s<rsub|1>,\<ldots\>,T<rsub|n>\<leqslant\>s<rsub|n>,T<rsub|n>\<leqslant\>t\<less\>T<rsub|n+1>|)>|<around*|(|\<lambda\>
      t|)><rsup|n>/n! e<rsup|-\<lambda\>t>>
    </equation*>

    est donn�e par

    <\equation*>
      F<around*|(|s<rsub|1>,\<ldots\>,s<rsub|n>|)>=<frac|n!
      e<rsup|\<lambda\>t>|<around*|(|\<lambda\>t|)><rsup|n>><big|int><rsub|0><rsup|s<rsub|1>>\<mathd\>t<rsub|1>\<cdots\><big|int><rsub|0><rsup|s<rsub|n>\<wedge\>t>\<mathd\>t<rsub|n><big|int><rsub|t><rsup|+\<infty\>>\<mathd\>t<rsub|n+1>f<rsub|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n+1>|)>><around*|(|t<rsub|1>,\<ldots\>,t<rsub|n+1>|)>
    </equation*>

    <\equation*>
      =<frac|n! e<rsup|\<lambda\>t>|<around*|(|\<lambda\>t|)><rsup|n>><big|int><rsub|0><rsup|s<rsub|1>>\<mathd\>t<rsub|1>\<cdots\><big|int><rsub|0><rsup|s<rsub|n>\<wedge\>t>\<mathd\>t<rsub|n><big|int><rsub|t><rsup|+\<infty\>>\<mathd\>t<rsub|n+1>\<lambda\><rsup|n+1>e<rsup|-\<lambda\>t<rsub|n+1>>\<bbb-I\><rsub|t<rsub|1>\<less\>t<rsub|2>\<less\>
      \<cdots\>\<less\>t<rsub|n>\<less\>t<rsub|n+1>>
    </equation*>

    <\equation*>
      =<frac|1|t<rsup|n>><big|int><rsub|0><rsup|s<rsub|1>>\<mathd\>t<rsub|1>\<cdots\><big|int><rsub|0><rsup|s<rsub|n>\<wedge\>t>\<mathd\>t<rsub|n>\<bbb-I\><rsub|t<rsub|1>\<less\>t<rsub|2>\<less\>
      \<cdots\>\<less\>t<rsub|n>>
    </equation*>

    On obtiens la densit� conditionnelle <math|f<rsub|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)><around*|\||N<rsub|t>=n|\<nobracket\>>><around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>>
    de <math|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>> en prenant les
    d�riv�es par rapport � <math|s<rsub|1>,\<ldots\>,s<rsub|n>> de
    l'expression precedente:

    <\equation*>
      f<rsub|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)><around*|\||N<rsub|t>=n|\<nobracket\>>><around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>=<frac|\<partial\><rsup|n>|\<partial\>t<rsub|1>\<cdots\>\<partial\>t<rsub|n>>F<around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>=<frac|n!|t<rsup|n>>\<bbb-I\><rsub|0\<less\>t<rsub|1>\<less\>
      \<cdots\>\<less\>t<rsub|n>\<less\>t>
    </equation*>

    qui est pr�cis�ment la densit� des statistiques d'ordre d'un
    <math|n>-plet des v.a. uniformes sur <math|<around*|[|0,t|]>>:

    <\equation*>
      f<rsub|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)><around*|\||N<rsub|t>=n|\<nobracket\>>><around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>=n!\<bbb-I\><rsub|0\<less\>t<rsub|1>\<less\>
      \<cdots\>\<less\>t<rsub|n>\<less\>t>
      f<rsub|<around*|(|U<rsub|1>,\<ldots\>,U<rsub|n>|)>><around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>
    </equation*>

    avec <math|f<rsub|<around*|(|U<rsub|1>,\<ldots\>,U<rsub|n>|)>><around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>=<big|prod><rsub|i=1><rsup|n>f<rsub|\<cal-U\><around*|(|<around*|[|0,t|]>|)>><around*|(|t<rsub|i>|)>>.
  </proof>

  En particulier on a que

  <\equation*>
    \<bbb-E\><around*|[|\<varphi\><around*|(|T<rsub|<around*|(|1|)>>,\<ldots\>,T<rsub|<around*|(|n|)>>|)><around*|\||N<rsub|t>=n|\<nobracket\>>|]>=\<bbb-E\><around*|[|\<varphi\><around*|(|U<rsub|<around*|(|1|)>>,\<ldots\>,U<rsub|<around*|(|n|)>>|)>|]>
  </equation*>

  avec <math|U<rsub|i>\<sim\>\<cal-U\><around*|(|<around*|[|0,t|]>|)>> et
  iid.

  <\example>
    Les employ�s d'un entreprise arrivent au travail selon un processus de
    Poisson d'intensit� <math|\<lambda\>\<gtr\>0>. Pour tout
    <math|n\<geqslant\>1> soit <math|T<rsub|n>> le temps d'arriv�e du
    <math|n>-�me employ�. Le temps total de travail effectu�e par les
    employ�s jusqu'� l'instant <math|t> est donn� par

    <\equation*>
      T<rsub|t>=<big|sum><rsub|k\<geqslant\>1><around*|(|t-T<rsub|k>|)><rsub|+>
      .
    </equation*>

    On s'interesse � la moyenne de cette variable al�atoire:

    <\equation*>
      \<bbb-E\><around*|[|T<rsub|t>|]>=\<bbb-E\><around*|[|<big|sum><rsub|k\<geqslant\>1><around*|(|t-T<rsub|k>|)><rsub|+>|]>=\<bbb-E\><around*|[|\<bbb-E\><around*|[|<big|sum><rsub|k\<geqslant\>1><around*|(|t-T<rsub|k>|)><rsub|+><mid|\|>N<rsub|t>|]>|]>.
    </equation*>

    Or

    <\equation*>
      \<bbb-E\><around*|[|<big|sum><rsub|k\<geqslant\>1><around*|(|t-T<rsub|k>|)><rsub|+><mid|\|>N<rsub|t>=n|]>=\<bbb-E\><around*|[|<big|sum><rsub|k=1><rsup|n><around*|(|t-T<rsub|k>|)><rsub|+><mid|\|>N<rsub|t>=n|]>=\<bbb-E\><around*|[|<big|sum><rsub|k=1><rsup|n><around*|(|t-T<rsub|<around*|(|k|)>>|)><rsub|+><mid|\|>N<rsub|t>=n|]>
    </equation*>

    <\equation*>
      =\<bbb-E\><around*|[|<big|sum><rsub|k=1><rsup|n><around*|(|t-U<rsub|<around*|(|k|)>>|)><rsub|+>|]>=\<bbb-E\><around*|[|<big|sum><rsub|k=1><rsup|n><around*|(|t-U<rsub|k>|)><rsub|+>|]>=<big|sum><rsub|k=1><rsup|n
      >\<bbb-E\><around*|[|<around*|(|t-U<rsub|k>|)><rsub|+>|]>=n\<bbb-E\><around*|[|<around*|(|t-U<rsub|1>|)><rsub|+>|]>
    </equation*>

    et

    <\equation*>
      \<bbb-E\><around*|[|<around*|(|t-U<rsub|1>|)><rsub|+>|]>=<big|int><rsub|0><rsup|t><around*|(|t-x|)><frac|\<mathd\>x|t>=<big|int><rsub|0><rsup|t>x<frac|\<mathd\>x|t>=<frac|t|2>.
    </equation*>

    Finalement on obtient <math|\<bbb-E\><around*|[|T<rsub|t>|]>=t/2
    \<bbb-E\><around*|[|N<rsub|t>|]>=\<lambda\> t<rsup|2>/2>.\ 
  </example>

  <section|M�lange de Processus de Poisson (Processus de Cox)>

  Du point de vue des applications (� l'actuariat, notamment), la
  modelisation des temps d'arriv�e par un processus de Poisson peut se
  reveler simpliste. Par, exemple si on s'interesse aux temps d'arriv�e
  d'accidents de voiture, la frequence moyenne d'accidents peut differer
  fortement d'une persone � l'autre, dependant de l'age d'experience, de la
  fa�on de conduire, du type de voiture. On essaye de prendre en compte cette
  variabilit� en introduisant une intensit� al�atoire dans le modele de
  Poisson, c-�-d on fait dependre l'intensit� <math|\<lambda\>> elle m�me de
  l'experience al�atoire <math|\<omega\>\<in\>\<Omega\>>. Il est aussi un cas
  particulier d'une classe de procesus appel�s processus de Cox [Cox, D. R.
  (1955). "Some Statistical Methods Connected with Series of Events". Journal
  of the Royal Statistical Society 17 (2): 129-164.]

  <\definition>
    Soit <math|N\<sim\>PP<around*|(|\<lambda\>|)>> et <math|\<Theta\>> une
    v.a. strictement positive independante de <math|N>. Le processus
    <math|<wide|N|~><rsub|t>=N<rsub|\<Theta\>*t>> \ est appel� un m�lange de
    <math|PP<around*|(|\<lambda\>|)>> de loi m�langeante <math|\<Theta\>>.\ 
  </definition>

  Un point de vue intuitif est que <math|<wide|N|~>> est un procesus de
  Poisson d'intensit� al�atoire donn�e par
  <math|\<lambda\>\<Theta\>\<gtr\>0>.

  Quelques proprietes de <math|<wide|N|~>>:

  <\enumerate-numeric>
    <item>Moyenne

    <\equation*>
      \<bbb-E\><around*|[|<wide|N|~><rsub|t><around*|\||\<Theta\>|\<nobracket\>>|]>=\<bbb-E\><around*|[|N<rsub|\<Theta\>t><around*|\||\<Theta\>|\<nobracket\>>|]>=\<lambda\>*\<Theta\>*t,<space|2em>\<bbb-E\><around*|[|<wide|N<rsub|>|~><rsub|t>|]>=\<bbb-E\><around*|[|\<bbb-E\><around*|[|N<rsub|\<Theta\>t><around*|\||\<Theta\>|\<nobracket\>>|]>|]>=\<lambda\>*t*\<bbb-E\><around*|[|\<Theta\>|]>
    </equation*>

    <item>Variance

    <\equation*>
      Var<around*|(|<wide|N|~><rsub|t><around*|\||\<Theta\>|\<nobracket\>>|)>=\<lambda\>*\<Theta\>*t
    </equation*>

    <\equation*>
      Var<around*|(|<wide|N|~><rsub|t>|)>=Var<around*|(|\<bbb-E\><around*|[|<wide|N|~><rsub|t><around*|\||\<Theta\>|\<nobracket\>>|]>|)>+\<bbb-E\><around*|[|Var<around*|(|<wide|N|~><rsub|t><around*|\||\<Theta\>|\<nobracket\>>|)>|]>=\<lambda\><rsup|2>*t<rsup|2>*Var<around*|(|\<Theta\>|)>+\<lambda\>*t*\<bbb-E\><around*|[|\<Theta\>|]>
    </equation*>

    <item>Les increments ne sont pas independants:

    <\equation*>
      Cov<around*|(|<wide|N|~><rsub|t>-<wide|N|~><rsub|s>,<wide|N|~><rsub|s>|)>\<neq\>0
    </equation*>

    (exercice)

    <item>Les increments sont stationnaires

    <\equation*>
      \<bbb-E\><around*|[|f<around*|(|<wide|N|~><rsub|t>-<wide|N|~><rsub|s>|)>|]>=\<bbb-E\><around*|[|\<bbb-E\><around*|[|f<around*|(|N<rsub|\<Theta\>*t>-N<rsub|\<Theta\>*s>|)><around*|\||\<Theta\>|\<nobracket\>>|]>|]>=\<bbb-E\><around*|[|\<bbb-E\><around*|[|f<around*|(|N<rsub|\<Theta\>*t-\<Theta\>s>|)><around*|\||\<Theta\>|\<nobracket\>>|]>|]>=\<bbb-E\><around*|[|f<around*|(|<wide|N|~><rsub|t-s>|)>|]>
      .
    </equation*>
  </enumerate-numeric>

  Deux autres propriet�s importantes sont li�es aux statistique d'ordre des
  temps de saut et � la preservation du caractere Markovien du processus.\ 

  <\theorem>
    Conditionnelement � <math|<around*|{|<wide|N|~><rsub|t>=n|}>> la loi des
    temps de saut <math|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>> est
    independante de <math|\<Theta\>> et donn�e par les statistiques d'ordre
    d'un <math|n>-uplet de v.a. uniformes sur <math|<around*|[|0,t|]>>.
  </theorem>

  <\proof>
    Conditionellement � <math|\<Theta\>> le processus est de Poisson
    d'intensit� <math|\<lambda\>\<Theta\>> donc par les resultats sur la loi
    des temps de saut d'un processus de Poisson on obtient que

    <\equation*>
      \<bbb-E\><around*|[|f<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>\<bbb-I\><rsub|T<rsub|n>\<leqslant\>t\<less\>T<rsub|n+1>><around*|\||\<Theta\>|\<nobracket\>>|]>=
    </equation*>

    <\equation*>
      =<around*|(|\<lambda\>\<Theta\>|)><rsup|n+1><big|int><rsub|0\<less\>t<rsub|1>\<less\>
      \<cdots\>\<less\>t<rsub|n+1>>e<rsup|-\<lambda\>\<Theta\>t<rsub|n+1>>f<around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>\<bbb-I\><rsub|t<rsub|n>\<leqslant\>t\<less\>t<rsub|n+1>>\<mathd\>t<rsub|1>\<cdots\>\<mathd\>t<rsub|n+1>
    </equation*>

    <\equation*>
      =<around*|(|\<lambda\>\<Theta\>|)><rsup|n>e<rsup|-\<lambda\>\<Theta\>t<rsub|>><big|int><rsub|0\<less\>t<rsub|1>\<less\>
      \<cdots\>\<less\>t<rsub|n>\<leqslant\>t>f<around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>\<mathd\>t<rsub|1>\<cdots\>\<mathd\>t<rsub|n+1>
    </equation*>

    Donc

    <\equation*>
      \<bbb-E\><around*|[|f<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>
      g<around*|(|\<Theta\>|)><around*|\||<wide|N|~><rsub|t>=n|\<nobracket\>>|]>=<frac|\<bbb-E\><around*|[|f<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>g<around*|(|\<Theta\>|)>\<bbb-I\><rsub|<wide|N|~><rsub|t>=n>|]>|\<bbb-P\><around*|(|<wide|N|~><rsub|t>=n|)>>
    </equation*>

    <\equation*>
      =<frac|\<bbb-E\><around*|[|f<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>g<around*|(|\<Theta\>|)>\<bbb-I\><rsub|T<rsub|n>\<leqslant\>t\<less\>T<rsub|n+1>>|]>|\<bbb-E\><around*|[|\<bbb-I\><rsub|T<rsub|n>\<leqslant\>t\<less\>T<rsub|n+1>>|]>>
    </equation*>

    \;

    <\equation*>
      =<frac|\<bbb-E\><around*|[|\<bbb-E\><around*|[|f<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>\<bbb-I\><rsub|T<rsub|n>\<leqslant\>t\<less\>T<rsub|n+1>>\|\<Theta\>|]>g<around*|(|\<Theta\>|)>|]>|\<bbb-E\><around*|[|\<bbb-I\><rsub|T<rsub|n>\<leqslant\>t\<less\>T<rsub|n+1>>|]>>
    </equation*>

    <\equation*>
      =<frac|\<bbb-E\><around*|[|<around*|(|\<lambda\>\<Theta\>|)><rsup|n>e<rsup|-\<lambda\>\<Theta\>t<rsub|>>g<around*|(|\<Theta\>|)>|]>|\<bbb-E\><around*|[|<around*|(|\<lambda\>\<Theta\>|)><rsup|n>e<rsup|-\<lambda\>\<Theta\>t<rsub|>>|]>><frac|n!|t<rsup|n>><big|int><rsub|0\<less\>t<rsub|1>\<less\>
      \<cdots\>\<less\>t<rsub|n>\<leqslant\>t>f<around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>\<mathd\>t<rsub|1>\<cdots\>\<mathd\>t<rsub|n+1>
    </equation*>

    <\equation*>
      =<frac|\<bbb-E\><around*|[|<around*|(|\<lambda\>\<Theta\>|)><rsup|n>e<rsup|-\<lambda\>\<Theta\>t<rsub|>>g<around*|(|\<Theta\>|)>|]>|\<bbb-E\><around*|[|<around*|(|\<lambda\>\<Theta\>|)><rsup|n>e<rsup|-\<lambda\>\<Theta\>t<rsub|>>|]>><frac|n!|t<rsup|n>><big|int><rsub|0\<less\>t<rsub|1>\<less\>
      \<cdots\>\<less\>t<rsub|n>\<leqslant\>t>f<around*|(|t<rsub|1>,\<ldots\>,t<rsub|n>|)>\<mathd\>t<rsub|1>\<cdots\>\<mathd\>t<rsub|n+1>
    </equation*>

    <\equation*>
      ==<frac|\<bbb-E\><around*|[|<around*|(|\<lambda\>\<Theta\>|)><rsup|n>e<rsup|-\<lambda\>\<Theta\>t<rsub|>>g<around*|(|\<Theta\>|)>|]>|\<bbb-E\><around*|[|<around*|(|\<lambda\>\<Theta\>|)><rsup|n>e<rsup|-\<lambda\>\<Theta\>t<rsub|>>|]>>\<bbb-E\><around*|[|f<around*|(|U<rsub|<around*|(|1|)>>,\<ldots\>,U<rsub|<around*|(|n|)>>|)>|]>
    </equation*>

    Si on pose <math|f=1> on a aussi que

    <\equation*>
      \<bbb-E\><around*|[| g<around*|(|\<Theta\>|)><around*|\||<wide|N|~><rsub|t>=n|\<nobracket\>>|]>=<frac|\<bbb-E\><around*|[|<around*|(|\<lambda\>\<Theta\>|)><rsup|n>e<rsup|-\<lambda\>\<Theta\>t<rsub|>>g<around*|(|\<Theta\>|)>|]>|\<bbb-E\><around*|[|<around*|(|\<lambda\>\<Theta\>|)><rsup|n>e<rsup|-\<lambda\>\<Theta\>t<rsub|>>|]>>
    </equation*>

    et donc

    <\equation*>
      \<bbb-E\><around*|[|f<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>
      g<around*|(|\<Theta\>|)><around*|\||<wide|N|~><rsub|t>=n|\<nobracket\>>|]>=\<bbb-E\><around*|[|
      g<around*|(|\<Theta\>|)><around*|\||<wide|N|~><rsub|t>=n|\<nobracket\>>|]>\<bbb-E\><around*|[|f<around*|(|U<rsub|<around*|(|1|)>>,\<ldots\>,U<rsub|<around*|(|n|)>>|)>|]>
    </equation*>

    ce qui montre l'independance conditionelle de <math|\<Theta\>> et
    <math|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>> sachant
    <math|<around*|{|<wide|N|~><rsub|t>=n|}>> et qui donne que
    conditionellement � cet evenement la loi de
    <math|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|n>|)>> est celle de
    <math|<around*|(|U<rsub|<around*|(|1|)>>,\<ldots\>,U<rsub|<around*|(|n|)>>|)>>
    avec <math|<around*|(|U<rsub|1>,\<ldots\>,U<rsub|n>|)>> un <math|n>-uple
    iid uniforme sur <math|<around*|[|0,t|]>>.
  </proof>

  <\corollary>
    Soit <math|0\<leqslant\>t<rsub|1>\<leqslant\>
    \<cdots\>\<leqslant\>t<rsub|n>> des temps alors la loi de
    <math|<around*|(|<wide|N|~><rsub|t<rsub|1>>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>|)>>
    conditionellement � <math|<wide|N|~><rsub|t<rsub|n>>=m> ne depends pas de
    la \ loi de <math|\<Theta\>> ou de <math|\<lambda\>> et elle est egale �
    la m�me loi pour n'importe quel autre processus de Poisson d'intensit�
    arbitraire <math|\<mu\>\<gtr\>0>.
  </corollary>

  <\proof>
    Calculons <math|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>>:
    par le resultat precedent la loi de <math|<around*|(|T<rsub|1>,\<ldots\>,T<rsub|k<rsub|n>>|)>>
    conditionellement � <math|<around*|{|<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|}>>
    � la m�me loi des premiers <math|k<rsub|n>> temps de saut d'un processus
    de Poisson d'intensit� <math|\<mu\>\<gtr\>0> (en effet la loi ne depends
    pas de l'intensit�), donc:

    <\equation*>
      \<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>\|<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>=\<bbb-P\><around*|(|T<rsub|k<rsub|1>>\<leqslant\>t<rsub|1>\<less\>T<rsub|k<rsub|1>+1>,\<ldots\>,T<rsub|k<rsub|n-1>>\<leqslant\>t<rsub|n-1>\<less\>T<rsub|k<rsub|n-1>+1>\|<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>
    </equation*>

    <\equation*>
      =\<bbb-P\><around*|(|N<rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,N<rsub|t<rsub|n>>=k<rsub|n>\|N<rsub|t<rsub|n>>=k<rsub|n>|)>
    </equation*>

    \;
  </proof>

  Cette derniere propriet� est la cl� pour demontrer la propriet� de Markov
  de <math|<around*|(|<wide|N|~><rsub|t>|)><rsub|t\<geqslant\>0>>.

  <\theorem>
    <math|<around*|(|<wide|N|~><rsub|t>|)><rsub|t\<geqslant\>0>> est un
    processus de Markov par rapport � sa filtration naturelle.\ 
  </theorem>

  <\proof>
    Donc

    <\equation*>
      \<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n+1>>=k<rsub|n+1>\|<wide|N|~><rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>=<frac|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n+1>>=k<rsub|n+1>,<wide|N|~><rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>>
    </equation*>

    <\equation*>
      =<frac|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>\|<wide|N|~><rsub|t<rsub|n+1>>=k<rsub|n+1>|)>|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,<wide|N|~><rsub|t<rsub|n-1>>=k<rsub|n-1>\|<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>>*<frac|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n+1>>=k<rsub|n+1>|)>|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>>
    </equation*>

    <\equation*>
      =<frac|\<bbb-P\><around*|(|N<rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,N<rsub|t<rsub|n>>=k<rsub|n>\|N<rsub|t<rsub|n+1>>=k<rsub|n+1>|)>|\<bbb-P\><around*|(|N<rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,N<rsub|t<rsub|n-1>>=k<rsub|n-1>\|N<rsub|t<rsub|n>>=k<rsub|n>|)>>*<frac|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n+1>>=k<rsub|n+1>|)>|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>>
    </equation*>

    <\equation*>
      =<frac|\<bbb-P\><around*|(|N<rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,N<rsub|t<rsub|n>>=k<rsub|n>,N<rsub|t<rsub|n+1>>=k<rsub|n+1>|)>|\<bbb-P\><around*|(|N<rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,N<rsub|t<rsub|n-1>>=k<rsub|n-1>,N<rsub|t<rsub|n>>=k<rsub|n>|)>>*<frac|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n+1>>=k<rsub|n+1>|)>|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>><frac|\<bbb-P\><around*|(|N<rsub|t<rsub|n>>=k<rsub|n>|)>|\<bbb-P\><around*|(|N<rsub|t<rsub|n+1>>=k<rsub|n+1>|)>>
    </equation*>

    <\equation*>
      =\<bbb-P\><around*|(|N<rsub|t<rsub|n+1>>=k<rsub|n+1>\|N<rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,N<rsub|t<rsub|n>>=k<rsub|n>|)><frac|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n+1>>=k<rsub|n+1>|)>|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>><frac|\<bbb-P\><around*|(|N<rsub|t<rsub|n>>=k<rsub|n>|)>|\<bbb-P\><around*|(|N<rsub|t<rsub|n+1>>=k<rsub|n+1>|)>>
    </equation*>

    <\equation*>
      \<bbb-P\><around*|(|N<rsub|t<rsub|n+1>>=k<rsub|n+1>\|N<rsub|t<rsub|n>>=k<rsub|n>|)><frac|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n+1>>=k<rsub|n+1>|)>|\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>><frac|\<bbb-P\><around*|(|N<rsub|t<rsub|n>>=k<rsub|n>|)>|\<bbb-P\><around*|(|N<rsub|t<rsub|n+1>>=k<rsub|n+1>|)>>
    </equation*>

    qui montre que <math|<around*|(|k<rsub|1>,\<ldots\>,k<rsub|n+1>|)>\<mapsto\>\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n+1>>=k<rsub|n+1>\|<wide|N|~><rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>>
    est une fonction des seules variables <math|k<rsub|n>,k<rsub|n+1>> ce qui
    implique facilement que\ 

    <\equation*>
      \<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n+1>>=k<rsub|n+1>\|<wide|N|~><rsub|t<rsub|1>>=k<rsub|1>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>=\<bbb-P\><around*|(|<wide|N|~><rsub|t<rsub|n+1>>=k<rsub|n+1>\|<wide|N|~><rsub|t<rsub|n>>=k<rsub|n>|)>
    </equation*>

    cela implique que pour tout <math|t<rsub|1>\<less\>
    \<cdots\>\<less\>t<rsub|n>=s\<less\>t> on a que

    <\equation*>
      \<bbb-E\><around*|[|f<around*|(|<wide|N|~><rsub|t>|)>g<around*|(|<wide|N|~><rsub|t<rsub|1>>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>|)>|]>=\<bbb-E\><around*|[|\<bbb-E\><around*|[|f<around*|(|<wide|N|~><rsub|t>|)>\|<wide|N|~><rsub|t<rsub|1>>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>|]>g<around*|(|<wide|N|~><rsub|t<rsub|1>>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>|)>|]>
    </equation*>

    <\equation*>
      =\<bbb-E\><around*|[|\<bbb-E\><around*|[|f<around*|(|<wide|N|~><rsub|t>|)>\|<wide|N|~><rsub|t<rsub|n>>|]>g<around*|(|<wide|N|~><rsub|t<rsub|1>>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>|)>|]>=\<bbb-E\><around*|[|\<bbb-E\><around*|[|f<around*|(|<wide|N|~><rsub|t>|)>\|<wide|N|~><rsub|s>|]>g<around*|(|<wide|N|~><rsub|t<rsub|1>>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>|)>|]>
    </equation*>

    mais comme toute fonction positive born�e et mesurable par rapport �
    <math|\<cal-F\><rsub|s>> peut s'approcher de \ fa�on monotone par des
    fonction de la forme <math|g<around*|(|<wide|N|~><rsub|t<rsub|1>>,\<ldots\>,<wide|N|~><rsub|t<rsub|n>>|)>>
    on obtiens que

    <\equation*>
      \<bbb-E\><around*|[|f<around*|(|<wide|N|~><rsub|t>|)>
      G|]>=\<bbb-E\><around*|[|\<bbb-E\><around*|[|f<around*|(|<wide|N|~><rsub|t>|)>\|<wide|N|~><rsub|s>|]>G|]>
    </equation*>

    pour tout <math|G> born�e et <math|\<cal-F\><rsub|s>>-mesurable et donc
    que <math|\<bbb-E\><around*|[|f<around*|(|<wide|N|~><rsub|t>|)>\|\<cal-F\><rsub|s>|]>=><math|\<bbb-E\><around*|[|f<around*|(|<wide|N|~><rsub|t>|)>\|<wide|N|~><rsub|s>|]>>,
    c-�-d la propriet� de Markov en temps continu.
  </proof>

  \ 

  <\example>
    Un assureur pense que chacun de ses assur�e va demander des
    remboursements selons un processus de Poisson d'intensit�
    <math|\<lambda\>\<in\><around*|[|0,1|]>> (mesur� en
    remboursements/ann�e). Il pense aussi que chaque assur�e soit caracteris�
    par une propre intensit� <math|\<lambda\>> et que chaque nouveau assur�
    puisse �tre associ� � une intensit� uniformement distribu�e sur
    <math|<around*|[|0,1|]>>. Si l'assur� � demande <math|n> remboursements
    dans ses premieres <math|t> ann�es quel est la loi conditionelle du temps
    restant jusqu'� la prochaine demande de remboursement de la part de cet
    assur�?

    <with|font-series|bold|Solution.> Le processus des remboursement est
    modelis� par un m�lange de processus de Poisson d'intensit� <math|1> et
    loi melangeant� <math|\<Theta\>\<sim\>\<cal-U\><around*|(|<around*|[|0,1|]>|)>>.
    Conditionellement � <math|<wide|N|~><rsub|t>=n> le prochain evenement a
    lieu � l'instant <math|T<rsub|n+1>>, donc la probabilit� cherch�e est

    <\equation*>
      \<bbb-P\><around*|(|T<rsub|n+1>\<gtr\>x\|<wide|N|~><rsub|t>=n|)>=<frac|\<bbb-E\><around*|[|\<bbb-I\><rsub|T<rsub|n+1>\<gtr\>x>*\<bbb-I\><rsub|<wide|N|~><rsub|t>=n><rsub|>|]>|\<bbb-E\><around*|[|*\<bbb-I\><rsub|<wide|N|~><rsub|t>=n><rsub|>|]>>=<frac|\<bbb-E\><around*|[|\<bbb-E\><around*|[|\<bbb-I\><rsub|T<rsub|n+1>\<gtr\>x>*\<bbb-I\><rsub|<wide|N|~><rsub|t>=n>\|\<Theta\>|]><rsub|>|]>|\<bbb-E\><around*|[|\<bbb-E\>*<around*|[|\<bbb-I\><rsub|<wide|N|~><rsub|t>=n><rsub|>\|\<Theta\>|]>|]>>
    </equation*>

    <\equation*>
      =<frac|\<bbb-E\><around*|[|\<bbb-E\><around*|[|\<bbb-I\><rsub|T<rsub|n+1>\<gtr\>x>*\<bbb-I\><rsub|<wide|N|~><rsub|t>=n>\|\<Theta\>|]><rsub|>|]>|\<bbb-E\><around*|[|\<bbb-E\>*<around*|[|\<bbb-I\><rsub|<wide|N|~><rsub|t>=n><rsub|>\|\<Theta\>|]>|]>>
    </equation*>

    maintenant

    <\equation*>
      \<bbb-P\><around*|(|T<rsub|n+1>\<gtr\>x,N<rsub|\<theta\>t>=n|)>=\<bbb-P\><around*|(|T<rsub|n+1>\<gtr\>x\|N<rsub|\<theta\>t>=n|)>\<bbb-P\><around*|(|N<rsub|\<theta\>t>=n|)>=<big|int><rsub|x><rsup|+\<infty\>>\<theta\>e<rsup|-\<theta\>
      y>\<mathd\>y*<frac|<around*|(|\<theta\>t|)><rsup|n>|n!>e<rsup|-\<theta\>t>
    </equation*>

    <\equation*>
      =e<rsup|-\<theta\><around*|(|x+t|)>><frac|<around*|(|\<theta\>t|)><rsup|n>|n!>e<rsup|-\<theta\>t>
    </equation*>

    \;

    et donc

    <\equation*>
      \<bbb-P\><around*|(|T<rsub|n+1>\<gtr\>x\|<wide|N|~><rsub|t>=n|)>=<frac|\<bbb-E\><around*|[|e<rsup|-\<Theta\>
      <around*|(|x+t|)>><frac|<around*|(|\<Theta\>t|)><rsup|n>|n!>|]>|\<bbb-E\><around*|[|*<frac|<around*|(|\<Theta\>t|)><rsup|n>|n!>e<rsup|-\<Theta\>t>|]>>=<frac|\<bbb-E\><around*|[|e<rsup|-\<Theta\>
      <around*|(|x+t|)>>*<around*|(|\<Theta\>t|)><rsup|n>|]>|\<bbb-E\><around*|[|e<rsup|-\<Theta\>
      t>*<around*|(|\<Theta\>t|)><rsup|n>|]>>=<frac|<big|int><rsub|0><rsup|1>e<rsup|-\<theta\><around*|(|x+t|)>>\<theta\><rsup|n>\<mathd\>\<theta\>|<big|int><rsub|0><rsup|1>e<rsup|-\<theta\>t>\<theta\><rsup|n>\<mathd\>\<theta\>>.
    </equation*>

    \ 
  </example>

  \;

  \ \ \ 

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|11>
    <associate|language|french>
    <associate|page-medium|papyrus>
    <associate|sfactor|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|2|1>>
    <associate|auto-4|<tuple|3|4>>
    <associate|auto-5|<tuple|4|7>>
    <associate|auto-6|<tuple|4|?>>
    <associate|eq:n-from-t|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Le
      processus de Poisson> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Processus
      de renouvellement et de comptage> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Le
      processus de Poisson> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Propri�t�s
      du processus de Poisson> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>M�lange
      de Processus de Poisson (Processus de Cox)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>