<TeXmacs|2.1.1>

<style|<tuple|notes|notes-meta>>

<\body>
  <\hide-preamble>
    \;
  </hide-preamble>

  <notes-header>

  <chapter*|Enseignements 2011/2012>

  <notes-abstract|Lectures delivered at Paris Dauphine, academic year
  2010\U2011.>

  <with|font-series|bold|Ann�e 2011/2012>

  <\itemize>
    <item><notes-link|El�ments de math�matiques des d�cisions collectives (M2
    EDPMAD,TSI,MASEF)|#mdc>

    <item><notes-link|Processus discrets (M1 MMD)|#pd>

    <item><notes-link|Contr�le des cha�nes de Markov (M1 MMD)|#ccm>

    <item><notes-link|Processus de Poisson et m�thodes actuariels (M1
    MMD)|#pp>
  </itemize>

  <label|mdc><subsubsection*|El�ments de math�matiques des d�cisions
  collectives (M2 EDPMAD,TSI,MASEF)>

  <with|font-series|bold|Descriptive du cours>

  Une fonction bool�enne est une fonction <math|f:{-1,1}<rsup|n>
  \<rightarrow\> {-1,1}>. Les fonction bool�ennes apparaissent souvent dans
  des situations vari�es: en math�matiques (th�orie des graphes,
  percolation), en informatique th�orique (algorithmes de classification,
  th�orie de la complexit� algorithmique, optimisation combinatoire),
  sciences sociales et �conomie (choix sociale, syst�mes de vote). Ce cours
  est une introduction � l'analyse de ce type de fonctions et aux r�sultats
  (parfois �tonnants) qui en r�sultent. On donnera des applications � la
  th�orie du choix sociale: quelles sont les propri�t�s des syst�mes de vote,
  le paradoxe de Condorcet, le th�or�me de Arrow, le th�or�me de
  Kahn\UKalai\ULinial, la sensibilit� au bruit et les ph�nom�nes de
  \Pchaos\Q.

  <with|font-series|bold|Mots clefs:> paradoxe de Condorcet, th�or�me de
  Arrow, agr�gation de l'information. analyse de Fourier des fonctions
  bool�ennes, sensibilit� aux bruit, ph�nom�nes de seuil, influence,
  hypercontractivit�, criticalit� auto-organis�e.

  <with|font-series|bold|Bibliographie et liens (en anglais)>

  <\itemize>
    <item>Le cours de l'ann�e derni�re \PAnalyse des fonctions bool�ennes\Q
    (<notes-link|link|../e1011/#abf>)

    <item>Paradoxe de Condorcet (<hlink|wp|http://fr.wikipedia.org/wiki/Paradoxe_de_Condorcet>),
    Th�or�me de Arrow (<hlink|wp|http://fr.wikipedia.org/wiki/Théorème_d%27impossibilité_d%27Arrow>),
    Th�orie du choix sociale (<hlink|wp|http://en.wikipedia.org/wiki/Social_choice_theory>)

    <item>Le cours of O'Donnell sur l'analyse des fonctions bool�ennes
    (<hlink|link|http://www.cs.cmu.edu/~odonnell/boolean-analysis/>)

    <item>Le cours de Kalai sur la th�orie du choix sociale
    (<hlink|link|http://www.ma.huji.ac.il/~kalai/course07.html>)

    <item>Le cours de E. Friedgut sur les m�thodes analytiques en
    combinatoire et informatique (<hlink|link|http://www.cs.huji.ac.il/~analyt/>)

    <item>Le cours de N. Linian sur l'analyse harmonique et ses applications
    combinatoires (<hlink|link|http://www.cs.huji.ac.il/~nati/PAPERS/uw/>)

    <item>Page web de Gil Kalai (<hlink|link|http://www.ma.huji.ac.il/~kalai>)

    <item>G. Kalai and S. Safra. Threshold Phenomena and Influence, in:
    Computational Complexity and Statistical Physics, A.G. Percus, G. Istrate
    and C. Moore, eds. (Oxford University Press, New York, 2006), pp. 25-60.
    (<notes-store|PDF|e1112/http://www.ma.huji.ac.il/~kalai/ML.pdf>)

    <item>G. Kalai, A Fourier-Theoretic Perspective for the Condorcet Paradox
    and Arrow's theorem, Adv. in Appl. Math. 29(2002), 412-426.
    (<notes-store|PDF|e1112/http://www.ma.huji.ac.il/~kalai/arr.pdf>)

    <item>G. Kalai, Social Indeterminacy, Econometrica, 72 (2004), 1565-1581.
    (<notes-store|PDF|e1112/http://www.ma.huji.ac.il/~kalai/SI.pdf>)

    <item>G. Kalai, Noise sensitivity and chaos in social choice theory.
    Discussion Paper Series dp399, Center for Rationality and Interactive
    Decision Theory, Hebrew University, Jerusalem.
    (<notes-store|PDF|e1112/http://www.ma.huji.ac.il/~kalai/CHAOS.pdf>)

    <item>O'Donnell, R. 2008. Some topics in analysis of boolean functions.
    In Proceedings of the 40th Annual ACM Symposium on theory of Computing
    (Victoria, British Columbia, Canada, May 17 - 20, 2008). STOC '08. ACM,
    New York, NY, 569-578. (<hlink|doi|http://doi.acm.org/10.1145/1374376.1374458>)
    (<notes-store|PDF|e1112/http://www.cs.cmu.edu/~odonnell/papers/analysis-survey.pdf>)

    <item>E. Friedgut, G. Kalai, N. Nisan, Elections Can be Manipulated Often
    (<notes-store|PDF|e1112/http://www.ratio.huji.ac.il/dp_files/dp481.pdf>)

    <item>\PHypercontractivity and its applications\Q, a survey by Punya
    Biswal (<notes-store|PDF|e1112/http://cdn.bitbucket.org/punya/hypercontractivity-survey/downloads/Quals.pdf>)

    <item>TCS math blog (<hlink|link|http://tcsmath.wordpress.com/>)

    <item>The program \PMetric geometry, algoritms and groups\Q at IHP
    (Jan-April 2011) (<hlink|link|http://www.math.ens.fr/metric2011/>)
  </itemize>

  <with|font-series|bold|Journal>

  <\enumerate>
    <item>[13/1, 3 h] Introduction � la th�orie du choix social.

    <item>[19/1, 3 h] Formalisation math�matiques de quelques problemes en
    theorie du choix social. Th�oreme de Arrow quantitatif.

    <item>[20/1, 3 h] Fonctions bool�ennes et transform�e de Fourier. Test
    BLR. Th�oreme de Friedgut-Kalai-Naor.

    <item>[17/2, 3 h] Hypercontractivit� et preuve de la version quantitative
    du th�oreme de Arrow.

    <item>[10/4, 10h15 -- 13h30]

    <item>[17/4, 10h15 -- 13h30]

    <item>[13/1, 13h45 -- 17h]
  </enumerate>

  <with|font-series|bold|Course material (in english)>

  <\enumerate>
    <item>Part 1. Introduction. Social choice theory. Fourier analysis. BLR
    ad FKN theorems. (<notes-store|PDF|e1112/abf1.pdf>)

    <item>Part 2. Hypercontractivity. A first look to majority. Influences.
    KKL and Friedgut theorems. Influential coalitions.
    (<notes-store|PDF|e1112/abf2.pdf>)

    <item>Exam questions. (<notes-store|PDF|e1112/abf-exam.pdf>)
  </enumerate>

  <with|font-series|bold|Journal>

  <itemize|<item>The oral exam will be held the 12/6.>

  <label|pd><subsubsection*|Processus discrets (M1 MMD)>

  <\itemize>
    <item>Cours de l'ann�e derni�re (<notes-link|Lien|teaching-dauphine-10-11.tm#pd>)

    <item>Charg�s de TD: Joseph Lehec et Fran�ois Simenhaus.
  </itemize>

  <with|font-series|bold|Programme>

  <\enumerate>
    <item>Esp�rance conditionnelle.

    <item>Martingales. Strat�gies. Convergence des martingales. Arr�t
    optionnel.

    <item>Cha�nes de Markov.
  </enumerate>

  <with|font-series|bold|Bibliographie conseill�e>

  <\itemize>
    <item>D. Williams, <em| Probability with martingales >, Cambridge.

    <item>P.Bremaud, <em|Introduction aux probabilit�s. Mod�lisation des
    ph�nom�nes al�atoires>, Springer-verlag, New-York, 1984.

    <item>M. Bena�m, N. El Karoui. <em| Promenade ale�atoire>, Editions Ecole
    Polytechnique, 2005.

    <item>J.R.Norris. <em| Markov chains>, Cambridge University Press, 1997

    <item>P. Baldi, L. Mazliak, P. Priouret, <em| Martingales et cha�nes de
    Markov (Exercices corrig�s) >, Hermann

    <item>J.Neveu. <em| Martingales � temps discret>, Masson, Paris, 1972

    <item>R.Durrett. <em| Probability: Theory and Examples>, Wadsworth and
    Brooks, Pacific Grove, 1991

    <item>M.Cottrel, Ch.Duhamel, V.Genon-Catalot. <em| Exercices de
    Probabilit�s>, Berlin, Paris, 1980

    <item>Le cours de Lalley (<hlink|link|http://galton.uchicago.edu/~lalley/Courses/313/>)
  </itemize>

  <with|font-series|bold|Journal>

  <\enumerate>
    <item>[19/9, 10h15, Amphi 6] Introduction du cours. Pr�-requis.
    Sous-tribus. Motivation et d�finition g�n�rale de l'esp�rance
    conditionnelle.

    <item>[26/9, 10h15, Amphi 6] Preuve de l'unicit� p.s. de l'esp�rance
    conditionnelle. Quelques propri�t�s des l'esp�rance conditionnelle.

    <item>[3/10, 10h15, Amphi 6] Autres propri�t�s de l'esp�rance
    conditionnelle. Quelques exemples. Filtrations. Processus adapt�s.
    Strat�gies dans les jeux d'hasard. Introduction aux martingales.

    <item>[10/10, 10h15, Amphi 6] Martingales et strat�gies.

    <item>[17/10, 10h15, Amphi 6] D�finition de martingale. Premi�res
    propri�t�s.

    <item>[24/10, 10h15, Amphi 6] Transformation de martingales. Th�or�me
    d'arret optionnel de Doob. Convergence des martingales.

    <item>[31/10, 10h15, Amphi 6] Th�or�me de convergence des martingales.
    Martingales born�es dans L\<twosuperior\>.

    <item>[7/11, 10h15, Amphi 6] Ch�ines de Markov. Definition et quelques
    exemples.

    <item>[21/11, 10h15, Amphi 6] Recurrences al�atoires. Matrice de
    transition. Equation de Chapman-Kolmogorov. Loi de la cha�ne de Markov.

    <item>[5/12, 10h15, Amphi 6] Calculs de probabilit�s li�es � la cha�nes,
    probabilit� d'atteinte, methode � un pas.

    <item>[12/12, 10h15, Amphi 6] Classification des �tats. �tats recurrents
    et transients.

    <item>[14/12, 10h15, Amphi 6] Mesures invariantes. Existence et unicit�.

    <item>[2/1, 10h15, Amphi 6] Excursions. Recurrence nulle et recurrence
    positive.
  </enumerate>

  <with|font-series|bold|Notes de cours et TDs>

  <\enumerate>
    <item>Poly 1. Esp�rance conditionnelle (<notes-store|PDF|e1112/pd1.pdf>)

    <item>Poly 2. Martingales, strat�gies et arr�t optionnel
    (<notes-store|PDF|e1112/pd2.pdf>)

    <item>Poly 3. Comportement asymptotique des martingales
    (<notes-store|PDF|e1112/pd3.pdf>)

    <item>Poly 4. Cha�nes de Markov (<notes-store|PDF|e1112/pd4.pdf>)

    <item>TD1. Esp�rance conditionnelle. (<notes-store|PDF|e1112/pd-td1.pdf>)

    <item>TD2. Martingales, strat�gies et arr�t optionnel
    (<notes-store|PDF|e1112/pd-td2.pdf>)

    <item>TD3. Comportement asymptotique des martingales
    (<notes-store|PDF|e1112/pd-td3.pdf>)

    <item>TD4. Cha�nes de Markov (<notes-store|PDF|e1112/pd-td4.pdf>)

    <item>TD5. Cha�nes de Markov (II) (<notes-store|PDF|e1112/pd-td5.pdf>)
  </enumerate>

  <with|font-series|bold|Sujets des ann�es pr�c�dentes>

  <\enumerate>
    <item>2004/2004. Examen (<notes-store|PDF|e1112/md-controle2004.pdf>).
    Rattrapage (<notes-store|PDF|e1112/md-controle-sett2005.pdf>).

    <item>2005/2006. Examen (<notes-store|PDF|e1112/proc-controle0106.pdf>).
    Rattrapage (<notes-store|PDF|e1112/proc-controle0906Rectif.pdf>).

    <item>2006/2007. Partiel (<notes-store|PDF|e1112/PartielProcDiscrets0607.pdf>).
    Examen (<notes-store|PDF|e1112/proc-controle0107.pdf>). Rattrapage
    (<notes-store|PDF|e1112/proc-controle0907.pdf>).

    <item>2007/2008. Partiel (<notes-store|PDF|e1112/PartielProcDiscrets0708.pdf>).
    Examen (<notes-store|PDF|e1112/proc-controle0108.pdf>). Rattrapage
    (<notes-store|PDF|e1112/proc-controle0908.pdf>).

    <item>2008/2009. Examen (<notes-store|PDF|e1112/proc-controle0109.pdf>).

    <item>2009/2010. Partiel (<notes-store|PDF|e1112/pd-partiel-0910.pdf>).
    Corrig� Partiel (<notes-store|PDF|e1112/pd-partiel-corrige-0910.pdf>).
    Examen (<notes-store|PDF|e1112/pd-examen-0910.pdf>). Rattrapage
    (<notes-store|PDF|e1112/pd-rattrapage-0910.pdf>).

    <item>2010/2011. Partiel (<notes-store|PDF|e1112/pd-partiel-1011.pdf>).
    Corrig� Partiel (<notes-store|PDF|e1112/pd-partiel-1011-corrige.pdf>).
    Examen (<notes-store|PDF|e1112/pd-examen-1011.pdf>). Rattrapage
    (<notes-store|PDF|e1112/pd-rattrapage-1011.pdf>).

    <item>2011/2012. Partiel (<notes-store|PDF|e1112/pd-partiel-1112.pdf>).
    Corrig� Partiel (<notes-store|PDF|e1112/pd-partiel-1112-corrige.pdf>).
  </enumerate>

  <label|ccm><subsubsection*|Contr�le des chaines de Markov (M1 MMD -
  parcours MAMD)>

  <\itemize>
    <item>Cours de l'ann�e derni�re (<notes-link|Lien|teaching-dauphine-10-11.tm#ccm>)

    <item>Charg� de TD: Jimmy Lamboley.
  </itemize>

  <with|font-series|bold|Programme>

  <\enumerate>
    <item>Compl�ments sur l'esp�rance conditionnelle.

    <item>Cha�nes de Markov contr�l�es.

    <item>Compl�ments sur les temps d'arr�t et sur les martingales. Arr�t
    optimal en horizon fini. Enveloppe de Snell

    <item>Arr�t optimale en horizon infini. Principe d'optimalit�. Exemples
    et applications.
  </enumerate>

  <with|font-series|bold|Bibliographie conseill�e (en anglais)>

  <\itemize>
    <item>Les notes de cours de James Norris � Cambridge
    (<hlink|url|http://www.statslab.cam.ac.uk/~james/Lectures/old.html\n>)

    <item>Le cours de Ben Van Roy � Stanford
    (<hlink|url|http://erdos.stanford.edu/ee292/>)

    <item>Bertsekas, D. P.,<em| Dynamic Programming>. Prentice Hall, 1987.

    <item>Bertsekas, D. P., <em|Dynamic Programming and Optimal Control>,
    Volumes I and II, Prentice Hall, 1995.

    <item>Hocking, L. M., <em|Optimal Control: An introduction to the theory
    and applications>, Oxford 1991.

    <item>Ross, S., <em|Introduction to Stochastic Dynamic Programming>.
    Academic Press, 1983.
  </itemize>

  <with|font-series|bold|Journal>

  <\enumerate>
    <item>[19/9, 17h15, B104bis] Rappels sur l'espace L\<twosuperior\> et
    compl�ments sur l'esp�rance conditionnelle.

    <item>[26/9, 17h15, B104bis] Projections dans L\<twosuperior\> et
    existence de l'esp�rance conditionnelle.

    <item>[3/10, 17h15, B104bis] D�monstration de quelques propri�t�s de
    l'esp�rance conditionnelle. Th�or�me de Borel-Cantelli et �tude des
    maximum des processus stochastiques.

    <item>[10/10, 17h15, B104bis] Tribu d'un temps d'arr�t. Martingales et
    temps d'arr�t.

    <item>[17/10, 17h15, B104bis] Arr�t optimal. Existence de temps d'arr�t
    optimaux en horizon fini.

    <item>[24/10, 17h15, B104bis] Premier et dernier temps d'arr�t optimaux.

    <item>[31/10, 17h15, B104bis] Integrabilit� uniforme.

    <item>[7/11, 17h15, B104bis] Integrabilit� uniforme et convergence des
    martingales.

    <item>[21/11, 17h15, B104bis] Cha�nes de Markov control�es.

    <item>[28/11, 17h15, B104bis] Equation de Bellman.

    <item>[12/12, 17h15, B104bis] Preuve de l'equation de Bellman. Cha�nes
    homog�nes, optimalit� en horizon fini. Probleme d'arr�t comme probleme de
    contr�le.

    <item>[14/12, 17h15, B203] Horizon infini. Cas des gains positifs.

    <item>[2/1, 17h15, B104bis] Horizon infini. Cas des gains actualis�s.
  </enumerate>

  <with|font-series|bold|Notes de cours et TDs>

  <\enumerate>
    <item>Poly 1. Compl�ments sur l'esp�rance conditionnelle
    (<notes-store|PDF|e1112/ccm1.pdf>)

    <item>Poly 2. Arr�t optimal en horizon fini.
    (<notes-store|PDF|e1112/ccm2.pdf>)

    <item>Poly 4. Cha�nes de Markov control�es.
    (<notes-store|PDF|e1112/ccm4.pdf>)

    <item>TD1. Compl�ments sur l'esp�rance conditionnelle.
    (<notes-store|PDF|e1112/ccm-td1.pdf>)

    <item>TD2. Arr�t optimal en horizon fini.
    (<notes-store|PDF|e1112/ccm-td2.pdf>)

    <item>TD3. Integrabilit� uniforme. (<notes-store|PDF|e1112/ccm-td3.pdf>)

    <item>TD4. Cha�nes de Markov control�es.
    (<notes-store|PDF|e1112/ccm-td4.pdf>)
  </enumerate>

  <with|font-series|bold|Sujets des ann�es pr�c�dentes>

  <\enumerate>
    <item>2008/2009. Examen (<notes-store|PDF|e1112/examen-control-chaines-2009.pdf>).
    Rattrapage (<notes-store|PDF|e1112/rattrapage-control-chaines-2009.pdf>).

    <item>2009/2010. Partiel (<notes-store|PDF|e1112/ccm-partiel-0910.pdf>).
    Corrig� Partiel (<notes-store|PDF|e1112/ccm-partiel-corrige-0910.pdf>).
    Examen (<notes-store|PDF|e1112/ccm-examen-0910.pdf>). Rattrapage
    (<notes-store|PDF|e1112/ccm-rattrapage-0910.pdf>).
  </enumerate>

  <itemize|>

  <label|pp><subsubsection*|Processus de Poisson et m�thodes actuariels (M1
  MMD)>

  <itemize|<item>Charg�s de TD: Joseph Lehec et Fran�ois Simenhaus.>

  <with|font-series|bold|Programme>

  <\enumerate>
    <item>Processus de comptage et renouvellement. Processus de Poisson.

    <item>Processus de Poisson compos�s.

    <item>Processus de Renouvellement.

    <item>Th�orie de la ruine.
  </enumerate>

  <with|font-series|bold|Journal>

  <\enumerate>
    <item>[23/1, 10h15, A2+3] Introduction. Processus de comptage et
    processus de renouvellement. Processus de Poisson (PP).

    <item>[23/1, 12h00, A2+3] Caracterisation du PP. Intertemps exponentiels.
    Preuves.

    <item>[26/1, 10h15, A1] Quelques propri�tes du PP. Loi des grandes
    nombres. Propriet� de Markov.

    <item>[16/2, 10h15, A1] Statistiques d'ordre des temps de saut du PP.

    <item>[20/2, 10h15, A2+3] M�lange de processus de Poisson.

    <item>[5/3, 10h15, A2+3] Modelisation de la charge sinistrale totale.

    <item>[12/3, 10h15, A2+3] �tude de la charge sinistrale totale � temps
    fixe. Algorithme de Panjer.

    <item>[19/3, 10h15, A2+3] �tude de la charge sinistrale totale � temps
    variable. Mod�le de Cramer-Lundberg. Processus de Poisson compos�.

    <item>[19/3, 12h00, A2+3] Caracterisation du PP compos�. Loi des grandes
    nombres, TCL.

    <item>[2/4, 10h15, A2+3] Processus de renouvellement. Fonction et mesure
    de renouvellement. Th�oreme du renouvellement elementaire.

    <item>[30/4, 10h15, A2+3] Th�oreme de Blackwell et du renouvellement cl�.
    Equation du renouvellement. Introduction � la th�orie de la ruine.

    <item>[7/5, 10h15, A2+3] Probabilit� de ruine. Condition de profit net.
    Variables � queues fines et lourdes. Inegalit� de Lundberg.

    <item>[14/5, 10h15, A2+3] Fin de la preuve de l'inegalit� de Lundberg.
    Eq. du renouvellement pour la probabilit� de ruine.
  </enumerate>

  <with|font-series|bold|Notes de cours et TDs>

  <\enumerate>
    <item>Poly 1. Processus de Poisson (<notes-store|PDF|e1112/pp-1.pdf>)

    <item>Poly 4. Th�orie de la ruine (<notes-store|PDF|e1112/pp-4.pdf>)

    <item>TD1. Processus de Poisson (<notes-store|PDF|e1112/pp-td1.pdf>)

    <item>TD2. M�lange de Processus de Poisson. Etude de la charge sinistrale
    totale � temps fixe. (<notes-store|PDF|e1112/pp-td2.pdf>)

    <item>TD3. Processus de Poisson compos�s, processus de renouvellement.
    (<notes-store|PDF|e1112/pp-td3.pdf>)

    <item>TD4. Th�orie de la ruine (<notes-store|PDF|e1112/pp-td4.pdf>)

    <item>Partiel 2010/2011 (<notes-store|PDF|e1112/pp-partiel-1011.pdf>)

    <item>Examen 2010/2011 (<notes-store|PDF|e1112/pp-examen-1011.pdf>)
  </enumerate>
</body>

<\initial>
  <\collection>
    <associate|page-medium|papyrus>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|><shift|<with|font-size|<quote|0.595>|\<#25C6\>>||0.1em>|?>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|><shift|<with|font-size|<quote|0.595>|\<#25C6\>>||0.1em>|?>>
    <associate|auto-4|<tuple|8|?>>
    <associate|auto-5|<tuple|2|?>>
    <associate|ccm|<tuple|8|?>>
    <associate|mdc|<tuple|<with|mode|<quote|math>|><shift|<with|font-size|<quote|0.595>|\<#25C6\>>||0.1em>|?>>
    <associate|pd|<tuple|<with|mode|<quote|math>|><shift|<with|font-size|<quote|0.595>|\<#25C6\>>||0.1em>|?>>
    <associate|pp|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|Enseignements
      2011/2012> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <with|par-left|<quote|2tab>|El�ments de math�matiques des d�cisions
      collectives (M2 EDPMAD,TSI,MASEF) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|2tab>|Processus discrets (M1 MMD)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|2tab>|Contr�le des chaines de Markov (M1 MMD -
      parcours MAMD) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|Processus de Poisson et m�thodes actuariels
      (M1 MMD) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>