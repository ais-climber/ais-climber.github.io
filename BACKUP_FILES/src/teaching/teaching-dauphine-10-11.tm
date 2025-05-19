<TeXmacs|2.1.1>

<style|<tuple|notes|notes-meta>>

<\body>
  <\hide-preamble>
    \;
  </hide-preamble>

  <notes-header>

  <chapter*|Enseignements 2010/2011>

  <notes-abstract|Lectures delivered at Paris Dauphine, academic year
  2010\U2011.>

  <with|font-series|bold|Ann�e 2010/2011>

  <\itemize>
    <item><notes-link|Analyse des fonctions bool�ennes (M2 EDPMAD/TSI)|#bf>

    <item><notes-link|Processus discrets (M1 MMD)|#pd>

    <item><notes-link|Contr�le des cha�nes de Markov (M1 MMD)|#ccm>

    <item><notes-link|Statistique (DU2 Eco IGD Math/Eco Mat/Info)|#stat>
  </itemize>

  <label|bf><subsubsection*|Analysis of Boolean functions [Analyse des
  fonctions bool�ennes] (M2 EDPMAD/TSI)>

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
  Kahn-Kalai-Linial, la sensibilit� au bruit et les ph�nom�nes de ``chaos".

  <with|font-series|bold|Mots clefs:> analyse de Fourier des fonctions
  bool�ennes, sensibilit� aux bruit, ph�nom�nes de seuil, influence,
  hypercontractivit�, criticalit� auto-organis�e, paradoxe de Condorcet,
  th�or�me de Arrow, agr�gation de l'information.

  <with|font-series|bold|Bibliographie et liens (en anglais)>

  <\itemize>
    <item>Paradoxe de Condorcet (<hlink|wp|http://fr.wikipedia.org/wiki/Paradoxe_de_Condorcet>),
    Th�or�me de Arrow (<hlink|wp|http://fr.wikipedia.org/wiki/Théorème_d%27impossibilité_d%27Arrow>),
    Th�orie du choix sociale (<hlink|wp|http://en.wikipedia.org/wiki/Social_choice_theory>)

    <item>Le cours of O'Donnell sur l'analyse des fonctions bool�ennes
    (<hlink|link|http://www.cs.cmu.edu/~odonnell/boolean-analysis/>)

    <item>Le cours de Kalai sur la th�orie du choix sociale
    (<hlink|link|http://www.ma.huji.ac.il/~kalai/course07.html>)

    <item>Le cours de E. Friedgut sur les m�thodes analytiques en
    combinatoire et informatique (<hlink|link|http://www.cs.huji.ac.il/~analyt/>)

    <item>Le cours de N. Linian sur l'analise harmonique et ses applications
    combinatoires (<hlink|link|http://www.cs.huji.ac.il/~nati/PAPERS/uw/>)

    <item>Page web de Gil Kalai (<hlink|link|http://www.ma.huji.ac.il/~kalai>)

    <item>G. Kalai and S. Safra. Threshold Phenomena and Influence, in:
    Computational Complexity and Statistical Physics, A.G. Percus, G. Istrate
    and C. Moore, eds. (Oxford University Press, New York, 2006), pp. 25-60.
    (<notes-store|PDF|e1011/http://www.ma.huji.ac.il/~kalai/ML.pdf>)

    <item>G. Kalai, A Fourier-Theoretic Perspective for the Condorcet Paradox
    and Arrow's theorem, Adv. in Appl. Math. 29(2002), 412-426.
    (<notes-store|PDF|e1011/http://www.ma.huji.ac.il/~kalai/arr.pdf>)

    <item>G. Kalai, Social Indeterminacy, Econometrica, 72 (2004), 1565-1581.
    (<notes-store|PDF|e1011/http://www.ma.huji.ac.il/~kalai/SI.pdf>)

    <item>G. Kalai, Noise sensitivity and chaos in social choice theory.
    Discussion Paper Series dp399, Center for Rationality and Interactive
    Decision Theory, Hebrew University, Jerusalem.
    (<notes-store|PDF|e1011/http://www.ma.huji.ac.il/~kalai/CHAOS.pdf>)

    <item>O'Donnell, R. 2008. Some topics in analysis of boolean functions.
    In Proceedings of the 40th Annual ACM Symposium on theory of Computing
    (Victoria, British Columbia, Canada, May 17 - 20, 2008). STOC '08. ACM,
    New York, NY, 569-578. (<hlink|doi|http://doi.acm.org/10.1145/1374376.1374458>)
    (<notes-store|PDF|e1011/http://www.cs.cmu.edu/~odonnell/papers/analysis-survey.pdf>)

    <item>E. Friedgut, G. Kalai, N. Nisan, Elections Can be Manipulated Often
    (<notes-store|PDF|e1011/http://www.ratio.huji.ac.il/dp_files/dp481.pdf>)

    <item>"Hypercontractivity and its applications", a survey by Punya Biswal
    (<notes-store|PDF|e1011/http://cdn.bitbucket.org/punya/hypercontractivity-survey/downloads/Quals.pdf>)

    <item>TCS math blog (<hlink|link|http://tcsmath.wordpress.com/>)

    <item>The program ``Metric geometry, algoritms and groups'' at IHP
    (Jan-April 2011) (<hlink|link|http://www.math.ens.fr/metric2011/>)
  </itemize>

  <with|font-series|bold|Journal>

  <\enumerate>
    <item>[6/1, 10h00-13h15, A301] Not held.

    <item>[13/1, 10h00-13h15, B212] Not held.

    <item>[20/1, 10h00-13h15, B104 bis] Introduction. Social choice theory
    motivations. Fourier analysis.

    <item>[27/1, 10h00-13h15, B104 bis] BLR test, Friedgut-Kalai-Naor theorem
    and Kalai's robust version of Arrow's theorem.

    <item>[3/2, 13h45-17h00, B203] A first look at hypercontractivity. Some
    properties of the majority function. The noise operator and stability of
    the majority function.

    <item>[10/2, 13h45-17h00, B203] A proof of the general hypercontractivity
    inequality. Influences. The Tribes function and the KKL theorem.

    <item>[5/4, 13h45-17h00, A305] Proof of the KKL theorem and Friedgut
    theorem.

    <item>[6/4, 9h00-12h00, A305] Influences of coalitions. Noise sensitivity
    and Social chaos.
  </enumerate>

  <with|font-series|bold|Course material (in english)>

  <\enumerate>
    <item>Lecture 1. Introduction. Social choice theory. Fourier analysis.
    BLR ad FKN theorems. (<notes-store|PDF|e1011/abf1.pdf>)

    <item>Lecture 2. Hypercontractivity. A first look to majority.
    Influences. KKL and Friedgut theorems. Influential coalitions.
    (<notes-store|PDF|e1011/abf2.pdf>)

    <item>Lecture 3. Noise sensitivity and social chaos.
    (<notes-store|PDF|e1011/abf3.pdf>)
  </enumerate>

  <label|pd><subsubsection*|Processus discrets (M1 MMD)>

  <\itemize>
    <item>Cours de l'ann�e derni�re (<notes-link|Lien|teaching-dauphine-09-10.tm#pd>)

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
    <item>[21/9, 8h30, Amphi 6] Introduction du cours. Pr�-requis.
    Sous-tribus. Motivation et d�finition g�n�rale de l'esp�rance
    conditionnelle.

    <item>[28/9, 8h30, Amphi 6] Preuve de l'unicit� p.s. de l'esp�rance
    conditionnelle. Quelques propri�t�s des l'esp�rance conditionnelle.

    <item>[5/10, 8h30, Amphi 6] Martingales et leur lien avec les strat�gies
    dans les jeux d'hasard.

    <item>[12/10, 8h30, Amphi 6] D�finition et caract�risation des
    martingales, premi�res propri�t�s, transformation de martingale,
    processus pr�visibles, stabilit� de la notion de martingale par rapport
    aux transformation avec les processus pr�visibles.

    <item>[19/10, 8h30, Amphi 6] Processus arr�t�. Th�or�me d'arr�t optionnel
    de Doob. Introduction aux ph�nom�nes de convergence des martingales.

    <item>[26/10, 8h30, Amphi 6] Travers�es montantes, th�or�me de
    convergence des martingales.

    <item>[2/11, 8h30, Amphi 6] Convergence en moyenne quadratique des
    martingales born�es en L\<twosuperior\>.

    <item>[9/11, 8h30, Amphi 6] Cha�nes de Markov. Matrice de transition.
    Equation de Chapman-Kolmogorov.

    <item>[23/11, 8h30, Amphi 6] Construction d'une cha�ne avec matrice de
    transition donn�e.

    <item>[30/11, 8h30, Amphi 6] Classification des �tats. R�currence.

    <item>[7/12, 8h30, Amphi 6] Crit�res pour la r�currence et la transience.

    <item>[14/12, 8h30, Amphi 6] Probabilit�s invariantes. Existence.

    <item>[4/1, 8h30, Amphi 6] Unicit� dans le cas irr�ductible. Excursions.
    R�currence positive. Lien entre probabilit� invariante et temps moyens de
    retour. Th�or�me ergodique et convergence � l'�quilibre.
  </enumerate>

  <with|font-series|bold|Notes de cours et TDs>

  <\enumerate>
    <item>Poly 1. Esp�rance conditionnelle (<notes-store|PDF|e1011/pd1.pdf>)

    <item>Poly 2. Martingales, strat�gies et arr�t optionnel
    (<notes-store|PDF|e1011/pd2.pdf>)

    <item>Poly 3. Comportement asymptotique des martingales
    (<notes-store|PDF|e1011/pd3.pdf>)

    <item>Poly 4. Cha�nes de Markov (<notes-store|PDF|e1011/pd4.pdf>)

    <item>TD1. Esp�rance conditionnelle. (<notes-store|PDF|e1011/pd-td1.pdf>)

    <item>TD2. Martingales, strat�gies et arr�t optionnel
    (<notes-store|PDF|e1011/pd-td2.pdf>)

    <item>TD3. Comportement asymptotique des martingales
    (<notes-store|PDF|e1011/pd-td3.pdf>)

    <item>TD4. Cha�nes de Markov (<notes-store|PDF|e1011/pd-td4.pdf>)

    <item>TD5. Cha�nes de Markov (II) (<notes-store|PDF|e1011/pd-td5.pdf>)

    <item>Partiel (<notes-store|PDF|e1011/pd-partiel-1011.pdf>)

    <item>Corrig� Partiel (<notes-store|PDF|e1011/pd-partiel-1011-corrige.pdf>)
  </enumerate>

  <with|font-series|bold|Sujets des ann�es pr�c�dentes>

  <\enumerate>
    <item>2004/2004. Examen (<notes-store|PDF|e1011/md-controle2004.pdf>).
    Rattrapage (<notes-store|PDF|e1011/md-controle-sett2005.pdf>).

    <item>2005/2006. Examen (<notes-store|PDF|e1011/proc-controle0106.pdf>).
    Rattrapage (<notes-store|PDF|e1011/proc-controle0906Rectif.pdf>).

    <item>2006/2007. Partiel (<notes-store|PDF|e1011/PartielProcDiscrets0607.pdf>).
    Examen (<notes-store|PDF|e1011/proc-controle0107.pdf>). Rattrapage
    (<notes-store|PDF|e1011/proc-controle0907.pdf>).

    <item>2007/2008. Partiel (<notes-store|PDF|e1011/PartielProcDiscrets0708.pdf>).
    Examen (<notes-store|PDF|e1011/proc-controle0108.pdf>). Rattrapage
    (<notes-store|PDF|e1011/proc-controle0908.pdf>).

    <item>2008/2009. Examen (<notes-store|PDF|e1011/proc-controle0109.pdf>).

    <item>2009/2010. Partiel (<notes-store|PDF|e1011/pd-partiel-0910.pdf>).
    Corrig� Partiel (<notes-store|PDF|e1011/pd-partiel-corrige-0910.pdf>).
    Examen (<notes-store|PDF|e1011/pd-examen-0910.pdf>). Rattrapage
    (<notes-store|PDF|e1011/pd-rattrapage-0910.pdf>).
  </enumerate>

  <label|ccm><subsubsection*|Contr�le des chaines de Markov (M1 MMD -
  parcours MAMD)>

  <\itemize>
    <item>Cours de l'ann�e derni�re (<notes-link|Lien|teaching-dauphine-09-10.tm#ccm>)

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
    <item>[23/9, 15h30, A307] Rappels sur l'espace L\<twosuperior\> et
    compl�ments sur l'esp�rance conditionnelle.

    <item>[30/9, 15h30, A307]Existence de l'esp�rance conditionnelle. Preuve
    de quelques propri�t�s.

    <item>[7/10, 15h30, A307] Arr�t optimal en horizon fini. Lien avec les
    martingales. Enveloppe de Snell.

    <item>[14/10, 15h30, A307] Preuve du th�or�me d'arr�t optimal et
    compl�ments.

    <item>[21/10, 15h30, A307] Etude des temps d'arr�t optimaux.

    <item>[28/10, 17h00, A307] Integrabilit� uniforme.

    <item>[4/11, 15h30, A307] Martingales uniform�ment int�grables.

    <item>[11/11, 15h30, A307] Martingales r�trogrades. Loi du 0-1 de L�vy,
    de Kolmogorov et d�monstration de la loi forte des grandes nombres.

    <item>[25/11, 15h30, A307] Cha�nes de Markov contr�l�es.

    <item>[2/12, 15h30, A307] R�currence al�atoires contr�l�es. Cas homog�ne
    en temps. Equation de Bellman.

    <item>[9/12, 15h30, A307] Contr�le en horizon fini.

    <item>[16/12, 15h30, A307] Contr�le en horizon infini. Cas de gains
    positifs.

    <item>[6/1, 15h30, A307]

    <item>[16/1, 15h30, A307]
  </enumerate>

  <with|font-series|bold|Notes de cours et TDs>

  <\enumerate>
    <item>Poly 1. Compl�ments sur l'esp�rance conditionnelle
    (<notes-store|PDF|e1011/ccm1.pdf>)

    <item>Poly 2. Arr�t optimal en horizon fini.
    (<notes-store|PDF|e1011/ccm2.pdf>)

    <item>Poly 4. Cha�nes de Markov contr�l�es.
    (<notes-store|PDF|e1011/ccm4.pdf>)

    <item>TD1. Compl�ments sur l'esp�rance conditionnelle.
    (<notes-store|PDF|e1011/ccm-td1.pdf>)

    <item>TD2. Arr�t optimal en horizon fini.
    (<notes-store|PDF|e1011/ccm-td2.pdf>)

    <item>TD3. Integrabilit� uniforme. (<notes-store|PDF|e1011/ccm-td3.pdf>)

    <item>TD4. Cha�nes de Markov contr�l�es.
    (<notes-store|PDF|e1011/ccm-td4.pdf>)
  </enumerate>

  <with|font-series|bold|Sujets des ann�es pr�c�dentes>

  <\enumerate>
    <item>2008/2009. Examen (<notes-store|PDF|e1011/examen-control-chaines-2009.pdf>).
    Rattrapage (<notes-store|PDF|e1011/rattrapage-control-chaines-2009.pdf>).

    <item>2009/2010. Partiel (<notes-store|PDF|e1011/ccm-partiel-0910.pdf>).
    Corrig� Partiel (<notes-store|PDF|e1011/ccm-partiel-corrige-0910.pdf>).
    Examen (<notes-store|PDF|e1011/ccm-examen-0910.pdf>). Rattrapage
    (<notes-store|PDF|e1011/ccm-rattrapage-0910.pdf>).
  </enumerate>

  <label|stat><subsubsection*|Statistique (DU2 Eco IGD Math/Eco Mat/Info)>

  <\itemize>
    <item>Cours de l'ann�e derni�re (<notes-link|Lien|teaching-dauphine-09-10.tm#stat>)

    <item>Charg�s de TD: Anne-Marie Boussion (TD1). Massimiliano Gubinelli
    (TD2) Vincent Rivoirard (TD3). Denis Pasquignon (TD4). Benjamin Benoudis
    (TD5). Olga Tchebotareva (TD6).
  </itemize>

  <with|font-series|bold|Programme>

  <\enumerate>
    <item>Rappels s�r les int�grales multiples et le distributions des
    vecteurs al�atoires.

    <item>Vecteurs al�atoires gaussiens. Lois Gamma, Beta, Khi-deux, Student.

    <item>Convergence et th�or�mes limites. In�galit�s de Tchebichev et
    H�lder. Convergence en loi. Convergence en probabilit�. loi faible des
    grands nombres. Convergence presque s�re. Loi forte des grands nombres.
    Convergence en moyenne p-eme. Th�or�me Central Limite. La delta-m�thode.

    <item>Estimation ponctuelle. Mod�le param�trique. Estimateurs ponctuels.
    Exhaustivit� des statistiques. M�thodes d'estimation: moments, maximum de
    vraisemblance.

    <item>Estimation par intervalles de confiance.

    <item>Test d'hypoth�ses. Test du rapport de vraisemblances. Test du
    Khi-deux. Test d'ind�pendance.
  </enumerate>

  <with|font-series|bold|Journal>

  <\enumerate>
    <item>[4/2, 8h30, Amphi 1] Introduction au cours. Vecteurs al�atoires
    avec densit�. Densit�s marginales et densit� conditionnelle.

    <item>[11/2, 8h30, Amphi 1] Ind�pendance des vecteurs al�atoires.
    Esp�rance. Esp�rance conditionnelle et ses propri�t�s. Covariance et
    coefficient de corr�lation.

    <item>[16/2, 12h00, Amphi 1] Propri�t�s de la covariance. Variance
    conditionnelle. Formule de la variance conditionnelle. Matrice de
    covariance d'un vecteur al�atoire et ses propri�t�s.

    <item>[18/2, 8h30, Amphi 1] Fonction caract�ristique pour une v.a. et un
    vecteur al�atoire. Exemples. Vecteurs al�atoires gaussiens. Premi�res
    propri�t�s.

    <item>[2/3, 12h00, Amphi 1] Caract�risation des vecteurs gaussiens.
    Vecteurs gaussiens avec moyenne et variance donn�es.

    <item>[4/3, 8h30, Amphi 1] Fonction caract�ristique d'un vecteur
    gaussien. D�finition de la loi gaussienne multidimensionnelle avec
    moyenne et variance donn�e. Densit� d'un vecteur avec matrice de
    covariance inversible.

    <item>[9/3, 12h00, Amphi 1] Lien entre covariance et ind�pendance pour
    les vecteurs gaussiens. Introduction � la convergence des variables
    al�atoires. Exemple de convergence (en loi) d'une suite de v.a. vers une
    v.a. uniforme. Th�or�me sur la convergence jointe des fonction
    caract�ristiques, des moyennes et des fonctions de r�partitions.
    D�finition de convergence en loi.

    <item>[18/3, 8h30, Amphi 1] Convergence en probabilit�. In�galit� de
    Markov et Tchebychev. Loi faible des grandes nombres. Convergence presque
    s�re. Loi forte des grandes nombres. Th�or�me Centrale Limite.

    <item>[27/4, 12h00, Amphi 1] Convergence en moyenne r-�me. In�galit� de
    Jensen. Convergence de la moyenne. Lien entre les modes de convergence.
    Th�or�me de continuit�. Lemme de Slusky.

    <item>[3/5, 17h15, Amphi 4]

    <item>[11/5, 12h00, Amphi 1]

    <item>[17/5, 17h15, Amphi 4?]

    <item>[18/5, 12h00, Amphi 1]
  </enumerate>

  <with|font-series|bold|Cours>

  <\enumerate>
    <item>Poly 1. Vecteurs al�atoires, esp�rance conditionnelle, r�gression.
    (<notes-store|PDF|e1011/stat1.pdf>)

    <item>Poly 2. Matrice de covariance. Fonction caract�ristique. Vecteurs
    Gaussiens. (<notes-store|PDF|e1011/stat2.pdf>)

    <item>Poly 3. Convergence des variables al�atoires. Loi des grandes
    nombres et th�or�me centrale limite. (<notes-store|PDF|e1011/stat3.pdf>)

    <item>Poly 4. Estimation ponctuelle. (<notes-store|PDF|e1011/stat4.pdf>)

    <item>Poly 5. Intervalles de confiance.
    (<notes-store|PDF|e1011/stat5.pdf>)
  </enumerate>

  <with|font-series|bold|Feuilles de TD et sujets>

  <\enumerate>
    <item>TD1: Int�grales doubles et couples de variables al�atoires.
    (<notes-store|PDF|e1011/stat-td1.pdf>)

    <item>TD2: Vecteurs al�atoires, vecteurs Gaussiens et loi Gamma et
    Khi-deux. (<notes-store|PDF|e1011/stat-td2.pdf>)

    <item>TD3: Vecteurs Gaussiens. (<notes-store|PDF|e1011/stat-td3.pdf>)

    <item>TD4: Convergence en loi. (<notes-store|PDF|e1011/stat-td4.pdf>)

    <item>TD5: Estimation ponctuelle. (<notes-store|PDF|e1011/stat-td5.pdf>)

    <item>TD6: Intervalles de confiance. (<notes-store|PDF|e1011/stat-td6.pdf>)
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
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|6|?>>
    <associate|auto-5|<tuple|2|?>>
    <associate|bf|<tuple|<with|mode|<quote|math>|><shift|<with|font-size|<quote|0.595>|\<#25C6\>>||0.1em>|?>>
    <associate|ccm|<tuple|6|?>>
    <associate|pd|<tuple|3|?>>
    <associate|stat|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|Enseignements
      2010/2011> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <with|par-left|<quote|2tab>|Analysis of Boolean functions [Analyse des
      fonctions bool�ennes] (M2 EDPMAD/TSI)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|2tab>|Processus discrets (M1 MMD)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|2tab>|Contr�le des chaines de Markov (M1 MMD -
      parcours MAMD) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|Statistique (DU2 Eco IGD Math/Eco Mat/Info)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>