<TeXmacs|2.1.1>

<style|<tuple|article|indent-paragraphs|python|cite-author-year|cite-sort>>

<\body>
  <\hide-preamble>
    \;

    <assign|doc-title|<macro|x|<doc-title-block|<very-large|<doc-title-name|<arg|x>>>>>>

    <assign|by-text|<macro|>>

    <assign|doc-subtitle|<macro|x|<\surround|<vspace*|0.25fn>|<vspace|0.5fn>>
      <doc-title-block|<font-magnify|1.25|<arg|x>>>
    </surround>>>

    <assign|author-name|<macro|author|<doc-author-block|<author-by|<arg|author>>>>>

    <assign|sectional-sep|<macro|<space|0.5fn>>>

    <assign|bibliography-text|<macro|<localize|References>>>

    <assign|section-title|<\macro|name>
      \;

      <\padded-center>
        <\sectional-normal-bold>
          <large|<arg|name>>
        </sectional-normal-bold>
      </padded-center>

      \;
    </macro>>

    <assign|subsection-title|<\macro|name>
      \;

      <\padded-center>
        <\sectional-normal-bold>
          <arg|name>
        </sectional-normal-bold>
      </padded-center>
    </macro>>

    <assign|section|<macro|title|<no-indent><assign|section-numbered|<compound|section-display-numbers>><assign|section-prefix|<macro|<compound|the-section>.>><compound|next-section><compound|section-clean><compound|section-header|<arg|title>><compound|section-toc|<arg|title>><if|<value|section-numbered>|<compound|section-numbered-title|<arg|title>>|<compound|section-unnumbered-title|<arg|title>>>>>

    <assign|doc-date|<macro|body|<vspace*|0.2fn><doc-title-block|<arg|body>><vspace|0.2fn>>>

    <assign|doc-author|<macro|body|<\surround|<vspace*|0.75fn>|<vspace|0.2fn>>
      <\with|par-par-sep|0fn>
        <doc-title-block|<arg|body>>
      </with>
    </surround>>>

    <assign|section-unnumbered-title|<macro|title|<no-indent><inactive*|<compound|section-title|<arg|title><compound|section-post-sep>>>>>

    \;

    <assign|Model|<with|font|cal|M>>

    <assign|Net|<with|font|cal|N>>

    <assign|State|<with|font-family|ss|State>>

    <assign|semantics|<macro|body|<around*|\<llbracket\>|<arg|body>|\<rrbracket\>>>>

    <assign|lang|<with|font|cal|L>>

    <assign|proves|\<vdash\>>

    <assign|orr|\<vee\>>

    <assign|land|\<wedge\>>

    <assign|bigchi|<larger|\<chi\>>>

    <assign|powerset|<with|font|cal|P>>

    \;

    <assign|Closure|<with|font-family|ss|Cl>>

    <assign|Prop|<with|font-family|ss|Prop>>

    <assign|Reach|<with|font-family|ss|Reach>>

    <assign|Reaches|<with|font-family|ss|Reach<rsup|\<downarrow\>>>>

    <assign|Hebbstar|<with|font-family|ss|Hebb<rsup|\<star\>>>>

    <assign|iter|<with|font-family|ss|iter>>

    <assign|Update|<with|font-family|ss|Update>>

    <assign|Cond|<with|font-family|ss|Cond>>

    <assign|Lex|<with|font-family|ss|Lex>>

    <assign|Consr|<with|font-family|ss|Consr>>

    <assign|AllNets|<with|font-family|ss|Net>>

    <assign|bias|<with|font-family|ss|bias>>

    <assign|axiom|<macro|x|<text|<name|(<arg|x>)>>>>

    <assign|Hebb|<with|font-family|ss|Hebb>>

    <assign|best|<with|font-family|ss|best>>

    <assign|Believe|<with|font-series|bold|<text|B>>>

    <assign|Know|<with|font-series|bold|<text|K>>>

    <assign|Knownby|<with|font-series|bold|<text|K><rsup|\<downarrow\>>>>

    <assign|Typ|<with|font-series|bold|<text|T>>>

    <assign|diaBelieve|\<langle\><value|Believe>\<rangle\>>

    <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

    <assign|diaTyp|\<langle\><value|Typ>\<rangle\>>

    <assign|diaKnownby|\<langle\><value|Knownby>\<rangle\>>

    <assign|Hebbop|<macro|formula|[<arg|formula>]<rsub|<value|Hebb>>>>

    <assign|Hebbstarop|<macro|formula|[<arg|formula>]<rsub|<value|Hebbstar>>>>

    \;

    <assign|Satisfy|<with|font-family|rm|Sat>>

    <assign|Theory|<with|font-family|rm|Th>>

    <assign|Definable|<with|font-family|rm|Def>>

    <assign|Rel|<with|font-family|rm|<with|font-series|bold|Rel>>>

    <assign|Relrefl|<with|font-family|rm|<with|font-series|bold|Rel>>>

    <assign|Nbhd|<with|font-family|rm|<with|font-series|bold|Nbhd>>>

    <assign|Nbhdrefl|<with|font-family|rm|<with|font-series|bold|Nbhd>><rsub|<with|font-family|rm|S4>>>

    <assign|Plaus|<with|font-family|rm|<with|font-series|bold|Plaus>>>

    <assign|NetModel|<with|font-family|rm|<with|font-series|bold|Net>>>

    <assign|SocialNet|<with|font-family|rm|<with|font-series|bold|SocialNet>>>

    <assign|subsection|<macro|title|<no-indent><inactive*|<assign|subsection-numbered|<compound|subsection-display-numbers>><assign|subsection-prefix|<macro|<compound|the-subsection>.>><compound|next-subsection><compound|subsection-clean><compound|subsection-header|<arg|title>><compound|subsection-toc|<arg|title>><if|<value|subsection-numbered>|<compound|subsection-numbered-title|<arg|title>>|<compound|subsection-unnumbered-title|<arg|title>>>><vspace|0.75fn>>>

    <assign|header-primary|<macro|name|nr|what|>>

    <assign|set-footer|<macro|footer|>>

    <assign|set-odd-page-footer|<macro|footer|>>

    <assign|set-this-page-footer|<macro|footer|>>
  </hide-preamble>

  <doc-data|<doc-title|Reasoning about Neural Networks with Dynamic
  Logic>|<doc-subtitle|Research Proposal>|<doc-author|<author-data|<author-name|Caleb
  Schultz Kisby>>>|<doc-date|December 13, 2024>>

  <blanc-page>In the last 15 years, modern artificial intelligence (AI)
  systems have shown unprecedented success at learning from data with little
  human guidance. Consider for example large language models such as Llama
  and GPT <cite|vaswani2017attention|dubey2024llama|achiam2023gpt>, which
  have taken the world by storm with their ability to learn to converse in
  English merely from unstructured text data they scrape off the web. Or
  consider AlphaGo <cite|silver2017mastering>, which learned to play Go at a
  human expert level by repeatedly playing against itself. These
  breakthroughs in machine learning are thanks to the widespread use of
  neural networks\Vbrain-inspired computational models that excel at learning
  from unstructured data.

  But the danger of neural networks is that they come with no safety,
  fairness, or correctness guarantees. If you play with systems like GPT long
  enough, you eventually realize that they carry all sorts of prejudices and
  misconceptions, make silly logical mistakes, and are quite happy to spew
  out disinformation <cite|tamkin2021understanding|oneil2017weapons|gallegos2024bias>.
  Neural networks also lack transparency, which means diagnosing and
  correcting these errors is not feasible. In practice, neural networks are
  often treated as \<#2018\>black-boxes\<#2019\> whose biases, mistakes, and
  correct inferences are impossible to predict or control.

  How can we better reason about, understand, and guide the behavior of
  neural networks? The answer lies in symbolic (logic) systems, which were
  commonly used to model reasoning and intelligent behavior prior to the
  rapid growth of neural network systems. In contrast with neural networks,
  symbolic systems provide transparent rules for their reasoning in a
  human-interpretable language. Historically, logics have suffered from being
  unable to model flexible learning or update (known as the
  <with|font-shape|italic|frame problem> in AI
  <cite|sep-frame-problem|mcdermott1987critique>). One way to escape this
  problem, while preserving the benefits of logic, is through
  <with|font-shape|italic|dynamic logic>.

  <section|Previous Work>

  Dynamic logic can be seen as a general set of tools for reasoning about
  many different kinds of actions and effects. It has been used to model a
  wide range of dynamic scenarios, including programming effects
  <cite|Reynolds:2002aa>, quantum computation <cite|Baltag:2004aa>,
  multi-agent communication <cite|ditmarschDEL|van2011logicaldynamics>, and
  social networks <cite|Christoff:2015aa|baltag2019socialnetworks>. It's not
  surprising that dynamic logic is also a natural choice for reasoning about
  learning <cite|Baltag:2011ab|baltag2019right|baltag2019dynamic>, and in
  particular learning over neural networks.

  To see this, first consider that a logical language can be interpreted
  directly over neural networks <cite|balkenius1991nonmonotonic|leitgeb2001nonmonotonic|leitgeb2003nonmonotonic|leitgeb2018neural|giordano2022conditional|odense2022semantic>.
  This is done by interpreting some operator <math|<value|diaTyp>\<varphi\>>
  as the forward propagation (or diffusion) of input <math|\<varphi\>>
  through the net. Formulas <math|<value|Typ>\<varphi\>\<rightarrow\>\<psi\>>
  then express constraints on neural network
  <with|font-shape|italic|inference>, i.e., the input-output behavior of the
  net.

  In the dynamic logic setting, we can similarly interpret a dynamic operator
  <math|<around*|[|P|]>> directly as neural network
  <with|font-shape|italic|update>. In my previous work, I did this using the
  Logic of Hebbian Learning <cite|kisby2022logic|kisby2024hebbian>. In this
  logic, formulas express the effects of a simple learning policy, iterated
  Hebbian update, on a neural network. For example,
  <math|<around*|(|<value|Typ>\<varphi\>\<rightarrow\>\<psi\>|)>\<wedge\><around*|[|P|]><around*|(|<value|Typ>\<varphi\>\<rightarrow\>\<psi\>|)>>
  says that the network classifies input <math|\<varphi\>> as <math|\<psi\>>,
  and iterated Hebbian learning of <math|P> preserves that fact.

  <section|Proposed Work>

  The dynamic logic approach to neural networks is in its early stages, and
  there are many questions left to be answered. Recall two questions I
  mentioned from the attached cover letter:

  <\itemize>
    <item>How powerful and reliable are neural network learning algorithms?

    <item>Is provably correct neural network alignment possible?
  </itemize>

  The goal of this project is to take steps towards answering these, using
  tools from dynamic logic.

  <subsection|Comparing Neural Network Update with Dynamic Updates>

  The use of dynamic logic to model neural network learning opens up the
  possibility of comparing the power and properties of neural network updates
  against previously-known dynamic update operators. For instance, the
  Hebbian update operator <math|<value|Hebbstar>> resembles certain belief
  revision policies over plausibility models
  <cite|kisby2024hebbian|van2015dynamic|van2011logicaldynamics>. This leads
  to a number of questions. Which neural network updates can be simulated by
  which plausibility updates, and vice-versa? Which properties of learners
  does <math|<value|Hebbstar>> satisfy, and can it learn a data stream in the
  limit (see <cite|baltag2019tracking>)?

  These neural network logics also bear striking resemblance to logics for
  <with|font-shape|italic|social networks>
  <cite|Christoff:2015aa|baltag2019socialnetworks|baccini2024dynamic>. But
  whereas neural network logics model updates inspired by neural networks,
  social network logics model changes in social links between agents. Here
  again lie many mysteries and possible connections. Can different neural
  network updates simulate social network updates, and vice-versa? Can we
  give a unified account of neural and social network semantics together?

  <subsection|Building Aligned Neural Networks using Dynamic Logic>

  If our dynamic logic interpreted on neural networks is
  <with|font-shape|italic|complete>, this means we can build a neural network
  that obeys constraints on its behavior before and after learning. For
  example, the Logic of Hebbian Learning is indeed complete, and so we can
  build neural networks that obey constraints such as
  <math|<around*|(|<value|Typ>\<varphi\>\<rightarrow\>\<psi\>|)>\<wedge\><around*|[|P|]><around*|(|<value|Typ>\<varphi\>\<rightarrow\>\<psi\>|)>>.
  But the Logic of Hebbian Learning is a simplified setting; it doesn't model
  learning used in practice, and falls short of the rich language we would
  need to state useful rules.

  First, I will consider a dynamic logic which models the effects of the most
  widely used neural network learning algorithm: gradient descent,
  implemented as back-propagation <cite|rumelhart1986aa>. This first requires
  an account of \Psupervised\Q updates <math|<around*|[|P;Q|]>> in dynamic
  logic, i.e., observations with an expected answer. Second, I will consider
  a richer constraint language: First-Order Logic (FOL). Existing
  neuro-symbolic systems also use FOL to reason about and build neural
  networks, but it is still an open problem to prove that any such neural
  network mapping to FOL is sound.

  Finally, I plan to develop a software suite that performs the neural
  network verification and model building. The user will provide learning
  constraints in a generous language of FOL alongside dynamic operators for
  neural network updates. Across the range of neuro-symbolic systems,
  including Logic Tensor Networks <cite|badreddine2022aa>, Distributed
  Alignment Search <cite|geiger2024aa>, DeepProbLog
  <cite|manhaeve2021neural>, and neural network fibring
  <cite|garcez2008neural>, this will be the first ever such system that
  places constraints on the net's behavior before and after learning\Vand it
  will be exciting to put this feature to the test! For this, I would like to
  work with the Epistemological and Ethical \<#2018\>Explainable AI\<#2019\>
  team to put together realistic, human-interpretable ethical constraints and
  formalize them in this language.

  <\bibliography|bib|tm-plain|references.bib>
    <\bib-list|34>
      <bibitem*|1><label|bib-achiam2023gpt>Josh Achiam, Steven Adler,
      Sandhini Agarwal, Lama Ahmad, Ilge Akkaya, Florencia<nbsp>Leoni Aleman,
      Diogo Almeida, Janko Altenschmidt, Sam Altman, Shyamal Anadkat
      et<nbsp>al. <newblock>GPT-4 technical report.
      <newblock><with|font-shape|italic|ArXiv preprint arXiv:2303.08774>,
      2023.<newblock>

      <bibitem*|2><label|bib-baccini2024dynamic>Edoardo Baccini, Zoé
      Christoff<localize|, and >Rineke Verbrugge. <newblock>Dynamic logics of
      diffusion and link changes on social networks.
      <newblock><with|font-shape|italic|Studia Logica>, <localize|pages
      >1\U71, 2024.<newblock>

      <bibitem*|3><label|bib-badreddine2022aa>Samy Badreddine,
      Artur<nbsp>d'Avila Garcez, Luciano Serafini<localize|, and >Michael
      Spranger. <newblock>Logic Tensor Networks.
      <newblock><with|font-shape|italic|Artificial Intelligence>, 303:103649,
      2022.<newblock>

      <bibitem*|4><label|bib-balkenius1991nonmonotonic>Christian
      Balkenius<localize| and >Peter Gärdenfors. <newblock>Nonmonotonic
      inferences in neural networks. <newblock><localize|In
      ><with|font-shape|italic|KR>, <localize|pages >32\U39. Morgan Kaufmann,
      1991.<newblock>

      <bibitem*|5><label|bib-baltag2019socialnetworks>Alexandru Baltag, Zoé
      Christoff, Rasmus<nbsp>K Rendsvig<localize|, and >Sonja Smets.
      <newblock>Dynamic epistemic logics of diffusion and prediction in
      social networks. <newblock><with|font-shape|italic|Studia Logica>,
      107:489\U531, 2019.<newblock>

      <bibitem*|6><label|bib-baltag2019dynamic>Alexandru Baltag, Nina
      Gierasimczuk, Aybüke Özgün, Ana<nbsp>Lucia<nbsp>Vargas
      Sandoval<localize|, and >Sonja Smets. <newblock>A dynamic logic for
      learning theory. <newblock><with|font-shape|italic|Journal of Logical
      and Algebraic Methods in Programming>, 109:100485, 2019.<newblock>

      <bibitem*|7><label|bib-baltag2019tracking>Alexandru Baltag, Nina
      Gierasimczuk<localize|, and >Sonja Smets. <newblock>Truth-tracking by
      belief revision. <newblock><with|font-shape|italic|Studia Logica>,
      107:917\U947, 2019.<newblock>

      <bibitem*|8><label|bib-baltag2019right>Alexandru Baltag, Dazhu
      Li<localize|, and >Mina<nbsp>Young Pedersen. <newblock>On the right
      path: A modal logic for supervised learning. <newblock><localize|In
      ><with|font-shape|italic|International Workshop on Logic, Rationality
      and Interaction>, <localize|pages >1\U14. Springer, 2019.<newblock>

      <bibitem*|9><label|bib-Baltag:2004aa>Alexandru Baltag<localize| and
      >Sonja Smets. <newblock>The logic of quantum programs.
      <newblock><localize|In >P.<nbsp>Selinger<localize|, editor>,
      <with|font-shape|italic|Proceedings of the 2nd International Workshop
      on Quantum Programming Languages (QPL2004)>,
      <localize|volume><nbsp>33<localize| of ><with|font-shape|italic|TUCS
      General Publication>, <localize|pages >39\U56. Turku Center for
      Computer Science, June 2004.<newblock>

      <bibitem*|10><label|bib-Baltag:2011ab>Alexandru Baltag<localize| and
      >Sonja Smets. <newblock>Keep changing your beliefs, aiming for the
      truth. <newblock><with|font-shape|italic|Erkenntnis>, <localize|pages
      >1\U16, 2011.<newblock>

      <bibitem*|11><label|bib-Christoff:2015aa>Zoé Christoff<localize| and
      >Jens<nbsp>Ulrik Hansen. <newblock>A logic for diffusion in social
      networks. <newblock><with|font-shape|italic|Journal of Applied Logic>,
      13(1):48\U77, 2015.<newblock>

      <bibitem*|12><label|bib-dubey2024llama>Abhimanyu Dubey, Abhinav Jauhri,
      Abhinav Pandey, Abhishek Kadian, Ahmad Al-Dahle, Aiesha Letman, Akhil
      Mathur, Alan Schelten, Amy Yang, Angela Fan et<nbsp>al. <newblock>The
      Llama 3 herd of models. <newblock><with|font-shape|italic|ArXiv
      preprint arXiv:2407.21783>, 2024.<newblock>

      <bibitem*|13><label|bib-gallegos2024bias>Isabel<nbsp>O Gallegos,
      Ryan<nbsp>A Rossi, Joe Barrow, Md<nbsp>Mehrab Tanjim, Sungchul Kim,
      Franck Dernoncourt, Tong Yu, Ruiyi Zhang<localize|, and >Nesreen<nbsp>K
      Ahmed. <newblock>Bias and fairness in Large Language Models: A survey.
      <newblock><with|font-shape|italic|Computational Linguistics>,
      <localize|pages >1\U79, 2024.<newblock>

      <bibitem*|14><label|bib-garcez2008neural>Artur<nbsp>SD'Avila Garcez,
      Luis<nbsp>C Lamb<localize|, and >Dov<nbsp>M Gabbay.
      <newblock><with|font-shape|italic|Neural-Symbolic Cognitive Reasoning>.
      <newblock>Springer Science & Business Media, 2008.<newblock>

      <bibitem*|15><label|bib-geiger2024aa>Atticus Geiger, Zhengxuan Wu,
      Christopher Potts, Thomas Icard<localize|, and >Noah Goodman.
      <newblock>Finding alignments between interpretable causal variables and
      distributed neural representations. <newblock><localize|In
      ><with|font-shape|italic|Causal Learning and Reasoning>,
      <localize|pages >160\U187. PMLR, 2024.<newblock>

      <bibitem*|16><label|bib-giordano2022conditional>Laura Giordano,
      Valentina Gliozzi<localize|, and >Daniele Theseider Dupré. <newblock>A
      conditional, a fuzzy and a probabilistic interpretation of
      self-organizing maps. <newblock><with|font-shape|italic|Journal of
      Logic and Computation>, 32(2):178\U205, 2022.<newblock>

      <bibitem*|17><label|bib-kisby2022logic>Caleb Kisby, Saúl
      Blanco<localize|, and >Lawrence Moss. <newblock>The logic of Hebbian
      learning. <newblock><localize|In ><with|font-shape|italic|The
      International FLAIRS Conference Proceedings>,
      <localize|volume><nbsp>35. 2022.<newblock>

      <bibitem*|18><label|bib-kisby2024hebbian>Caleb<nbsp>Schultz Kisby,
      Saúl<nbsp>A Blanco<localize|, and >Lawrence<nbsp>S Moss. <newblock>What
      do Hebbian learners learn? Reduction axioms for iterated Hebbian
      learning. <newblock><localize|In ><with|font-shape|italic|Proceedings
      of the AAAI Conference on Artificial Intelligence>,
      <localize|volume><nbsp>38, <localize|pages >14894\U14901.
      2024.<newblock>

      <bibitem*|19><label|bib-leitgeb2001nonmonotonic>Hannes Leitgeb.
      <newblock>Nonmonotonic reasoning by inhibition nets.
      <newblock><with|font-shape|italic|Artificial Intelligence>,
      128(1-2):161\U201, 2001.<newblock>

      <bibitem*|20><label|bib-leitgeb2003nonmonotonic>Hannes Leitgeb.
      <newblock>Nonmonotonic reasoning by inhibition nets II.
      <newblock><with|font-shape|italic|International Journal of Uncertainty,
      Fuzziness and Knowledge-Based Systems>, 11(supp02):105\U135,
      2003.<newblock>

      <bibitem*|21><label|bib-leitgeb2018neural>Hannes Leitgeb.
      <newblock>Neural network models of conditionals. <newblock><localize|In
      ><with|font-shape|italic|Introduction to Formal Philosophy>,
      <localize|pages >147\U176. Springer, 2018.<newblock>

      <bibitem*|22><label|bib-manhaeve2021neural>Robin Manhaeve, Sebastijan
      Duman£i¢, Angelika Kimmig, Thomas Demeester<localize|, and >Luc De
      Raedt. <newblock>Neural probabilistic logic programming in DeepProbLog.
      <newblock><with|font-shape|italic|Artificial Intelligence>, 298:103504,
      2021.<newblock>

      <bibitem*|23><label|bib-mcdermott1987critique>Drew McDermott.
      <newblock>A critique of pure reason.
      <newblock><with|font-shape|italic|Computational intelligence>,
      3(3):151\U160, 1987.<newblock>

      <bibitem*|24><label|bib-oneil2017weapons>Cathy O'neil.
      <newblock><with|font-shape|italic|Weapons of math destruction: How big
      data increases inequality and threatens democracy>. <newblock>Crown,
      2017.<newblock>

      <bibitem*|25><label|bib-odense2022semantic>Simon Odense<localize| and
      >Artur<nbsp>S.<nbsp>d'Avila<nbsp>Garcez. <newblock>A semantic framework
      for neural-symbolic computing. <newblock><with|font-shape|italic|ArXiv>,
      abs/2212.12050, 2022.<newblock>

      <bibitem*|26><label|bib-Reynolds:2002aa>John<nbsp>C.<nbsp>Reynolds.
      <newblock>Separation logic: a logic for shared mutable data structures.
      <newblock><localize|In ><with|font-shape|italic|Proceedings of the 17th
      Annual IEEE Symposium on Logic in Computer Science>, LICS '02,
      <localize|pages >55\U74. USA, 2002. IEEE Computer Society.<newblock>

      <bibitem*|27><label|bib-rumelhart1986aa>David<nbsp>E Rumelhart,
      Geoffrey<nbsp>E Hinton<localize|, and >Ronald<nbsp>J Williams.
      <newblock>Learning internal representations by error propagation.
      <newblock><with|font-shape|italic|Biometrika>, 71(599-607):6,
      1986.<newblock>

      <bibitem*|28><label|bib-sep-frame-problem>Murray Shanahan.
      <newblock>The frame problem. <newblock><localize|In
      >Edward<nbsp>N.<nbsp>Zalta<localize|, editor>,
      <with|font-shape|italic|The Stanford Encyclopedia of Philosophy>.
      Metaphysics Research Lab, Stanford University, 2016.<newblock>

      <bibitem*|29><label|bib-silver2017mastering>David Silver, Julian
      Schrittwieser, Karen Simonyan, Ioannis Antonoglou, Aja Huang, Arthur
      Guez, Thomas Hubert, Lucas Baker, Matthew Lai, Adrian Bolton
      et<nbsp>al. <newblock>Mastering the game of Go without human knowledge.
      <newblock><with|font-shape|italic|Nature>, 550(7676):354\U359,
      2017.<newblock>

      <bibitem*|30><label|bib-tamkin2021understanding>Alex Tamkin, Miles
      Brundage, Jack Clark<localize|, and >Deep Ganguli.
      <newblock>Understanding the capabilities, limitations, and societal
      impact of Large Language Models. <newblock><with|font-shape|italic|ArXiv
      preprint arXiv:2102.02503>, 2021.<newblock>

      <bibitem*|31><label|bib-van2011logicaldynamics>Johan Van Benthem.
      <newblock><with|font-shape|italic|Logical Dynamics of Information and
      Interaction>. <newblock>Cambridge University Press, 2011.<newblock>

      <bibitem*|32><label|bib-van2015dynamic>Johan Van Benthem<localize| and
      >Sonja Smets. <newblock>Dynamic logics of belief change.
      <newblock><localize|In >H.<nbsp>Van Ditmarsch, J.<nbsp>Halpern,
      W.<nbsp>van der<nbsp>Hoek<localize|, and >B.<nbsp>Kooi<localize|,
      editors>, <with|font-shape|italic|Handbook of Epistemic Logic>,
      <localize|pages >313\U393. College Publications, London, UK,
      2015.<newblock>

      <bibitem*|33><label|bib-ditmarschDEL>Hans Van Ditmarsch, Wiebe
      van<nbsp>Der Hoek<localize|, and >Barteld Kooi.
      <newblock><with|font-shape|italic|Dynamic Epistemic Logic>,
      <localize|volume> 337. <newblock>Springer, 2007.<newblock>

      <bibitem*|34><label|bib-vaswani2017attention>Ashish Vaswani, Noam
      Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones,
      Aidan<nbsp>N.<nbsp>Gomez, Lukasz Kaiser<localize|, and >Illia
      Polosukhin. <newblock>Attention is all you need.
      <newblock><with|font-shape|italic|CoRR>, abs/1706.03762,
      2017.<newblock>
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|color|#000000>
    <associate|font|stix>
    <associate|font-base-size|12>
    <associate|font-family|rm>
    <associate|info-flag|minimal>
    <associate|item-vsep|<macro|0.2fn>>
    <associate|math-font|math-stix>
    <associate|padding-above|0.5fn>
    <associate|padding-below|0.5fn>
    <associate|page-bot|1in>
    <associate|page-even|1in>
    <associate|page-even-footer|>
    <associate|page-even-header|>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-odd|1in>
    <associate|page-odd-footer|>
    <associate|page-odd-header|>
    <associate|page-right|1in>
    <associate|page-screen-margin|false>
    <associate|page-top|1in>
    <associate|page-type|letter>
    <associate|page-width|auto>
    <associate|page-width-margin|false>
    <associate|par-par-sep|0fn>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|2>>
    <associate|auto-4|<tuple|2.2|2>>
    <associate|auto-5|<tuple|2.2|3>>
    <associate|bib-Baltag:2004aa|<tuple|9|3>>
    <associate|bib-Baltag:2011ab|<tuple|10|3>>
    <associate|bib-Christoff:2015aa|<tuple|11|3>>
    <associate|bib-Reynolds:2002aa|<tuple|26|4>>
    <associate|bib-achiam2023gpt|<tuple|1|3>>
    <associate|bib-baccini2024dynamic|<tuple|2|3>>
    <associate|bib-badreddine2022aa|<tuple|3|3>>
    <associate|bib-balkenius1991nonmonotonic|<tuple|4|3>>
    <associate|bib-baltag2019dynamic|<tuple|6|3>>
    <associate|bib-baltag2019right|<tuple|8|3>>
    <associate|bib-baltag2019socialnetworks|<tuple|5|3>>
    <associate|bib-baltag2019tracking|<tuple|7|3>>
    <associate|bib-ditmarschDEL|<tuple|33|4>>
    <associate|bib-dubey2024llama|<tuple|12|3>>
    <associate|bib-gallegos2024bias|<tuple|13|3>>
    <associate|bib-garcez2008neural|<tuple|14|3>>
    <associate|bib-geiger2024aa|<tuple|15|3>>
    <associate|bib-giordano2022conditional|<tuple|16|3>>
    <associate|bib-kisby2022logic|<tuple|17|3>>
    <associate|bib-kisby2024hebbian|<tuple|18|3>>
    <associate|bib-leitgeb2001nonmonotonic|<tuple|19|3>>
    <associate|bib-leitgeb2003nonmonotonic|<tuple|20|3>>
    <associate|bib-leitgeb2018neural|<tuple|21|3>>
    <associate|bib-manhaeve2021neural|<tuple|22|3>>
    <associate|bib-mcdermott1987critique|<tuple|23|4>>
    <associate|bib-odense2022semantic|<tuple|25|4>>
    <associate|bib-oneil2017weapons|<tuple|24|4>>
    <associate|bib-rumelhart1986aa|<tuple|27|4>>
    <associate|bib-sep-frame-problem|<tuple|28|4>>
    <associate|bib-silver2017mastering|<tuple|29|4>>
    <associate|bib-tamkin2021understanding|<tuple|30|4>>
    <associate|bib-van2011logicaldynamics|<tuple|31|4>>
    <associate|bib-van2015dynamic|<tuple|32|4>>
    <associate|bib-vaswani2017attention|<tuple|34|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      achiam2023gpt

      dubey2024llama

      vaswani2017attention

      silver2017mastering

      gallegos2024bias

      oneil2017weapons

      tamkin2021understanding

      mcdermott1987critique

      sep-frame-problem

      Reynolds:2002aa

      Baltag:2004aa

      van2011logicaldynamics

      ditmarschDEL

      baltag2019socialnetworks

      Christoff:2015aa

      baltag2019dynamic

      baltag2019right

      Baltag:2011ab

      balkenius1991nonmonotonic

      giordano2022conditional

      leitgeb2001nonmonotonic

      leitgeb2003nonmonotonic

      leitgeb2018neural

      odense2022semantic

      kisby2022logic

      kisby2024hebbian

      kisby2024hebbian

      van2011logicaldynamics

      van2015dynamic

      baltag2019tracking

      baccini2024dynamic

      baltag2019socialnetworks

      Christoff:2015aa

      rumelhart1986aa

      badreddine2022aa

      geiger2024aa

      manhaeve2021neural

      garcez2008neural
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|0.5fn>Previous
      Work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|0.5fn>Proposed
      Work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|0.5fn>Comparing Neural Network
      Update with Dynamic Updates <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|0.5fn>Building Aligned Neural
      Networks using Dynamic Logic <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>