<TeXmacs|2.1.1>

<style|<tuple|Arxiv|number-long-article>>

<\body>
  <\hide-preamble>
    <assign|infix-iff|<macro|<math-imply|<text|
    <localize|<space|1em>iff<space|1em>> >>>>

    \;

    <assign|garnet|<macro|body|<with|color|#990002|<arg|body>>>>

    <assign|myblue|<macro|body|<with|color|#0749ac|<arg|body>>>>

    <assign|key|<macro|body|<strong|<arg|body>>>>

    <assign|Model|<with|font|cal|M>>

    <assign|Net|<with|font|cal|N>>

    <assign|Set|<with|font-family|ss|Set>>

    <assign|States|<with|font-family|ss|State>>

    <assign|Primes|<with|font-family|ss|P>>

    <assign|semantics|<macro|body|<around*|\<llbracket\>|<arg|body>|\<rrbracket\>>>>

    <assign|Lang|<with|font|cal|L>>

    <assign|Logic|<with|font-series|bold|<text|L>>>

    <assign|vocab|<with|font|cal|V>>

    <assign|wocab|<with|font|cal|W>>

    <assign|proves|\<vdash\>>

    <assign|orr|\<vee\>>

    <assign|land|\<wedge\>>

    <assign|NP|<with|font-shape|small-caps|NP>>

    <assign|axiom|<macro|body|<with|font-shape|small-caps|<arg|body>>>>

    <assign|bigchi|<larger|\<chi\>>>

    <assign|powerset|<with|font|cal|P>>

    \;

    <assign|hash|<with|font-family|ss|hash>>

    <assign|unique|<with|font-family|ss|unique>>

    <assign|Know|<with|font-series|bold|<text|K>>>

    <assign|Knownby|<with|font-series|bold|<text|K><rsup|\<downarrow\>>>>

    <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

    <assign|diaKnownby|\<langle\><value|Knownby>\<rangle\>>

    <assign|Typ|<with|font-series|bold|<text|T>>>

    <assign|diaTyp|\<langle\><value|Typ>\<rangle\>>

    <assign|Reach|<with|font-family|ss|Reach>>

    <assign|Reachedby|<with|font-family|ss|Reach><rsup|\<downarrow\>>>

    <assign|Prop|<with|font-family|ss|Prop>>

    <assign|Hebb|<with|font-family|ss|Update>>

    <assign|Activ|<with|font-family|ss|Act>>

    <assign|Inc|<with|font-family|ss|Inc>>

    <assign|AllNets|<with|font-family|ss|Net>>

    <assign|AllModels|<with|font-family|ss|Model>>

    <assign|precede|<with|font-family|ss|prec>>

    \;

    <assign|atoms|<with|font|cal|A>>

    <assign|indegree|<text|indeg>>
  </hide-preamble>

  <doc-data|<doc-title|Neural Network Semantics, à la
  Mode>|<doc-author|<author-data|<author-name|Caleb Schultz
  Kisby<math|<rsup|1>>, Saúl A. Blanco<math|<rsup|1>>, Lawrence S.
  Moss<math|<rsup|2>>>|<\author-affiliation>
    <math|<rsup|1>>Department of Computer Science, Indiana University

    <math|<rsup|2>>Department of Mathematics, Indiana University

    <\author-email>
      {cckisby, sblancor, lmoss}@indiana.edu
    </author-email>
  </author-affiliation>>>|<doc-author|<author-data>>>

  <abstract-data|<\abstract>
    <with|font-shape|italic|Neural network semantics>, or
    <with|font-shape|italic|semantic encodings>, is a theoretical framework
    for neuro-symbolic AI in which we take the dynamics of a neural network
    as the formal semantics of a logic. In recent work, we showed how this
    framework can account for learning by considering a modal language. The
    idea is to interpret modalities as operators on the state of the net, for
    example: <math|<value|diaKnow>> as \Pgraph-reachable\Q;
    <math|<value|diaKnownby>> as \Preached-by\Q; <math|<value|diaTyp>> as
    \Pforward propagation\Q; <math|\<langle\>\<varphi\>\<rangle\>> as
    \Pperform Hebbian learning on <math|\<varphi\>>.\Q In this paper, we
    follow up with a complete axiomatization for <value|diaKnow>,
    <value|diaKnownby>, and <value|diaTyp>. Along the way, we prove that
    binary, feed-forward networks are equivalent to a certain class of
    preferential neighborhood models. Our work is a step towards
    understanding the relationship between neural networks and classical
    (neighborhood) semantics for modal logic.
  </abstract>>

  <section|Introduction>

  Artificial intelligence has historically been divided by its two main
  paradigms: connectionist learning and symbolic reasoning. The two have
  complementary strengths: Neural systems are flexible and can learn from
  unstructured data, but have uninterpretable \Pblack-box\Q internal
  representations; symbolic systems reason using explicit inferences in an
  interpretable language, but are notoriously rigid.

  Neuro-symbolic AI has emerged in the last three decades to integrate the
  two while retaining the advantages of both (see <cite|bader2005dimensions>
  and <cite|sarker2021neuro>, two surveys that span the decades). Despite the
  myriad proposals for doing this [cite proposals, Kautz, and books!], a
  shared sentiment in the field is that neuro-symbolic AI needs a unifying
  theory.

  One promising framework is the theory of <with|font-shape|italic|neural
  network semantics>, also called <with|font-shape|italic|semantic encodings>
  [cite all relevant papers that are about this]. The key idea is that we can
  take the dynamics of a neural network as the formal semantics to a logic.
  The recent survey <cite|odense2022semantic> explains the intuition best.
  First, we can associate atoms <math|p,q,r,\<ldots\>> with
  <with|font-shape|italic|known> states of the net. This includes input and
  output states, although certain hidden states may be known as well. We can
  then interpret logical operators via functions that map these states to
  <with|font-shape|italic|stable states> of the net, i.e. functions
  <math|f:<value|States>\<rightarrow\><value|States>> that have a fixed
  point.

  Nearly all of the work in this area has focused on the stable state
  semantics of conditionals: <math|\<varphi\>\<Rightarrow\>\<psi\>>
  (\Ptypically <math|\<varphi\>> are <math|\<psi\>>\Q) holds if the input
  \ <math|<semantics|\<varphi\>>>, forward-propagated through the net,
  eventually gives us a stable state <math|f<around*|(|<semantics|\<varphi\>>|)>>
  that contains the output <math|<semantics|\<psi\>>>. (See [cite all the
  work that focuses on conditionals].) The classic result by
  <cite|leitgeb2001nonmonotonic> is that this forward propagation in binary,
  feed-forward neural networks can be completely axiomatized by the KLM
  Loop-Cumulative laws of conditional logic <cite|kraus1990nonmonotonic>.
  Completeness is particularly important for neural network semantics. If we
  have negation in our language, a semantic encoding is strongly complete if
  and only if given sentences <math|\<Gamma\>>, we can build a neural network
  <math|<value|Net>> satisfying <math|\<Gamma\>>.

  This gives us a logic of (possibly trained) <with|font-shape|italic|static>
  nets. But it is not clear how to account for learning in this conditional
  language. In recent work <cite|kisby2022logic>, we show that this framework
  can account for learning if we instead consider a dynamic modal language.
  Here is the basic idea. First, we directly map static modalities
  <math|\<diamond\>> to fixed-point operators
  <math|f:<value|States>\<rightarrow\><value|States>>. If <math|f> is the
  forward-propagation function, <math|\<varphi\>\<Rightarrow\>\<psi\>> can be
  re-written as <math|\<psi\>\<rightarrow\>\<diamond\>\<varphi\>> (or,
  <math|\<box\>\<varphi\>\<rightarrow\>\<psi\>>). A standard move in dynamic
  logic is to then define dynamic modalities
  <math|\<langle\>\<varphi\>\<rangle\>> that update the whole model via some
  observation <math|\<varphi\>> [cite dynamic logic references!]. In
  <cite|kisby2022logic> we did this for Hebbian Learning, where
  <math|\<langle\>\<varphi\>\<rangle\>\<psi\>> reads \Pafter performing
  Hebbian update with observation <math|\<varphi\>>, evaluate
  <math|\<psi\>>.\Q Axioms that relate <math|\<langle\>\<varphi\>\<rangle\>>
  to the static modalities <math|\<diamond\>> express
  <with|font-shape|italic|what the net learns>.

  However, we left important questions about the semantics open, including:

  <with|question-text|<macro|Open <localize|Question>>|<\question*>
    What are the complete axioms for the logic of Hebbian learning
    <math|\<langle\>\<varphi\>\<rangle\>>?
  </question*>>

  In this paper, we take an important step towards this goal: We prove
  completeness for the neural semantics of a static modal language, with
  modalities: <math|<value|diaKnow>\<varphi\>>, the neurons
  \Pgraph-reachable\Q from <math|\<varphi\>>;
  <math|<value|diaKnownby>\<varphi\>>, the neurons \Preached-by\Q
  <math|\<varphi\>>; and most importantly <math|<value|diaTyp>\<varphi\>>,
  the forward propagation of <math|\<varphi\>>. Our logic includes the KLM
  Loop-Cumulative properties, plus a new axiom that alternatively
  characterizes <math|<value|diaTyp>> by its interaction with
  <math|<value|diaKnow>> and <math|<value|diaKnownby>> (\PEvery forward
  propagation has a minimal cause\Q). Along the way, we relate neural
  networks to classical (neighborhood) semantics for modal logic. In
  particular, we prove that binary, feed-forward neural networks are
  equivalent to a certain class of preferential neighborhood models.

  <section|Neural Network Semantics>

  We will now introduce our syntax and neural network semantics more
  formally. Let <math|<value|atoms>> be the set of atomic propositions.
  Formulas of our modal language <math|<value|Lang>> are given by:

  <\equation*>
    \<varphi\>\<colons\>=p\<mid\>\<neg\>\<varphi\>\<mid\>\<varphi\>\<wedge\>\<varphi\>\<mid\><value|diaKnow>\<varphi\>\<mid\><value|diaKnownby>\<varphi\>\<mid\><value|diaTyp>\<varphi\>
  </equation*>

  where <math|p\<in\><value|atoms>> is any atomic proposition. We define
  <math|\<bot\>,\<vee\>,\<rightarrow\>,\<leftrightarrow\>>, and the dual
  modalities <math|<value|Know>,<value|Knownby>,<value|Typ>> in the usual
  way. Our intended readings for the modal operators are as follows:
  <math|<value|Know>\<varphi\>> reads \P<math|\<varphi\>> is known\Q;
  <math|<value|Knownby>> reads <todo|>; <math|<value|Typ>\<varphi\>> reads
  \P<math|\<varphi\>> is typical\Q, or \Ptypically <math|\<varphi\>>\Q. [We
  will use our axiomatization to justify these readings later]

  In general, models for semantic encodings are just interpreted neural
  networks, i.e. ordinary neural networks where we associate propositions
  with sets of neurons.

  <\definition>
    \ An <key|interpreted ANN> is a pointed directed graph
    <math|<value|Net>=\<langle\>N,E,W,A,I\<rangle\>>, where

    <\itemize>
      <item><math|N> is a finite nonempty set (the set of <key|neurons>)

      <item><math|E\<subseteq\> N\<times\> N> (the set of <key|excitatory
      edges>)

      <item><math|W:E\<rightarrow\><with|font|Bbb|R>> (the <key|weight> of a
      given edge)

      <item><math|A:<with|font|Bbb|R>\<rightarrow\><with|font|Bbb|R>> (the
      <key|activation function>)

      <item><math|I:<value|atoms>\<rightarrow\><value|powerset><around*|(|N|)>>
      is an assignment of propositions to sets of neurons (the
      <key|interpretation function>).
    </itemize>
  </definition>

  Note that libraries such as Tensorflow and Pytorch [CITE] take activation
  functions to be from <with|font-shape|italic|layer to layer>:
  <math|A:<with|font|Bbb|R><rsup|k>\<rightarrow\><with|font|Bbb|R><rsup|k>>
  takes in a vector of weighted sums of pre-activations and returns a vector
  of activations. But we stick with element-wise activation functions
  <math|A:<with|font|Bbb|R>\<rightarrow\><with|font|Bbb|R>> that take in a
  <with|font-shape|italic|single> weighted sum of pre-activations and return
  an activation for a <with|font-shape|italic|single neuron> <math|n>. This
  allows us to easily specify activation functions for non-layered neural
  networks (e.g. feed-forward nets with skip connections).

  In this paper, we will only consider binary, feed-forward neural networks
  (BFNNs).

  <\definition>
    \ A BFNN is an interpreted ANN <math|<value|Net>=\<langle\>N,E,W,A,I\<rangle\>>
    that is

    <\description>
      <item*|Binary><math|A:<with|font|Bbb|R>\<rightarrow\><around*|{|0,1|}>>,
      i.e. the output of each neuron is in {0, 1}

      <item*|Feed-forward><math|E> does not contain any cycles

      <item*|Zero at zero><math|A<around*|(|0|)>=0>
    </description>
  </definition>

  This binary assumption is unrealistic in practice \V it means that our
  activation functions must be step functions. But we make this choice so
  that the connection with (binary) modal logic is clearer. Note that
  [LEITGEB] makes the same choice; our work most directly builds on his. This
  does not mean that neural network semantics have no bearing on real neural
  networks! Following [CITE MULTIPLE], we could instead consider assigning
  propositions to fuzzy sets, and re-do this work with fuzzy logic. We
  consider it an important future step to try and lift our completeness
  result to the fuzzy case.

  The <key|states> of a BFNN <math|<value|Net>> are sets of neurons. We think
  of a state <math|S> as the set of neurons that are currently active. Let
  <math|<value|States>=<around*|{|S\<mid\>S\<subseteq\>N|}>> be the
  collection of all states for <math|<value|Net>>. For all <math|n\<in\>N>
  and states <math|S\<in\><value|States>>, the characteristic function
  <math|<value|bigchi><rsub|S>:N\<rightarrow\><around*|{|0,1|}>> identifies
  whether a node is active in state <math|S>, i.e.
  <math|<value|bigchi><rsub|S><around*|(|n|)>=1> iff <math|n\<in\>S>.

  Neurons in a state subsequently activate new neurons. Let
  <math|S\<in\><value|States>>, <math|n\<in\>N>, and let
  <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>> list all neurons
  such that <math|<around*|(|m<rsub|i>,n|)>\<in\>E> (the incoming nodes for
  <math|n>). We define:

  <\equation*>
    <value|Activ><rsub|S><around*|(|<wide|m|\<vect\>>,n|)>=A<around*|(|<big|sum><rsub|i=1><rsup|k>W<around*|(|m<rsub|i>,n|)>\<cdot\><value|bigchi><rsub|S><around*|(|m<rsub|i>|)>|)>
  </equation*>

  In other words, <math|<value|Activ><rsub|S><around*|(|<wide|m|\<vect\>>,n|)>=1>
  whenever those <math|m<rsub|i>\<in\>S> subsequently activate <math|n>.
  Moreover, if two states <math|S,T> agree on all <math|m<rsub|i>>, then
  <math|S,T> agree on their activation for <math|n>:

  <\proposition>
    <label|activation-agrees>Let <math|S,T\<in\><value|States>>, and suppose
    <math|m<rsub|i>\<in\>S> iff <math|m<rsub|i>\<in\>T> for all
    <math|1\<leq\>i\<leq\>k>. Then <math|<value|Activ><rsub|S><around*|(|<wide|m|\<vect\>>,n|)>=<value|Activ><rsub|T><around*|(|<wide|m|\<vect\>>,n|)>>.
  </proposition>

  <\proof>
    We have:

    <\equation*>
      <value|Activ><rsub|S><around*|(|<wide|m|\<vect\>>,n|)>=A<around*|(|<big|sum><rsub|i=1><rsup|k>W<around*|(|m<rsub|i>,n|)>\<cdot\><value|bigchi><rsub|S><around*|(|m<rsub|i>|)>|)>=A<around*|(|<big|sum><rsub|i=1><rsup|k>W<around*|(|m<rsub|i>,n|)>\<cdot\><value|bigchi><rsub|T><around*|(|m<rsub|i>|)>|)>=<value|Activ><rsub|T><around*|(|<wide|m|\<vect\>>,n|)>
    </equation*>

    \;
  </proof>

  Active neurons in turn activate more neurons, which activate yet more
  neurons, until eventually the state of <math|<value|Net>> stabilizes. We
  formalize this as an operator: <math|<value|Prop><around*|(|S|)>>, the
  <key|forward propagation> of <math|S>.

  <\definition>
    Let <math|<value|Prop>:<value|States>\<rightarrow\><value|States>> be
    defined recursively as follows: <math|n\<in\><value|Prop><around*|(|S|)>>
    iff either

    <\description>
      <item*|Base Case><math|n\<in\>S>, or

      <item*|Constructor>For those <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
      such that <math|<around*|(|m<rsub|i>,n|)>\<in\>E>,
      <math|<value|Activ><rsub|<value|Prop><around*|(|S|)>><around*|(|<wide|m|\<vect\>>,n|)>=1>.
    </description>
  </definition>

  <math|<value|Prop>> is the most important stable state operator we
  consider; <math|<value|Prop><around*|(|S|)>> contains the neural network's
  <with|font-shape|italic|prediction> or <with|font-shape|italic|response> to
  an input state <math|S>. As supporting cast, we will define two more stable
  state operators: <math|<value|Reach>> and <math|<value|Reachedby>>.
  <math|<value|Reach><around*|(|S|)>> is the set of all neurons
  graph-reachable from <math|S>, whereas <math|<value|Reachedby><around*|(|S|)>>
  is the set of all neurons that graph-reach some node in <math|S>.

  <\definition>
    Let <math|<value|Reach>:<value|States>\<rightarrow\><value|States>> be
    given by <math|<value|Reach><around*|(|S|)>=<around*|{|n\<mid\>\<exists\>m\<in\>S<text|
    with >E<text|-path from >m<text| to >n|}>>
  </definition>

  <\definition>
    Let <math|<value|Reachedby>:<value|States>\<rightarrow\><value|States>>
    be given by <math|<value|Reachedby><around*|(|S|)>=<around*|{|m\<mid\><text|>\<exists\>n\<in\>S
    <text|with> E<math-up|->path from m to n|}>>
  </definition>

  We can alternately characterize <math|<value|Reachedby>> in terms of
  <math|<value|Reach>> as follows.

  <\proposition>
    <label|alternative-reachedby>For all <math|S\<in\><value|Set>>,
    <math|<value|Reachedby><around*|(|S|)>=><math|<big|cup><rsub|n\<in\>S><rsub|><big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>
  </proposition>

  <\proof>
    <math|<around*|(|\<rightarrow\>|)>> Suppose
    <math|u\<in\><value|Reachedby><around*|(|S|)>>. So
    <math|\<exists\>n\<in\>S> with <math|E>-path from <math|u> to <math|n>.
    Let <math|X> be such that <math|n<neg|\<in\>><value|Reach><around*|(|X|)>>.
    By definition of <math|<value|Reach>>, there is no <math|m\<in\>X> with
    an <math|E>-path from <math|m> to <math|n>. But since there
    <with|font-shape|italic|is> such a path from <math|u>, we must have
    <math|u<neg|\<in\>>X>, i.e. <math|u\<in\>X<rsup|\<complement\>>>. Since
    <math|X> was arbitrary, <math|u\<in\><big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>.
    So <math|u\<in\><big|cup><rsub|n\<in\>S><big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>.

    <math|<around*|(|\<leftarrow\>|)>> Suppose
    <math|u\<in\><big|cup><rsub|n\<in\>S><rsub|><big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>.
    Let <math|n\<in\>S> be such that for all <math|X>, if
    <math|n<neg|\<in\>><value|Reach><around*|(|X|)>> then
    <math|u\<in\>X<rsup|\<complement\>>>. Consider in particular

    <\equation*>
      X=<around*|{|m\<mid\>there is an E<math-up|->path from m to
      n|}><rsup|\<complement\>>
    </equation*>

    Notice that <math|n<neg|\<in\>><value|Reach><around*|(|X|)>> (since
    <math|X> is the set of nodes where there is <with|font-shape|italic|not>
    a path to <math|n>). And so <math|u\<in\>X<rsup|\<complement\>>>, i.e.
    there <with|font-shape|italic|is> an <math|E>-path from <math|u> to
    <math|n>.
  </proof>

  \;

  <subsection|Neural Operators are Closure Operators>

  The key insight of semantic encodings is that we can neatly characterize
  the algebra of functions <math|f:<value|States>\<rightarrow\><value|States>>
  that return a stable state: They are <key|closure operators> (i.e.
  extensive and idempotent). First: <math|<value|Reach>> and
  <math|<value|Reachedby>> are fully monotonic, antisymmetric closure
  operators.

  <\proposition>
    <label|thm:reach-props>Let <math|<Net>\<in\><AllNets>>. For all
    <math|S,T\<in\><Set>>, <math|n,m\<in\>N>, <math|<value|Reach>> is

    <\description>
      <item*|Extensive><math|S\<subseteq\><Reach><around|(|S|)>>

      <item*|Idempotent><math|<Reach><around|(|S|)>=<Reach><around|(|<Reach><around|(|S|)>|)>>

      <item*|Antisymmetric>If <math|m\<in\><value|Reach><around*|(|<around*|{|n|}>|)>>
      and <math|n\<in\><value|Reach><around*|(|<around*|{|m|}>|)>> then
      <math|n=m>.

      <item*|Monotonic>If <math|S\<subseteq\>T> then
      <math|<Reach><around|(|S|)>\<subseteq\><Reach><around|(|T|)>>
    </description>

    These properties also hold, mutatis mutandis, for
    <math|<value|Reachedby>>.
  </proposition>

  <\proof>
    We check each in turn:

    <\description>
      <item*|Extensive>If <math|n\<in\>S>, then there is a trivial path from
      <math|n\<in\>S> to itself. So <math|n\<in\><value|Reach><around*|(|S|)>>.

      <item*|Idempotent>The (<math|\<subseteq\>>) direction is just
      Inclusion. As for (<math|\<supseteq\>>), let
      <math|n\<in\><value|Reach><around*|(|<value|Reach><around*|(|S|)>|)>>.
      So there is a path from some <math|m\<in\><value|Reach><around*|(|S|)>>
      to <math|n>. But since <math|m\<in\><value|Reach><around*|(|S|)>>,
      there is a path from some <math|u\<in\>S> to <math|m>. But then we have
      a path from <math|u\<in\>S> to <math|n>, and so
      <math|n\<in\><value|Reach><around*|(|S|)>>.

      <item*|Acyclic>Suppose <math|m\<in\><value|Reach><around*|(|<around*|{|n|}>|)>>
      and <math|n\<in\><value|Reach><around*|(|<around*|{|m|}>|)>>. By
      definition of <math|<value|Reach>>, there is an <math|E>-path from
      <math|m> to <math|n>, and another path from <math|n> to <math|m>. But
      <math|<value|Net>> is feed-forward, i.e. <math|E> contains no cycles!
      So we must have <math|n=m>.

      <item*|Monotonic>Let <math|n\<in\><value|Reach><around*|(|S<rsub|1>|)>>.
      So there is a path from some <math|m\<in\>S<rsub|1>> to <math|n>. Since
      <math|S<rsub|1>\<subseteq\>S<rsub|2>>, <math|m\<in\>S<rsub|2>>. But
      then we have a path from <math|m\<in\>S<rsub|2>> to <math|n>. And so
      <math|n\<in\><value|Reach><around*|(|S<rsub|2>|)>>.
    </description>

    We can check that these hold for <math|<value|Reachedby>> similarly.
  </proof>

  <\proposition>
    <label|reach-closed-under-intersection>For all
    <math|S<rsub|1>,\<ldots\>,S<rsub|k>\<in\><value|Set>>,
    <math|<big|cup><rsub|i><value|Reach><around*|(|S<rsub|i>|)>=<value|Reach><around*|(|<big|cup><rsub|i>S<rsub|i>|)>>
  </proposition>

  <\proof>
    \;

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|n\<in\><big|cup><rsub|i><value|Reach><around*|(|S<rsub|i>|)>>|<cell|<infix-iff>>|<cell|\<exists\>S<rsub|i><text|
      with >n\<in\><value|Reach><around*|(|S<rsub|i>|)>>|<cell|<text|><text|(by
      definition of union)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<exists\>S<rsub|i>,\<exists\>m\<in\>S<rsub|i><text|
      with <math|E>-path from >m<text| to >n>|<cell|<text|(by definition of
      <value|Reach>)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<exists\>m\<in\><big|cup><rsub|i>S<rsub|i><text|
      with <math|E>-path from >m<text| to >n>|<cell|<text|(by definition of
      union)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|n\<in\><value|Reach><around*|(|<big|cup><rsub|i>S<rsub|i>|)>>|<cell|<text|(by
      definition of <value|Reach>)>>>>>>
    </equation*>

    \;
  </proof>

  <math|<value|Prop>>, on the other hand, is a
  <with|font-shape|italic|non-monotonic> closure operator that is contained
  within <math|<value|Reach>>.

  <\proposition>
    (Adapted from <cite-detail|leitgeb2001nonmonotonic|Remark 4>)
    <label|thm:prop-props>Let <math|<Net>\<in\><AllNets>>. For all
    <math|S,T\<in\><Set>>, <math|<value|Prop>> is

    <\description>
      <item*|Extensive><math|S\<subseteq\><Prop><around|(|S|)>>

      <item*|Idempotent><math|<Prop><around|(|S|)>=<Prop><around|(|<Prop><around|(|S|)>|)>>

      <item*|Contained in <math|><value|Reach>><math|<value|Prop><around*|(|S|)>\<subseteq\><value|Reach><around*|(|S|)>>
    </description>
  </proposition>

  <\proof>
    We check each in turn:

    <\description>
      <item*|Extensive>Similar to the proof of Inclusion for <value|Reach>.

      <item*|Idempotent>The (<math|\<subseteq\>>) direction is just
      Inclusion. As for (<math|\<supseteq\>>), let
      <math|n\<in\><Prop><around|(|<Prop><around|(|S|)>|)>>, and proceed by
      induction on <math|<Prop><around|(|<Prop><around|(|S|)>|)>>.

      <\description>
        <item*|Base Step><math|n\<in\><Prop><around|(|S|)>>, and so we are
        done.

        <item*|Inductive Step>For those <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
        such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

        <\equation*>
          <value|Activ><rsub|<value|Prop><around*|(|<value|Prop><around*|(|S|)>|)>><around*|(|<wide|m|\<vect\>>,n|)>=1
        </equation*>

        By inductive hypothesis, <math|m<rsub|i>\<in\><value|Prop><around*|(|<value|Prop><around*|(|S|)>|)>>
        iff <math|m<rsub|i>\<in\><value|Prop><around*|(|S|)>>. By Proposition
        <reference|activation-agrees>, <math|<value|Activ><rsub|<value|Prop><around*|(|S|)>><around*|(|<wide|m|\<vect\>>,n|)>=1>,
        and so <math|n\<in\><Prop><around|(|S|)>>.
      </description>

      <item*|Contained in <math|<value|Reach>>>Let
      <math|n\<in\><value|Prop><around*|(|S|)>>, and proceed by induction on
      <math|<value|Prop>>.

      <\description>
        <item*|Base Step><math|n\<in\>S>. So
        <math|n\<in\><value|Reach><around*|(|S|)>>.

        <item*|Inductive Step>For those <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
        such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

        <\equation*>
          <value|Activ><rsub|<value|Prop><around*|(|S|)>><around*|(|<wide|m|\<vect\>>,n|)>=1
        </equation*>

        Since <math|A<rsup|<around*|(|n|)>>> is zero at zero, we have
        <math|m<rsub|i>\<in\><value|Prop><around*|(|S|)>> for
        <with|font-shape|italic|some> <math|m=m<rsub|i>>. By inductive
        hypothesis, <math|m\<in\><value|Reach><around*|(|S|)>>. And since
        <math|<around*|(|m,n|)>\<in\>E>, by definition of
        <math|<value|Reach>>, <math|n\<in\><value|Reach><around*|(|S|)>>.
      </description>
    </description>
  </proof>

  <math|<value|Prop>> is not monotonic because a BFNN's weights
  <math|W<rsub|ij>> can be negative, allowing <math|T\<supseteq\>S> to
  inhibit the activation of neurons that <math|S> did activate. We can
  further characterize <math|<value|Prop>> by its special interaction with
  <math|<value|Reach>> and <math|<value|Reachedby>>. In words, <math|n> is
  active in the propagation <math|<value|Prop><around*|(|S|)>> iff <math|n>
  is active in the propagation of those neurons that actually reached
  <math|n> in the first place. That is, every forward propagation has a
  minimal cause.

  <\proposition>
    <label|minimal-cause><key|(Minimal Cause)> For all <math|n\<in\>N>, if
    <math|n\<in\><value|Reachedby><around*|(|T|)>> then the following are
    equivalent:

    <\enumerate>
      <item><math|n\<in\><value|Prop><around*|(|S|)>>

      <item><math|n\<in\><value|Prop><around*|(|<value|Prop><around*|(|S|)>\<cap\><value|Reachedby><around*|(|T|)>|)>>
    </enumerate>
  </proposition>

  <\proof>
    Suppose <math|n\<in\><value|Reachedby><around*|(|T|)>>. To show
    <math|<around*|(|1\<rightarrow\>2|)>>, let
    <math|n\<in\><value|Prop><around*|(|S|)>> and proceed by induction on
    <math|<value|Prop>>.

    <\description>
      <item*|Base Step><math|n\<in\>S>. By the base step of
      <math|<value|Prop>>, <math|n\<in\><value|Prop><around*|(|S|)>>. But we
      also have <math|n\<in\><value|Reachedby><around*|(|T|)>>, and so
      <math|n\<in\><value|Prop><around*|(|S|)>\<cap\><value|Reachedby><around*|(|T|)>>.
      By the base step of <math|<value|Prop>>,
      <math|n\<in\><value|Prop><around*|(|<value|Prop><around*|(|S|)>\<cap\><value|Reachedby><around*|(|T|)>|)>>.

      <item*|Inductive Step>For those <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
      such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

      <\equation*>
        <value|Activ><rsub|<value|Prop><around*|(|S|)>><around*|(|<wide|m|\<vect\>>,n|)>=1
      </equation*>

      Since each <math|<around*|(|m<rsub|i>,n|)>\<in\>E>, and
      <math|n\<in\><value|Reachedby><around*|(|T|)>>, by the constructor case
      of <math|<value|Reachedby>> each <math|m<rsub|i>\<in\><value|Reachedby><around*|(|T|)>>.
      So we can apply our inductive hypothesis to each <math|m<rsub|i>>:
      <math|m<rsub|i>\<in\><value|Prop><around*|(|S|)>> iff
      <math|m<rsub|i>\<in\><value|Prop><around*|(|<value|Prop><around*|(|S|)>\<cap\><value|Reachedby><around*|(|T|)>|)>>.
      By Proposition <reference|activation-agrees>,
      <math|<value|Activ><rsub|<value|Prop><around*|(|<value|Prop><around*|(|S|)>\<cap\><value|Reachedby><around*|(|T|)>|)>><around*|(|<wide|m|\<vect\>>,n|)>=1>,
      and so <math|n\<in\><value|Prop><around*|(|<value|Prop><around*|(|S|)>\<cap\><value|Reachedby><around*|(|T|)>|)>>.
    </description>

    As for <math|<around*|(|2\<rightarrow\>1|)>>, let
    <math|n\<in\><value|Prop><around*|(|<value|Prop><around*|(|S|)>\<cap\><value|Reachedby><around*|(|T|)>|)>>,
    and proceed by induction on the outer <math|<value|Prop>>.

    <\description>
      <item*|Base Step><math|n\<in\><value|Prop><around*|(|S|)>\<cap\><value|Reachedby><around*|(|T|)>>.
      So in particular, <math|n\<in\><value|Prop><around*|(|S|)>>

      <item*|Inductive Step>For that <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
      such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

      <\equation*>
        <value|Activ><rsub|<value|Prop><around*|(|<value|Prop><around*|(|S|)>\<cap\><value|Reachedby><around*|(|T|)>|)>><around*|(|<wide|m|\<vect\>>,n|)>=1
      </equation*>

      Since each <math|<around*|(|m<rsub|i>,n|)>\<in\>E>, and
      <math|n\<in\><value|Reachedby><around*|(|T|)>>, by the constructor case
      of <math|<value|Reachedby>> each <math|m<rsub|i>\<in\><value|Reachedby><around*|(|T|)>>.
      So we can apply our inductive hypothesis to each <math|m<rsub|i>>:
      <math|m<rsub|i>\<in\><value|Prop><around*|(|<value|Prop><around*|(|S|)>\<cap\><value|Reachedby><around*|(|T|)>|)>>
      iff <math|m<rsub|i>\<in\><value|Prop><around*|(|S|)>>. By Proposition
      <reference|activation-agrees>, <math|<value|Activ><rsub|<value|Prop><around*|(|S|)>><around*|(|<wide|m|\<vect\>>,n|)>=1>,
      and so <math|n\<in\><value|Prop><around*|(|S|)>>.
    </description>
  </proof>

  \;

  \;

  \;

  [As we mentioned earlier, <math|<value|Prop>> satisfies exactly the
  Loop-Cumulative properties of conditional logic
  <cite|leitgeb2001nonmonotonic>. But for our modal language, we prefer to
  characterize <math|<value|Prop>> by its special interaction with
  <math|<value|Reach>> and <math|<value|Reachedby>>.]

  [Explain minimal cause here!] [We will see in Section [TODO] that this is a
  <with|font-shape|italic|complete> characterization of <math|<value|Prop>>.]
  [For now, we will double-check the following:]

  <\proposition>
    [The KLM Cumulative and Loop properties follow from our own properties of
    <math|<value|Prop>>, <value|Reach>, and <math|<value|Reachedby>>.]
  </proposition>

  <\proof>
    [TODO]
  </proof>

  [At last, here is how we semantically encode neural networks in our
  language] [Each proposition represents a fixed state in the net that
  corresponds to the features of the corresponding concept.] [For example,
  <math|p> might be the set of neurons that encapsulates the color
  <with|font-shape|italic|pink>.] [We presume that we already agree on these
  states, although we acknowledge that this is a major unsolved empirical
  issue] [As for modalities, we map the <with|font-shape|italic|dual> modal
  operators <math|<value|diaKnow>,<value|diaKnownby>,<value|diaTyp>> to the
  closure operators <math|<value|Reach>,<value|Reachedby>,<value|Prop>>,
  respectively:]

  <\definition>
    Let <math|<value|Net>\<in\><value|AllNets>>. The semantics
    <math|<semantics|\<cdot\>><rsub|<value|Net>>:<value|Lang>\<rightarrow\><value|Set>>
    for <math|<value|Lang>> is defined recursively as follows [we omit the
    subscript when <math|<value|Net>> can be inferred from context]:

    <\equation*>
      <tabular|<tformat|<twith|table-lborder|0em>|<twith|table-rborder|0em>|<twith|table-bborder|0em>|<twith|table-tborder|0em>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|4|4|1|-1|cell-bborder|0ln>|<cwith|6|6|1|-1|cell-tborder|0ln>|<cwith|6|6|1|-1|cell-bborder|1ln>|<cwith|6|6|1|1|cell-lborder|1ln>|<cwith|6|6|3|3|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|0ln>|<cwith|2|2|1|-1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|5|5|1|1|cell-lborder|1ln>|<cwith|5|5|3|3|cell-rborder|1ln>|<cwith|5|5|1|1|cell-lborder|1ln>|<cwith|5|5|3|3|cell-rborder|1ln>|<cwith|5|5|1|3|cell-tborder|0ln>|<cwith|5|5|1|1|cell-lborder|1ln>|<cwith|5|5|3|3|cell-rborder|1ln>|<cwith|5|5|1|3|cell-bborder|0ln>|<table|<row|<cell|<semantics|p>>|<cell|=>|<cell|I<around*|(|p|)>\<in\><value|Set>>>|<row|<cell|<semantics|\<neg\>\<varphi\>>>|<cell|=>|<semantics|\<varphi\>><rsup|\<complement\>>>|<row|<cell|<semantics|\<varphi\>\<wedge\>\<psi\>>>|<cell|=>|<cell|<semantics|\<varphi\>>\<cap\><semantics|\<psi\>>>>|<row|<cell|<semantics|<value|diaKnow>\<varphi\>>>|<cell|=>|<cell|<value|Reach><around*|(|<semantics|\<varphi\>>|)>>>|<row|<cell|<semantics|<value|diaKnownby>\<varphi\>>>|<cell|=>|<cell|<value|Reachedby><around*|(|*<semantics|\<varphi\>>|)>>>|<row|<cell|<semantics|<value|diaTyp>\<varphi\>>>|<cell|=>|<cell|<value|Prop><around*|(|<semantics|\<varphi\>>|)>>>>>>
    </equation*>
  </definition>

  [In typical modal-logic fashion, we consider two kinds of truth: Truth
  <with|font-shape|italic|at a neuron> and truth <with|font-shape|italic|in a
  net>.] [Intuition: <math|\<varphi\>> is true at neuron <math|n> if <math|n>
  is active in <math|<semantics|\<varphi\>>>, i.e. if the concept
  <math|<semantics|\<varphi\>>> has feature <math|n>] [<math|\<varphi\>> is
  true in the whole net <math|<value|Net>> if <with|font-shape|italic|every>
  neuron is active in <math|<semantics|\<varphi\>>>]

  <\definition>
    (<with|font-series|bold|Truth at a neuron>)
    <math|<value|Net>,n\<Vdash\>\<varphi\>> iff
    <math|n\<in\><semantics|\<varphi\>><rsub|<value|Net>>>.
  </definition>

  <\definition>
    <with|font-series|bold|(Truth in a net)>
    <math|<value|Net>\<models\>\<varphi\>> iff
    <math|<value|Net>,n\<Vdash\>\<varphi\>> for all <math|n\<in\>N>.
  </definition>

  [Finally, entailment:]

  <\definition>
    <with|font-series|bold|(Entailment)> <math|\<Gamma\>\<models\><rsub|<text|BFNN>>\<varphi\>>
    if for all BFNNs <math|<value|Net>> and for all neurons <math|n\<in\>N>,
    if <math|<value|Net>,n\<Vdash\>\<Gamma\>> then
    <math|<value|Net>,n\<Vdash\>\<varphi\>>.
  </definition>

  <\note*>
    [Note that we pick intersection, union, and subset \Pnormally\Q, whereas
    some accounts of neural semantics (e.g. Hannes') give \Pflipped\Q
    interpretations of these] [Explain here the appeal of both] [But the
    choice doesn't matter \V proposition that says the two are equivalent if
    we take the dual of the modalities.]
  </note*>

  <section|Classical (Neighborhood) Semantics>

  [Our plan, again, is to relate this neural semantics with classical
  possible-worlds semantics for our language.] [In our neural semantics, we
  mapped <math|<value|diaTyp>> to the non-monotonic <math|<value|Prop>>. This
  means in particular that <math|<value|Typ>> does
  <with|font-shape|italic|not> satisfy [state normal modal logic axiom]] [So
  our modal logic is not normal \V but it is classical, and so we will give
  the usual <with|font-shape|italic|neighborhood semantics> for classical
  modal logics] [The best references are [cite Chellas and Pacuit]] [First,
  some basic definitions from Pacuit:]

  <\definition>
    <cite-detail|pacuit2017neighborhood|Definition 1.9> A neighborhood frame
    is a pair <math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>>,
    where <math|W> is a non-empty set of worlds and
    <math|f:W\<to\><value|powerset><around|(|<value|powerset><around|(|W|)>|)>>
    is a neighborhood function. [A multi-frame may have more than one
    neighborhood function, but to keep things simple I won't distinguish
    between frames and multi-frames.]
  </definition>

  <\definition>
    <cite-detail|pacuit2017neighborhood|Section 1.1> Let
    <math|<with|font|Euler|<with|font|cal|F>>=<around|\<langle\>|W,f|\<rangle\>>>
    be a neighborhood frame, and let <math|w\<in\>W>. The set
    <math|<big|cap><rsub|X\<in\>f<around|(|w|)>>X> is called the core of
    <math|f<around*|(|w|)>>, abbreviated <math|\<cap\>f<around|(|w|)>>. If
    <math|X\<subseteq\>W>, the set <math|<big|cup><rsub|w\<in\>X>\<cap\>f<around*|(|w|)>>
    is called the core of <math|f<around*|(|X|)>>, abbreviated
    <math|\<cap\>f<around*|(|X|)>>.
  </definition>

  <\definition>
    <cite-detail|pacuit2017neighborhood|Definition 1.4> Let
    <math|<with|font|cal|F>=\<langle\>W,f\<rangle\>> be a frame.
    <math|<with|font|cal|F>> is a proper filter iff <math|f> is:

    <\itemize>
      <item><math|f> is closed under finite intersections: for all
      <math|w\<in\>W>, if <math|X<rsub|1>,\<ldots\>,X<rsub|n>\<in\>f<around|(|w|)>>
      then their intersection <math|<big|cap><rsup|k><rsub|i=1>X<rsub|i>\<in\>f<around|(|w|)>>

      <item><math|f> is closed under supersets: for all <math|w\<in\>W>, if
      <math|X\<in\>f<around|(|w|)>> and <math|X\<subseteq\>Y\<subseteq\>W>,
      then <math|Y\<in\>f<around|(|w|)>>

      <item><math|f> contains the unit: iff <math|W\<in\>f<around|(|w|)>>
    </itemize>
  </definition>

  <\proposition>
    <cite-detail|pacuit2017neighborhood|Corollary 1.1>
    <label|filter-contains-core>If <math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>>
    is a filter, and <math|W> is finite, then <math|<with|font|cal|F>>
    contains its core.
  </proposition>

  [We will focus on a particular kind of frame that we call a
  <with|font-shape|italic|preferential filter>.] [We call it that because it
  is essentially a possible-worlds variant of preferential models used in
  conditional logic] [This is the class of frames that we will show are
  equivalent to BFNNs.]

  <\definition>
    <math|<with|font|cal|F>=\<langle\>W,f,g\<rangle\>> is a preferential
    filter iff:

    <\itemize>
      <item>W is finite

      <item><math|\<langle\>W,f\<rangle\>> forms a proper filter, and
      <math|g> contains the unit

      <item><math|f> is antisymmetric: for all <math|u,v\<in\>W>, if
      <math|u\<in\>\<cap\>f<around*|(|v|)>> and
      <math|v\<in\>\<cap\>f<around*|(|u|)>> then <math|u=v>.

      <item><math|f,g> are reflexive: for all <math|w\<in\>W>,
      <math|w\<in\>\<cap\>f<around|(|w|)>> (similarly for <math|g>)

      <item><math|f,g> are transitive: for all <math|w\<in\>W>, if
      <math|X\<in\>f<around|(|w|)>> then <math|<around*|{|u
      \<mid\>X\<in\>f<around*|(|u|)>|}>\<in\>f<around|(|w|)>> (similarly for
      <math|g>)

      <item><math|g> contains <math|f>: for all <math|w\<in\>W>, if
      <math|X\<in\>f<around*|(|w|)>> then <math|X\<in\>g<around*|(|w|)>>

      <item><math|f> is a skeleton of <math|g>: for all <math|w\<in\>W> and
      <math|Y\<subseteq\>W> such that <math|w\<in\>\<cap\>f<around*|(|Y|)>>,

      <\equation*>
        X\<in\>g<around*|(|w|)><infix-iff><around*|{|u\<mid\>X\<in\>g<around*|(|u|)>|}>\<cup\><around*|(|\<cap\>f<around*|(|Y|)>|)><rsup|\<complement\>>\<in\>g<around*|(|w|)>
      </equation*>
    </itemize>
  </definition>

  [Explain the skeleton property!] [In fact, this skeleton property
  corresponds to the Minimal Cause property.] [Note in particular that for
  <math|Y=<around*|{|w|}>>, since <math|w\<in\>\<cap\>f<around*|(|w|)>>, the
  skeleton property says:]

  <\equation>
    X\<in\>g<around*|(|w|)><infix-iff><around*|{|u\<mid\>X\<in\>g<around*|(|u|)>|}>\<cup\><around*|(|\<cap\>f<around*|(|w|)>|)><rsup|\<complement\>>\<in\>g<around*|(|w|)>
  </equation>

  [We use the usual neighborhood semantics model, truth, and entailment
  definitions]

  <\definition>
    <cite-detail|pacuit2017neighborhood|Definition 1.11> Let
    <math|<with|font|cal|F>=<around|\<langle\>|W,f,g|\<rangle\>>> be a
    neighborhood frame. A neighborhood model based on
    <math|<with|font|cal|F>> is <math|<Model>=<around|\<langle\>|W,f,g,V|\<rangle\>>>,
    where <math|V :<value|Lang>\<to\><value|powerset><around|(|W|)>> is a
    valuation function.
  </definition>

  <\definition>
    <cite-detail|pacuit2017neighborhood|Definition 1.12> Let
    <math|<Model>=<around|\<langle\>|W,f,g,V|\<rangle\>>> be a model based on
    <math|<with|font|cal|F>=<around|\<langle\>|W,f,g|\<rangle\>>> Truth at a
    world <math|\<Vdash\>> is defined recursively as follows:

    <\equation*>
      <tabular|<tformat|<cwith|1|6|1|1|cell-lborder|1ln>|<cwith|1|6|3|3|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lsep|1em>|<cwith|1|-1|2|2|cell-rsep|1em>|<cwith|1|1|2|2|cell-lsep|1em>|<cwith|1|1|2|2|cell-rsep|1em>|<cwith|6|6|1|-1|cell-tborder|0ln>|<cwith|6|6|1|-1|cell-bborder|1ln>|<cwith|6|6|1|1|cell-lborder|1ln>|<cwith|6|6|3|3|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|0ln>|<cwith|2|2|1|-1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|5|5|1|1|cell-lborder|1ln>|<cwith|5|5|3|3|cell-rborder|1ln>|<cwith|5|5|2|2|cell-lsep|1em>|<cwith|5|5|2|2|cell-rsep|1em>|<cwith|5|5|2|2|cell-lsep|1em>|<cwith|5|5|2|2|cell-rsep|1em>|<cwith|5|5|1|3|cell-tborder|0ln>|<cwith|5|5|1|1|cell-lborder|1ln>|<cwith|5|5|3|3|cell-rborder|1ln>|<cwith|5|5|1|3|cell-bborder|0ln>|<table|<row|<cell|<value|Model>,w\<Vdash\>p>|<cell|iff>|<cell|w\<in\>V<around*|(|p|)>>>|<row|<cell|<value|Model>,w\<Vdash\>\<neg\>\<varphi\>>|<cell|iff>|<value|Model>,w<neg|\<Vdash\>>\<varphi\>>|<row|<cell|<value|Model>,w\<Vdash\>\<varphi\>\<wedge\>\<psi\>>|<cell|iff>|<cell|<value|Model>,w\<Vdash\>\<varphi\><infix-and><value|Model>,w\<Vdash\>\<psi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|Know>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
      \<mid\><value|Model>,u\<Vdash\>\<varphi\>|}>\<in\>f<around*|(|w|)>>>|<row|<cell|<value|Model>,w\<Vdash\><value|Knownby>\<varphi\>>|<cell|iff>|<cell|\<forall\>u\<in\>W,<text|
      if >w\<in\>\<cap\>f<around*|(|u|)><text| then
      ><value|Model>,u\<Vdash\>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|Typ>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
      \<mid\><value|Model>,u\<Vdash\>\<varphi\>|}>\<in\>g<around*|(|w|)>>>>>>
    </equation*>
  </definition>

  <\definition>
    <cite-detail|pacuit2017neighborhood|Definition 1.13>
    <with|font-series|bold|(Truth in a model)>
    <math|<value|Model>\<models\>\<varphi\>> iff
    <math|<value|Model>,w\<Vdash\>\<varphi\>> for all <math|w\<in\>W>.
  </definition>

  <\definition>
    <cite-detail|pacuit2017neighborhood|Definition 2.32>
    <with|font-series|bold|(Frame entailment)> Let
    <math|<with|font-family|ss|F>> be a collection of neighborhood frames.
    <math|\<Gamma\>\<models\><rsub|<with|font-family|ss|F>>\<varphi\>> if for
    all models <math|<value|Model>> based on a frame
    <math|<with|font|cal|F>\<in\><with|font-family|ss|F>> and for all worlds
    <math|w\<in\>W>, if <math|<value|Model>,w\<Vdash\>\<Gamma\>> then
    <math|<value|Model>,w\<Vdash\>\<varphi\>>. [Note: This is the
    <with|font-shape|italic|local> consequence relation in modal logic.]
  </definition>

  [In neighborhood semantics, the operators <math|<value|Know>>, and
  <math|<value|Typ>> are more natural to interpret.] [But when we gave our
  neural semantics, we instead interpreted the <with|font-shape|italic|duals>
  <math|<value|diaKnow>>, and <math|<value|diaTyp>>.] [Since we need to
  relate the two, I'll write the explicit neighborhood semantics for the
  duals here:]

  <\equation*>
    <tabular|<tformat|<cwith|1|3|2|2|cell-lsep|1em>|<cwith|1|3|2|2|cell-rsep|1em>|<cwith|3|3|1|3|cell-tborder|0ln>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<cwith|2|2|2|2|cell-lsep|1em>|<cwith|2|2|2|2|cell-rsep|1em>|<cwith|2|2|2|2|cell-lsep|1em>|<cwith|2|2|2|2|cell-rsep|1em>|<cwith|2|2|1|3|cell-tborder|0ln>|<cwith|2|2|1|3|cell-bborder|0ln>|<cwith|2|2|1|1|cell-lborder|0ln>|<cwith|2|2|3|3|cell-rborder|0ln>|<table|<row|<cell|<value|Model>,w\<Vdash\><value|diaKnow>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
    \<mid\><value|Model>,u<neg|\<Vdash\>>\<varphi\>|}><neg|\<in\>>f<around*|(|w|)>>>|<row|<cell|<value|Model>,w\<Vdash\><value|diaKnownby>\<varphi\>>|<cell|iff>|<cell|\<exists\>u\<in\>W<text|
    such that >w\<in\>\<cap\>f<around*|(|u|)><text| and
    ><value|Model>,u\<Vdash\>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|diaTyp>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
    \<mid\><value|Model>,u<neg|\<Vdash\>>\<varphi\>|}><neg|\<in\>>g<around*|(|w|)>>>>>>
  </equation*>

  <section|From Nets to Neighborhood Models and Back>

  <subsection|Building Nets from Neighborhood Models>

  <subsection|Building Neighborhood Models from Nets>

  <section|Completeness and Model Building>

  <section|Completeness for Hebbian Learning>

  [How modal logic handles update \V Dynamic Epistemic Logic] [Examples of
  success: Dynamic logics for announcement & preference upgrade]

  [The simplest possible neural network learning policy: Unstable Hebbian
  Learning] [Introduce Hebbian Learning here, talk about it as a modal
  operator]

  <with|font-series|bold|References: >Preference Upgrade
  <cite|van2007prefupgrade>, Belief Revision <cite|van2007beliefrevision>,
  Hebb Organization <cite|hebb-organization-of-behavior-1949>, Dynamic
  Epistemic Logic <cite|gerbrandy1999dynamic>, Moss Finite Models
  <cite|moss2007finite> \V <todo|although track down original source for this
  proof>, <todo|Todo: Track down old dissertation that introduces reductions>

  [In fact, if we take the <with|font-shape|italic|reflexive-transitive
  closure> of the Hebbian Learning operator, we get a closure operator (i.e.
  a stable state in the space of all these neural network models)] [Formalize
  this, and give a reading for it as \Pwhat the net learns in the limit\Q]

  [Technique of proving completeness for update operators by
  <with|font-shape|italic|reduction> (try to track down again where this
  comes from \V Van Benthem mentions that it's from somebody's PhD thesis)]
  [In the case of unstable Hebbian Learning, we <with|font-shape|italic|do>
  have a reduction:]

  [Give reduction, and proof of it]

  [This solves an open problem left by our previous work, with a subtle
  difference between the two] [One-step update vs closure update] [Although
  it is possible to go from one-step to closure update (see Larry's paper),
  it is an open question how to go in the reverse direction (get completeness
  for a reflexive-transitive <with|font-shape|italic|reduction>)] [Argue
  that, from the POV of <with|font-shape|italic|interpreting the behavior of
  a neural network>, we are really interested in
  <with|font-shape|italic|closure updates>, not one-step updates.]

  <section|Completeness for Fuzzy Neural Networks>

  [So far, we have worked with binary nets in order to make the connection
  with binary modal logic clearer] [We prefer to work in the binary case,
  because it doesn't convolute the insight that this is
  <with|font-shape|italic|essentially modal logic> (badly phrased, rephrase)]
  [Actually, the choice doesn't matter / But this choice is not essential \V
  we can lift all of our results about binary nets to nets with fuzzy
  activation functions] [This is just a matter of considering a fuzzy version
  of our logic, and then checking that everything still holds]

  [List our primary references, i.e. other work that gives neural network
  semantics for <with|font-shape|italic|fuzzy> logic]
  [<cite|giordano2022conditional>, <cite|giordano2021weighted>, <todo|any
  more?>]

  [Introduce the fuzzy language, then re-state all of our definitions and
  theorems <todo|Is this a good choice, writing-wise? Is there any
  more-general thing I can say that will knock this out more easily? What is
  the theorem that I actually want?>]

  <section|Background and Related Work>

  <todo|Integrate some of this into above!!!>

  <with|font-series|bold|References: >McCulloch&Pitts:
  <cite|mcculloch1943logical>, Balkenius&Gardenfors:
  <cite|balkenius1991nonmonotonic>, Leitgeb2001:
  <cite|leitgeb2001nonmonotonic>, Leitgeb2003:
  <cite|leitgeb2003nonmonotonic>, Blutner2004:
  <cite|blutner2004nonmonotonic>, Leitgeb2018: <cite|leitgeb2018neural>,
  Logic of Graph Neural Networks: <cite|grohe2021logic>,
  Baltag-Supervised-Learning <cite|baltag2019right>, Baltag-Learning-Theory
  <cite|baltag2019dynamic>, Mechanizing Induction
  <cite|ortner2011mechanizing>, Neural-Symbolic Cog Reas
  <cite|garcez2008neural>, A Sound Approach <cite|garcez2001symbolic>,
  Odense&Garcez <cite|odense2022semantic>, KLM <cite|kraus1990nonmonotonic>,
  Giordano2009 <cite|giordano2009alc+>, Giordano2021 <cite|giordano2021>,
  Meee <cite|kisby2022logic>, Giordano2022 Self-Organizing Maps
  <cite|giordano2022conditional>, Giordano2021 Multipreference
  <cite|giordano2021weighted> <todo|Todo: find and track
  <with|font-series|bold|every paper> that I can possibly find that is about
  this theory!>

  [Give reader a brief overview of this theory] [McCulloch & Pitts] [History
  of previous work; fragmented, although everybody comes to a very similar
  idea] [Recent survey by Odense & Garcez gives the intuition best] [We can
  associate propositions (read \Pinputs\Q) as <with|font-shape|italic|sets of
  neurons> (states) in a neural network] [We can then associate logical
  operators with \Pstable states\Q of the net (i.e. closure operators from
  sets of neurons (states) to sets of neurons (states))] [Note that we are
  using the term \Pclosure operator\Q very loosely \U we mean
  <with|font-shape|italic|extensive> and <with|font-shape|italic|idempotent>
  operators from state to state, but not necessarily
  <with|font-shape|italic|monotonic>]

  [General idea of this theory: <with|font-series|bold|Soundness> of the
  logic corresponds to <with|font-series|bold|\PNet Model Checking\Q>, and
  <with|font-series|bold|Completeness> corresponds to
  <with|font-series|bold|\PNet Model Building\Q>] [The mapping gives us a
  principled way to translate between knowledge bases and equivalent neural
  network models]

  [Example: Hannes Leitgeb's conditional logic for feed-forward nets] [Show
  language, and picture example of the \Pstable state\Q of a propagation]
  [Actually give his complete axiomatization, that this is exactly the
  nonmonotonic Loop-Cumulative conditional logic of KLM] [Hannes has extended
  this idea towards other types of nets, etc.]

  [List other, similar work in this area] [List work that's done this for
  <with|font-series|bold|fuzzy sets> (i.e. we can apply the same idea towards
  neural networks that have arbitrary real-valued activation functions,
  rather than just binary activations)]

  [Nearly all of this work has focused on the conditional language]
  [Exceptions: Our own work, and also some of Garcez' model-building]
  [Understand his modal logic model-building well enough to understand the
  difference between our work and his] [Then explain our previous work, which
  uses the modal language in order to natively support update, and then give
  a logical characterization of Hebbian Learning.]

  [Compare this theory with other kinds of semantic embeddings (e.g. Logic
  Tensor Networks)] [The main difference is the starting point] [In neural
  semantics, we start with an interesting neural network behavior and try to
  understand it through logic] [In these other semantic embeddings, we start
  with a logical operator and interpret it as some operation over a neural
  network] <todo|Is this distinction important? Maybe it's more divisive than
  it needs to be. But we should definitely compare our work to Logic Tensor
  Networks.>

  <section|Conclusions and Future Work>

  <with|font-series|bold|References: ><todo|Include Merril's paper that talks
  about recurrent nets via automata, track down recurrent net papers, track
  down FOL and Higher-order logic papers, and also include here other logics
  of learning>

  [Extend theory to account for <with|font-shape|italic|recurrent nets> and
  <with|font-shape|italic|attention mechanisms>] [The trouble is what Odense
  and Garcez bring up in their survey: Determining the
  <with|font-shape|italic|stable states> of the net] [Forward propagation]
  [Give <with|font-shape|italic|some> pointer for direction on what
  conditions would make a recurrent net stable.]

  [Mention work on first-order and higher-order logic quantifiers here]
  [Include Garcez' Logic Tensor Networks] [Mention Masters thesis on variable
  binding in neural networks] [Also mention neuroscience literature on
  regions of the brain that are active during quantifier reasoning as
  inspiration]

  [Another next step would be to give sound axioms for other learning
  operators, e.g. <with|font-shape|italic|stable> Hebbian Learning;
  backpropagation] [In addition, relate work to other dynamic logics of
  preference upgrade (which I should mention in the section for Hebbian
  Learning as well.)]

  <\bibliography*|bib|tm-plain|neurosymbolic|References>
    <\bib-list|38>
      <bibitem*|1><label|bib-bader2005dimensions>Sebastian Bader<localize|
      and >Pascal Hitzler. <newblock>Dimensions of neural-symbolic
      integration-a structured survey. <newblock><with|font-shape|italic|ArXiv
      preprint cs/0511042>, 2005.<newblock>

      <bibitem*|2><label|bib-balkenius1991nonmonotonic>Christian
      Balkenius<localize| and >Peter Gärdenfors. <newblock>Nonmonotonic
      Inferences in Neural Networks. <newblock><localize|In
      ><with|font-shape|italic|KR>, <localize|pages >32\U39. 1991.<newblock>

      <bibitem*|3><label|bib-baltag2019dynamic>Alexandru Baltag, Nina
      Gierasimczuk, Aybüke Özgün, Ana<nbsp>Lucia<nbsp>Vargas
      Sandoval<localize|, and >Sonja Smets. <newblock>A dynamic logic for
      learning theory. <newblock><with|font-shape|italic|Journal of Logical
      and Algebraic Methods in Programming>, 109:100485, 2019.<newblock>

      <bibitem*|4><label|bib-baltag2019right>Alexandru Baltag, Dazhu
      Li<localize|, and >Mina<nbsp>Young Pedersen. <newblock>On the right
      path: a modal logic for supervised learning. <newblock><localize|In
      ><with|font-shape|italic|International Workshop on Logic, Rationality
      and Interaction>, <localize|pages >1\U14. Springer, 2019.<newblock>

      <bibitem*|5><label|bib-belle2021logic>Vaishak Belle. <newblock>Logic
      Meets Learning: From Aristotle to Neural Networks.
      <newblock><localize|In ><with|font-shape|italic|Neuro-Symbolic
      Artificial Intelligence: The State of the Art>, <localize|pages
      >78\U102. IOS Press, 2021.<newblock>

      <bibitem*|6><label|bib-blutner2004nonmonotonic>Reinhard Blutner.
      <newblock>Nonmonotonic inferences and neural networks.
      <newblock><localize|In ><with|font-shape|italic|Information,
      Interaction and Agency>, <localize|pages >203\U234. Springer,
      2004.<newblock>

      <bibitem*|7><label|bib-bottou2014machine>Léon Bottou. <newblock>From
      machine learning to machine reasoning.
      <newblock><with|font-shape|italic|Machine learning>, 94(2):133\U149,
      2014.<newblock>

      <bibitem*|8><label|bib-dong2019neural>Honghua Dong, Jiayuan Mao, Tian
      Lin, Chong Wang, Lihong Li<localize|, and >Denny Zhou. <newblock>Neural
      logic machines. <newblock><with|font-shape|italic|ArXiv preprint
      arXiv:1904.11694>, 2019.<newblock>

      <bibitem*|9><label|bib-gabbay1994temporal>Dov<nbsp>M Gabbay, Ian
      Hodkinson<localize|, and >Mark<nbsp>A Reynolds. <newblock>Temporal
      logic: mathematical foundations and computational aspects.
      <newblock>1994.<newblock>

      <bibitem*|10><label|bib-garcez2001symbolic>Artur<nbsp>S<nbsp>d'Avila
      Garcez, Krysia Broda<localize|, and >Dov<nbsp>M Gabbay.
      <newblock>Symbolic knowledge extraction from trained neural networks: a
      sound approach. <newblock><with|font-shape|italic|Artificial
      Intelligence>, 125(1-2):155\U207, 2001.<newblock>

      <bibitem*|11><label|bib-garcez2008neural>Artur<nbsp>S<nbsp>d'Avila
      Garcez, Luis<nbsp>C Lamb<localize|, and >Dov<nbsp>M Gabbay.
      <newblock><with|font-shape|italic|Neural-symbolic cognitive reasoning>.
      <newblock><tformat|<table|<row|<cell|Springer Science>|<cell|Business
      Media>>>>, 2008.<newblock>

      <bibitem*|12><label|bib-gerbrandy1999dynamic>Jelle Gerbrandy.
      <newblock>Dynamic epistemic logic. <newblock><localize|In
      ><with|font-shape|italic|Logic, language and computation, vol. 2>,
      <localize|pages >67\U84. 1999.<newblock>

      <bibitem*|13><label|bib-giordano2021>Laura Giordano, Valentina
      Gliozzi<localize|, and >Daniele<nbsp>Theseider Dupré. <newblock>From
      common sense reasoning to neural network models through multiple
      preferences: An overview. <newblock><with|font-shape|italic|CoRR>,
      abs/2107.04870, 2021.<newblock>

      <bibitem*|14><label|bib-giordano2022conditional>Laura Giordano,
      Valentina Gliozzi<localize|, and >Daniele Theseider DuprÉ. <newblock>A
      conditional, a fuzzy and a probabilistic interpretation of
      self-organizing maps. <newblock><with|font-shape|italic|Journal of
      Logic and Computation>, 32(2):178\U205, 2022.<newblock>

      <bibitem*|15><label|bib-giordano2009alc+>Laura Giordano, Nicola
      Olivetti, Valentina Gliozzic<localize|, and >Gian<nbsp>Luca Pozzato.
      <newblock><math|<with|math-font|cal|A*L*C>+> T: a preferential
      extension of description logics. <newblock><with|font-shape|italic|Fundamenta
      Informaticae>, 96(3):341\U372, 2009.<newblock>

      <bibitem*|16><label|bib-giordano2021weighted>Laura Giordano<localize|
      and >Daniele Theseider Dupré. <newblock>Weighted defeasible knowledge
      bases and a multipreference semantics for a deep neural network model.
      <newblock><localize|In ><with|font-shape|italic|Logics in Artificial
      Intelligence: 17th European Conference, JELIA 2021, Virtual Event, May
      17\U20, 2021, Proceedings 17>, <localize|pages >225\U242. Springer,
      2021.<newblock>

      <bibitem*|17><label|bib-grohe2021logic>Martin Grohe. <newblock>The
      logic of graph neural networks. <newblock><localize|In
      ><with|font-shape|italic|2021 36th Annual ACM/IEEE Symposium on Logic
      in Computer Science (LICS)>, <localize|pages >1\U17. IEEE,
      2021.<newblock>

      <bibitem*|18><label|bib-hebb-organization-of-behavior-1949>Donald Hebb.
      <newblock><with|font-shape|italic|The organization of behavior: A
      neuropsychological theory>. <newblock>Wiley, New York, 1949.<newblock>

      <bibitem*|19><label|bib-hudson2019learning>Drew Hudson<localize| and
      >Christopher<nbsp>D Manning. <newblock>Learning by abstraction: the
      neural state machine. <newblock><with|font-shape|italic|Advances in
      Neural Information Processing Systems>, 32, 2019.<newblock>

      <bibitem*|20><label|bib-kautz-2020future>The Third AI Summer, AAAI
      Robert S. Engelmore Memorial Award Lecture. <newblock>AAAI,
      2020.<newblock>

      <bibitem*|21><label|bib-kisby2022logic>Caleb Kisby, Saúl
      Blanco<localize|, and >Lawrence Moss. <newblock>The logic of hebbian
      learning. <newblock><localize|In ><with|font-shape|italic|The
      International FLAIRS Conference Proceedings>,
      <localize|volume><nbsp>35. 2022.<newblock>

      <bibitem*|22><label|bib-kraus1990nonmonotonic>Sarit Kraus, Daniel
      Lehmann<localize|, and >Menachem Magidor. <newblock>Nonmonotonic
      reasoning, preferential models and cumulative logics.
      <newblock><with|font-shape|italic|Artificial intelligence>,
      44(1-2):167\U207, 1990.<newblock>

      <bibitem*|23><label|bib-lamb2020graph>Luis<nbsp>C Lamb, Artur Garcez,
      Marco Gori, Marcelo Prates, Pedro Avelar<localize|, and >Moshe Vardi.
      <newblock>Graph neural networks meet neural-symbolic computing: a
      survey and perspective. <newblock><with|font-shape|italic|ArXiv
      preprint arXiv:2003.00330>, 2020.<newblock>

      <bibitem*|24><label|bib-leitgeb2001nonmonotonic>Hannes Leitgeb.
      <newblock>Nonmonotonic reasoning by inhibition nets.
      <newblock><with|font-shape|italic|Artificial Intelligence>,
      128(1-2):161\U201, 2001.<newblock>

      <bibitem*|25><label|bib-leitgeb2003nonmonotonic>Hannes Leitgeb.
      <newblock>Nonmonotonic reasoning by inhibition nets II.
      <newblock><with|font-shape|italic|International Journal of Uncertainty,
      Fuzziness and Knowledge-Based Systems>, 11(supp02):105\U135,
      2003.<newblock>

      <bibitem*|26><label|bib-leitgeb2018neural>Hannes Leitgeb.
      <newblock>Neural Network Models of Conditionals. <newblock><localize|In
      ><with|font-shape|italic|Introduction to Formal Philosophy>,
      <localize|pages >147\U176. Springer, 2018.<newblock>

      <bibitem*|27><label|bib-tensorflow2015-whitepaper>MartínAbadi
      et<nbsp>al. <newblock>TensorFlow: Large-Scale Machine Learning on
      Heterogeneous Systems. <newblock>2015. <newblock>Software available
      from tensorflow.org.<newblock>

      <bibitem*|28><label|bib-mccarthy1988epistemological>John McCarthy.
      <newblock>Epistemological challenges for connectionism.
      <newblock><with|font-shape|italic|Behavioral and Brain Sciences>,
      11(1):44\U44, 1988.<newblock>

      <bibitem*|29><label|bib-mcculloch1943logical>Warren<nbsp>S
      McCulloch<localize| and >Walter Pitts. <newblock>A logical calculus of
      the ideas immanent in nervous activity.
      <newblock><with|font-shape|italic|The bulletin of mathematical
      biophysics>, 5(4):115\U133, 1943.<newblock>

      <bibitem*|30><label|bib-moss2007finite>Lawrence<nbsp>S Moss.
      <newblock>Finite models constructed from canonical formulas.
      <newblock><with|font-shape|italic|Journal of Philosophical Logic>,
      36(6):605\U640, 2007.<newblock>

      <bibitem*|31><label|bib-odense2022semantic>Simon Odense<localize| and
      >Artur<nbsp>d'Avila Garcez. <newblock>A semantic framework for
      neural-symbolic computing. <newblock><with|font-shape|italic|ArXiv
      preprint arXiv:2212.12050>, 2022.<newblock>

      <bibitem*|32><label|bib-ortner2011mechanizing>Ronald Ortner<localize|
      and >Hannes Leitgeb. <newblock>Mechanizing induction.
      <newblock><localize|In ><with|font-shape|italic|Handbook of the History
      of Logic>, <localize|volume><nbsp>10, <localize|pages >719\U772.
      Elsevier, 2011.<newblock>

      <bibitem*|33><label|bib-pacuit2017neighborhood>Eric Pacuit.
      <newblock><with|font-shape|italic|Neighborhood semantics for modal
      logic>. <newblock>Springer, 2017.<newblock>

      <bibitem*|34><label|bib-sarker2021neuro>Md<nbsp>Kamruzzaman Sarker, Lu
      Zhou, Aaron Eberhart<localize|, and >Pascal Hitzler.
      <newblock>Neuro-symbolic artificial intelligence: current trends.
      <newblock><with|font-shape|italic|ArXiv preprint arXiv:2105.05330>,
      2021.<newblock>

      <bibitem*|35><label|bib-valiant2003three>Leslie<nbsp>G Valiant.
      <newblock>Three problems in computer science.
      <newblock><with|font-shape|italic|Journal of the ACM (JACM)>,
      50(1):96\U99, 2003.<newblock>

      <bibitem*|36><label|bib-van2007beliefrevision>Johan Van Benthem.
      <newblock>Dynamic logic for belief revision.
      <newblock><with|font-shape|italic|Journal of applied non-classical
      logics>, 17(2):129\U155, 2007.<newblock>

      <bibitem*|37><label|bib-van2007prefupgrade>Johan Van Benthem<localize|
      and >Fenrong Liu. <newblock>Dynamic logic of preference upgrade.
      <newblock><with|font-shape|italic|Journal of Applied Non-Classical
      Logics>, 17(2):157\U182, 2007.<newblock>

      <bibitem*|38><label|bib-yu2021survey>Dongran Yu, Bo Yang, Dayou
      Liu<localize|, and >Hui Wang. <newblock>A survey on neural-symbolic
      systems. <newblock><with|font-shape|italic|ArXiv preprint
      arXiv:2111.08164>, 2021.<newblock>
    </bib-list>
  </bibliography*>
</body>

<\initial>
  <\collection>
    <associate|large-padding-above|0fn>
    <associate|large-padding-below|0fn>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-screen-margin|false>
    <associate|page-type|letter>
    <associate|page-width|auto>
    <associate|par-columns|1>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|activation-agrees|<tuple|2.3|3>>
    <associate|alternative-reachedby|<tuple|2.7|3>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|7|8>>
    <associate|auto-11|<tuple|8|8>>
    <associate|auto-12|<tuple|9|8>>
    <associate|auto-13|<tuple|9|9>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|3>>
    <associate|auto-4|<tuple|3|6>>
    <associate|auto-5|<tuple|4|7>>
    <associate|auto-6|<tuple|4.1|7>>
    <associate|auto-7|<tuple|4.2|7>>
    <associate|auto-8|<tuple|5|7>>
    <associate|auto-9|<tuple|6|7>>
    <associate|bib-bader2005dimensions|<tuple|1|9>>
    <associate|bib-balkenius1991nonmonotonic|<tuple|2|9>>
    <associate|bib-baltag2019dynamic|<tuple|3|9>>
    <associate|bib-baltag2019right|<tuple|4|9>>
    <associate|bib-belle2021logic|<tuple|5|9>>
    <associate|bib-blutner2004nonmonotonic|<tuple|6|9>>
    <associate|bib-bottou2014machine|<tuple|7|9>>
    <associate|bib-dong2019neural|<tuple|8|9>>
    <associate|bib-gabbay1994temporal|<tuple|9|9>>
    <associate|bib-garcez2001symbolic|<tuple|10|9>>
    <associate|bib-garcez2008neural|<tuple|11|9>>
    <associate|bib-gerbrandy1999dynamic|<tuple|12|9>>
    <associate|bib-giordano2009alc+|<tuple|15|9>>
    <associate|bib-giordano2021|<tuple|13|9>>
    <associate|bib-giordano2021weighted|<tuple|16|9>>
    <associate|bib-giordano2022conditional|<tuple|14|9>>
    <associate|bib-grohe2021logic|<tuple|17|9>>
    <associate|bib-hebb-organization-of-behavior-1949|<tuple|18|9>>
    <associate|bib-hudson2019learning|<tuple|19|9>>
    <associate|bib-kautz-2020future|<tuple|20|9>>
    <associate|bib-kisby2022logic|<tuple|21|9>>
    <associate|bib-kraus1990nonmonotonic|<tuple|22|9>>
    <associate|bib-lamb2020graph|<tuple|23|9>>
    <associate|bib-leitgeb2001nonmonotonic|<tuple|24|9>>
    <associate|bib-leitgeb2003nonmonotonic|<tuple|25|9>>
    <associate|bib-leitgeb2018neural|<tuple|26|9>>
    <associate|bib-mccarthy1988epistemological|<tuple|28|9>>
    <associate|bib-mcculloch1943logical|<tuple|29|9>>
    <associate|bib-moss2007finite|<tuple|30|9>>
    <associate|bib-odense2022semantic|<tuple|31|9>>
    <associate|bib-ortner2011mechanizing|<tuple|32|9>>
    <associate|bib-pacuit2017neighborhood|<tuple|33|9>>
    <associate|bib-sarker2021neuro|<tuple|34|9>>
    <associate|bib-tensorflow2015-whitepaper|<tuple|27|9>>
    <associate|bib-valiant2003three|<tuple|35|9>>
    <associate|bib-van2007beliefrevision|<tuple|36|9>>
    <associate|bib-van2007prefupgrade|<tuple|37|9>>
    <associate|bib-yu2021survey|<tuple|38|9>>
    <associate|filter-contains-core|<tuple|3.4|6>>
    <associate|minimal-cause|<tuple|2.11|4>>
    <associate|reach-closed-under-intersection|<tuple|2.9|4>>
    <associate|thm:prop-props|<tuple|2.10|4>>
    <associate|thm:reach-props|<tuple|2.8|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      bader2005dimensions

      sarker2021neuro

      odense2022semantic

      leitgeb2001nonmonotonic

      kraus1990nonmonotonic

      kisby2022logic

      kisby2022logic

      leitgeb2001nonmonotonic

      leitgeb2001nonmonotonic

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      van2007prefupgrade

      van2007beliefrevision

      hebb-organization-of-behavior-1949

      gerbrandy1999dynamic

      moss2007finite

      giordano2022conditional

      giordano2021weighted

      mcculloch1943logical

      balkenius1991nonmonotonic

      leitgeb2001nonmonotonic

      leitgeb2003nonmonotonic

      blutner2004nonmonotonic

      leitgeb2018neural

      grohe2021logic

      baltag2019right

      baltag2019dynamic

      ortner2011mechanizing

      garcez2008neural

      garcez2001symbolic

      odense2022semantic

      kraus1990nonmonotonic

      giordano2009alc+

      giordano2021

      kisby2022logic

      giordano2022conditional

      giordano2021weighted
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|4spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|4spc>Neural
      Network Semantics> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|4spc>Neural Operators are Closure
      Operators <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|4spc>Classical
      (Neighborhood) Semantics> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|4spc>From
      Nets to Neighborhood Models and Back>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|4spc>Building Nets from
      Neighborhood Models <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.2<space|4spc>Building Neighborhood Models
      from Nets <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|4spc>Completeness
      and Model Building> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|4spc>Completeness
      for Hebbian Learning> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|4spc>Completeness
      for Fuzzy Neural Networks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|4spc>Background
      and Related Work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|4spc>Conclusions
      and Future Work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>