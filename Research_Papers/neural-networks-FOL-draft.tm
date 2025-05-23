<TeXmacs|2.1.4>

<style|<tuple|article|python|cite-author-year|cite-sort|fontawesome|termes-font|my-macros>>

<\body>
  <\hide-preamble>
    \;

    <assign|doc-title|<macro|x|<doc-title-block|<very-large|<doc-title-name|<arg|x>>>>>>

    <assign|by-text|<macro|>>

    <assign|doc-subtitle|<macro|x|<\surround|<vspace*|0.25fn>|<vspace|0.5fn>>
      <doc-title-block|<font-magnify|1.25|<arg|x>>>
    </surround>>>

    <assign|author-name|<macro|author|<surround|<vspace*|0fn>|<vspace|0.3fn>|<doc-author-block|<with|font-series|bold|<author-by|<arg|author>>>>>>>

    <assign|sectional-sep|<macro|<space|1fn>>>

    <assign|bibliography-text|<macro|<localize|References>>>

    \;

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

    <assign|subsection-toc|<macro|name|>>

    <assign|paragraph-toc|<macro|name|>>
  </hide-preamble>

  <doc-data|<\doc-title>
    A Sound Neural Network Semantics for First-Order Logic
  </doc-title>|<doc-author|<author-data|<author-name|Draft by Caleb Schultz
  Kisby>|<\author-affiliation>
    <with|font-series|bold|For NeSy 2025, due May 30 2025>
  </author-affiliation>>>|<\doc-author>
    \;

    <author-data>
  </doc-author>|<with|doc-date|<macro|body|<vspace|0fn><inactive*|<doc-title-block|<with|font-shape|italic|<arg|body>>>>>|<doc-date|November
  4, 2024>>>

  <abstract-data|<abstract|<todo|todo>>>

  <section|Introduction>

  <\itemize>
    <item>General introduction to the problem of neuro-symbolic AI. Any
    attempt to understand the behavior of neural networks is ultimately by
    analogy. One promising analogy is \Pneural networks as models for formal
    logic\Q; bridges between logical models and neural networks.\ 

    <item>Introduce the literature on this topic, especially the strong
    connection between neural network inference and non-monotonic
    conditionals

    <item>Old work by d'Avila Garcez et al. that used fibered neural networks
    as models for standard modal logic, temporal logic, etc. Recent work that
    uses neural-networks-as-models to more expressive languages, including
    defeasible modalities (my work) and linear-temporal logic (descriptive
    complexity work)

    <item>Very recently, there have been many proposals for bridging neural
    network dynamics with first-order logic. List these systems here!

    <item><with|font-series|bold|Contribution:> None of the existing
    neuro-symbolic systems that interpret FOL have any soundness guarantees!
    It's been an open question for the foundations of neuro-symbolic AI of
    what sound axioms could be for a neural network interpretation of
    first-order logic. In this paper, I present what I believe is the first
    interpretation of first-order logic in terms of neural network dynamics
    that has <with|font-shape|italic|soundness guarantees>. I do this using a
    technical trick in modal logic which allows me to \Plift\Q the semantics
    for modal logic to first-order logic. I will then explore the question
    \Pwhat kind of quantifier does the activation closure in a neural network
    give us?\Q, checking which first-order axioms are sound and which are
    unsound.\ 
  </itemize>

  <section|Technical Background>

  <subsection|Neural network models>

  A neural network \Pas a logic model\Q is simply a neural network along with
  a valuation of propositions <math|V>. <math|V<around*|(|p|)>> can be
  understood neurally as giving the nodes which are active in state <math|p>;
  or classically as giving the worlds where <math|p> is true.

  <\definition>
    A neural network model is <math|<value|Net>=\<langle\>N,E,W,A,V\<rangle\>>,
    where

    <\itemize>
      <item><math|N> is a finite nonempty set (the set of
      <with|font-shape|italic|neurons>)

      <item>Each <math|E\<subseteq\>N\<times\>N> (the
      <with|font-shape|italic|edge relation>)

      <item><math|W:E\<rightarrow\><with|font|Bbb|Q>> (the
      <with|font-shape|italic|edge weights>)

      <item><math|A:<with|font|Bbb|Q\<rightarrow\><with|font|Bbb|Q>>> (the
      <with|font-shape|italic|activation function>)

      <item><math|V:<value|langProp>\<rightarrow\><value|powerset><around*|(|N|)>>
      (the <with|font-shape|italic|propositional valuation>)
    </itemize>
  </definition>

  In general, a <with|font-shape|italic|state> is just a possible activation
  pattern or configuration of the net. In practice, a neural network's nodes
  take on fuzzy activation values in <math|<around*|[|0,1|]>>. But we would
  like to associate each state with a binary set of neurons\Veither a neuron
  is active (1) or it is not (0). To do this, I assume that the activation
  function <math|A> is a (nonzero) binary step function
  (<math|A:<with|font|Bbb|Q>\<rightarrow\><around*|{|0,1|}>>).
  <todo|Definition: <math|<value|Net>> has a threshold,
  <math|\<exists\>t\<in\><with|font|Bbb|Q>> with <math|A<around*|(|t|)>=1>;
  <math|<value|Net>> is nondecreasing. These things amount to <math|A> being
  a binary step function.> It turns out this binary constraint is also a
  common theoretical assumption in work that analyzes neural networks as
  automata <cite|merrill2020formal|weiss2018practical|merrill2019sequential>.
  In their terminology, we say our nets are
  <with|font-shape|italic|saturated>.

  Formally, the states of the net are defined as
  <math|<value|State><rsub|<value|Net>>=<around*|{|S<value|st>S\<subseteq\>N|}>>.
  Usually <math|<value|Net>> is understood from context, and I'll just write
  <math|<value|State>> without the subscript.

  We can describe the input-output behavior of neural networks in terms of
  their state. Say we are given an input state <math|A> consisting of
  input-layer nodes, and a possible classification state <math|B> consisting
  of output-layer nodes. Active neurons in <math|A> subsequently activate new
  neurons, which activate yet more neurons, until eventually the state of the
  net stabilizes. If this final state includes the output <math|B>, we say
  \Pthe net <with|font-shape|italic|classifies> <math|A> as <math|B>\Q.

  The state at the fixed point of this process is called the
  <with|font-shape|italic|closure> or <with|font-shape|italic|forward
  propagation> of the signal <math|A> through the net,
  <math|<value|Closure><around*|(|A|)>>. This closure operator is central to
  my semantics, since it captures the underlying dynamics involved in neural
  network inference. Formally, each choice of <math|E,W,A> specifies a
  transition function from state <math|S\<in\><value|State>> to the next
  state. Given an initial state <math|S<rsub|0>>, this transition function
  <math|F<rsub|S<rsub|0>>> is given by

  <\equation*>
    F<rsub|S<rsub|0>><around*|(|S|)>=S<rsub|0>\<cup\><around*|{|n<value|st>A<around*|(|<big|sum><rsub|m\<in\><value|preds><around*|(|n|)>>W<around*|(|m,n|)>\<cdot\><value|bigchi><rsub|S><around*|(|m|)>|)>=1|}>
  </equation*>

  where <math|<value|bigchi><rsub|S><around*|(|m|)>=1> iff <math|m\<in\>S> is
  the indicator function. In other words,
  <math|F<rsub|S<rsub|0>><around*|(|S|)>> is the initial state
  <math|S<rsub|0>>, along with the set of nodes that are activated by their
  predecessors in <math|S>. Notice that <math|F<rsub|S<rsub|0>><around*|(|S|)>>
  is extensive: all nodes in the initial state will stay activated in
  successive states.

  My neural network models have one final constraint: This transition
  function <math|F<rsub|S<rsub|0>>> eventually gives a unique
  <with|font-shape|italic|fixed point> (or stable state) under the input
  <math|S<rsub|0>>, i.e. a unique state <math|S> such that
  <math|F<rsub|S<rsub|0>><around*|(|S|)>=S>. This guarantees that the closure
  <math|<value|Closure><around*|(|S|)>> exists.

  <\postulate>
    I assume that for all states <math|S<rsub|0>>, <math|F> applied
    repeatedly to <math|S<rsub|0>>, i.e.

    <\equation*>
      S<rsub|0>,F<rsub|S<rsub|0>><around*|(|S<rsub|0>|)>,F<rsub|S<rsub|0>><around*|(|F<rsub|S<rsub|0>><around*|(|S<rsub|0>|)>|)>,\<ldots\>,F<rsub|S<rsub|0>><rsup|k><around*|(|S<rsub|0>|)>,\<ldots\>
    </equation*>

    has a finite fixed point, and moreover that this state is the
    <with|font-shape|italic|only> fixed point under <math|S<rsub|0>>\Vthat
    is, it is the only state <math|S> such that
    <math|F<rsub|S<rsub|0>><around*|(|S|)>=S>. Let the closure
    <math|<value|Closure>:<value|State>\<rightarrow\><value|State>> be the
    function that produces that least fixed point. For concreteness, we can
    say that there is some <math|k\<in\><with|font|Bbb|N>> for which

    <\equation*>
      <value|Closure><around*|(|S|)>=F<rsup|k><rsub|S><around*|(|S|)>
    </equation*>
  </postulate>

  Let <math|<value|NetModel>> be the class of all binary neural network
  spaces that satisfy this postulate.

  <subsection|Neural network semantics for conditional and modal logics>

  <\itemize>
    <item><todo|How much of this section do I actually need? I should get to
    introducing FOL as quickly as possible, and not borrow too much from my
    previous work.>
  </itemize>

  <\definition>
    Formulas in the base modal language <math|<value|langBest>> are given by

    <\equation*>
      \<varphi\>,\<psi\>\<assign\>p<value|st>\<neg\>\<varphi\><value|st>\<varphi\>\<wedge\>\<psi\><value|st>U\<varphi\><value|st>\<box\>\<varphi\><value|st><value|bestop>\<varphi\>
    </equation*>

    <math|\<top\>,\<bot\>,\<vee\>,\<rightarrow\>,\<leftrightarrow\>> and the
    dual modal operators <math|\<langle\>U\<rangle\>,<value|Diamond>,<value|diabestop>>
    are defined in the usual way.
  </definition>

  <\definition>
    For all <math|<value|Net>\<in\><value|NetModel>>, <math|n\<in\>N>:

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<value|Net>,n\<Vdash\>p>|<cell|<space|1em>iff<space|1em>>|<cell|n\<in\>V<around*|(|p|)>>>|<row|<cell|<value|Net>,n\<Vdash\>\<neg\>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<value|Net>,n<neg|\<Vdash\>>\<varphi\>>>|<row|<cell|<value|Net>,n\<Vdash\>\<varphi\>\<wedge\>\<psi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<value|Net>,n\<Vdash\>\<varphi\><infix-and><value|Net>,n\<Vdash\>\<psi\>>>|<row|<cell|<value|Net>,n\<Vdash\>U\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<todo|>>>|<row|<cell|<value|Net>,n\<Vdash\><value|Diamond>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|n\<in\><value|Reach><around*|(|<semantics|\<varphi\>>|)>>>|<row|<cell|<value|Net>,n\<Vdash\><value|diabestop>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|n\<in\><value|Closure><around*|(|<semantics|\<varphi\>>|)>>>>>>
    </equation*>

    where <math|<semantics|\<varphi\>>=<around*|{|n\<in\>N<value|st><value|Net>,n\<Vdash\>\<varphi\>|}>>.
  </definition>

  <\proposition>
    By the definition of the duals <math|<value|Diamond>,<value|diabestop>>,
    we can instead define the semantics for
    <math|<value|All>,\<box\>,<value|bestop>> as follows. For all
    <math|<value|Net>\<in\><value|NetModel>>, <math|n\<in\>N>:

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<value|Net>,n\<Vdash\>\<box\>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|n\<in\><around*|(|<value|Reach><around*|(|<semantics|\<varphi\>><rsup|\<complement\>>|)>|)><rsup|\<complement\>>>>|<row|<cell|<value|Net>,n\<Vdash\><value|bestop>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|n\<in\><around*|(|<value|Closure><around*|(|<semantics|\<varphi\>><rsup|\<complement\>>|)>|)><rsup|\<complement\>>>>>>>
    </equation*>
  </proposition>

  <\definition>
    We write <math|<value|Net><value|modelsNet>\<varphi\>> (\Pthe net
    <with|font-shape|italic|models> <math|\<varphi\>>\Q) to mean
    <math|<value|Net>,n\<Vdash\>\<varphi\>> for all <math|n\<in\>N>;
    <math|<value|modelsNet>\<varphi\>> to mean all nets
    <math|<value|Net>\<models\>\<varphi\>>; and finally,
    <math|\<Gamma\><value|modelsNet>\<varphi\>> to mean every model
    <math|<value|Net>> of <math|\<Gamma\>>, i.e.
    <math|<value|Net><value|modelsNet>\<psi\>> for all
    <math|\<psi\>\<in\>\<Gamma\>> also models <math|\<varphi\>>.
  </definition>

  <\proposition>
    Let <math|\<varphi\>\<Rightarrow\>\<psi\>\<in\><value|langCond>> (that
    is, <math|\<varphi\>,\<psi\>\<in\><value|langProp>>). Then for all
    <math|<value|Net>\<in\><value|NetModel>>,

    <\equation*>
      <value|Net><value|modelsNet>\<varphi\>\<Rightarrow\>\<psi\><infix-iff><value|Net><value|modelsNet>U<around*|(|<value|bestop>\<varphi\>\<rightarrow\>\<psi\>|)>
    </equation*>
  </proposition>

  <subsection|Lifting a modal logic to first-order logic>

  <\itemize>
    <item>A relatively new technique in modal logic allows us to \Plift\Q the
    modal semantics to first-order logic. In this section, I describe this
    technique, and explain how it is used to give semantics for classical
    first-order logic.

    <item>Explain where this technique comes from: A way to explain how
    first-order logic can be derived as a special kind of modal logic. This
    is widely known within certain logic circles, but is not widely known
    among those who use logics in AI. I am using it in a totally
    non-controversial way: I follow it as instructions for how to get a
    predicate logic from a modal one.

    <item>Basic idea: Possible worlds are variable assignments

    <item>This is done in two stages: Stage 1 is to treat each quantifier per
    variable <math|\<forall\>x> like a dynamic modal operator
    <math|<around*|[|x|]>>. Stage 2 is to consider substitution
    <math|<around*|[|y/x|]>> like a 2-variable dynamic modal operator as
    well.

    <item>This is first-order logic <with|font-shape|italic|without>
    equality. We can optionally introduce equality as a predicate
    <math|=<around*|(|x,y|)>> <todo|I don't know the consequences of that
    choice<text-dots>>.

    <item>In Section 3, I will follow Stage 1 and interpret
    <math|\<exists\>x> as the closure of a signal in a neural network
    (following closely to the modal logic interpretation). In Section 4, I
    will consider <with|font-shape|italic|classical> substitution and explore
    how it interacts with the neural network closure variant of
    <math|\<exists\>x>. (I need to define free variables and \P<math|y> is
    free for <math|x> in <math|\<varphi\>>\Q)

    <item>Here I can make a table of first-order logic axioms and the frame
    properties they correspond to. <float|float|thb|<big-figure|<tabular|<tformat|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-bsep|0.25fn>|<cwith|1|-1|1|-1|cell-tsep|0.25fn>|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|1|1|4|4|cell-bborder|0ln>|<cwith|2|2|4|4|cell-tborder|0ln>|<cwith|1|1|4|4|cell-lborder|0ln>|<cwith|1|1|3|3|cell-rborder|0ln>|<cwith|1|1|4|4|cell-rborder|0ln>|<cwith|1|1|5|5|cell-lborder|0ln>|<cwith|2|3|5|5|cell-bsep|0.25fn>|<cwith|2|3|5|5|cell-tsep|0.25fn>|<cwith|2|3|5|5|cell-bsep|0.3fn>|<cwith|2|3|5|5|cell-tsep|0.3fn>|<cwith|2|3|7|7|cell-bsep|0.25fn>|<cwith|2|3|7|7|cell-tsep|0.25fn>|<cwith|2|3|7|7|cell-bsep|0.3fn>|<cwith|2|3|7|7|cell-tsep|0.3fn>|<cwith|2|3|5|7|cell-bsep|0.25fn>|<cwith|2|3|5|7|cell-tsep|0.25fn>|<cwith|2|3|5|5|cell-bsep|0.25fn>|<cwith|2|3|5|5|cell-tsep|0.25fn>|<cwith|2|3|5|5|cell-bsep|0.3fn>|<cwith|2|3|5|5|cell-tsep|0.3fn>|<cwith|2|3|7|7|cell-bsep|0.25fn>|<cwith|2|3|7|7|cell-tsep|0.25fn>|<cwith|2|3|7|7|cell-bsep|0.3fn>|<cwith|2|3|7|7|cell-tsep|0.3fn>|<cwith|2|3|5|5|cell-bsep|0.25fn>|<cwith|2|3|5|5|cell-tsep|0.25fn>|<cwith|2|3|5|5|cell-bsep|0.25fn>|<cwith|2|3|5|5|cell-tsep|0.25fn>|<cwith|2|3|5|5|cell-bsep|0.3fn>|<cwith|2|3|5|5|cell-tsep|0.3fn>|<cwith|2|3|7|7|cell-bsep|0.25fn>|<cwith|2|3|7|7|cell-tsep|0.25fn>|<cwith|2|3|7|7|cell-bsep|0.25fn>|<cwith|2|3|7|7|cell-tsep|0.25fn>|<cwith|2|3|7|7|cell-bsep|0.3fn>|<cwith|2|3|7|7|cell-tsep|0.3fn>|<table|<row|<cell|<with|font-series|bold|FOL
    Axiom:>>|<cell|>|<cell|<with|font-series|bold|Frame
    Property:>>|<cell|<space|0.5em>>|<cell|<with|font-series|bold|FOL
    Axiom:>>|<cell|>|<cell|<with|font-series|bold|Frame
    Property:>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>|<label|figure-classical-FOL-axioms>>>
    Figure <reference|figure-classical-FOL-axioms>.
  </itemize>

  <section|Neural Network Semantics for Quantifiers and Predicates>

  <subsection|Variable-assignment networks>

  <\itemize>
    <item>I should first say that instead of an underlying set of
    propositions, there is an underlying set of predicates
    <math|p<around*|(|x<rsub|1>,\<ldots\>,x<rsub|k>|)>>
  </itemize>

  <\definition>
    A variable-assignment network is <math|<value|Net>=\<langle\>N,<around*|{|E<rsub|x>|}><rsub|x\<in\><value|vars>>,<around*|{|W<rsub|x>|}><rsub|x\<in\><value|vars>>,<around*|{|A<rsub|x>|}><rsub|x\<in\><value|vars>>,V\<rangle\>>,
    where

    <\itemize>
      <item><math|N> <todo|type it correctly> is a finite nonempty set of
      <with|font-shape|italic|variable assignments>, which we treat as nodes
      of the network. I will use lowercase greek symbols
      <math|\<alpha\>,\<beta\>,\<ldots\>> to denote these special variable
      assignment neurons, in order to distinguish them from ordinary neurons
      <math|n,m,\<ldots\>>

      <item>The edges, weights, and activation function are defined exactly
      as before, but now I define one for each variable: <math|E<rsub|x>>,
      <math|W<rsub|x>>, <math|A<rsub|x>> for <math|x\<in\><value|vars>>.

      <item><math|V:<todo|>\<rightarrow\><value|powerset><around*|(|N|)>> is
      a <with|font-shape|italic|valuation> that maps each atomic predicate
      <math|p<around*|(|x<rsub|1>,\<ldots\>,x<rsub|k>|)>> to the set of
      variable assignments that make <math|p> true (equivalently, the set of
      variable assignments that are active in state
      <with|font-shape|italic|p>).
    </itemize>
  </definition>

  <todo|define <math|<value|State><rsub|x>> for variable-assignment models
  (<math|<value|Net>> subscript will be hidden)>

  Think of a variable-assignment network like an ensemble of neural networks
  <math|<value|Net><rsub|x>=\<langle\>N,E<rsub|x>,W<rsub|x>,A<rsub|x>,V\<rangle\>>
  for each variable <math|x>. Each of these nets <math|<value|Net><rsub|x>>
  in the ensemble specifies a particular accessibility structure for
  assignments <math|\<alpha\>\<in\>N> under variable <math|x>. Unlike
  classical assignment models however, this accessibility structure is
  determined by a neural network transition function
  <math|F<rsub|x,S<rsub|0>>> from state <math|S\<in\><value|State><rsub|x>>
  to the next state (for a particular variable <math|x>). This function
  <math|F<rsub|x,S<rsub|0>>> is defined exactly as before; the only
  difference is that there is now one per <math|x\<in\><value|vars>>.

  <\equation*>
    F<rsub|x,S<rsub|0>><around*|(|S|)>=S<rsub|0>\<cup\><around*|{|\<eta\><value|st>A<rsub|x><around*|(|<big|sum><rsub|m\<in\><value|preds><rsub|x><around*|(|n|)>>W<rsub|x><around*|(|m,n|)>\<cdot\><value|bigchi><rsub|S><around*|(|m|)>|)>=1|}>
  </equation*>

  where <math|<value|bigchi><rsub|S><around*|(|m|)>=1> iff <math|m\<in\>S> is
  the indicator function.

  The closure for each <math|x\<in\><value|vars>> is defined similarly. I
  postulate that for all states <math|S<rsub|0>>, <math|F<rsub|x,S<rsub|0>>>
  applied repeatedly to <math|S<rsub|0>> has a unique fixed point under
  <math|S<rsub|0>> (it is the only state <math|S> such that
  <math|F<rsub|x,S<rsub|0>><around*|(|S|)>=S>). Let
  <math|<value|Closure><rsub|x>:<value|State><rsub|x>\<rightarrow\><value|State><rsub|x>>
  be the function that produces that least fixed point, for network
  <math|<value|Net><rsub|x>>. <todo|define class of VANs>

  <subsection|Semantics>

  <\definition>
    Formulas in the <todo|extended first-order language> are given by

    <\equation*>
      \<varphi\>,\<psi\>\<assign\>p<around*|(|x<rsub|1>,\<ldots\>,x<rsub|k>|)><value|st>\<neg\>\<varphi\><value|st>\<varphi\>\<wedge\>\<psi\><value|st>U\<varphi\><value|st>\<forall\>x\<varphi\><value|st><value|netforall>x\<varphi\>
    </equation*>

    <math|\<top\>,\<bot\>,\<vee\>,\<rightarrow\>,\<leftrightarrow\>> and the
    dual quantifiers <math|\<exists\>x,<value|netexists>x> are defined in the
    usual way.
  </definition>

  <math|\<forall\>x\<varphi\>> is intended to be the minimal universal
  quantifier, which says \P<math|\<varphi\>> is true in all variable
  assignments that are accessible from the current one.\Q The special
  operator <math|<value|netforall>x\<varphi\>> is intended to be the
  universal quantifier we get by interpreting
  <math|<value|netexists>x\<varphi\>> as the closure of signal
  <math|\<varphi\>> in the neural network <math|<value|Net><rsub|x>>.

  <\definition>
    For all <math|<value|Net>\<in\><value|NetModel>>, and variable
    assignments <math|\<alpha\>\<in\>N>:

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<value|Net>,\<alpha\>\<models\>p<around*|(|x<rsub|1>,\<ldots\>,x<rsub|k>|)>>|<cell|<space|1em>iff<space|1em>>|<cell|\<alpha\>\<in\>V<around*|(|p<around*|(|x<rsub|1>,\<ldots\>,x<rsub|k>|)>|)>>>|<row|<cell|<value|Net>,\<alpha\>\<models\>\<neg\>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<value|Net>,\<alpha\><neg|\<models\>>\<varphi\>>>|<row|<cell|<value|Net>,\<alpha\>\<models\>\<varphi\>\<wedge\>\<psi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<value|Net>,\<alpha\>\<models\>\<varphi\><infix-and><value|Net>,\<alpha\>\<models\>\<psi\>>>|<row|<cell|<value|Net>,\<alpha\>\<models\>U\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<todo|todo>>>|<row|<cell|<value|Net>,\<alpha\>\<models\>\<exists\>x\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<text|there
      is an >E<rsub|x><text|-path from ><semantics|\<varphi\>><text| to
      >\<alpha\>>>|<row|<cell|<value|Net>,\<alpha\>\<models\><value|netexists>x\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|\<alpha\>\<in\><value|Closure><rsub|x><around*|(|<semantics|\<varphi\>>|)>>>>>>
    </equation*>

    where <math|<semantics|\<varphi\>>=<around*|{|\<alpha\>\<in\>N<value|st><value|Net>,\<alpha\>\<models\>\<varphi\>|}>>.
  </definition>

  <\proposition>
    By the definition of the duals <math|\<exists\>x,<value|netexists>x>, we
    can instead define the semantics for <math|\<forall\>x,<value|netforall>x>
    as follows. For all <math|<value|Net>\<in\><todo|>>,
    <math|\<alpha\>\<in\>N>:

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<value|Net>,\<alpha\>\<models\>\<forall\>x\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<text|there
      is <with|font-shape|italic|no> >E<rsub|x><text|-path from
      ><semantics|\<varphi\>><rsup|\<complement\>><text| to
      >\<alpha\>>>|<row|<cell|<value|Net>,\<alpha\>\<models\><value|netforall>x\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|\<alpha\>\<in\><around*|(|<value|Closure><around*|(|<semantics|\<varphi\>><rsup|\<complement\>>|)>|)><rsup|\<complement\>>>>>>>
    </equation*>
  </proposition>

  <subsection|Some sound and unsound first-order axioms>

  <\itemize>
    <item>In this section, I will explore which first-order logic axioms are
    sound for <math|<value|netforall>x> interpreted in a variable-assignment
    neural network.

    <item>Sound ones: <with|font-series|bold|(Dual)>,
    <with|font-series|bold|(Rep)>, <with|font-series|bold|(CM)>,
    <with|font-series|bold|(Refl)>, and <with|font-series|bold|(Trans)> get
    inherited by the underlying modal logic, and are sound for the same
    reasons. (e.g., <with|font-series|bold|(CM)> holds because each
    <math|<value|Closure><rsub|x>> is cumulative.)

    <item>Are there any sound variable interactions (for two variables
    <math|x,y>)? All the ones listed appear to not necessarily be sound, but
    is there something we can say that's true?

    <item>The unsound ones. For each of them, I should (1) prove that it
    isn't sound with a counterexample, and (2) think about
    <with|font-shape|italic|what property of <math|<value|Closure><rsub|x>>
    would make it true?> (Think of each of these axioms as somewhat
    negotiable; it's perfectly fine for neural networks to model dependent
    quantifiers <math|<value|netforall>x> rather than the classical
    <with|font-shape|italic|independent> quantifiers.)

    <\description>
      <item*|(Nec)>

      <item*|(Distr)>

      <item*|(Eucl)>

      <item*|(???)>

      <item*|(Exch)><todo|Give the neural network that is a countermodel
      here> <todo|Also, talk about what this means\Vneural networks are
      capable of modeling <with|font-shape|italic|dependent> quantifiers!>

      <\proposition>
        The exchange axiom <with|font-series|bold|(Exch)> is sound if and
        only if for all nets <math|<value|Net>\<in\><todo|>>,
        <math|\<varphi\>\<in\><todo|>> and <math|x,y\<in\><value|vars>>,
        <math|<value|Closure><rsub|x><around*|(|<value|Closure><rsub|y><around*|(|<semantics|\<varphi\>>|)>|)>=<value|Closure><rsub|y><around*|(|<value|Closure><rsub|x><around*|(|<semantics|\<psi\>>|)>|)>>.
      </proposition>

      <\proof>
        <todo|todo>
      </proof>

      <item*|(PR)>

      <item*|(Confl)>
    </description>
  </itemize>

  <\float|float|thb>
    <\big-figure|<center|<tabular|<tformat|<cwith|1|1|3|3|cell-row-span|1>|<cwith|1|1|3|3|cell-col-span|6>|<cwith|1|1|3|3|cell-halign|c>|<cwith|2|2|3|-1|cell-halign|c>|<cwith|1|1|3|3|cell-bsep|0.5fn>|<cwith|6|13|3|-1|cell-halign|c>|<cwith|1|1|2|2|cell-row-span|2>|<cwith|1|1|2|2|cell-col-span|1>|<cwith|2|2|3|-1|cell-tborder|0ln>|<cwith|2|2|3|-1|cell-bborder|1ln>|<cwith|2|2|3|3|cell-lborder|0ln>|<cwith|1|2|2|2|cell-rborder|0ln>|<cwith|1|2|2|2|cell-bborder|0ln>|<cwith|6|13|2|2|cell-lborder|0ln>|<cwith|6|13|2|2|cell-rborder|1ln>|<cwith|6|13|3|3|cell-lborder|1ln>|<cwith|6|13|1|-1|cell-bsep|0.2fn>|<cwith|6|13|1|-1|cell-tsep|0.2fn>|<cwith|6|6|2|2|cell-hyphen|t>|<cwith|6|13|3|-1|cell-valign|c>|<cwith|7|7|2|2|cell-hyphen|t>|<cwith|9|9|3|6|cell-halign|c>|<cwith|9|9|3|3|cell-lborder|1ln>|<cwith|9|9|3|6|cell-bsep|0.2fn>|<cwith|9|9|3|6|cell-tsep|0.2fn>|<cwith|9|9|3|6|cell-valign|c>|<cwith|7|7|3|6|cell-halign|c>|<cwith|7|7|3|3|cell-lborder|1ln>|<cwith|7|7|3|6|cell-bsep|0.2fn>|<cwith|7|7|3|6|cell-tsep|0.2fn>|<cwith|7|7|3|6|cell-valign|c>|<cwith|7|7|3|-1|cell-tborder|0ln>|<cwith|7|7|2|2|cell-tborder|0ln>|<cwith|8|8|2|2|cell-hyphen|t>|<cwith|9|9|2|2|cell-hyphen|t>|<cwith|6|13|5|5|cell-rborder|1ln>|<cwith|1|1|3|-1|cell-bborder|0ln>|<cwith|2|2|5|5|cell-rborder|0ln>|<cwith|12|12|2|2|cell-hyphen|t>|<cwith|6|6|5|5|cell-lborder|0ln>|<cwith|6|6|4|4|cell-rborder|0ln>|<cwith|6|6|5|5|cell-rborder|0ln>|<cwith|6|6|5|5|cell-bborder|0ln>|<cwith|12|12|5|5|cell-bborder|0ln>|<cwith|7|12|5|5|cell-lborder|0ln>|<cwith|7|12|4|4|cell-rborder|0ln>|<cwith|7|12|5|5|cell-rborder|0ln>|<cwith|3|3|5|5|cell-tborder|1ln>|<cwith|2|2|5|5|cell-bborder|1ln>|<cwith|3|3|5|5|cell-bborder|0ln>|<cwith|6|6|5|5|cell-tborder|0ln>|<cwith|3|3|5|5|cell-lborder|0ln>|<cwith|3|3|4|4|cell-rborder|0ln>|<cwith|3|3|5|5|cell-rborder|0ln>|<cwith|3|3|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|3|3|3|3|cell-lborder|1ln>|<cwith|3|3|2|2|cell-rborder|1ln>|<cwith|3|3|3|3|cell-rborder|0ln>|<cwith|3|3|4|4|cell-lborder|0ln>|<cwith|3|3|3|5|cell-halign|c>|<cwith|3|3|3|5|cell-valign|c>|<cwith|3|3|3|3|cell-bborder|0ln>|<cwith|4|5|3|5|cell-halign|c>|<cwith|4|5|3|5|cell-valign|c>|<cwith|4|4|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|4|5|3|3|cell-lborder|1ln>|<cwith|4|5|2|2|cell-rborder|1ln>|<cwith|4|5|3|3|cell-rborder|0ln>|<cwith|4|5|4|4|cell-lborder|0ln>|<cwith|3|12|1|2|cell-valign|c>|<table|<row|<cell|>|<cell|>|<cell|<with|font-series|bold|Semantics
    for First-Order Logic>>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|<with|font-series|bold|Neural>>|<cell|<math|<text|<with|font-series|bold|Generalized>>>>|<cell|<text|<with|font-series|bold|Classical>>>>|<row|<cell|<with|font-series|bold|(Dual)>>|<cell|<math|<value|netexists>x\<varphi\>\<leftrightarrow\>\<neg\><value|netforall>x\<neg\>\<varphi\>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>>|<row|<cell|<with|font-series|bold|(Nec)>>|<cell|If
    <math|<value|proves>\<varphi\>> then <math|<value|proves><value|netforall>x\<varphi\>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>>|<row|<cell|<with|font-series|bold|(CM)>>|<cell|<math|U<around*|(|<value|netforall>x\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|<value|netforall>x<around*|(|\<varphi\>\<wedge\>\<psi\>|)>\<rightarrow\><value|netforall>x\<varphi\>|)>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>>|<row|<cell|<with|font-series|bold|(Distr)>>|<\cell>
      <math|<value|netforall>x<around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|<value|netforall>x\<varphi\>\<rightarrow\><value|netforall>x\<psi\>|)>>
    </cell>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>>|<row|<cell|<with|font-series|bold|(Refl)>>|<\cell>
      <math|<value|netforall>x\<varphi\>\<rightarrow\>\<varphi\>>
    </cell>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>>|<row|<cell|<with|font-series|bold|(Trans)>>|<\cell>
      <math|<value|netforall>x\<varphi\>\<leftrightarrow\><value|netforall>x<value|netforall>x\<varphi\>>
    </cell>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>>|<row|<cell|<with|font-series|bold|(Eucl)>>|<\cell>
      <math|<value|netexists>x\<varphi\>\<rightarrow\><value|netforall>x<value|netexists>x\<varphi\>>
    </cell>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>>|<row|<cell|<with|font-series|bold|(???)>>|<cell|<math|\<varphi\>\<rightarrow\><value|netforall>x\<varphi\>>
    for <math|x> not free in <math|\<varphi\>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>>|<row|<cell|<with|font-series|bold|(Exch)>>|<cell|<math|<value|netforall>x<value|netforall>y\<varphi\>\<leftrightarrow\><value|netforall>y<value|netforall>x\<varphi\>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>>|<row|<cell|<with|font-series|bold|(Confl)>>|<\cell>
      <math|<value|netexists>x<value|netforall>y\<varphi\>\<rightarrow\><value|netforall>y<value|netexists>x\<varphi\>>
    </cell>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>>>>>>>
      <label|figure-comparision>Soundness for various FOL axioms, under three
      different semantics: neural semantics using variable-assignment
      networks <todo|>, the generalized semantics <todo|>, and classical
      semantics for FOL <todo|>. For the generalized and classical semantics,
      <math|<value|netforall>x> and <math|<value|netexists>x> should be
      interpreted as the usual <math|\<forall\>x> and <math|\<exists\>x>.
      <with|color|#34A853|<aw|check-circle|1fn>> indicates that the axiom is
      sound, i.e., holds for all models in that class without introducing any
      new frame properties. <with|color|#EA4335|<aw|times-circle|1fn>>
      indicates that the axiom does not hold for all models in that class,
      and may require additional frame properties to make it hold.
    </big-figure>

    Abbreviations: <with|font-series|bold|(CM)> is Cautious Monotonicity
    (from conditional logic); <with|font-series|bold|(Eucl)> is Euclidean;
    <with|font-series|bold|(Exch)> is the standard FOL exchange principle;
    <with|font-series|bold|(Confl)> is Confluence.
  </float>

  <section|Neural Network Semantics and Variable Substitution>

  <subsection|Variable-assignment networks with substitution>

  The story up to here is incomplete; variable substitution is at the heart
  of FOL, and I have not yet said anything about substitution in
  variable-assignment networks. Following <todo|cite van Benthem> closely, I
  consider a substitution relation <math|<value|substinto>>. The intended
  meaning of <math|\<alpha\><value|substinto>\<beta\>> is \P<math|\<beta\>>
  is the result of assigning <math|x\<assign\>y> in <math|\<alpha\>>.\Q
  Formally,

  <\equation*>
    \<alpha\><value|substinto>\<beta\><infix-iff>\<beta\><around*|(|x|)>=\<alpha\><around*|(|y|)><text|
    and >\<alpha\><around*|(|z|)>=\<beta\><around*|(|z|)><text| for all
    >z\<neq\>x
  </equation*>

  For convenience, I assume that <math|<value|substinto>> is
  <with|font-shape|italic|functional>, i.e. for each <math|\<alpha\>\<in\>N>
  there is exactly one <math|\<beta\>\<in\>N> with
  <math|\<alpha\><value|substinto>\<beta\>>.

  Van Benthem also considers a generalized notion of substitution, where
  <math|<value|substinto>> is just an abstract relation on assignments. For
  my purposes I will opt for the concrete definition, since substitution is a
  syntactic notion and we don't gain much by interpreting it in a neural
  network structure.

  From here, I will extend the language <todo|> to <todo|>, which has
  substitution operators <math|<value|subst>> for
  <math|x,y\<in\><value|vars>>. Formulas are given by

  <\equation*>
    \<varphi\>,\<psi\>\<assign\>p<around*|(|x<rsub|1>,\<ldots\>,x<rsub|k>|)><value|st>\<neg\>\<varphi\><value|st>\<varphi\>\<wedge\>\<psi\><value|st>U\<varphi\><value|st>\<forall\>x\<varphi\><value|st><value|netforall>x\<varphi\><value|st><value|subst>\<varphi\>
  </equation*>

  The semantics for <math|<value|subst>> is given by

  <\equation*>
    <value|Net>,\<alpha\>\<models\><value|subst>\<varphi\><infix-iff><text|for
    that unique >\<beta\><text| such that
    >\<alpha\><value|substinto>\<beta\>,<text| we have
    ><value|Net>,\<beta\>\<models\>\<varphi\>
  </equation*>

  <subsection|Some sound and unsound axioms with substitution>

  Let's now consider soundness for this extended language with
  <math|<value|subst>>. Since the operator <math|<value|subst>> is defined
  classically, it satisfies all the usual FOL substitution axioms over
  predicates, <math|\<wedge\>>, and <math|\<neg\>>:

  <\itemize>
    <item><math|<value|subst>p<around*|(|x|)>\<leftrightarrow\>p<around*|(|y|)>>,
    and <math|<value|subst>p<around*|(|z|)>\<leftrightarrow\>p<around*|(|z|)>>
    for <math|z\<neq\>x>.

    <item><math|<value|subst><around*|(|\<varphi\>\<wedge\>\<psi\>|)>\<leftrightarrow\><around*|(|<value|subst>\<varphi\>\<wedge\><value|subst>\<psi\>|)>>

    <item><math|<value|subst>\<neg\>\<varphi\>\<leftrightarrow\>\<neg\><value|subst>\<varphi\>>
    (since substitution is <with|font-shape|italic|functional>)
  </itemize>

  <todo|It satisfies the usual interaction axioms with the classical/minimal
  quantifier <math|\<forall\>x> so long as I add in the right frame
  conditions, which I should do above.>

  I will now explore the different possible interactions between classical
  substitution <math|<value|subst>> and neural quantifiers
  <math|<value|netforall>x>, i.e., interactions between the substitution
  relation <math|<value|substinto>> and <math|<value|Closure><rsub|x>>. In
  contrast to the axioms with quantifiers alone, I consider the
  <math|<value|subst>> interactions to be relatively non-negotiable; in order
  to interpret a neural network as a FOL reasoner, it's important for the
  net's activation function <math|<value|Closure><rsub|x>> to get along with
  substitution (the core mechanic of FOL). Here is a list of the standard
  interactions for classical FOL (these versions with the
  <math|<value|subst>> operator come from <todo|cite van Benthem>, who drew
  the standard axioms from <todo|cite Enderton>):

  <\enumerate>
    <item><math|<value|subst><value|netforall>x\<varphi\>\<leftrightarrow\><value|netforall>x\<varphi\>>

    <item><math|<value|subst><value|netforall>z\<varphi\>\<leftrightarrow\><value|netforall>z<value|subst>\<varphi\>>
    for <math|z\<neq\>x>

    <item><math|<value|netforall>x\<varphi\>\<rightarrow\><value|subst>\<varphi\>>,
    if <math|y> free for <math|x> in <math|\<varphi\>>
  </enumerate>

  <todo|The second axiom includes the case
  <math|<value|subst><value|netforall>y\<varphi\>\<leftrightarrow\><value|netforall>y<value|subst>\<varphi\>>.
  I'm not listing existential interactions such as
  <math|<value|subst><value|netexists>x\<varphi\>\<leftrightarrow\><value|netexists>x\<varphi\>>,
  <math|<value|subst><value|netexists>y\<varphi\>\<leftrightarrow\><value|netexists>y<value|subst>\<varphi\>>,
  and <math|<value|subst><value|netexists>z\<varphi\>\<leftrightarrow\><value|netexists>z<value|subst>\<varphi\>>
  for <math|z\<neq\>x,y>, since for functional <math|<value|subst>> they are
  each equivalent to their duals.>

  <todo|I'm also only interested in the <around*|(|<math|\<rightarrow\>>|)>
  direction of (1) and (2) above, >

  Note that these are <with|font-shape|italic|all> sound in classical FOL,
  and in generalized FOL they are each only sound alongside frame conditions.
  For variable-assignment network semantics, it's not necessary for
  <math|<value|Closure><rsub|x>> to interact with <math|<value|substinto>> at
  all\Vby default, none of these interaction axioms are sound. But we can now
  ask: what neural network frame conditions are sufficient to make these
  axioms hold? In other words, what class of variable-assignment nets
  <math|<value|Net>> interact in the expected way with substitution?

  Consider the following three properties of variable-assignment nets
  <math|<value|Net>>. The first, that <math|<value|Net>> respects
  substitutions, says that if <math|\<beta\>> is the result of assigning
  <math|x\<assign\>y> in <math|\<alpha\>>, and <math|\<alpha\>> is activated
  by signal <math|<semantics|\<varphi\>>>, then <math|\<beta\>> is activated
  as well.

  <\definition>
    A variable-assignment net <math|<value|Net>\<in\><todo|>>
    <with|font-shape|italic|respects substitutions> iff for all
    <math|\<alpha\>,\<beta\>\<in\>N>, <math|x,y\<in\><value|vars>>,
    <math|\<varphi\>\<in\><todo|>>, if <math|\<alpha\><value|substinto>\<beta\>>
    and <math|\<alpha\>\<in\><value|Closure><rsub|x><around*|(|<semantics|\<varphi\>>|)>>,
    then <math|\<beta\>\<in\><value|Closure><rsub|x><around*|(|<semantics|\<varphi\>>|)>>.
  </definition>

  <\example>
    <todo|Give an example of a neural network that respects substitutions
    (but does not necessarily reflect them)>
  </example>

  The second property, <math|<value|Net>> reflects substitutions, says that
  if <math|\<beta\>> is the result of assigning <math|x\<assign\>y> in
  <math|\<alpha\>>, and substituting <math|y> for <math|x> in
  <math|\<varphi\>> does not result in any binding issues, if <math|\<beta\>>
  is activated by signal <math|<semantics|\<varphi\>>>, then <math|\<alpha\>>
  is activated as well.

  <\definition>
    A variable-assignment net <math|<value|Net>\<in\><todo|>>
    <with|font-shape|italic|reflects substitutions> iff for all
    <math|\<alpha\>,\<beta\>\<in\>N>, <math|x,y\<in\><value|vars>>,
    <math|\<varphi\>\<in\><todo|>>, if <math|\<alpha\><value|substinto>\<beta\>>,
    <math|\<beta\>\<in\><value|Closure><rsub|x><around*|(|<semantics|\<varphi\>>|)>>,
    and and <math|y> is free for <math|x> in <math|\<varphi\>>, we have
    <math|\<alpha\>\<in\><value|Closure><rsub|x><around*|(|<semantics|\<varphi\>>|)>>.
  </definition>

  <\example>
    <todo|Give an example of a neural network that reflects substitutions
    (but does not necessarily respect them)>
  </example>

  A neural network both <with|font-shape|italic|respects and reflects
  substitutions> iff whenever <math|\<alpha\><value|substinto>\<beta\>>,
  <math|\<alpha\>> and <math|\<beta\>> are activated by exactly the same
  signals <math|<semantics|\<varphi\>>> (provided <math|y> is free for
  <math|x> in <math|\<varphi\>>).

  <\definition>
    <todo|A third condition for the other axiom>
  </definition>

  <\example>
    <todo|Give an example of a neural network with this third condition, but
    not the others>
  </example>

  The main result of this section is that these three properties are
  sufficient for the neural network interpreted <math|<value|netforall>x> to
  interact normally with <math|<value|subst>>. <todo|Answer: what kinds of
  neural network ensembles are these ones like?>

  <\example>
    <todo|Give an example of a neural network with all three!>
  </example>

  I will now prove that these three properties are sufficient:

  <\proposition>
    Suppose a variable-assignment net <math|<value|Net>>
    <with|font-shape|italic|respects> substitutions. Then the
    <math|<around*|(|\<rightarrow\>|)>> direction of the axiom
    <math|<value|subst><value|netforall>x\<varphi\>\<leftrightarrow\><value|netforall>x\<varphi\>>
    is sound.
  </proposition>

  <\proof>
    Let <math|<value|Net>\<in\><todo|>> and let <math|\<alpha\>\<in\>N> be
    any assignment. Let <math|\<beta\>> be that unique assignment such that
    <math|\<alpha\><value|substinto>\<beta\>>. Suppose
    <math|<value|Net>,\<alpha\>\<models\><value|subst><value|netforall>x\<varphi\>>.
    By the semantics for substitution, <math|<value|Net>,\<beta\>\<models\><value|netforall>x\<varphi\>>,
    and then by the semantics for <math|<value|netforall>x> we have
    <math|\<beta\><neg|\<in\>><value|Closure><rsub|x><around*|(|<semantics|\<varphi\>><rsup|\<complement\>>|)>>.
    Since <math|<value|Net>> respects substitutions,
    <math|\<alpha\><neg|\<in\>><value|Closure><rsub|x><around*|(|<semantics|\<varphi\>><rsup|\<complement\>>|)>>.
    But this means <math|<value|Net>,\<alpha\>\<models\><value|netforall>x\<varphi\>>,
    and we are done.
  </proof>

  <\proposition>
    Suppose a variable-assignment net <math|<value|Net>>
    <with|font-shape|italic|reflects> substitutions. Then the axiom
    \P<math|<value|netforall>x\<varphi\>\<rightarrow\><value|subst>\<varphi\>>,
    if <math|y> free for <math|x> in <math|\<varphi\>>\Q is sound.
  </proposition>

  <\proof>
    Let <math|<value|Net>\<in\><todo|>> and let <math|\<alpha\>\<in\>N> be
    any assignment. Let <math|\<beta\>> be that unique assignment such that
    <math|\<alpha\><value|substinto>\<beta\>>. Suppose
    <math|<value|Net>,\<alpha\>\<models\><value|netforall>x\<varphi\>>, and
    suppose <math|y> is free for <math|x> in <math|\<varphi\>>. By the
    semantics for <math|<value|netforall>x> we have
    <math|\<alpha\><neg|\<in\>><value|Closure><rsub|x><around*|(|<semantics|\<varphi\>><rsup|\<complement\>>|)>=<value|Closure><rsub|x><around*|(|<semantics|\<neg\>\<varphi\>>|)>>.

    Now, suppose for contradiction that <math|<value|Net>,\<alpha\><neg|\<models\>><value|subst>\<varphi\>>,
    i.e., <math|\<beta\>\<in\><semantics|\<varphi\>><rsup|\<complement\>>>.
    By Inclusion of <math|<value|Closure><rsub|x>>,
    <math|\<beta\>\<in\><value|Closure><rsub|x><around*|(|<semantics|\<varphi\>><rsup|\<complement\>>|)>=<value|Closure><rsub|x><around*|(|<semantics|\<neg\>\<varphi\>>|)>>.
    Since <math|y> is free for <math|x> in <math|\<varphi\>>, <math|y> is
    free for <math|x> in <math|\<neg\>\<varphi\>>. So we can apply the fact
    that <math|<value|Net>> reflects substitutions, which gives us
    <math|\<alpha\>\<in\><value|Closure><rsub|x><around*|(|<semantics|\<varphi\>><rsup|\<complement\>>|)>>.
    But this directly contradicts our hypothesis. So we must conclude that
    <math|<value|Net>,\<alpha\>\<models\><value|subst>\<varphi\>>.
  </proof>

  <\corollary>
    Suppose a variable-assignment net <math|<value|Net>> respects
    substitutions. Then the <math|<around*|(|\<leftarrow\>|)>> direction of
    the axiom <math|<value|subst><value|netforall>x\<varphi\>\<leftrightarrow\><value|netforall>x\<varphi\>>
    is sound.
  </corollary>

  <\proof>
    If <math|<value|Net>> respects substitutions, then
    \P<math|<value|netforall>x\<varphi\>\<rightarrow\><value|subst>\<varphi\>>,
    if <math|y> free for <math|x> in <math|\<varphi\>>\Q is sound. I will
    show that the formula <math|<value|netforall>x\<varphi\>\<rightarrow\><value|subst><value|netforall>x\<varphi\>>
    follows. Let <math|\<alpha\>\<in\>N> and suppose
    <math|<value|Net>,\<alpha\>\<models\><value|netforall>x\<varphi\>>. By
    the soundness of <with|font-series|bold|(Trans)>,
    <math|<value|Net>,\<alpha\>\<models\><value|netforall>x<value|netforall>x\<varphi\>>.
    Now, notice that <math|y> is free for <math|x> in the expression
    <math|<value|netforall>x\<varphi\>> (since <math|x> is not free at all,
    it is safe to substitute <math|y> for <math|x>). So by hypothesis,
    <math|<value|Net>,\<alpha\>\<models\><value|subst><value|netforall>x\<varphi\>>,
    which was the goal.
  </proof>

  <\proposition>
    Suppose a variable-assignment net <math|<value|Net>> is <todo|todo>. Then
    the following substitution interaction axioms are sound:

    <\itemize>
      <item><todo|todo>
    </itemize>
  </proposition>

  <\proof>
    <todo|todo>
  </proof>

  <section|How to Interpret Variable-Assignment Networks>

  <\itemize>
    <item>Part of my conclusion is this: In order for a variable-assignment
    net to behave like full FOL reasoner, it must have [list of properties]

    <item>In addition to whatever else I do here, I should probably sanity
    check and make sure that there <with|font-shape|italic|is> actually a
    variable-assignment net that satisfies all of the properties necessary to
    make it act like a full FOL reasoner. (If there isn't one that has all
    the properties, then one of the properties is saying too much / together
    they are trivial.)
  </itemize>

  <section|Discussion>

  <subsection|Variable assignment networks within neuro-symbolic AI>

  Working list of neuro-symbolic systems that interpret quantifiers or
  variable substitution in any formal way:

  <\itemize>
    <item>Logic Tensor Networks (over \Preal logic\Q)\Vsee
    <with|font-shape|italic|Badreddine, Logic Tensor Networks, 2022>

    <item>Logical Neural Networks\Vsee <with|font-shape|italic|Riegel, Gray,
    Logical neural networks, 2020>

    <item>Kiela, <with|font-shape|italic|Variable Binding in Biologically
    Plausible Neural Networks>, 2011
  </itemize>

  <subsection|Are variable-assignment networks cognitively plausible?>

  Working list of papers that might bear on this question:

  <\itemize>
    <item>Corey, <with|font-shape|italic|Neural basis for generalized
    quantifier comprehension>, 2005

    <item>Kiela, <with|font-shape|italic|Variable Binding in Biologically
    Plausible Neural Networks>, 2011
  </itemize>

  The questions here are (1) whether there really are distinct
  <with|font-series|bold|types> of edges in neural networks, and (2) whether
  neurons can be thought of as carrying variable-assignment information.

  <section|Conclusions and Open Problems>

  <\bibliography|bib|tm-plain|references.bib>
    <\bib-list|3>
      <bibitem*|1><label|bib-merrill2019sequential>William Merrill.
      <newblock>Sequential neural networks as automata.
      <newblock><with|font-shape|italic|ArXiv preprint arXiv:1906.01615>,
      2019.<newblock>

      <bibitem*|2><label|bib-merrill2020formal>William Merrill, Gail Weiss,
      Yoav Goldberg, Roy Schwartz, Noah<nbsp>A Smith<localize|, and >Eran
      Yahav. <newblock>A formal hierarchy of RNN architectures.
      <newblock><with|font-shape|italic|ArXiv preprint arXiv:2004.08500>,
      2020.<newblock>

      <bibitem*|3><label|bib-weiss2018practical>Gail Weiss, Yoav
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
    <associate|font-base-size|12>
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
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|7|11>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|1|4>>
    <associate|auto-4|<tuple|3|4>>
    <associate|auto-5|<tuple|2|7>>
    <associate|auto-6|<tuple|4|7>>
    <associate|auto-7|<tuple|5|10>>
    <associate|auto-8|<tuple|6|10>>
    <associate|auto-9|<tuple|7|11>>
    <associate|bib-merrill2019sequential|<tuple|1|11>>
    <associate|bib-merrill2020formal|<tuple|2|11>>
    <associate|bib-weiss2018practical|<tuple|3|11>>
    <associate|figure-classical-FOL-axioms|<tuple|1|4>>
    <associate|figure-comparision|<tuple|2|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      merrill2019sequential

      merrill2020formal

      weiss2018practical
    </associate>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||>|<pageref|auto-3>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2>|>
        Soundness for various FOL axioms, under three different semantics:
        neural semantics using variable-assignment networks
        <with|color|<quote|#4c4b0d>|<datoms|<macro|x|<resize|<tabular|<tformat|<cwith|1|1|1|1|cell-background|#e0dfba>|<cwith|1|1|1|1|cell-lsep|0fn>|<cwith|1|1|1|1|cell-rsep|0fn>|<cwith|1|1|1|1|cell-bsep|0.2fn>|<cwith|1|1|1|1|cell-tsep|0.2fn>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<twith|table-width|>|<twith|table-hmode|auto>|<twith|table-block|no>|<table|<row|<cell|<arg|x>>>>>>|<plus|1l|0fn>|<plus|1b|0.2fn>|<minus|1r|0fn>|<minus|1t|0.2fn>>>|[]>>,
        the generalized semantics <with|color|<quote|#4c4b0d>|<datoms|<macro|x|<resize|<tabular|<tformat|<cwith|1|1|1|1|cell-background|#e0dfba>|<cwith|1|1|1|1|cell-lsep|0fn>|<cwith|1|1|1|1|cell-rsep|0fn>|<cwith|1|1|1|1|cell-bsep|0.2fn>|<cwith|1|1|1|1|cell-tsep|0.2fn>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<twith|table-width|>|<twith|table-hmode|auto>|<twith|table-block|no>|<table|<row|<cell|<arg|x>>>>>>|<plus|1l|0fn>|<plus|1b|0.2fn>|<minus|1r|0fn>|<minus|1t|0.2fn>>>|[]>>,
        and classical semantics for FOL <with|color|<quote|#4c4b0d>|<datoms|<macro|x|<resize|<tabular|<tformat|<cwith|1|1|1|1|cell-background|#e0dfba>|<cwith|1|1|1|1|cell-lsep|0fn>|<cwith|1|1|1|1|cell-rsep|0fn>|<cwith|1|1|1|1|cell-bsep|0.2fn>|<cwith|1|1|1|1|cell-tsep|0.2fn>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<twith|table-width|>|<twith|table-hmode|auto>|<twith|table-block|no>|<table|<row|<cell|<arg|x>>>>>>|<plus|1l|0fn>|<plus|1b|0.2fn>|<minus|1r|0fn>|<minus|1t|0.2fn>>>|[]>>.
        For the generalized and classical semantics,
        <with|mode|<quote|math>|<with|color|<quote|#8f3f71>|<with|font-series|<quote|bold>|<with|font|<quote|Stix>|\<forall\>>>>x>
        and <with|mode|<quote|math>|<with|color|<quote|#8f3f71>|<with|font-series|<quote|bold>|<with|font|<quote|Stix>|\<exists\>>>>x>
        should be interpreted as the usual
        <with|mode|<quote|math>|\<forall\>x> and
        <with|mode|<quote|math>|\<exists\>x>.
        <with|color|<quote|#34A853>|<with|font|<quote|Font Awesome 5 Free
        Regular>|font-size|<quote|1fn>|\<#F058\>>> indicates that the axiom
        is sound, i.e., holds for all models in that class without
        introducing any new frame properties.
        <with|color|<quote|#EA4335>|<with|font|<quote|Font Awesome 5 Free
        Regular>|font-size|<quote|1fn>|\<#F057\>>> indicates that the axiom
        does not hold for all models in that class, and may require
        additional frame properties to make it hold.
      </surround>|<pageref|auto-5>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|1fn>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|1fn>Technical
      Background> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|1fn>Neural
      Network Semantics for Quantifiers and Predicates>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|1fn>Neural
      Network Semantics and Variable Substitution>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|1fn>How
      to Interpret Variable-Assignment Networks>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|1fn>Discussion>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|1fn>Conclusions
      and Open Problems> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>