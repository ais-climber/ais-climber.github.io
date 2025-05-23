<TeXmacs|2.1.4>

<style|<tuple|article|python|cite-author-year|cite-sort|fontawesome|termes-font>>

<\body>
  <\hide-preamble>
    \;

    <assign|doc-title|<macro|x|<doc-title-block|<very-large|<doc-title-name|<arg|x>>>>>>

    <assign|by-text|<macro|>>

    <assign|doc-subtitle|<macro|x|<\surround|<vspace*|0.25fn>|<vspace|0.5fn>>
      <doc-title-block|<font-magnify|1.25|<arg|x>>>
    </surround>>>

    <assign|author-name|<macro|author|<surround|<vspace*|0fn>|<vspace|0.3fn>|<doc-author-block|<with|font-series|bold|<author-by|<arg|author>>>>>>>

    <assign|sectional-sep|<macro|<space|5fn>>>

    <assign|bibliography-text|<macro|<localize|References>>>

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

    <assign|Typ|<with|font-series|bold|<text|T>>>

    <assign|diaBelieve|\<langle\><value|Believe>\<rangle\>>

    <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

    <assign|diaTyp|\<langle\><value|Typ>\<rangle\>>

    <assign|Knownby|<with|font-series|bold|<text|K><rsup|\<downarrow\>>>>

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

    <assign|render-theorem|<\macro|which|body>
      <render-enunciation|<theorem-name|<arg|which><theorem-sep>>|<arg|body>>
    </macro>>

    <assign|postulate|<\macro|body>
      <surround|<next-theorem>||<render-theorem|<theorem-numbered|Postulate|<the-theorem>>|<arg|body>>>
    </macro>>

    <assign|thesis-statement|<\macro|body>
      <render-theorem|<\theorem-unnumbered>
        Thesis Statement
      </theorem-unnumbered>|<arg|body>>
    </macro>>

    <assign|author-affiliation|<\macro|address>
      <doc-author-block|<arg|address>>
    </macro>>

    <assign|doc-date|<macro|body|<doc-title-block|<with|font-shape|italic|<arg|body>>>>>

    <assign|doc-author-block|<\macro|body>
      <space|0pt><tabular*|<tformat|<cwith|1|1|1|1|cell-lsep|0spc>|<cwith|1|1|1|1|cell-rsep|0spc>|<cwith|1|1|1|1|cell-bsep|0spc>|<cwith|1|1|1|1|cell-tsep|0spc>|<cwith|1|1|1|1|cell-hyphen|t>|<cwith|1|1|1|1|cell-hmode|min>|<cwith|1|1|1|1|cell-width|1par>|<table|<row|<\cell>
        <\with|par-mode|center>
          <arg|body>
        </with>
      </cell>>>>>
    </macro>>

    <assign|subsection-title|<macro|name|<sectional-normal-bold|<vspace*|1.5fn><large|<arg|name>><vspace|0.5fn>>>>

    <assign|section-title|<macro|name|<sectional-normal-bold|<vspace*|1.5fn><very-large|<arg|name>><vspace|1fn>>>>

    <assign|todo-bg-color|#e0dfba>

    <assign|todo-color|#4c4b0d>

    <assign|cursor-color|#8f3f71>

    <assign|math-cursor-color|#8f3f71>

    <assign|selection-color|#4c4b0d>

    <assign|match-color|#4c4b0d>

    <assign|subsection-toc|<macro|name|>>

    <assign|paragraph-toc|<macro|name|>>
  </hide-preamble>

  <doc-data|<doc-title|Response to the DFF>|<doc-subtitle|Computational
  Learning rendered in Dynamic Logics (CLariDy)>|<doc-author|<author-data>>|<with|doc-date|<macro|body|<vspace|0fn><inactive*|<doc-title-block|<with|font-shape|italic|<arg|body>>>>>|<doc-date|November
  4, 2024>>>

  <section*|Committee>

  <\itemize>
    <item>Artur Czumaj

    <with|font-series|bold|Theoretical computer science, algorithms & graph
    theory>

    <item>Robbert Krebbers

    <with|font-series|bold|Programming languages, proof assistant work (Coq)>

    <item>Matthew Chalmers

    <with|font-series|bold|Data visualization, ethical systems design, mobile
    computing>

    <item>Einar Broch Johnsen

    <with|font-series|bold|Formal methods, verification, logic, type systems>

    <item>Davide Sangiorgi

    <with|font-series|bold|Concurrent systems, verification, semantics>

    <item>Maria Naya Plasencia

    <with|font-series|bold|Cryptography>

    <item>Léo Ducas

    <with|font-series|bold|Cryptography>

    <item>Ohad Kammar

    <with|font-series|bold|Category theory, logic, PL semantics>

    <item>Francisco Martín Rico

    <with|font-series|bold|AI, robotics, computer vision>
  </itemize>

  <section*|DFF Feedback>

  <\description>
    <item*|Recommendation>Recommended

    <item*|Strengths>This project proposes dynamic logic for reasoning about,
    verifying, and provide characterization of the learning processes one
    finds in neural networks and AI. The goal itself (explaining learning in
    AI) is extremely hot these days, as the behavior of learning systems
    remains rather mysterious (aside from mathematical explanations via
    techniques such as steepest descent in partial derivatives).

    The use of dynamic logics in explaining learning processes is original.

    The PI has very strong expertise in logic, demonstrated by many years of
    leadership on the area.\ 

    The team of collaborators, including international collaborators, is very
    strong, providing useful expertise in the project.\ 

    Moreover the PI will be joined by a very promising young researcher in
    the field (Caleb Schultz Kisby).

    The overall strategy for management of the project appears to be good.

    <item*|Weaknesses>While the use of dynamic logics in explaining learning
    processes is original, it appears also extremely risky, <todo|as the
    evidence that dynamic logics could produce something of concrete interest
    is currently weak (in this respect the project does not really clarify
    matters).>

    Similarly the PI has certainly a robust background in dynamic epistemic
    logic, topological semantics, and also learning theory. <todo|However it
    is not very clear if and why actual earlier work from the PI would be
    useful and used in the project.>

    The relationship between Hebbian learning and backpropagation in the
    project is sometimes not very clear. <with|font-series|bold|Caleb: That's
    a fair point.> <todo|Similarly for the role of the logics of Hebbian
    learning partly developed by the PI.>

    <todo|The project has a network of excellent international collaborators;
    there are many of them; however for most of them the collaboration might
    just be a single visit to DTU.> <with|font-series|bold|Caleb: Also a good
    point, unfortunately.> It is good that the PhD will spend a semester
    abroad (in Amsterdam), though this period might come a bit too early (the
    first half of the second year), right when the shape of the PhD goal
    should begin to emerge. (This is a minor point.)

    <todo|It is not clear what the sw developed in the second part of WP1
    will do and how.>

    <item*|Potential comments on the Qualifications of applicant>The PI has
    very strong expertise in logic, including a great record in dynamic
    logic, the main focus of the proposal. The machine learning expertise of
    the PI is less evident, though it is likely to be provided by the hired
    named post-doc, Caleb Schultz Kisby (now at Indiana U.). Other
    collaborators mentioned in the proposal should positively contribute to
    the proposal, though with so many named researchers, it's difficult to
    see the synergy and a clear plan of that collaboration.
  </description>

  <section*|Purpose of the Hearing>

  The party hearing must ensure that you are familiar with the supplementary
  information in the form of external assessment that will be included in the
  council's processing of your application.

  <with|font-series|bold|You can only comment on any errors or
  misunderstandings in the assessment and point out any problems with the
  competence of the external assessors.>

  The consultation does not give you the opportunity to change, expand or
  improve your submitted application. As stated in DFF's announcement, DFF
  does not receive supplementary application material after the application
  deadline, and the council will therefore disregard any improvements to the
  project description in your consultation response in the further processing
  of your application.

  You can read more about DFF's processing procedures, including external
  assessment and party hearing, in chapters 5.4 and 5.6 of<nbsp><hlink|DFF's
  current announcement|https://dff.dk/ansogning/#opslag><nbsp>as well as in
  DFF's Panel Guidelines 2022.

  The response to the hearing should be as brief as possible. It can be
  written in either Danish/Scandinavian or English.

  <section*|Scrapped Text for Raw Material>

  The PhD student will be <with|font-series|bold|recruited through an open
  competition> announced widely in the communities of TCS and logic, e.g.,
  through the Logic mailing list. Both the call and the selection procedure
  will be very sensitive to the issue of gender balance and equal
  opportunity. Through local (at DTU) and international (numerous summer
  schools) teaching, the PI's research agenda is familiar to young logicians.
  The Danish and international collaborators mentioned in the project
  description will be consulted, but the final decision on the personnel will
  be taken by the PI in consultation with the Postdoc. Ample time is allowed
  for the selection procedure to succeed. The ideal candidate is envisioned
  to have a MSc in mathematical logic or TCS.

  \;

  <paragraph|Special justifications for DFF Project 2 in Natural Sciences.>

  This project arose from the realization that the topological learning
  perspective of the PI and the neural network semantics approach of the
  Postdoc together form a more unified picture of computational learning. As
  we have outlined in this proposal, the problem of reasoning about and
  guiding learning processes cuts across many fields, including artificial
  intelligence, TCS, dynamic epistemic logic, formal verification, social
  networks, and cognitive science. Questions of logic design, semantics,
  soundness, completeness, and explainability of learning processes bond the
  Work Packages, and will put the project participants in constant dialogue.
  The ambition, reach, and interdisciplinarity of this project fulfills the
  requirements of DFF Project 2, as it requires a team consisting of two
  separate full-time researchers, a PhD student and the Postdoc, and a
  network of collaborators. A project of this size does not fit the funding
  framework of DFF Project 1.

  Apart from expanding and strengthening this international collaboration
  network, this project will foster the PI's existing Denmark-based
  collaboration with Roskilde University, in particular with
  Profs.<nbsp>Blackburn and Braüner. They regularly participate in joint
  seminars, reading groups and student supervision activities at DTU and
  Roskilde University.

  \;

  <no-indent><with|font-series|bold|B.> <with|font-series|bold|Relating to
  other neuro-symbolic approaches and implementing software.> In the second
  part of the WP1 we will situate our dynamic logic framework and its
  interpretation within the broader range of neuro-symbolic systems,
  including Logic Tensor Networks <cite|badreddine2022aa>, Distributed
  Alignment Search <cite|geiger2024aa>, DeepProbLog
  <cite|manhaeve2021neural>, Logic Explained Networks
  <cite|ciravegna2023logic|Balasubramaniam:2023to>, and neural network
  fibring <cite|garcez2008neural>. We will compare our system to these other
  frameworks using the classifications of neuro-symbolic systems provided by
  <cite|bader2005aa|sarker2021aa|kautz2022aa|besold2021neural>. To address
  this last point, we will develop a software suite that performs the neural
  network verification and model building. The user will provide learning
  constraints in a generous language of FOL alongside dynamic operators for
  neural network updates. The suite will be implemented in Python, using
  standard graph and neural network libraries (e.g., NetworkX
  <cite|hagberg2008aa> and Tensorflow <cite|abadi2016aa>). This will be the
  first such neuro-symbolic system that makes use of <em|learning>
  constraints. The expected output of WP1B is the software suite along with
  experiments and a survey paper that compares this system to the other
  neuro-symbolic systems. We will submit these results for publication in the
  following venues: NeSy, CAV, and journals AIJ, JAIR, and <em|Neurosymbolic
  AI>.

  \;

  \;

  <no-indent><with|color|purple|As discussed above, by interpreting dynamic
  logic directly over neural networks we are able to express constraints on a
  neural network's behavior before and after learning, e.g.,
  <math|<around|(|<math-bf|T>\<varphi\>\<to\>\<psi\>|)>\<wedge\><around|[|P|]>*<around|(|<math-bf|T>\<varphi\>\<to\>\<psi\>|)>>.
  We can then apply tools from dynamic logic to verify and build neural
  networks that obey these constraints. So far, this has only been done in
  somewhat simplified scenarios <cite|Kisby:2024aa>. The goal of this work
  package is to take steps towards achieving this vision in practice.>\ 

  \;

  \\textcolor{purple}{

  \;

  The Logic of Hebbian Learning discussed above
  <cite|Kisby:2022aa|Kisby:2024aa> demonstrated that dynamic logic can be
  used to model a neural network learning algorithm. But the choice of update
  was simple by design. uses dynamic logic to completely characterize a very
  simple unsupervised learning process.

  We would like to apply this method to more realistic neural network
  learning algorithms. The goal of this work package is exactly that. We will
  use dynamic logic to model the effects of

  \;

  We would like to apply this method to more realistic neural network
  learning algorithms. The goal of this work package is exactly that. We will
  use dynamic logic to model the effects of the most widely used neural
  network learning algorithm: gradient descent, implemented as
  back-propagation <cite|rumelhart1986aa>. In this logic, dynamic operators
  <math|<around|[|P;Q|]>> will denote a single round of back-propagation,
  where <math|P> is the input and <math|Q> is its expected answer. Note that
  dynamic logic normally considers unary operators <math|<around|[|P|]>>,
  i.e. updates without an expected answer. In machine learning terms, these
  operators perform <em|unsupervised> update. But back-propagation is a
  <em|supervised> learning process, so we will also explore the role of
  \Psupervised\Q operators <math|<around|[|P;Q|]>> more generally in dynamic
  logic. <with|color|purple|Finally, we consider a richer constraint
  language: First-Order Logic (FOL). Existing neuro-symbolic systems use the
  language of FOL to reason about and build neural networks (e.g., Logic
  Tensor Networks <cite|badreddine2022aa>, Logical Neural Networks
  <cite|riegel2020aa>), but it is still an open problem to prove that any
  such neural network mapping to FOL is sound. Our approach is to lift the
  existing (sound) semantics over the modal language to FOL, using the
  methods from <cite|andreka1995aa>.> The expected output of WP1A is a
  collection of theorems proving the soundness of various properties of
  backpropagation, supervised upgrade, and FOL interpreted using neural
  networks. We plan to submit these results for publication in the following
  venues: AAAI, AAMAS, IJCAI, ICLR, and the journals AIJ, JAIR, and
  <em|Neurosymbolic AI>.

  \;

  <with|font-series|bold|Building a topological logic of NN learning and
  providing topological characterizations.> Characterization results in
  learning theory usually fall into one of two categories: topological and
  computational <cite|Case:2016aa>. We mentioned one of these topological
  results before: learning in the limit (a central notion of computational
  learning theory) can be captured by <math|T<rsub|d>> topological spaces
  <cite|BGS2015>. In this part of WP2, we will further extend this idea of
  correspondence between properties of topological spaces and properties of
  learners. In particular, we will characterize the truth-tracking power and
  scope of neural network learning (Hebbian learning and back-propagation)
  topologically. The semantics of our resulting logic will be informed by the
  existing topological approach to neural networks <cite|HEALY:1999aa>. Of
  course, there are limits to the topological characterization of learning,
  as some important classes of learnable concepts fail to be topologically
  invariant (vis. finite elasticity, <cite|Brecht:2010aa>). We will prove
  analogous results for neural network learning. The expected output of WP2B
  is a number of theorems that show correspondences between topological
  properties and properties of neural network learning. We plan to submit
  these results for publication in the following venues: TARK, KR, and the
  journals JoLLI, JLC, AIJ, JAIR, <em|Studia Logica>, and the <em|Journal of
  Applied Non-Classical Logics>.
</body>

<\initial>
  <\collection>
    <associate|bg-color|#f9f5d7>
    <associate|color|#000000>
    <associate|eqn-short-above|<macro|0.3fn>>
    <associate|eqn-short-below|<macro|0.3fn>>
    <associate|font-base-size|11>
    <associate|info-flag|minimal>
    <associate|item-vsep|<macro|0.3fn>>
    <associate|large-padding-above|0.5fn>
    <associate|large-padding-below|0.5fn>
    <associate|math-font|math-termes>
    <associate|padding-above|0.5fn>
    <associate|padding-below|0.5fn>
    <associate|page-bot|1.25in>
    <associate|page-even|1.25in>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-odd|1.25in>
    <associate|page-right|1.25in>
    <associate|page-screen-margin|false>
    <associate|page-top|1.25in>
    <associate|page-type|letter>
    <associate|page-width|auto>
    <associate|page-width-margin|false>
    <associate|par-par-sep|0fn>
    <associate|toc-next|5fn>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-3|<tuple|Potential comments on the Qualifications of
    applicant|2>>
    <associate|auto-4|<tuple|Potential comments on the Qualifications of
    applicant|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      badreddine2022aa

      geiger2024aa

      manhaeve2021neural

      Balasubramaniam:2023to

      ciravegna2023logic

      garcez2008neural

      besold2021neural

      kautz2022aa

      sarker2021aa

      bader2005aa

      hagberg2008aa

      abadi2016aa

      Kisby:2024aa

      Kisby:2024aa

      Kisby:2022aa

      rumelhart1986aa

      badreddine2022aa

      riegel2020aa

      andreka1995aa
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Committee>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|DFF
      Feedback> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Purpose
      of the Hearing> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Scrapped
      Text for Raw Material> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>