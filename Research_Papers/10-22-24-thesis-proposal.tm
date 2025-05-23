<TeXmacs|2.1.1>

<style|<tuple|article|indent-paragraphs|python|cite-author-year|cite-sort|termes-font>>

<\body>
  <\hide-preamble>
    \;

    <assign|doc-title|<macro|x|<doc-title-block|<very-large|<doc-title-name|<arg|x>>>>>>

    <assign|by-text|<macro|>>

    <assign|doc-subtitle|<macro|x|<\surround|<vspace*|0.25fn>|<vspace|0.5fn>>
      <doc-title-block|<font-magnify|1.25|<arg|x>>>
    </surround>>>

    <assign|author-name|<macro|author|<surround|<vspace*|0fn>|<vspace|0.3fn>|<doc-author-block|<with|font-series|bold|<author-by|<arg|author>>>>>>>

    <assign|sectional-sep|<macro|<space|0.5fn>>>

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
  </hide-preamble>

  <doc-data|<doc-title|Neural Network Semantics>|<doc-subtitle|Thesis
  Proposal>|<doc-author|<author-data|<author-name|Caleb Schultz
  Kisby>|<\author-affiliation>
    Indiana University

    <with|font-shape|italic|November 21, 2024>
  </author-affiliation>>>|<with|doc-date|<macro|body|<vspace|0fn><inactive*|<doc-title-block|<with|font-shape|italic|<arg|body>>>>>|<doc-date|November
  4, 2024>>>

  <section|Introduction>

  In the last 15 years, modern artificial intelligence (AI) systems have
  shown unprecedented success at learning from data with little human
  guidance. Consider for example large language models such as Llama and GPT
  <cite|vaswani2017attention|dubey2024llama|achiam2023gpt>, which have taken
  the world by storm with their ability to learn to converse in English
  merely from unstructured text data they scrape off the web. Or consider
  AlphaGo <cite|silver2017mastering>, which learned to play Go at a human
  expert level by repeatedly playing against itself. These breakthroughs in
  machine learning are in large part thanks to the widespread use of neural
  networks \U brain-inspired computational models that are flexible and excel
  at learning from unstructured data.

  But the danger of neural networks is that they come with no safety,
  reliability, or correctness guarantees. If you play with systems like GPT
  long enough, you eventually realize that they carry all sorts of
  misconceptions, make silly logical mistakes, and are quite happy to spew
  out disinformation <cite|tamkin2021understanding>. Neural networks also
  lack transparency, which means diagnosing and correcting these errors is
  not feasible. (Try to determine which of the 100 billion neurons in GPT are
  responsible for associating Muslims with terrorism
  <cite|abid2021persistent>!) In practice, a computational learner is often a
  \<#2018\>black-box\<#2019\> whose correct inferences, mistakes, and biases
  lack interpretation and explanation.

  How can we better understand and control this seemingly black-box behavior
  of neural networks? The answer lies in symbolic (logic) systems, which were
  commonly used to model reasoning and intelligent behavior prior to the
  rapid growth of neural network systems. In contrast with neural networks,
  symbolic systems provide explicit rules for their reasoning in a
  human-interpretable language. However, this purely logic-based approach was
  largely abandoned due to logic's inability at the time to model flexible
  learning or update (known as the <with|font-shape|italic|frame problem> in
  AI <cite|sep-frame-problem|mcdermott1987critique>).

  There is still hope that we might be able to integrate neural networks and
  symbolic systems while retaining the advantages of both. The field of
  <with|font-shape|italic|neuro-symbolic AI> has emerged in response to this
  possibility <cite|bader2005dimensions|sarker2021neuro|besold2021neural>. As
  a result of this effort, there are now many different proposals for
  neuro-symbolic systems, including Logic Tensor Networks
  <cite|badreddine2022aa>, Distributed Alignment Search <cite|geiger2024aa>,
  DeepProbLog <cite|manhaeve2021neural>, Logic Explained Networks
  <cite|ciravegna2023logic>, and neural network fibring
  <cite|garcez2008neural>. But these systems form a scattered picture; some
  unifying perspective or theory is needed. In the preface to a recent
  neuro-symbolic survey book <cite|besold2021neural>, Frank van Harmelen
  writes:

  <\quote-env>
    What are the possible interactions between knowledge and learning? Can
    reasoning be used as a symbolic prior for learning \<ldots\> Can symbolic
    constraints be enforced on data-driven systems to make them safer? Or
    less biased? Or can, vice versa, learning be used to yield symbolic
    knowledge? \<ldots\> <with|font-series|bold|neuro-symbolic systems
    currently lack a theory that even begins to ask these questions, let
    alone answer them.>
  </quote-env>

  In my thesis, I will offer a new unifying perspective that sheds light on
  these questions. The basis for many neuro-symbolic systems is that they
  encode logical information into neural networks, or conversely, encode
  neural networks as models in logic <cite|odense2022ASF>. Given these
  translations, certain neural networks and logic models are able to
  represent the same information. This suggests that we can think of neural
  networks in the same way as a logician would think about a model.

  The plan is to take this idea as far as it will go: I will develop logics
  with these <with|font-shape|italic|neural network semantics>, whose
  formulas are interpreted in terms of binary neural networks. First, I will
  consider <with|font-shape|italic|static> conditional and modal logics whose
  operators are given by the closure (or forward propagation) of signals in
  the neural network. This closure operator allows these logics to express
  neural network <with|font-shape|italic|inference>, i.e. the input-output
  behavior of the net. Next, I will give a <with|font-shape|italic|dynamic>
  logic (inspired by Dynamic Epistemic Logic
  <cite|ditmarschDEL|van2011logicaldynamics|van2015dynamic>) with an operator
  for Hebbian learning <cite|hebb-organization-of-behavior-1949>, a simple
  neural network update policy. Along the way, I will show how foundational
  questions about neural networks become natural and answerable questions in
  logic. I'll focus on three questions that are natural to ask about for any
  logical system: <with|font-shape|italic|soundness>,
  <with|font-shape|italic|completeness>, and
  <with|font-shape|italic|expressivity>.

  <paragraph*|Soundness.>What axioms are sound for the semantics? In neural
  network semantics, this question becomes: What properties can we formally
  verify for neural network inference? In the dynamic logic setting: What
  properties can we formally verify for neural network
  <with|font-shape|italic|learning policies>?

  <paragraph*|Completeness.>What are the complete axioms for the semantics?
  This is equivalent to the question of whether we can build a model that
  obeys a set of logical constraints <math|\<Gamma\>>. In neural network
  semantics, completness asks whether we can build a
  <with|font-shape|italic|neural network> that obeys <math|\<Gamma\>>. And
  for dynamic logic, this asks whether we can build a neural network that
  obeys <math|\<Gamma\>> before and after learning takes place. This is a key
  to the AI Alignment problem, which requires building neural networks with
  these kinds of guarantees.

  <paragraph*|Expressivity.>What formulas can the semantics model or define?
  How does the expressive power of two different semantics compare? For
  neural networks, expressivity is a proxy for what kinds of functions neural
  networks are capable of representing. Additionally, it provides a metric
  for comparing the power of neural networks against traditional models in
  logic. In the dynamic setting: What kinds of
  <with|font-shape|italic|learning policies> are neural networks able to
  support?<vspace|0.5fn>

  In summary, I will defend the following thesis statement:

  <\thesis-statement>
    Neural networks can be treated as a class of models in formal logic
    (<with|font-shape|italic|neural network semantics>). In the process of
    developing these semantics, foundational questions about neural network
    inference and learning become natural and answerable questions in logic.
    In particular:

    <center|<tabular|<tformat|<cwith|1|-1|3|3|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-tsep|0fn>|<cwith|1|-1|1|-1|cell-bsep|0.3fn>|<twith|table-tsep|0.75fn>|<twith|table-bsep|0.75fn>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|1|1|-1|cell-bborder|0ln>|<cwith|2|2|1|-1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|3|3|cell-rborder|0ln>|<cwith|1|-1|1|1|cell-rsep|0.2fn>|<cwith|1|1|1|-1|cell-bsep|0.3fn>|<cwith|2|2|1|-1|cell-bsep|0.3fn>|<table|<row|<cell|<with|font-series|bold|Soundness>>|<cell|<space|1em>answers<space|1em>>|<\cell>
      \PHow can we formally verify that a class of neural networks

      and its learning policies obey certain properties?\Q
    </cell>>|<row|<cell|<with|font-series|bold|Completeness>>|<cell|<space|1em>answers<space|1em>>|<\cell>
      \PHow can we build a neural network that aligns with

      constraints, even as the net learns and changes over time?\Q
    </cell>>|<row|<cell|<with|font-series|bold|Expressivity>>|<cell|<space|1em>answers<space|1em>>|<\cell>
      \PWhat kinds of functions and learning policies are neural\ 

      networks capable of representing?\Q
    </cell>>>>>>
  </thesis-statement>

  <section|Related Work>

  My thesis work builds on existing logics that use neural network semantics,
  and shares similarities with logics for modeling social networks.
  Additionally, my approach to modeling learning takes inspiration from work
  on learning in Dynamic Epistemic Logic (DEL). Here I'll take a moment to
  situate my thesis in this broader context and clarify what my contribution
  is in each case.

  <paragraph|Logics with Neural Network Semantics.>The core idea behind
  neural network semantics\Vthat neural networks can be treated as models for
  logic\Vactually dates back to the very first paper on neural networks. In
  McCulloch and Pitts <cite|mcculloch1943logical>, logical formulas are
  mapped directly to individual neurons in the net. This approach suffers
  from the well-known \Pgrandmother cell\Q problem <cite|gross2002genealogy>:
  it is cognitively implausible that an \ individual neuron could represent a
  complex concept such as \Pgrandmother\Q. Instead, concepts in brain
  networks are distributed across multiple neurons at once.

  Neural network semantics is based on a recent reimagining of this approach
  <cite|balkenius1991nonmonotonic|leitgeb2018neural>, where logical formulas
  are mapped to sets of neurons rather than to individual neurons. Early work
  established the correspondence between inference in a neural network and
  nonmonotonic conditionals <cite|balkenius1991nonmonotonic|leitgeb2001nonmonotonic|leitgeb2003nonmonotonic|blutner2004nonmonotonic>.
  More recently, <cite|giordano2021weighted|giordano2022conditional> proved
  soundness for inference over fuzzy neural networks. In my thesis work so
  far <cite|kisby2022logic|kisby2024hebbian>, I applied ideas from Dynamic
  Epistemic Logic to model a simple update policy, Hebbian learning, in
  neural network semantics. The key results of this work are the first ever
  soundness and completeness theorems for any learning policy on neural
  networks.

  <paragraph|Logics with Social Network Semantics.>It has recently come to my
  attention that a similar approach is being used to model group behavior in
  social networks. In these social network logics
  <cite|Christoff:2015aa|baltag2019socialnetworks|baccini2024dynamic>, nodes
  in the graph represent individual agents, and each formula is mapped to the
  set of agents that adopt a certain social attitude. Agents influence each
  other, and the spread of their attitudes is modeled much in the same way as
  forward propagation of a signal in a neural network.

  This work shares essentially the same premise and techniques as neural
  network semantics; I personally view this as a case of parallel discovery.
  But the two approaches still differ in interesting ways. First, in some
  sense the two semantics are operating on different \Plevels\Q: social
  networks model interactions between multiple agents, whereas neural
  networks model interactions between components of the same (single) agent.
  Second, the two differ in subject matter. Social network semantics focuses
  on different social links between agents, and how these links change
  <cite|baccini2024dynamic>. Neural network semantics, my own work included,
  instead focuses on inferences and updates inspired by artificial and
  natural neural networks.

  <paragraph|Other Dynamic Logics for Learning.>My approach to modeling
  learning in neural networks takes inspiration from Dynamic Epistemic Logic
  (DEL) <cite|ditmarschDEL|van2011logicaldynamics>. Perhaps the closest
  logics to mine are the logics for plausibility upgrade, in particular
  conditionalization (<math|<value|Cond>>), lexicographic
  (<math|<value|Lex>>), and conservative (<math|<value|Consr>>) upgrade
  <cite|van2007beliefrevision|van2015dynamic>. In the Expressivity portion of
  my dissertation, I will explore whether Hebbian update
  <math|<value|Hebbstar>> can be simulated by plausibility upgrade, and
  vice-versa whether <math|<value|Cond>>, <math|<value|Lex>>,
  <math|<value|Consr>>, and vice-versa whether these plausibility upgrades
  can be simula.

  In my thesis, I mainly focus on the effects of single-step updates. But
  recent literature on learning in DEL goes beyond this by considering
  iterated update and convergence to the truth (\Plearning in the limit\Q)
  <cite|baltag2009iterated|baltag2019dynamic|baltag2019right|baltag2019tracking>.
  The key questions here are: How can we compare the learning power of
  different iterated update policies? How can we axiomatize important
  properties of learning? These questions are answered in terms of updates on
  more classical graphs and plausibility structures. Although in this thesis
  I don't consider iterated update, I do lay down the groundwork to import
  neural network learning into this setting.

  <section|Technical Overview>

  I will now give an overview of the particular neural network semantics I've
  developed during my PhD. First, I will discuss the simplifying assumptions
  that make it possible to use neural networks as models, and introduce the
  <with|font-shape|italic|closure> (or forward propagation) of a signal in
  the net. This closure operator allows us to express the inference, or
  input-output behavior, of the net. I will give a modal logic whose key
  operator is given by this closure operator. I will then turn to dynamic
  update in neural networks and introduce iterated Hebbian learning, one of
  the simplest learning policies over nets. Finally, I will give a dynamic
  logic whose formulas express the behavior of a neural network before and
  after Hebbian update.

  <subsection|Neural Network Semantics>

  A model of neural network semantics is an artificial neural network (ANN),
  along with a valuation function which interprets propositions as sets of
  neurons. I will make a few more simplifying assumptions soon, but this is
  the basic idea.

  <\definition>
    A neural network model is <math|<value|Net>=\<langle\>N,<value|bias>,E,W,A,\<eta\>,V\<rangle\>>,
    where

    <\itemize>
      <item><math|N> is a finite nonempty set (the set of
      <with|font-shape|italic|neurons>)

      <item><math|<value|bias>> is a fixed node (the
      <with|font-shape|italic|bias> node)

      <item>Each <math|E\<subseteq\>N\<times\>N> (the
      <with|font-shape|italic|edge relation>)

      <item><math|W:E\<rightarrow\><with|font|Bbb|Q>> (the
      <with|font-shape|italic|edge weights>)

      <item><math|A:<with|font|Bbb|Q\<rightarrow\><with|font|Bbb|Q>>> (the
      <with|font-shape|italic|activation function>)

      <item><math|\<eta\>\<in\><with|font|Bbb|Q>>, <math|\<eta\>\<geq\>0>
      (the <with|font-shape|italic|learning rate>)

      <item><math|V:<text|Proposition>\<rightarrow\><value|powerset><around*|(|N|)>>
      (the <with|font-shape|italic|valuation function>)
    </itemize>
  </definition>

  \ In general, a <with|font-shape|italic|state> is just a possible
  activation pattern or configuration of the net. In practice, a neural
  network's nodes take on fuzzy activation values in
  <math|<around*|[|0,1|]>>. But we would like to associate each state with a
  binary set of neurons\Veither a neuron is active (1) or it is not (0). To
  do this, I assume that the activation function <math|A> is a (nonzero)
  binary step function (<math|A:<with|font|Bbb|Q>\<rightarrow\><around*|{|0,1|}>>).
  It turns out this binary constraint is also a common theoretical assumption
  in work that analyzes neural networks as automata
  <cite|merrill2020formal|weiss2018practical|merrill2019sequential>. In their
  terminology, we say our nets are <with|font-shape|italic|saturated>.

  Additionally, I assume there is a special bias node that is active in every
  state. This is purely for ruling out the particular edge case where
  <with|font-shape|italic|no> node is active. Since <math|<value|bias>> is
  active in every state, we can assume that no edges go into
  <math|<value|bias>>. Putting all this together, the states of the net are
  defined as follows.

  <\equation*>
    <value|State>=<around*|{|S\<mid\>S\<subseteq\>N<infix-and><value|bias>\<in\>S|}>
  </equation*>

  We can describe the input-output behavior of neural networks in terms of
  their state. Say we are given an input state <math|A> consisting of
  input-layer nodes, and a possible classification state <math|B> consisting
  of output-layer nodes. Active neurons in <math|A> successively activate new
  neurons until eventually the state of the net stabilizes. If this final
  state includes the output <math|B>, we say \Pthe net
  <with|font-shape|italic|classifies> <math|A> as <math|B>\Q.

  The state at the fixed point of this process is called the
  <with|font-shape|italic|closure> or <with|font-shape|italic|forward
  propagation> of the signal <math|A>, <math|<value|Closure><around*|(|A|)>>.
  This closure operator is central to my semantics, since it captures the
  underlying dynamics involved in neural network inference. Formally, each
  choice of <math|E,W,A> specifies a transition function from state
  <math|S\<in\><value|State>> to the next state. Given an initial state
  <math|S<rsub|0>>, this transition function <math|F<rsub|S<rsub|0>>> is
  given by

  <\equation*>
    F<rsub|S<rsub|0>><around*|(|S|)>=S<rsub|0>\<cup\><around*|{|n<space|0.5em>\<mid\><space|0.5em>A<around*|(|<big|sum><rsub|m\<in\><text|preds><around*|(|n|)>>W<around*|(|m,n|)>\<cdot\><value|bigchi><rsub|S><around*|(|m|)>|)>=1|}>
  </equation*>

  where <math|<value|bigchi><rsub|S><around*|(|m|)>=1> iff <math|m\<in\>S> is
  the indicator function. In other words,
  <math|F<rsub|S<rsub|0>><around*|(|S|)>> is the initial state
  <math|S<rsub|0>>, along with the set of nodes that are activated by their
  predecessors in <math|S>. Notice that <math|F<rsub|S<rsub|0>><around*|(|S|)>>
  is extensive: all nodes in the initial state will stay activated in
  successive states.

  Neural network models have one final constraint, which guarantees that the
  closure <math|<value|Closure><around*|(|S|)>> exists.

  <\postulate>
    I assume that for all states <math|S<rsub|0>>, <math|F> applied
    repeatedly to <math|S<rsub|0>>, i.e.

    <\equation*>
      S<rsub|0>,F<rsub|S<rsub|0>><around*|(|S<rsub|0>|)>,F<rsub|S<rsub|0>><around*|(|F<rsub|S<rsub|0>><around*|(|S<rsub|0>|)>|)>,\<ldots\>,F<rsub|S<rsub|0>><rsup|k><around*|(|S<rsub|0>|)>,\<ldots\>
    </equation*>

    has a (finite) least fixed point, and moreover that it is
    <with|font-shape|italic|unique>. Let <math|<value|Closure>:<value|State>\<rightarrow\><value|State>>
    be the function that produces that least fixed point. Let
    <math|<value|NetModel>> be the class of all binary neural network models
    that satisfy this postulate.\ 
  </postulate>

  An important feature of <math|<value|Closure>> is that it is nonmonotonic:
  it is not the case that for all <math|A,B\<in\><value|State>>, if
  <math|A\<subseteq\>B> then <math|<value|Closure><around*|(|A|)>\<subseteq\><value|Closure><around*|(|B|)>>.
  This is because our net's weights can be negative, and so
  <math|<value|Closure><around*|(|B|)>> can inhibit the activation of new
  neurons that would otherwise be activated by
  <math|<value|Closure><around*|(|A|)>>.

  For technical reasons (i.e. completeness of Hebbian update), I will also
  need \Phelper\Q operators <math|<value|Reach>> and <math|<value|Reaches>>
  for expressing graph reachability. The <math|<value|Reach>> operator is
  just ordinary graph reachability: <math|<value|Reach><around*|(|S|)>>
  returns the set of all nodes reachable from <math|S>. Similarly,
  <math|<value|Reaches><around*|(|S|)>> returns the set of all nodes that
  graph-reach some node in <math|S>. Think of these operators as sort of
  monotonic \Pversions\Q of <math|<value|Closure>>.

  I can now state the specific logic and neural network semantics that I will
  consider. Let <math|p,q,\<ldots\>> be finitely many atomic propositions.
  These represent fixed states, corresponding to features in the external
  world that we know ahead of time. Usually these are input and output
  states, although they could be intermediate \Phidden\Q states if we know
  these features ahead of time. For example, <math|p> might be the set of
  neurons that represent the color pink. For more complex formulas,

  <\definition>
    Formulas in our base language <math|<value|lang>> are given by

    <\equation*>
      \<varphi\>,\<psi\>\<assign\>p<space|0.25em>\<mid\><space|0.25em>\<neg\>\<varphi\><space|0.25em>\<mid\><space|0.25em>\<varphi\>\<wedge\>\<psi\><space|0.25em>\<mid\><space|0.25em><value|diaKnow>\<varphi\><space|0.25em>\<mid\><space|0.25em><value|diaKnownby>\<varphi\><space|0.25em>\<mid\><space|0.25em><value|diaTyp>\<varphi\>
    </equation*>

    <math|\<top\>,\<bot\>,\<vee\>,\<rightarrow\>,\<leftrightarrow\>> and the
    dual modal operators <math|<value|Know>,<value|Knownby>,<value|Typ>> are
    defined in the usual way.
  </definition>

  The intended readings for these operators are as follows
  (<math|<value|Knownby>> is conceptually tricky, I will leave it out of this
  discussion for now). <math|<value|Know>\<varphi\>> reads \Pthe agent knows
  <math|\<varphi\>>\Q, and <math|<value|Typ>\<varphi\>> reads \Ptypically
  <math|\<varphi\>>\Q. It is not immediately clear how these readings are
  justified; in my dissertation, I will justify these readings by connecting
  the neural network semantics I give here to more traditional semantics for
  <math|<value|Know>,<value|Knownby>>, and <math|<value|Typ>>.

  At last, here are the semantics. For all
  <math|<value|Net>\<in\><value|NetModel>>, <math|n\<in\>N>:

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|<value|Net>,n\<Vdash\>p>|<cell|<space|1em>iff<space|1em>>|<cell|n\<in\>V<around*|(|p|)>>>|<row|<cell|<value|Net>,n\<Vdash\>\<neg\>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<value|Net>,n<neg|\<Vdash\>>\<varphi\>>>|<row|<cell|<value|Net>,n\<Vdash\>\<varphi\>\<wedge\>\<psi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<value|Net>,n\<Vdash\>\<varphi\><infix-and><value|Net>,n\<Vdash\>\<psi\>>>|<row|<cell|<value|Net>,n\<Vdash\><value|diaKnow>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|n\<in\><value|Reaches><around*|(|<semantics|\<varphi\>>|)>>>|<row|<cell|<value|Net>,n\<Vdash\><value|diaKnownby>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|n\<in\><value|Reach><around*|(|<semantics|\<varphi\>>|)>>>|<row|<cell|<value|Net>,n\<Vdash\><value|diaTyp>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|n\<in\><value|Closure><around*|(|<semantics|\<varphi\>>|)>>>>>>
  </equation*>

  where <math|<semantics|\<varphi\>>=<around*|{|n\<mid\><value|Net>,n\<Vdash\>\<varphi\>|}>>.

  Although these semantics are based on Leitgeb's <cite|leitgeb2018neural>,
  they differ in a few key ways. First, his semantics uses conditionals
  <math|\<varphi\>\<Rightarrow\>\<psi\>> to capture neural network inference,
  whereas mine instead centers on the modal operator <math|<value|diaTyp>>.
  Second, I include these additional operators <math|<value|Know>> and
  <math|<value|Knownby>> that are not mentioned in his work. Finally, Leitgeb
  battles with the issue of how to correctly interpret negation; I sidestep
  this issue by using neural networks for interpreting
  <math|<value|diaTyp>\<varphi\>> (where the \Paction\Q happens), but not for
  <math|\<neg\>> and <math|\<wedge\>>. The bottom line is this: proving
  completeness for this logic is not necessarily just a matter of importing
  the proof from <cite|leitgeb2018neural>.

  <subsection|Dynamic Update in Neural Network Semantics>

  The neural network semantics presented so far shows us how we can use
  neural networks as models for modal logic. Neural network inference can be
  expressed in this logic using <math|<value|diaTyp>\<varphi\>>, which
  denotes the forward propagation of the signal <math|<semantics|\<varphi\>>>
  through the net. However, as discussed in the introduction, the mystery
  about neural networks is how their inference interacts with their
  <with|font-shape|italic|learning>. In this section, I will show how to
  extend these semantics to model learning and update in a neural net.

  As previously mentioned, I formalize neural network update using the
  methodology of Dynamic Epistemic Logic. Our static operators
  <math|<value|diaKnow>>, <math|<value|diaKnownby>>, and
  <math|<value|diaTyp>> are interpreted by examining the state of the neural
  net. The DEL trick is to introduce a new \Pdynamic\Q operator
  <math|<around*|[|P|]>> which <with|font-shape|italic|changes> the net in
  response to some observed formula <math|P>. First, we extend our language
  <math|<value|lang>> to <math|<value|lang><rsup|\<star\>>>, which includes
  these dynamic operators:

  <\equation*>
    \<varphi\>,\<psi\>\<assign\>p<space|0.25em>\<mid\><space|0.25em>\<neg\>\<varphi\><space|0.25em>\<mid\><space|0.25em>\<varphi\>\<wedge\>\<psi\><space|0.25em>\<mid\><space|0.25em><value|diaKnow>\<varphi\><space|0.25em>\<mid\><space|0.25em><value|diaKnownby>\<varphi\><space|0.25em>\<mid\><space|0.25em><value|diaTyp>\<varphi\><space|0.25em>\<mid\><space|0.25em><around*|[|P|]>\<varphi\>
  </equation*>

  Here, <math|<around*|[|P|]>\<varphi\>> reads \Pafter the agent observes
  <math|P>, <math|\<varphi\>> is true\Q.

  Let <math|<value|Update>:<value|NetModel>\<times\><value|State>\<rightarrow\><value|NetModel>>
  be any function which takes a neural network, some state <math|S>, \ and
  \Pupdates\Q the net somehow in response to <math|S>. We can interpret
  <math|<around*|[|P|]>> as performing this update by adding the following
  line to the semantics:

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|<value|Net>,n\<Vdash\><around*|[|P|]>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<value|Update><around*|(|<value|Net>,<semantics|P>|)>,n\<Vdash\>\<varphi\>>>>>>
  </equation*>

  In other words, in order to evaluate <math|<around*|[|P|]>\<varphi\>>, we
  simply evaluate <math|\<varphi\>> in the updated net
  <math|<value|Update><around*|(|<value|Net>,<semantics|P>|)>>.

  From a DEL perspective, this is a standard move to make. But from a machine
  learning perspective, there are a couple caveats that I should mention.
  First, <math|<around*|[|P|]>> does not model learning in the sense of
  \Piterated update until convergence\Q, but rather only models a single step
  of update. Second, we should think of <math|<around*|[|P|]>> as modeling
  <with|font-shape|italic|unsupervised learning>\Vthe model updates in
  response to an input <math|P>, but no \Pexpected answer\Q <math|y> is given
  alongside <math|P>. It is an open problem to formalize supervised learning
  (in this machine learning sense) in DEL in a non-trivial way.

  So far, I've discussed learning and update in very general terms. For my
  thesis, I will model a simple update policy over neural networks: Hebbian
  learning. The point in starting with Hebbian learning is to get the details
  right on a simpler example before lifting these ideas to, say, gradient
  descent through backpropagation <cite|rumelhart1986aa>.

  Hebb's classic learning rule <cite|hebb-organization-of-behavior-1949>
  states that when two adjacent neurons are simultaneously and persistently
  active, the connection between them strengthens (\Pneurons that fire
  together wire together\Q). In contrast with backpropagation, Hebbian
  learning is errorless and unsupervised. Another key feature is that Hebbian
  update is local \V the change in a weight <math|\<Delta\>W<around|(|m,n|)>>
  depends only on the activation of the immediately adjacent neurons. For
  this reason, the Hebbian family of learning policies is often considered
  more biologically plausible than backpropagation.

  There are many variations of Hebbian learning, but I will only consider the
  most basic form of Hebb's rule: <math|\<Delta\>W<around|(|m,n|)>=\<eta\>x<rsub|m>x<rsub|n>>,
  where <math|\<eta\>> is the learning rate and <math|x<rsub|m>,x<rsub|n>>
  are the outputs of adjacent neurons <math|m> and <math|n>. This is the
  <em|unstable> variation of Hebb's rule; repeatedly applying the rule will
  make the weights arbitrarily large. I will not consider stabilizing
  variants such as Oja's rule <cite|oja1982simplified>.

  <paragraph|Single-Step Hebbian Update.>First, consider what happens in a
  single step of Hebbian update. Given a net <math|<value|Net>> and a state
  <math|S>, we first propagate <math|S> forward through <math|<value|Net>>.
  Any edges that are involved in this propagated activation pattern
  <math|<value|Closure><around*|(|S|)>> simply have their weights
  strengthened. Formally,

  <\definition>
    Let <math|<value|Hebb>:<value|NetModel>\<times\><value|State>\<rightarrow\><value|NetModel>>
    be given by\ 

    <\equation*>
      <value|Hebb><around*|(|<around|\<langle\>|N,<value|bias>,E,W,A,\<eta\>,V|\<rangle\>>,<hspace|0.5em>S|)>=<around|\<langle\>|N,<value|bias>,E,W<rprime|'>,A,\<eta\>,V|\<rangle\>>
    </equation*>

    where

    <\equation*>
      W<rprime|'><around*|(|m,n|)>=W<around*|(|m,n|)>+\<eta\>\<cdot\><value|bigchi><rsub|<value|Closure><around*|(|S|)>><around*|(|m|)>\<cdot\><value|bigchi><rsub|<value|Closure><around*|(|S|)>><around*|(|n|)>
    </equation*>
  </definition>

  Note that <math|<value|Hebb>> does not affect the edges, activation
  function, or evaluation of propositions. This means the resulting net is
  still binary, and closures <math|<value|Closure><around*|(|S|)>> still
  exist and are unique. Therefore <math|<value|Hebb>> is well-defined. This
  also means that <math|<value|Hebb>> does not affect the
  <math|<value|Reach>> or <math|<value|Reaches>> operators. However, changing
  the weights <with|font-shape|italic|does> affect closures
  <math|<value|Closure><around*|(|S|)>>\Vthis interaction between
  <math|<value|Hebb>> and <math|<value|Closure>> (learning and inference) is
  a central issue in my thesis.

  <paragraph|Iterated Hebbian Update.>In addition to the single-step
  <math|<value|Hebb>> operator, in my thesis work I have also modelled
  <with|font-shape|italic|iterated> Hebbian update <math|<value|Hebbstar>>.
  The idea is this: what happens when we propagate a signal <math|S> through
  the net, and then <with|font-shape|italic|repeatedly> strengthen the
  weights of the edges that are involved? Recall that our single-step
  <math|<value|Hebb>> is unstable; if we repeat <math|<value|Hebb> > on a
  single input state <math|S>, the net's weights within
  <math|<value|Closure><around*|(|S|)>> will be so high that <em|any>
  activation pattern that makes contact with
  <math|<value|Closure><around*|(|S|)>> will \Prip through\Q it entirely.
  Repeating <math|<value|Hebb>> on <math|S> further will not change the
  <math|<value|Closure><around*|(|S|)>>-structure, i.e., the update has
  reached a fixed point. <math|<value|Hebbstar>> returns the net at this
  fixed point.

  Instead of reasoning abstractly about this fixed point, I formalize it by
  explicitly defining the number of iterations <math|<value|iter>> needed to
  reach it. The idea is to set <math|<value|iter>> to be so high, all updated
  weights <math|W<rprime|'><around*|(|m,n|)>> overpower any negative weights
  that would otherwise cancel their effect. The following definitions might
  look like black magic, but they are set up to capture this intuition (I
  verified in Lean that this is the right choice for <math|<value|iter>>, see
  <cite|kisby2024hebbian>).

  <\definition>
    Let <math|<value|Net>> be a net, <math|n\<in\>N>, and let
    <math|m<rsub|1>,\<ldots\>,m<rsub|k>> list the predecessors of <math|n>.
    The <with|font-shape|italic|negative weight score> of n is the sum of all
    the negative weights of <math|n>'s predecessors, i.e.,

    <\equation*>
      <with|font-family|ss|nws><around*|(|n|)>=<big|sum><rsub|i=1><rsup|deg<around*|(|n|)>><choice|<tformat|<table|<row|<cell|W<around*|(|m<rsub|i>,n|)>>|<cell|<text|if
      >W<around*|(|m<rsub|i>,n|)>\<less\>0>>|<row|<cell|0>|<cell|<text|otherwise>>>>>>
    </equation*>
  </definition>

  <\definition>
    The <with|font-shape|italic|minimum negative weight score> is simply

    <\equation*>
      <with|font-family|ss|mnws>=min<rsub|n\<in\>N>
      <with|font-family|ss|nws<around*|(|n|)>>
    </equation*>
  </definition>

  <\definition>
    Recall that the activation function <math|A> is nonzero, i.e. there is
    some <math|t\<in\><with|font|Bbb|Q>> such that <math|A<around*|(|t|)>=1>.
    We set the number of iterations <math|<value|iter>> to be exactly

    <\equation*>
      <value|iter>=<choice|<tformat|<table|<row|<cell|<around*|\<lceil\>|<frac|t-<around*|\||N|\|>\<cdot\><with|font-family|ss|mnws>|\<eta\>>|\<rceil\>>>|<cell|<text|if
      >\<geq\>1>>|<row|<cell|1>|<cell|<text|otherwise>>>>>>
    </equation*>

    Note that <math|<value|iter>> will always be a positive integer, and so
    iterating <math|<value|iter>> times is well-defined.
  </definition>

  <\definition>
    Let <math|<value|Hebbstar>:<value|NetModel>\<times\><value|State>\<rightarrow\><value|NetModel>>
    be given by\ 

    <\equation*>
      <value|Hebbstar><around*|(|<around|\<langle\>|N,<value|bias>,E,W,A,\<eta\>,V|\<rangle\>>,<hspace|0.5em>S|)>=<around|\<langle\>|N,<value|bias>,E,W<rprime|'>,A,\<eta\>,V|\<rangle\>>
    </equation*>

    where

    <\equation*>
      W<rprime|'><around*|(|m,n|)>=W<around*|(|m,n|)>+<value|iter>\<cdot\>\<eta\>\<cdot\><value|bigchi><rsub|<value|Closure><around*|(|S|)>><around*|(|m|)>\<cdot\><value|bigchi><rsub|<value|Closure><around*|(|S|)>><around*|(|n|)>
    </equation*>
  </definition>

  As with <math|<value|Hebb>>, <math|<value|Hebbstar>> does not affect the
  edges, activation function, or evaluation of propositions, and the update
  is well-defined. One worry we might have is that, in each iteration, we
  always update by <math|<value|Closure><around*|(|S|)>> in the
  <with|font-shape|italic|original> net. But it turns out that this
  <math|<value|Closure><around*|(|S|)>> doesn't change with each iteration,
  so <math|<value|Hebbstar>> is equivalent to repeatedly applying
  <math|<value|Hebb>> until we reach a fixed point <cite|kisby2024hebbian>.

  <section|Progress and Goals>

  The static and dynamic neural network semantics above demonstrate how
  neural networks can be treated as a class of models in formal logic. My
  central thesis is that the soundness, completeness, and expressivity of
  these semantics answer foundational questions about neural network
  inference and learning. Moreover, these questions are
  <with|font-shape|italic|answerable> (which I will show by answering them).
  In the remaining chapters of my dissertation, I will defend this claim.

  <center|<tabular|<tformat|<cwith|1|1|2|-1|cell-tborder|0ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|1|3|3|cell-tborder|0ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|-1|1|1|cell-lborder|0ln>|<cwith|2|-1|3|3|cell-rborder|0ln>|<cwith|3|3|1|-1|cell-tborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|3|5|1|1|cell-lborder|0ln>|<cwith|3|5|3|3|cell-rborder|0ln>|<twith|table-lsep|0.75fn>|<twith|table-rsep|0.75fn>|<twith|table-bsep|0.75fn>|<twith|table-tsep|0.75fn>|<cwith|1|-1|1|-1|cell-lsep|0.5fn>|<cwith|1|-1|1|-1|cell-rsep|0.5fn>|<cwith|1|-1|1|-1|cell-bsep|0.5fn>|<cwith|1|-1|1|-1|cell-tsep|0.5fn>|<cwith|4|5|1|1|cell-lborder|0ln>|<cwith|4|5|3|3|cell-rborder|0ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-bborder|0ln>|<cwith|4|4|1|1|cell-lborder|0ln>|<cwith|4|4|3|3|cell-rborder|0ln>|<cwith|1|4|1|1|cell-halign|r>|<cwith|1|4|2|-1|cell-halign|c>|<cwith|2|3|2|-1|cell-background|#dbde2d>|<cwith|4|4|2|-1|cell-background|#ffdd30>|<cwith|3|3|2|2|cell-background|#ffdd30>|<table|<row|<cell|>|<cell|<with|font-series|bold|Static
  Inference \U <math|<value|Reach>> and <math|<value|Closure>>>>|<cell|<with|font-series|bold|Dynamic
  Update \U <math|<value|Hebbstar>>>>>|<row|<cell|<with|font-series|bold|Soundness>>|<cell|<larger|\<checkmark\>>>|<cell|<very-large|<larger|\<checkmark\>>>>>|<row|<cell|<with|font-series|bold|Completeness>>|<cell|in
  progress>|<cell|<larger|\<checkmark\>>>>|<row|<cell|<with|font-series|bold|Expressivity>>|<cell|in
  progress>|<cell|in progress>>>>>>

  My first goal is to prove soundness and completeness results for the logics
  of <math|<value|Closure>> and <math|<value|Hebbstar>> (for single-step
  <math|<value|Hebb>> I will only show soundness). I will then prove various
  expressivity results, comparing neural network models
  <math|<value|NetModel>> to relational (graph) models, plausibility models,
  and neighborhood models\Vwhat properties and learning policies can neural
  networks define or satisfy? Finally, for each chapter (Soundness,
  Completeness, Expressivity), I will work through an example that
  demonstrates what that chapter teaches us about neural networks
  (verification, model-building, and representational capacity). The chart
  above maps out my progress so far.

  In my FLAIRS paper <cite|kisby2022logic>, I showed axioms that are sound
  for single-step Hebbian update <math|<value|Hebb>>. I also wrote a Python
  program which does model checking using these sound semantics. Then in my
  AAAI paper <cite|kisby2024hebbian>, I gave sound
  <with|font-shape|italic|and complete> axioms for iterated Hebbian update
  <math|<value|Hebbstar>>. For this second paper, I formalized many of the
  technical results in the Lean proof assistant, which revealed a couple of
  errors in the first FLAIRS paper (these are resolved by the results in the
  more recent paper).

  I have the rest left to do before I submit my dissertation:

  <paragraph|Completeness, Static Inference.>The AAAI paper did not actually
  prove completeness for the <with|font-shape|italic|static> system. I now
  believe I have a proof which modifies Leitgeb's construction in
  <cite|leitgeb2001nonmonotonic> to account for <math|<value|diaKnow>> and
  <math|<value|diaKnownby>> constraints (<math|<value|diaKnownby>> is
  actually easier, and then we can get <math|<value|diaKnow>> using tricks
  from temporal logic that I typed up a couple years back).

  In addition to the completeness proof, I would also like to extend my
  Python program to actually perform model building for an arbitrary set of
  modal constraints <math|\<Gamma\>>.

  <paragraph|Expressivity, Static Inference.>In terms of model simulations, I
  have shown that neural networks can simulate relational (graph) models and
  certain \Psocial-majority\Q networks. I also proved that neural networks
  can be simulated <with|font-shape|italic|by> neighborhood models (but not
  vice-versa). And assuming completeness goes through, I will also be able to
  simulate plausibility models using neural networks. The other direction
  (plausibility models from neural networks) is still an open question, but
  I'd like to resolve it before I submit my dissertation.

  I have also been exploring the expressivity of neural networks in terms of
  descriptive complexity. As part of this chapter of my dissertation, I would
  like to make some effort to connect my own work with the descriptive
  complexity of neural networks (in languages such as Linear Temporal Logic)
  <cite|strobl2024formal>.

  <paragraph|Expressivity, Dynamic Update.>Finally, there's the question of
  which updates (recall: <math|<value|Cond>,<value|Lex>,<value|Consr>>) can
  be simulated by a neural network, and conversely which models can simulate
  a neural network update such as <math|<value|Hebbstar>>. I have been
  working on this for a year, and will probably continue to work on it until
  January. It turns out that there are many reasonable ways to say one model
  simulates the update of another, and I need some time to fix my approach
  and check the results.

  <section|Timeline>

  I applied for a grant through the DFF earlier this year, and the
  application put a time restriction on when I need to defend my dissertation
  (April <math|8<rsup|th>>). I am trying to follow this in good faith. Here
  is a timeline based on that constraint. This is what you can expect me to
  be doing for the next few months. This also gives you an idea for when I'll
  be emailing drafts, or arranging to meet with you.

  <tabular|<tformat|<cwith|1|-1|1|1|cell-rsep|3fn>|<cwith|1|-1|2|2|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-tsep|0fn>|<cwith|1|-1|1|-1|cell-bsep|0.3fn>|<twith|table-tsep|0.75fn>|<twith|table-bsep|0.75fn>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|8|8|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-rborder|0ln>|<table|<row|<cell|<with|font-series|bold|November
  <math|21<rsup|st>>>>|<\cell>
    Submit this proposal. Start working on proposal defense.\ 

    Start dissertation outlining and pre-writing.
  </cell>>|<row|<cell|<with|font-series|bold|December
  <math|4<rsup|th>-6<rsup|th>>>>|<\cell>
    Defend proposal.
  </cell>>|<row|<cell|<with|font-series|bold|December
  <math|7<rsup|th>>>>|<\cell>
    Write up Technical Background & Soundness chapters.

    Continue working on expressivity results.
  </cell>>|<row|<cell|<with|font-series|bold|January
  <math|1<rsup|st>>>>|<\cell>
    Write up Completeness chapter & start Expressivity chapter.

    Finish up expressivity results.
  </cell>>|<row|<cell|<with|font-series|bold|February
  <math|1<rsup|st>>>>|<\cell>
    Write up Expressivity, Intro, & Conclusion chapters.

    Submit expressivity chapter as a paper to WoLLIC 2025.
  </cell>>|<row|<cell|<with|font-series|bold|March
  <math|8<rsup|th>>>>|<\cell>
    Submit dissertation!
  </cell>>|<row|<cell|<with|font-series|bold|April
  <math|8<rsup|th>>>>|<\cell>
    Defend dissertation!
  </cell>>|<row|<cell|<with|font-series|bold|May <math|8<rsup|th>>>>|<\cell>
    Submit corrections (anticipated).
  </cell>>>>>

  <\bibliography|bib|tm-plain|references.bib>
    <\bib-list|45>
      <bibitem*|1><label|bib-abid2021persistent>Abubakar Abid, Maheen
      Farooqi<localize|, and >James Zou. <newblock>Persistent anti-muslim
      bias in Large Language Models. <newblock><localize|In
      ><with|font-shape|italic|Proceedings of the 2021 AAAI/ACM Conference on
      AI, Ethics, and Society>, <localize|pages >298\U306. 2021.<newblock>

      <bibitem*|2><label|bib-achiam2023gpt>Josh Achiam, Steven Adler,
      Sandhini Agarwal, Lama Ahmad, Ilge Akkaya, Florencia<nbsp>Leoni Aleman,
      Diogo Almeida, Janko Altenschmidt, Sam Altman, Shyamal Anadkat
      et<nbsp>al. <newblock>GPT-4 technical report.
      <newblock><with|font-shape|italic|ArXiv preprint arXiv:2303.08774>,
      2023.<newblock>

      <bibitem*|3><label|bib-baccini2024dynamic>Edoardo Baccini, Zoé
      Christoff<localize|, and >Rineke Verbrugge. <newblock>Dynamic logics of
      diffusion and link changes on social networks.
      <newblock><with|font-shape|italic|Studia Logica>, <localize|pages
      >1\U71, 2024.<newblock>

      <bibitem*|4><label|bib-bader2005dimensions>Sebastian Bader<localize|
      and >Pascal Hitzler. <newblock>Dimensions of neural-symbolic
      integration \U A structured survey. <newblock><localize|In
      ><with|font-shape|italic|We Will Show Them! Essays in Honour of Dov
      Gabbay, Volume 1>, <localize|pages >167\U194. College Publications,
      2005.<newblock>

      <bibitem*|5><label|bib-badreddine2022aa>Samy Badreddine,
      Artur<nbsp>d'Avila Garcez, Luciano Serafini<localize|, and >Michael
      Spranger. <newblock>Logic Tensor Networks.
      <newblock><with|font-shape|italic|Artificial Intelligence>, 303:103649,
      2022.<newblock>

      <bibitem*|6><label|bib-balkenius1991nonmonotonic>Christian
      Balkenius<localize| and >Peter Gärdenfors. <newblock>Nonmonotonic
      inferences in neural networks. <newblock><localize|In
      ><with|font-shape|italic|KR>, <localize|pages >32\U39. Morgan Kaufmann,
      1991.<newblock>

      <bibitem*|7><label|bib-baltag2019socialnetworks>Alexandru Baltag, Zoé
      Christoff, Rasmus<nbsp>K Rendsvig<localize|, and >Sonja Smets.
      <newblock>Dynamic epistemic logics of diffusion and prediction in
      social networks. <newblock><with|font-shape|italic|Studia Logica>,
      107:489\U531, 2019.<newblock>

      <bibitem*|8><label|bib-baltag2019dynamic>Alexandru Baltag, Nina
      Gierasimczuk, Aybüke Özgün, Ana<nbsp>Lucia<nbsp>Vargas
      Sandoval<localize|, and >Sonja Smets. <newblock>A dynamic logic for
      learning theory. <newblock><with|font-shape|italic|Journal of Logical
      and Algebraic Methods in Programming>, 109:100485, 2019.<newblock>

      <bibitem*|9><label|bib-baltag2019tracking>Alexandru Baltag, Nina
      Gierasimczuk<localize|, and >Sonja Smets. <newblock>Truth-tracking by
      belief revision. <newblock><with|font-shape|italic|Studia Logica>,
      107:917\U947, 2019.<newblock>

      <bibitem*|10><label|bib-baltag2019right>Alexandru Baltag, Dazhu
      Li<localize|, and >Mina<nbsp>Young Pedersen. <newblock>On the right
      path: A modal logic for supervised learning. <newblock><localize|In
      ><with|font-shape|italic|International Workshop on Logic, Rationality
      and Interaction>, <localize|pages >1\U14. Springer, 2019.<newblock>

      <bibitem*|11><label|bib-baltag2009iterated>Alexandru Baltag<localize|
      and >Sonja Smets. <newblock>Group belief dynamics under iterated
      revision: Fixed points and cycles of joint upgrades.
      <newblock><localize|In ><with|font-shape|italic|Proceedings of the 12th
      Conference on Theoretical Aspects of Rationality and Knowledge>,
      <localize|pages >41\U50. 2009.<newblock>

      <bibitem*|12><label|bib-besold2021neural>Tarek<nbsp>R Besold, Artur
      d'Avila<nbsp>Garcez, Sebastian Bader, Howard Bowman, Pedro Domingos,
      Pascal Hitzler, Kai-Uwe Kühnberger, Luis<nbsp>C Lamb,
      Priscila<nbsp>Machado<nbsp>Vieira Lima, Leo de<nbsp>Penning et<nbsp>al.
      <newblock>Neural-symbolic learning and reasoning: A survey and
      interpretation. <newblock><localize|In
      ><with|font-shape|italic|Neuro-Symbolic Artificial Intelligence: The
      State of the Art>, <localize|pages >1\U51. IOS press, 2021.<newblock>

      <bibitem*|13><label|bib-blutner2004nonmonotonic>Reinhard Blutner.
      <newblock>Nonmonotonic inferences and neural networks.
      <newblock><with|font-shape|italic|Synthese>, 142:143\U174,
      2004.<newblock>

      <bibitem*|14><label|bib-Christoff:2015aa>Zoé Christoff<localize| and
      >Jens<nbsp>Ulrik Hansen. <newblock>A logic for diffusion in social
      networks. <newblock><with|font-shape|italic|Journal of Applied Logic>,
      13(1):48\U77, 2015.<newblock>

      <bibitem*|15><label|bib-ciravegna2023logic>Gabriele Ciravegna, Pietro
      Barbiero, Francesco Giannini, Marco Gori, Pietro Lió, Marco
      Maggini<localize|, and >Stefano Melacci. <newblock>Logic Explained
      Networks. <newblock><with|font-shape|italic|Artificial Intelligence>,
      314:103822, 2023.<newblock>

      <bibitem*|16><label|bib-dubey2024llama>Abhimanyu Dubey, Abhinav Jauhri,
      Abhinav Pandey, Abhishek Kadian, Ahmad Al-Dahle, Aiesha Letman, Akhil
      Mathur, Alan Schelten, Amy Yang, Angela Fan et<nbsp>al. <newblock>The
      Llama 3 herd of models. <newblock><with|font-shape|italic|ArXiv
      preprint arXiv:2407.21783>, 2024.<newblock>

      <bibitem*|17><label|bib-garcez2008neural>Artur<nbsp>SD'Avila Garcez,
      Luis<nbsp>C Lamb<localize|, and >Dov<nbsp>M Gabbay.
      <newblock><with|font-shape|italic|Neural-Symbolic Cognitive Reasoning>.
      <newblock>Springer Science & Business Media, 2008.<newblock>

      <bibitem*|18><label|bib-geiger2024aa>Atticus Geiger, Zhengxuan Wu,
      Christopher Potts, Thomas Icard<localize|, and >Noah Goodman.
      <newblock>Finding alignments between interpretable causal variables and
      distributed neural representations. <newblock><localize|In
      ><with|font-shape|italic|Causal Learning and Reasoning>,
      <localize|pages >160\U187. PMLR, 2024.<newblock>

      <bibitem*|19><label|bib-giordano2022conditional>Laura Giordano,
      Valentina Gliozzi<localize|, and >Daniele Theseider Dupré. <newblock>A
      conditional, a fuzzy and a probabilistic interpretation of
      self-organizing maps. <newblock><with|font-shape|italic|Journal of
      Logic and Computation>, 32(2):178\U205, 2022.<newblock>

      <bibitem*|20><label|bib-giordano2021weighted>Laura Giordano<localize|
      and >Daniele Theseider Dupré. <newblock>Weighted defeasible knowledge
      bases and a multipreference semantics for a deep neural network model.
      <newblock><localize|In ><with|font-shape|italic|Logics in Artificial
      Intelligence: 17th European Conference, JELIA 2021, Virtual Event, May
      17\U20, 2021, Proceedings 17>, <localize|pages >225\U242. Springer,
      2021.<newblock>

      <bibitem*|21><label|bib-gross2002genealogy>Charles<nbsp>G Gross.
      <newblock>Genealogy of the \Pgrandmother cell\Q.
      <newblock><with|font-shape|italic|The Neuroscientist>, 8(5):512\U518,
      2002.<newblock>

      <bibitem*|22><label|bib-hebb-organization-of-behavior-1949>Donald Hebb.
      <newblock><with|font-shape|italic|The Organization of Behavior>.
      <newblock>Psychology Press, apr 1949.<newblock>

      <bibitem*|23><label|bib-kisby2022logic>Caleb Kisby, Saúl
      Blanco<localize|, and >Lawrence Moss. <newblock>The logic of Hebbian
      learning. <newblock><localize|In ><with|font-shape|italic|The
      International FLAIRS Conference Proceedings>,
      <localize|volume><nbsp>35. 2022.<newblock>

      <bibitem*|24><label|bib-kisby2024hebbian>Caleb<nbsp>Schultz Kisby,
      Saúl<nbsp>A Blanco<localize|, and >Lawrence<nbsp>S Moss. <newblock>What
      do Hebbian learners learn? Reduction axioms for iterated Hebbian
      learning. <newblock><localize|In ><with|font-shape|italic|Proceedings
      of the AAAI Conference on Artificial Intelligence>,
      <localize|volume><nbsp>38, <localize|pages >14894\U14901.
      2024.<newblock>

      <bibitem*|25><label|bib-leitgeb2001nonmonotonic>Hannes Leitgeb.
      <newblock>Nonmonotonic reasoning by inhibition nets.
      <newblock><with|font-shape|italic|Artificial Intelligence>,
      128(1-2):161\U201, 2001.<newblock>

      <bibitem*|26><label|bib-leitgeb2003nonmonotonic>Hannes Leitgeb.
      <newblock>Nonmonotonic reasoning by inhibition nets II.
      <newblock><with|font-shape|italic|International Journal of Uncertainty,
      Fuzziness and Knowledge-Based Systems>, 11(supp02):105\U135,
      2003.<newblock>

      <bibitem*|27><label|bib-leitgeb2018neural>Hannes Leitgeb.
      <newblock>Neural network models of conditionals. <newblock><localize|In
      ><with|font-shape|italic|Introduction to Formal Philosophy>,
      <localize|pages >147\U176. Springer, 2018.<newblock>

      <bibitem*|28><label|bib-manhaeve2021neural>Robin Manhaeve, Sebastijan
      Duman£i¢, Angelika Kimmig, Thomas Demeester<localize|, and >Luc De
      Raedt. <newblock>Neural probabilistic logic programming in DeepProbLog.
      <newblock><with|font-shape|italic|Artificial Intelligence>, 298:103504,
      2021.<newblock>

      <bibitem*|29><label|bib-mcculloch1943logical>Warren<nbsp>S.<nbsp>McCulloch<localize|
      and >Walter Pitts. <newblock>A logical calculus of the ideas immanent
      in nervous activity. <newblock><with|font-shape|italic|The Bulletin of
      Mathematical Biophysics>, 5(4):115\U133, dec 1943.<newblock>

      <bibitem*|30><label|bib-mcdermott1987critique>Drew McDermott.
      <newblock>A critique of pure reason.
      <newblock><with|font-shape|italic|Computational intelligence>,
      3(3):151\U160, 1987.<newblock>

      <bibitem*|31><label|bib-merrill2019sequential>William Merrill.
      <newblock>Sequential neural networks as automata.
      <newblock><with|font-shape|italic|ArXiv preprint arXiv:1906.01615>,
      2019.<newblock>

      <bibitem*|32><label|bib-merrill2020formal>William Merrill, Gail Weiss,
      Yoav Goldberg, Roy Schwartz, Noah<nbsp>A Smith<localize|, and >Eran
      Yahav. <newblock>A formal hierarchy of RNN architectures.
      <newblock><with|font-shape|italic|ArXiv preprint arXiv:2004.08500>,
      2020.<newblock>

      <bibitem*|33><label|bib-oja1982simplified>Erkki Oja.
      <newblock>Simplified neuron model as a principal component analyzer.
      <newblock><with|font-shape|italic|Journal of mathematical biology>,
      15:267\U273, 1982.<newblock>

      <bibitem*|34><label|bib-rumelhart1986aa>David<nbsp>E Rumelhart,
      Geoffrey<nbsp>E Hinton<localize|, and >Ronald<nbsp>J Williams.
      <newblock>Learning internal representations by error propagation.
      <newblock><with|font-shape|italic|Biometrika>, 71(599-607):6,
      1986.<newblock>

      <bibitem*|35><label|bib-sarker2021neuro>Md<nbsp>Kamruzzaman Sarker, Lu
      Zhou, Aaron Eberhart<localize|, and >Pascal Hitzler.
      <newblock>Neuro-Symbolic Artificial Intelligence: Current Trends.
      <newblock><with|font-shape|italic|AI Communications>, 34, 2022
      2022.<newblock>

      <bibitem*|36><label|bib-sep-frame-problem>Murray Shanahan.
      <newblock>The frame problem. <newblock><localize|In
      >Edward<nbsp>N.<nbsp>Zalta<localize|, editor>,
      <with|font-shape|italic|The Stanford Encyclopedia of Philosophy>.
      Metaphysics Research Lab, Stanford University, 2016.<newblock>

      <bibitem*|37><label|bib-silver2017mastering>David Silver, Julian
      Schrittwieser, Karen Simonyan, Ioannis Antonoglou, Aja Huang, Arthur
      Guez, Thomas Hubert, Lucas Baker, Matthew Lai, Adrian Bolton
      et<nbsp>al. <newblock>Mastering the game of Go without human knowledge.
      <newblock><with|font-shape|italic|Nature>, 550(7676):354\U359,
      2017.<newblock>

      <bibitem*|38><label|bib-strobl2024formal>Lena Strobl, William Merrill,
      Gail Weiss, David Chiang<localize|, and >Dana Angluin. <newblock>What
      formal languages can transformers express? A survey.
      <newblock><with|font-shape|italic|Transactions of the Association for
      Computational Linguistics>, 12:543\U561, 2024.<newblock>

      <bibitem*|39><label|bib-tamkin2021understanding>Alex Tamkin, Miles
      Brundage, Jack Clark<localize|, and >Deep Ganguli.
      <newblock>Understanding the capabilities, limitations, and societal
      impact of Large Language Models. <newblock><with|font-shape|italic|ArXiv
      preprint arXiv:2102.02503>, 2021.<newblock>

      <bibitem*|40><label|bib-van2007beliefrevision>Johan Van Benthem.
      <newblock>Dynamic logic for belief revision.
      <newblock><with|font-shape|italic|Journal of applied non-classical
      logics>, 17(2):129\U155, 2007.<newblock>

      <bibitem*|41><label|bib-van2011logicaldynamics>Johan Van Benthem.
      <newblock><with|font-shape|italic|Logical Dynamics of Information and
      Interaction>. <newblock>Cambridge University Press, 2011.<newblock>

      <bibitem*|42><label|bib-van2015dynamic>Johan Van Benthem<localize| and
      >Sonja Smets. <newblock>Dynamic logics of belief change.
      <newblock><localize|In >H.<nbsp>Van Ditmarsch, J.<nbsp>Halpern,
      W.<nbsp>van der<nbsp>Hoek<localize|, and >B.<nbsp>Kooi<localize|,
      editors>, <with|font-shape|italic|Handbook of Epistemic Logic>,
      <localize|pages >313\U393. College Publications, London, UK,
      2015.<newblock>

      <bibitem*|43><label|bib-ditmarschDEL>Hans Van Ditmarsch, Wiebe
      van<nbsp>Der Hoek<localize|, and >Barteld Kooi.
      <newblock><with|font-shape|italic|Dynamic Epistemic Logic>,
      <localize|volume> 337. <newblock>Springer, 2007.<newblock>

      <bibitem*|44><label|bib-vaswani2017attention>Ashish Vaswani, Noam
      Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones,
      Aidan<nbsp>N.<nbsp>Gomez, Lukasz Kaiser<localize|, and >Illia
      Polosukhin. <newblock>Attention is all you need.
      <newblock><with|font-shape|italic|CoRR>, abs/1706.03762,
      2017.<newblock>

      <bibitem*|45><label|bib-weiss2018practical>Gail Weiss, Yoav
      Goldberg<localize|, and >Eran Yahav. <newblock>On the practical
      computational power of finite precision RNNs for language recognition.
      <newblock><with|font-shape|italic|ArXiv preprint arXiv:1805.04908>,
      2018.<newblock>
    </bib-list>
  </bibliography>
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
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|3.1|4>>
    <associate|auto-11|<tuple|3.2|6>>
    <associate|auto-12|<tuple|1|7>>
    <associate|auto-13|<tuple|2|7>>
    <associate|auto-14|<tuple|4|8>>
    <associate|auto-15|<tuple|1|9>>
    <associate|auto-16|<tuple|2|9>>
    <associate|auto-17|<tuple|3|9>>
    <associate|auto-18|<tuple|5|9>>
    <associate|auto-19|<tuple|5|10>>
    <associate|auto-2|<tuple|1|2>>
    <associate|auto-20|<tuple|5|?>>
    <associate|auto-3|<tuple|1|2>>
    <associate|auto-4|<tuple|1|2>>
    <associate|auto-5|<tuple|2|3>>
    <associate|auto-6|<tuple|1|3>>
    <associate|auto-7|<tuple|2|3>>
    <associate|auto-8|<tuple|3|3>>
    <associate|auto-9|<tuple|3|4>>
    <associate|bib-Christoff:2015aa|<tuple|14|11>>
    <associate|bib-abid2021persistent|<tuple|1|10>>
    <associate|bib-achiam2023gpt|<tuple|2|10>>
    <associate|bib-baccini2024dynamic|<tuple|3|10>>
    <associate|bib-bader2005dimensions|<tuple|4|10>>
    <associate|bib-badreddine2022aa|<tuple|5|10>>
    <associate|bib-balkenius1991nonmonotonic|<tuple|6|10>>
    <associate|bib-baltag2009iterated|<tuple|11|10>>
    <associate|bib-baltag2019dynamic|<tuple|8|10>>
    <associate|bib-baltag2019right|<tuple|10|10>>
    <associate|bib-baltag2019socialnetworks|<tuple|7|10>>
    <associate|bib-baltag2019tracking|<tuple|9|10>>
    <associate|bib-besold2021neural|<tuple|12|10>>
    <associate|bib-blutner2004nonmonotonic|<tuple|13|11>>
    <associate|bib-ciravegna2023logic|<tuple|15|11>>
    <associate|bib-ditmarschDEL|<tuple|43|12>>
    <associate|bib-dubey2024llama|<tuple|16|11>>
    <associate|bib-garcez2008neural|<tuple|17|11>>
    <associate|bib-geiger2024aa|<tuple|18|11>>
    <associate|bib-giordano2021weighted|<tuple|20|11>>
    <associate|bib-giordano2022conditional|<tuple|19|11>>
    <associate|bib-gross2002genealogy|<tuple|21|11>>
    <associate|bib-hebb-organization-of-behavior-1949|<tuple|22|11>>
    <associate|bib-kisby2022logic|<tuple|23|11>>
    <associate|bib-kisby2024hebbian|<tuple|24|11>>
    <associate|bib-leitgeb2001nonmonotonic|<tuple|25|11>>
    <associate|bib-leitgeb2003nonmonotonic|<tuple|26|11>>
    <associate|bib-leitgeb2018neural|<tuple|27|11>>
    <associate|bib-manhaeve2021neural|<tuple|28|11>>
    <associate|bib-mcculloch1943logical|<tuple|29|11>>
    <associate|bib-mcdermott1987critique|<tuple|30|11>>
    <associate|bib-merrill2019sequential|<tuple|31|11>>
    <associate|bib-merrill2020formal|<tuple|32|11>>
    <associate|bib-oja1982simplified|<tuple|33|11>>
    <associate|bib-rumelhart1986aa|<tuple|34|11>>
    <associate|bib-sarker2021neuro|<tuple|35|11>>
    <associate|bib-sep-frame-problem|<tuple|36|11>>
    <associate|bib-silver2017mastering|<tuple|37|11>>
    <associate|bib-strobl2024formal|<tuple|38|11>>
    <associate|bib-tamkin2021understanding|<tuple|39|12>>
    <associate|bib-van2007beliefrevision|<tuple|40|12>>
    <associate|bib-van2011logicaldynamics|<tuple|41|12>>
    <associate|bib-van2015dynamic|<tuple|42|12>>
    <associate|bib-vaswani2017attention|<tuple|44|12>>
    <associate|bib-weiss2018practical|<tuple|45|12>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      achiam2023gpt

      dubey2024llama

      vaswani2017attention

      silver2017mastering

      tamkin2021understanding

      abid2021persistent

      mcdermott1987critique

      sep-frame-problem

      bader2005dimensions

      besold2021neural

      sarker2021neuro

      badreddine2022aa

      geiger2024aa

      manhaeve2021neural

      ciravegna2023logic

      garcez2008neural

      besold2021neural

      odense2022ASF

      van2011logicaldynamics

      van2015dynamic

      ditmarschDEL

      hebb-organization-of-behavior-1949

      mcculloch1943logical

      gross2002genealogy

      balkenius1991nonmonotonic

      leitgeb2018neural

      balkenius1991nonmonotonic

      blutner2004nonmonotonic

      leitgeb2001nonmonotonic

      leitgeb2003nonmonotonic

      giordano2022conditional

      giordano2021weighted

      kisby2022logic

      kisby2024hebbian

      baccini2024dynamic

      baltag2019socialnetworks

      Christoff:2015aa

      baccini2024dynamic

      van2011logicaldynamics

      ditmarschDEL

      van2007beliefrevision

      van2015dynamic

      baltag2019dynamic

      baltag2019tracking

      baltag2019right

      baltag2009iterated

      merrill2019sequential

      merrill2020formal

      weiss2018practical

      leitgeb2018neural

      leitgeb2018neural

      rumelhart1986aa

      hebb-organization-of-behavior-1949

      oja1982simplified

      kisby2024hebbian

      kisby2024hebbian

      kisby2022logic

      kisby2024hebbian

      leitgeb2001nonmonotonic

      strobl2024formal
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|0.5fn>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|4tab>|Soundness.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Completeness.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Expressivity.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|0.5fn>Related
      Work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|4tab>|Logics with Neural Network Semantics.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Logics with Social Network Semantics.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Other Dynamic Logics for Learning.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|0.5fn>Technical
      Overview> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|0.5fn>Neural Network Semantics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|3.2<space|0.5fn>Dynamic Update in Neural
      Network Semantics <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|4tab>|Single-Step Hebbian Update.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Iterated Hebbian Update.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|0.5fn>Progress
      and Goals> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <with|par-left|<quote|4tab>|Completeness, Static Inference.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Expressivity, Static Inference.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Expressivity, Dynamic Update.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|0.5fn>Timeline>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>