<TeXmacs|2.1.1>

<style|<tuple|ieeeconf|number-long-article>>

<\body>
  <\hide-preamble>
    \;

    <assign|author-name|<macro|author|<doc-author-block|<author-by|<with|font-series|bold|<arg|author>>>>>>

    <assign|author-email|<macro|email|<doc-author-block|<arg|email>>>>

    <assign|definition-text|<macro|<localize|Definition>>>

    <assign|render-theorem|<\macro|which|body>
      <render-enunciation|<theorem-name|<arg|which><theorem-sep>>|<arg|body>>
    </macro>>

    <assign|infix-iff|<macro|<math-imply|<text|
    <localize|<space|1em>iff<space|1em>> >>>>

    \;

    <assign|garnet|<macro|body|<with|color|#990002|<arg|body>>>>

    <assign|myblue|<macro|body|<with|color|#0749ac|<arg|body>>>>

    <assign|key|<macro|body|<myblue|<strong|<arg|body>>>>>

    <assign|Model|<with|font|cal|M>>

    <assign|Net|<with|font|cal|N>>

    <assign|Set|<with|font-family|ss|Set>>

    <assign|Primes|<with|font-family|ss|P>>

    <assign|semantics|<macro|body|<around*|\<llbracket\>|<arg|body>|\<rrbracket\>>>>

    <assign|Lang|<with|font|cal|L>>

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

    <assign|Knownby|<with|font-series|bold|<text|K><rsup|\<leftarrow\>>>>

    <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

    <assign|diaKnownby|\<langle\><value|Knownby>\<rangle\>>

    <assign|Typ|<with|font-series|bold|<text|T>>>

    <assign|diaTyp|\<langle\><value|Typ>\<rangle\>>

    <assign|Reach|<with|font-family|ss|Reach>>

    <assign|Prop|<with|font-family|ss|Prop>>

    <assign|Hebb|<with|font-family|ss|Update>>

    <assign|Inc|<with|font-family|ss|Inc>>

    <assign|AllNets|<with|font-family|ss|Net>>

    <assign|AllModels|<with|font-family|ss|Model>>

    <assign|item*|<macro|name|<render-item|<arg|name>><with|index-enabled|false|<set-binding|<arg|name>>>>>

    <assign|bibliography-text|References>

    <assign|render-bibliography|<\macro|name|body>
      <principal-section*|<arg|name>>

      <with|par-first|0fn|par-par-sep|0fn|font-size|0.84|<arg|body>>
    </macro>>

    <assign|thebibliography|<\macro|largest|body>
      <render-bibliography|<bibliography-text>|<bib-list|<arg|largest>|<arg|body>>>
    </macro>>

    <assign|sectional-sep|<macro|<space|2spc>>>

    <assign|sectional-post-sep|<macro|<space|2spc>>>

    <assign|proposition-text|<macro|<localize|Proposition>>>

    <assign|definition*|<\macro|body>
      <compound|render-theorem|<compound|definition-unnumbered|<compound|definition-text>>|<arg|body>>
    </macro>>

    \;

    <new-theorem|claim|Claim>

    <new-theorem|goal|Goal>

    <assign|question-text|<macro|<inactive|<localize|Open Question>>>>

    <assign|todo-bg-color|white>

    <assign|todo-color|black>
  </hide-preamble>

  <doc-data|<doc-title|Neural Network Models, à la
  Mode>|<doc-author|<author-data|<author-name|Caleb Schultz Kisby and Saúl A.
  Blanco>|<\author-affiliation>
    Department of Computer Science, Indiana University

    Bloomington, IN 47408, USA
  </author-affiliation>|<author-email|{cckisby,
  sblancor}@indiana.edu>>>|<doc-author|<author-data|<author-name|Lawrence S.
  Moss>|<\author-affiliation>
    Department of Mathematics, Indiana University

    Bloomington, IN 47405, USA
  </author-affiliation>|<author-email|lmoss@indiana.edu>>>>

  <abstract-data|<abstract|[Todo]>>

  <section|Introduction>

  <todo|Briefly introduce the neuro-symbolic divide, and neuro-symbolic AI at
  large>

  <todo|Put in context of theoretical symbolic-ai, beginning with
  Gardenfors.> <todo|What <cite|?> would call
  <with|font-shape|italic|semantic encodings>>\ 

  <todo|Major insight of this work: Stable states in a net correspond
  precisely to conditionals in logic> <todo|Emphasize that the main thread is
  dealing with conditionals>

  <todo|The point of this paper is to refashion this insight using the
  language of modal logic (\Pa la mode\Q \V to bring up-to-date \V put joke
  in a footnote?)> <todo|State syntax of sentences we deal with> <todo|State
  neural interpretation right here <with|font-series|bold|with a table>
  (don't mention the \Pflipped\Q version of the semantics yet)>

  <todo|Our main result:> <todo|Feed-forward neural networks model
  <with|font-shape|italic|exactly> the same <math|<value|Lang>>-sentences as
  a certain class of neighborhood models we call \Ppreferential models\Q>
  <todo|Important consequences: <with|font-series|bold|(bullet-list them)>>
  <todo|#1: Given a set <math|\<Gamma\>> over <math|<value|Lang>>, we can
  construct a feed-forward net <math|<value|Net>> satisfying
  <math|\<Gamma\>>> <todo|#2: We can completely axiomatize feed-forward nets
  over <math|<value|Lang>>> <todo|#3: Using this modal language as a base, we
  can logically characterize a simple neural network learning policy:
  unstable Hebbian learning \Pin the limit\Q.>

  <todo|The point of using modal logic instead of conditionals> <todo|Not
  merely an aesthetic choice> <todo|Reason #1: By relating <math|<value|Typ>>
  to <math|<value|Know>> and <math|<value|Knownby>>, we give an alternative
  characterization of forward propagation \V not as a loop-cumulative
  conditional, but instead as <with|font-series|bold|(express the interaction
  axiom??? \Pminimal cause\Q)>> <todo|Reason #2: The modal language natively
  supports <with|font-shape|italic|update>, i.e. we can express
  <with|font-shape|italic|neural network learning> as an operator in our
  logic.>

  <section|Previous Work>

  <todo|This is my space to explain in detail what Hannes Leitgeb and others
  did> <todo|IMPORTANT: Impress on the reader that this isn't just one or two
  people doing this, that this is a \Prising tide\Q neurosymbolic theory.>

  <todo|Main move in this theory is to associate operators with
  <with|font-shape|italic|stable states of the net>> <todo|What <cite|?>
  would call <with|font-shape|italic|semantic encodings>>
  <todo|<with|font-series|bold|Include picture> example of how we can
  interpret formulas as sets of neurons>

  <todo|Don't define neural networks and forward propagation
  <with|font-shape|italic|yet>, but do explain:> <todo|The characterization
  of forward propagation as a nonmonotonic conditional with (Loop)> <todo|Aka
  an \Palmost-closure operator\Q> <todo|Also talk about <math|<value|Prop>>
  as the guaranteed stable state if we view the neural network as an
  automaton> <todo|Stable state corresponds to
  <with|font-shape|italic|reflexivity> and
  <with|font-shape|italic|transitivity>> <todo|This intuition of
  <with|font-shape|italic|operator as >>

  <todo|With all that said, I can foreshadow: Our contribution is an
  alternate characterization of forward propagation> <todo|Mention the change
  and extension of our language> <todo|(Loop) is derivable in our system, but
  instead of (Loop) we get a very natural rule that says \Pforward
  propagation is a nonmonotonic operator that follows the skeleton of the
  graph.\Q> <todo|There's got to be a better way of saying this<text-dots>!>

  <section|Our Syntax and Semantics>

  <subsection|Syntax>

  <\definition>
    Formulas of our language <math|<value|Lang>> are given by\ 

    <\equation*>
      \<varphi\>\<colons\>=i\<mid\>p\<mid\>\<neg\>\<varphi\>\<mid\>\<varphi\>\<wedge\>\<varphi\>\<mid\><value|Know>\<varphi\>\<mid\><value|Knownby>i\<mid\><value|Typ>\<varphi\>\<mid\>
    </equation*>

    where <math|p> is any propositional variable, and <math|i> is any nominal
    (denoting a neuron). Material implication
    <math|\<varphi\>\<rightarrow\>\<psi\>> is defined as
    <math|\<neg\>\<varphi\>\<vee\>\<psi\>>. We define
    <math|\<bot\>,\<vee\>,\<leftrightarrow\>,\<Leftrightarrow\>,>and the dual
    operators <math|<value|diaKnow>,<value|diaKnownby>,<value|diaTyp>> in the
    usual way.
  </definition>

  <subsection|Neural Network Semantics>

  <todo|No need for a big definition of \PBFNN\Q \V just say that we are
  restricting our attention to binary, feed-forward nets and define those
  in-line.>

  <\definition>
    \ An <with|font-shape|italic|interpreted ANN> (Artificial Neural Network)
    is a pointed directed graph <math|<value|Net>=\<langle\>N,E,W,T,A,V\<rangle\>>,
    where

    <\itemize>
      <item><math|N> is a finite nonempty set (the set of
      <with|font-shape|italic|neurons>)

      <item><math|E\<subseteq\> N\<times\> N> (the set of
      <with|font-shape|italic|excitatory neurons>)

      <item><math|W:E\<rightarrow\><with|font|Bbb|R>> (the
      <with|font-shape|italic|weight> of a given connection)

      <item><math|A> is a function which maps each <math|n\<in\> N> to
      <math|A<rsup|<around*|(|n|)>>:<with|font|Bbb|R<rsup|k>\<times\>
      R<rsup|k>\<rightarrow\>R<rsup|>>> (the
      <with|font-shape|italic|activation function> for <math|n>, where
      <math|k> is the indegree of <math|n>)

      <item><math|O> is a function which maps each <math|n\<in\> N> to
      <math|O<rsup|<around*|(|n|)>>:<with|font|Bbb|R>\<rightarrow\><around*|{|0,1|}>>
      (the <with|font-shape|italic|output function> for <math|n>)

      <item><math|V:propositions\<cup\>nominals\<rightarrow\><value|powerset><around*|(|N|)>>
      is an assignment of nominals to individual neurons (the
      <with|font-shape|italic|valuation function>). If <math|i> is a nominal,
      we require <math|<around*|\||V<around*|(|i|)>|\|>=1>, i.e. a singleton.
    </itemize>
  </definition>

  <\definition>
    \ A <with|font-shape|italic|BFNN> (Binary Feedforward Neural Network) is
    an interpreted ANN <math|<value|Net>=\<langle\>N,E,W,T,A,V\<rangle\>>
    that is

    <\itemize>
      <item><with|font-shape|italic|Feed-forward>, i.e. <math|E> does not
      contain any cycles

      <item><with|font-shape|italic|Binary>, i.e. the output of each neuron
      is in {0, 1}
    </itemize>
  </definition>

  <\definition>
    Given a BFNN <value|Net>, <math|<value|Set>=<value|powerset><around*|(|N|)>=<around*|{|S\<mid\>S\<subseteq\>N|}>>
  </definition>

  <\definition>
    For <math|S\<in\><value|Set>>, let <math|<value|bigchi><rsub|S>:N\<rightarrow\><around*|{|0,1|}>>
    be given by <math|<value|bigchi><rsub|S>=1> iff <math|n\<in\> S>
  </definition>

  <\definition>
    Let <math|<value|Prop>:<value|Set>\<rightarrow\><value|Set>> be defined
    recursively as follows: <math|n\<in\><value|Prop><around*|(|S|)>> iff
    either

    <\description>
      <item*|Base Case><math|n\<in\>S>, or

      <item*|Constructor>For those <math|m<rsub|1>,\<ldots\>,m<rsub|k>> such
      that <math|<around*|(|m<rsub|i>,n|)>\<in\>E> we have\ 

      <\equation*>
        O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|<value|bigchi>|\<vect\>><rsub|<value|Prop><around*|(|S|)>><around*|(|m<rsub|i>|)>,<wide|W|\<vect\>><around*|(|m<rsub|i>,n|)>|)>|)>=1
      </equation*>
    </description>
  </definition>

  <\proposition>
    <dueto|Leitgeb><label|thm:prop-props>Let <math|<Net>\<in\><AllNets>>. For
    all <math|S,S<rsub|1>,S<rsub|2>\<in\><Set>>, <math|<value|Prop>>
    satisfies

    <\description>
      <item*|(Inclusion)><math|S\<subseteq\><Prop><around|(|S|)>>

      <item*|(Idempotence)><math|<Prop><around|(|S|)>=<Prop><around|(|<Prop><around|(|S|)>|)>>

      <item*|(Cumulative)>If <math|S<rsub|1>\<subseteq\>S<rsub|2>\<subseteq\><Prop><around|(|S<rsub|1>|)>>
      then <math|<Prop><around|(|S<rsub|1>|)>\<subseteq\><Prop><around|(|S<rsub|2>|)>>

      <item*|(Loop)>If <math|S<rsub|1>\<subseteq\><Prop><around|(|S<rsub|0>|)>,\<ldots\>,S<rsub|n>\<subseteq\><Prop><around|(|S<rsub|n-1>|)>>
      and <math|S<rsub|0>\<subseteq\><Prop><around|(|S<rsub|n>|)>>,

      then <math|<Prop><around|(|S<rsub|i>|)>=<Prop><around|(|S<rsub|j>|)>>
      for all <math|i,j\<in\><around*|{|0,\<ldots\>,n|}>>
    </description>
  </proposition>

  <\definition>
    Let <math|<value|Reach>:<value|Set>\<rightarrow\><value|Set>> be defined
    recursively as follows: <math|n\<in\><value|Reach><around*|(|S|)>> iff
    either

    <\description>
      <item*|Base Case><math|n\<in\>S>, or

      <item*|Constructor>There is an <math|m\<in\><value|Reach><around*|(|S|)>>
      such that <math|<around*|(|m,n|)>\<in\>E>.
    </description>
  </definition>

  <\proposition>
    <label|thm:reach-props>Let <math|<Net>\<in\><AllNets>>. For all
    <math|S,S<rsub|1>,S<rsub|2>\<in\><Set>>, <math|n,m\<in\>N>,
    <math|<value|Reach>> satisfies

    <\description>
      <item*|(Inclusion)><math|S\<subseteq\><Reach><around|(|S|)>>

      <item*|(Idempotence)><math|<Reach><around|(|S|)>=<Reach><around|(|<Reach><around|(|S|)>|)>>

      <item*|(Monotonicity)>If <math|S<rsub|1>\<subseteq\>S<rsub|2>> then
      <math|<Reach><around|(|S<rsub|1>|)>\<subseteq\><Reach><around|(|S<rsub|2>|)>>

      <item*|(Containment)><math|<value|Prop><around*|(|S|)>\<subseteq\><value|Reach><around*|(|S|)>>
    </description>
  </proposition>

  <\definition>
    For all <math|n\<in\>N>, <math|<value|Reach><rsup|-1><around*|(|n|)>=<big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>
  </definition>

  <\proposition>
    <label|prop-reach-inverse>For all <math|n\<in\>N>,
    <math|<value|Reach><rsup|-1><around*|(|n|)>=<around*|{|m\<mid\>there is
    an E<math-up|->path from m to n|}>>
  </proposition>

  <\proposition>
    <label|prop-reach-acyclic><math|<value|Reach><rsup|-1>> is acyclic in the
    following sense: For <math|n<rsub|1>,\<ldots\>,n<rsub|k>\<in\>N>, if

    <\equation*>
      n<rsub|1>\<in\><value|Reach><rsup|-1><around*|(|n<rsub|2>|)>,\<ldots\>,n<rsub|k-1>\<in\><value|Reach><rsup|-1><around*|(|n<rsub|k>|)>,n<rsub|k>\<in\><value|Reach><rsup|-1><around*|(|n<rsub|1>|)>
    </equation*>

    Then each <math|n<rsub|i>=n<rsub|j>>.
  </proposition>

  <\proposition>
    <label|minimal-cause><with|font-series|bold|(Minimal Cause)> For all
    <math|n\<in\>N>, if <math|n\<in\><value|Prop><around*|(|S|)>> then
    <math|n\<in\><value|Prop><around*|(|S\<cap\><value|Reach><rsup|-1><around*|(|n|)>|)>>
  </proposition>

  <\definition>
    Let <math|<value|Net>\<in\><value|AllNets>>. The semantics
    <math|<semantics|\<cdot\>>:<value|Lang>\<rightarrow\><value|Set>> for
    <math|<value|Lang>> are defined recursively as follows:

    <\equation*>
      <tabular|<tformat|<twith|table-lborder|0em>|<twith|table-rborder|0em>|<twith|table-bborder|0em>|<twith|table-tborder|0em>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|5|5|1|-1|cell-bborder|0ln>|<cwith|6|6|1|1|cell-lborder|1ln>|<cwith|6|6|3|3|cell-rborder|1ln>|<cwith|6|6|1|3|cell-tborder|0ln>|<cwith|6|6|1|1|cell-lborder|1ln>|<cwith|6|6|3|3|cell-rborder|1ln>|<cwith|7|7|1|-1|cell-tborder|0ln>|<cwith|6|6|1|-1|cell-bborder|0ln>|<cwith|7|7|1|-1|cell-bborder|1ln>|<cwith|7|7|1|1|cell-lborder|1ln>|<cwith|7|7|3|3|cell-rborder|1ln>|<table|<row|<cell|<semantics|i>>|<cell|=>|<cell|V<around*|(|i|)>\<in\><value|Set>>>|<row|<cell|<semantics|p>>|<cell|=>|<cell|V<around*|(|p|)>\<in\><value|Set>>>|<row|<cell|<semantics|\<neg\>\<varphi\>>>|<cell|=>|<semantics|\<varphi\>><rsup|\<complement\>>>|<row|<cell|<semantics|\<varphi\>\<wedge\>\<psi\>>>|<cell|=>|<cell|<semantics|\<varphi\>>\<cap\><semantics|\<psi\>>>>|<row|<cell|<semantics|<value|diaKnow>\<varphi\>>>|<cell|=>|<cell|<value|Reach><around*|(|<semantics|\<varphi\>>|)>>>|<row|<cell|<semantics|<value|diaKnownby>\<varphi\>>>|<cell|=>|<cell|<around*|{|n\<mid\>\<exists\>m\<in\><semantics|\<varphi\>><rsup|\<complement\>><text|
      such that >n\<in\><value|Reach><rsup|-1><around*|(|m|)>|}>>>|<row|<cell|<semantics|<value|diaTyp>\<varphi\>>>|<cell|=>|<cell|<value|Prop><around*|(|<semantics|\<varphi\>>|)>>>>>>
    </equation*>
  </definition>

  <\definition>
    <with|font-series|bold|(Truth at a neuron)>
    <math|<value|Net>,n\<Vdash\>\<varphi\>> iff
    <math|n\<in\><semantics|\<varphi\>><rsub|<value|Net>>>.
  </definition>

  <\definition>
    <with|font-series|bold|(Truth in a net)>
    <math|<value|Net>\<models\>\<varphi\>> iff
    <math|<value|Net>,n\<Vdash\>\<varphi\>> for all <math|n\<in\>N>.
  </definition>

  <subsection|(Classical) Neighborhood Semantics>

  <todo|Todo: clean up this mess about multi-frames, and just talk about
  frames <math|<with|font|cal|F>=\<langle\>W,f,g,V\<rangle\>>>

  <\definition>
    A <with|font-shape|italic|neighborhood frame> is a pair
    <math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>>, where
    <math|W> is a non-empty set of <with|font-shape|italic|worlds> and
    <math|f:W\<to\><value|powerset><around|(|<value|powerset><around|(|W|)>|)>>
    is a <with|font-shape|italic|neighborhood function>.
  </definition>

  <\definition>
    A <with|font-shape|italic|multi-frame> is
    <math|<with|font|Euler|F>=<around|\<langle\>|W,f,g|\<rangle\>>>, where
    <math|f> and <math|g> are neighborhood functions.
  </definition>

  <\definition>
    Let <math|<with|font|Euler|<with|font|cal|F>>=<around|\<langle\>|W,f|\<rangle\>>>
    be a neighborhood frame, and let <math|w\<in\>W>. The set
    <math|<big|cap><rsub|X\<in\>f<around|(|w|)>>X> is called the
    <with|font-shape|italic|core> of <math|f<around|(|w|)>>. We often
    abbreviate this by <math|\<cap\>f<around|(|w|)>>.
  </definition>

  <todo|Todo: Instead of defining these, just define \Ppreferential frames\Q
  using the list of properties>

  <todo|Todo: Come up with a better word for \Ppreferential frames\Q>

  <\definition>
    Let <math|<with|font|Euler|<with|font|cal|F>>=<around|\<langle\>|W,f|\<rangle\>>,<with|font|Euler|<with|font|cal|G>>=<around|\<langle\>|W,g|\<rangle\>>>
    be neighborhood frames with <math|W> nonempty.

    <\itemize>
      <item><math|<with|font|Euler|<with|font|cal|F>>> is
      <with|font-shape|italic|closed under finite intersections> iff for all
      <math|w\<in\>W>, if <math|X<rsub|1>,\<ldots\>,X<rsub|n>\<in\>f<around|(|w|)>>
      then their intersection <math|<big|cap><rsup|k><rsub|i=1>X<rsub|i>\<in\>f<around|(|w|)>>.

      <item><math|<with|font|Euler|<with|font|cal|F>>> is <key|closed under
      supersets> iff for all <math|w\<in\>W>, if
      <math|X\<in\>f<around|(|w|)>> and <math|X\<subseteq\>Y\<subseteq\>W>,
      then <math|Y\<in\>f<around|(|w|)>>.

      <item><math|<with|font|Euler|<with|font|cal|F>>> <key|contains the
      unit> iff <math|W\<in\>f<around|(|w|)>>.

      <item><math|<with|font|cal|F>> <key|contains the empty set> iff
      <math|\<emptyset\>\<in\>f<around|(|w|)>>.

      <item><math|<with|font|cal|F>> is <key|reflexive> iff for all
      <math|w\<in\>W>, <math|w\<in\>\<cap\>f<around|(|w|)>>

      <item><math|<with|font|cal|F>> is <key|transitive> iff for all
      <math|w\<in\>W>, if <math|X\<in\>f<around|(|w|)>> then
      <math|<around*|{|u \<mid\>X\<in\>f<around*|(|u|)>|}>\<in\>f<around|(|w|)>>.

      <item><math|<with|font|cal|F>> is <key|acyclic> iff for all
      <math|u<rsub|1>,\<ldots\>,u<rsub|n>\<in\>W>, if
      <math|u<rsub|1>\<in\>\<cap\>f<around*|(|u<rsub|2>|)>,\<ldots\>,u<rsub|n-1>\<in\>\<cap\>f<around*|(|u<rsub|n>|)>,u<rsub|n>\<in\>\<cap\>f<around*|(|u<rsub|1>|)>>
      then all <math|u<rsub|i>=u<rsub|j>>.

      <item><math|<with|font|cal|F>> <key|guides> <math|<with|font|cal|G>>
      iff for all <math|w\<in\>W>, if <math|X\<cup\><around*|(|\<cap\>f<around*|(|w|)>|)><rsup|\<complement\>><rsup|>\<in\>g<around*|(|w|)>>
      then <math|X\<in\>g<around*|(|w|)>>.
    </itemize>
  </definition>

  <\definition>
    Let <math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>> be a
    frame, and <math|<with|font|Euler|F>=<around|\<langle\>|W,f,g|\<rangle\>>>
    be a multi-frame extending <math|<with|font|cal|F>>. We will focus on the
    following special classes of frames:

    <\itemize>
      <item><math|<with|font|cal|F>> is a <key|proper filter> iff for all
      <math|w\<in\>W>, <math|f<around|(|w|)>> is closed under finite
      intersections, closed under supersets, contains the unit, and does not
      contain the empty set.

      <item><math|<with|font|Euler|F>> is a <key|preferential multi-frame>
      iff

      <\itemize>
        <item><math|W> is finite,

        <item><math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>>
        forms a reflexive, transitive, acyclic, proper filter,

        <item><math|<with|font|cal|G>=<around|\<langle\>|W,g|\<rangle\>>> is
        reflexive, transitive, and <math|<with|font|cal|F>> guides
        <math|<with|font|cal|G>>.
      </itemize>
    </itemize>
  </definition>

  <\proposition>
    <dueto|Pacuit>If <math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>>
    is a filter, and <math|W> is finite, then <math|<with|font|cal|F>>
    contains its core.
  </proposition>

  <\proposition>
    <label|prop-filter-consistency>If <math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>>
    is a proper filter, then for all <math|w\<in\>W>,
    <math|Y<rsup|\<complement\>>\<in\>f<around*|(|w|)>> iff
    <math|Y<neg|\<in\>>f<around*|(|w|)>>.
  </proposition>

  <\definition>
    Let <math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>>,
    <math|<with|font|cal|G>=<around|\<langle\>|W,g|\<rangle\>>> be a
    neighborhood frame. A <key|neighborhood model> based on
    <math|<with|font|cal|F>> and <math|<with|font|cal|G>> is
    <math|<Model>=<around|\<langle\>|W,f,g,V|\<rangle\>>>, where <math|V
    :<value|Lang>\<to\><value|powerset><around|(|W|)>> is a valuation
    function.
  </definition>

  <\definition>
    Let <math|<Model>=<around|\<langle\>|W,f,g,V|\<rangle\>>> be a model
    based on two frames <math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>,<with|font|cal|G>=<around|\<langle\>|W,g|\<rangle\>>>.
    The (neighborhood) semantics for <math|<value|Lang>> are defined
    recursively as follows:

    <\equation*>
      <tabular|<tformat|<cwith|1|7|1|1|cell-lborder|1ln>|<cwith|1|7|3|3|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lsep|1em>|<cwith|1|-1|2|2|cell-rsep|1em>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|3|3|cell-rborder|1ln>|<cwith|2|2|2|2|cell-lsep|1em>|<cwith|2|2|2|2|cell-rsep|1em>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|0ln>|<cwith|2|2|1|-1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|6|6|2|2|cell-lsep|1em>|<cwith|6|6|2|2|cell-rsep|1em>|<cwith|6|6|1|3|cell-tborder|0ln>|<cwith|6|6|1|1|cell-lborder|1ln>|<cwith|6|6|3|3|cell-rborder|1ln>|<cwith|7|7|1|-1|cell-tborder|0ln>|<cwith|6|6|1|-1|cell-bborder|0ln>|<cwith|7|7|1|-1|cell-bborder|1ln>|<cwith|7|7|1|1|cell-lborder|1ln>|<cwith|7|7|3|3|cell-rborder|1ln>|<table|<row|<cell|<value|Model>,w\<Vdash\>i>|<cell|iff>|<cell|V<around*|(|i|)>=<around*|{|w|}>>>|<row|<cell|<value|Model>,w\<Vdash\>p>|<cell|iff>|<cell|w\<in\>V<around*|(|p|)>>>|<row|<cell|<value|Model>,w\<Vdash\>\<neg\>\<varphi\>>|<cell|iff>|<value|Model>,w<neg|\<Vdash\>>\<varphi\>>|<row|<cell|<value|Model>,w\<Vdash\>\<varphi\>\<wedge\>\<psi\>>|<cell|iff>|<cell|<value|Model>,w\<Vdash\>\<varphi\><infix-and><value|Model>,w\<Vdash\>\<psi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|Know>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
      \<mid\><value|Model>,u\<Vdash\>\<varphi\>|}>\<in\>f<around*|(|w|)>>>|<row|<cell|<value|Model>,w\<Vdash\><value|Knownby>\<varphi\>>|<cell|iff>|<cell|\<forall\>u\<in\>W,<text|
      if >w\<in\>\<cap\>f<around*|(|u|)><text| then
      ><value|Model>,u\<Vdash\>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|Typ>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
      \<mid\><value|Model>,u\<Vdash\>\<varphi\>|}>\<in\>g<around*|(|w|)>>>>>>
    </equation*>
  </definition>

  In neighborhood semantics, the operators <math|<value|Know>>,
  <math|<value|Knownby>>, and <math|<value|Typ>> are more natural to
  interpret. But when we gave our neural semantics, we instead interpreted
  the <with|font-shape|italic|duals> <math|<value|diaKnow>>,
  <math|<value|diaKnownby>>, and <math|<value|diaTyp>>. Since we need to
  relate the two, I'll write the explicit neighborhood semantics for the
  duals here:

  <\equation*>
    <tabular|<tformat|<cwith|1|3|2|2|cell-lsep|1em>|<cwith|1|3|2|2|cell-rsep|1em>|<cwith|2|2|2|2|cell-lsep|1em>|<cwith|2|2|2|2|cell-rsep|1em>|<cwith|2|2|1|3|cell-tborder|0ln>|<cwith|3|3|1|3|cell-tborder|0ln>|<cwith|2|2|1|3|cell-bborder|0ln>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<table|<row|<cell|<value|Model>,w\<Vdash\><value|diaKnow>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
    \<mid\><value|Model>,u<neg|\<Vdash\>>\<varphi\>|}><neg|\<in\>>f<around*|(|w|)>>>|<row|<cell|<value|Model>,w\<Vdash\><value|diaKnownby>\<varphi\>>|<cell|iff>|<cell|\<exists\>u\<in\>W<text|
    such that >w\<in\>\<cap\>f<around*|(|u|)><text| and
    ><value|Model>,u<neg|\<Vdash\>>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|diaTyp>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
    \<mid\><value|Model>,u<neg|\<Vdash\>>\<varphi\>|}><neg|\<in\>>g<around*|(|w|)>>>>>>
  </equation*>

  <\definition>
    <with|font-series|bold|(Truth in a model)>
    <math|<value|Model>\<models\>\<varphi\>> iff
    <math|<value|Model>,w\<Vdash\>\<varphi\>> for all <math|w\<in\>W>.
  </definition>

  <section|From Nets to Classical Models and Back>

  <subsection|Simulating Neighborhood Models with Nets>

  <\definition>
    Given a BFNN <math|<Net>>, its <key|simulation frame>
    <math|<with|font|Euler|F><rsup|\<bullet\>>=<around|\<langle\>|W,f,g|\<rangle\>>>
    is given by:

    <\itemize>
      <item><math|W=N>

      <item><math|f<around|(|w|)>=<around*|{|S\<subseteq\>W
      \<mid\>w<neg|\<in\>><value|Reach><around*|(|S<rsup|\<complement\>>|)>|}>>

      <item><math|g<around|(|w|)>=><math|<around*|{|S\<subseteq\>W
      \<mid\>w<neg|\<in\>><value|Prop><around*|(|S<rsup|\<complement\>>|)>|}>>
    </itemize>

    Moreover, the <key|simulation model> <math|<Model><rsup|\<bullet\>>=<around|\<langle\>|W,f,g,V|\<rangle\>>>
    based on <math|<with|font|Euler|F><rsup|\<bullet\>>> has:

    <\itemize>
      <item><math|V<rsub|<value|Model><rsup|\<bullet\>>><around|(|p|)>=V<rsub|<value|Net>><around*|(|p|)>>;\ 

      <item><math|V<rsub|<value|Model><rsup|\<bullet\>>><around|(|i|)>=V<rsub|<value|Net>><around*|(|i|)>>
    </itemize>
  </definition>

  <\theorem>
    <label|thm-net-to-frame>Let <math|<Net>> be a BFNN, and let
    <math|<value|Model><rsup|\<bullet\>>> be the simulation model based on
    <math|<with|font|Euler|F><rsup|\<bullet\>>>. Then for all
    <math|w\<in\>W>,

    <\equation*>
      <value|Model><rsup|\<bullet\>>,w\<Vdash\>\<varphi\>*<infix-iff><value|Net>,w\<Vdash\>\<varphi\>
    </equation*>
  </theorem>

  <\corollary>
    <math|<Model><rsup|\<bullet\>>\<models\>\<varphi\>> iff
    <math|<Net>\<models\>\<varphi\>>.
  </corollary>

  <\theorem>
    <label|simulation-is-preferential><math|<with|font|Euler|F><rsup|\<bullet\>>>
    is a preferential multi-frame.
  </theorem>

  <subsection|Simulating Nets with Neighborhood Models>

  <\definition>
    Suppose we have net <math|<Net>> and node <math|n\<in\>N> with incoming
    nodes <math|m<rsub|1>,\<ldots\>,m<rsub|k>,<around|(|m<rsub|i>,n|)>\<in\>E>.
    Let <math|<hash>:<value|powerset><around|(|<around*|{|m<rsub|1>,\<ldots\>,m<rsub|k>|}>|)>\<times\><with|font|Bbb|\<bbb-N\>><rsup|k>\<to\><with|font|Bbb|\<bbb-N\>>>
    be defined by

    <\equation*>
      <hash><around|(|S,<wide|w|\<vect\>>|)>=<big|prod><rsub|m<rsub|i>\<in\>S>w<rsub|i>
    </equation*>
  </definition>

  <\proposition>
    <label|hash-well-defined><math|<hash><around|(|S,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,n|)>|)>:<value|powerset><around|(|<around*|{|m<rsub|1>,\<ldots\>,m<rsub|k>|}>|)>\<to\><Primes><rsub|k>>,
    where

    <\equation*>
      <Primes><rsub|k>=<around*|{|n\<in\><with|font|Bbb|N >\<mid\>n is the
      product of some subset of primes <around*|{|p<rsub|1>,\<ldots\>,p<rsub|k>|}>|}>
    </equation*>

    is bijective (and so has a well-defined inverse <math|<hash><rsup|-1>>).
  </proposition>

  <\definition>
    Let <math|<value|Model>> be a model based on preferential multi-frame
    <math|<with|font|Euler|F>=<around|\<langle\>|W,f,g|\<rangle\>>>. Its
    <key|simulation net> <math|<Net><rsup|\<bullet\>>=<around|\<langle\>|N,E,W,A,O,V|\<rangle\>>>
    is the BFNN given by:

    <\itemize>
      <item><math|N=W>

      <item><math|<around*|(|u,v|)>\<in\>E> iff
      <math|u\<in\>\<cap\>f<around*|(|v|)>>
    </itemize>

    Now let <math|m<rsub|1>,\<ldots\>,m<rsub|k>> list those nodes such that
    <math|<around*|(|m<rsub|i>,n|)>\<in\>E>.

    <\itemize>
      <item><math|W<around|(|m<rsub|i>,n|)>=p<rsub|i>>, the <math|i>th prime
      number.

      <item><math|A<rsup|<around|(|n|)>><around|(|<wide|x|\<vect\>>,<wide|w|\<vect\>>|)>=<hash><around|(|<around*|{|m<rsub|i>\<mid\><around*|(|m<rsub|i>,n|)>\<in\>E<infix-and>x<rsub|i>=1|}>,<wide|w|\<vect\>>|)>>

      <item><math|O<rsup|<around|(|w|)>><around|(|x|)>=1> iff
      <math|<around*|(|<hash><rsup|-1><around|(|x|)><around|[|0|]>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>>

      <item><math|V<rsub|<value|Net><rsup|\<bullet\>>><around*|(|p|)>=V<rsub|<value|Model>><around*|(|p|)>>
    </itemize>
  </definition>

  <\claim>
    <label|simulation-is-a-BFNN><math|<value|Net><rsup|\<bullet\>>> is a
    BFNN.
  </claim>

  <\lemma>
    <label|lemma-Reach-and-R*><math|<Reach><rsub|<Net><rsup|\<bullet\>>><around|(|S|)>=<around*|{|v\<mid\>S<rsup|\<complement\>><neg|\<in\>>f<around*|(|v|)>|}>>
  </lemma>

  <\lemma>
    <label|lemma-Prop-and-H*><math|<Prop><rsub|<Net><rsup|\<bullet\>>><around|(|S|)>=<around*|{|v\<mid\>S<rsup|\<complement\>>
    <neg|\<in\>>g<around*|(|v|)>|}>>
  </lemma>

  <\theorem>
    <label|frame-to-net>Let <math|<value|Model>> be a model based on a
    preferential multi-frame <math|<with|font|Euler|F>>, and let
    <math|<Net><rsup|\<bullet\>>> be the corresponding simulation net. We
    have, for all <math|w\<in\>W>,

    <\equation*>
      <value|Model>,w\<Vdash\>\<varphi\>*<infix-iff><value|Net><rsup|\<bullet\>>,w\<Vdash\>\<varphi\>
    </equation*>
  </theorem>

  <\corollary>
    <value|Model><math|\<models\>\<varphi\>> iff
    <math|<Net><rsup|\<bullet\>>\<models\>\<varphi\>>.
  </corollary>

  <section|Model-Building and Completeness>

  Axioms:

  <\description>
    <item*|(K)><math|<value|Know><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|<value|Know>\<varphi\>\<rightarrow\><value|Know>\<psi\>|)>>

    <item*|(K<math|\<leftarrow\>>)><math|<value|Knownby><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|<value|Knownby>\<varphi\>\<rightarrow\><value|Knownby>\<psi\>|)>>

    <item*|(Back)><math|\<varphi\>\<rightarrow\><value|Know><value|diaKnownby>\<varphi\>>

    <item*|(Forth)><math|\<varphi\>\<rightarrow\><value|Knownby><value|diaKnow>\<varphi\>>

    \V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V

    \;

    <item*|(T)><math|<value|Know>\<varphi\>\<rightarrow\>\<varphi\>>

    <item*|(4)><math|<value|Know>\<varphi\>\<rightarrow\><value|Know><value|Know>\<varphi\>>

    <item*|(Grz)><math|<value|Know><around*|(|<value|Know><around*|(|\<varphi\>\<rightarrow\><value|Know>\<varphi\>|)>\<rightarrow\>\<varphi\>|)>\<rightarrow\>\<varphi\>>

    \;

    <item*|(Incl)><math|<value|Know>\<varphi\>\<rightarrow\><value|Typ>\<varphi\>>

    <item*|(Skel)><math|i\<wedge\><value|Typ><around*|(|<value|diaKnownby>i\<rightarrow\>\<varphi\>|)>\<rightarrow\><value|Typ>\<varphi\>>
  </description>

  \;

  The first group of axioms say that <math|<value|Know>> characterizes a
  monotonic, reflexive, transitive, acyclic graph. The second group are
  axioms relating <math|<value|Know>> and <math|<value|Knownby>> \V these are
  from the minimal Tense Logic in temporal logic (<math|<value|Know>> is
  \Plooking into the future\Q, <math|<value|Knownby>> is \Plooking into the
  past\Q). See the <hlink|SEoP page|https://plato.stanford.edu/entries/logic-temporal/>
  for more details.

  The third group characterize <math|<value|Typ>> in terms of how it
  interacts with <math|<value|Know>> and <math|<value|Knownby>>.

  \;

  \;

  <\proposition>
    Let <math|<value|Model><rsup|min>> be the minimal canonical model based
    on frames <math|<with|font|cal|F>=\<langle\>W,f\<rangle\>,<with|font|cal|G>=\<langle\>W,g\<rangle\>>.
    Then <math|<with|font|cal|F>> is a reflexive, transitive, acyclic, proper
    filter, <math|<with|font|cal|G>> contains <math|<with|font|cal|F>>, and
    <math|<with|font|cal|F>> guides <math|<with|font|cal|G>>.
  </proposition>

  <\proof>
    <todo|>
  </proof>

  <\lemma>
    Our logic is complete w.r.t. preferential multi-frames. <todo|State
    precisely!>
  </lemma>

  <\theorem>
    Our logic is complete w.r.t BFNNs. <todo|State precisely!>
  </theorem>

  <section|Fuzzy Neural Network Semantics>

  <todo|>

  <section|Related Work and Future Directions>

  <todo|include somewhere: Discussion relating iterated Hebbian learning to
  preference upgrade operators>\ 

  <todo|in the intro we were forced to abbreviate, but give fuller discussion
  of the results and implications of semantic encodings here.> <todo|In
  particular, explain this paper is a follow-up to our previous paper \PThe
  Logic of Hebbian Learning\Q \V what that paper left open, and what is still
  left open (we don't actually deal with single-step update here!)>

  <\bibliography|bib|tm-plain|Modal-Completeness/neurosymbolic>
    \;
  </bibliography>

  <appendix|Proofs for <math|<value|Reach>> and <math|<value|Prop>>>

  <todo|In this section, we prove facts stated in Section <reference|?> of
  the paper.>

  <\proof>
    <with|font-series|bold|(of Proposition <reference|thm:prop-props>)> We
    prove each in turn:

    <\description>
      <item*|(Inclusion)>If <math|n\<in\>S>, then
      <math|n\<in\><Prop><around|(|S|)>> by the base case of <math|<Prop>>.

      <item*|(Idempotence)>The (<math|\<subseteq\>>) direction is just
      Inclusion. As for (<math|\<supseteq\>>), let
      <math|n\<in\><Prop><around|(|<Prop><around|(|S|)>|)>>, and proceed by
      induction on <math|<Prop><around|(|<Prop><around|(|S|)>|)>>.

      <\description>
        <item*|Base Step><math|n\<in\><Prop><around|(|S|)>>, and so we are
        done.

        <item*|Inductive Step>For those <math|m<rsub|1>,\<ldots\>,m<rsub|k>>
        such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

        <\equation*>
          O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<Prop><around|(|<Prop><around|(|S|)>|)>><around|(|m<rsub|i>|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,n|)>|)>|)>=1
        </equation*>

        By inductive hypothesis, <math|<smash|<bigchi>><rsub|<Prop><around|(|<Prop><around|(|S|)>|)>><around|(|m<rsub|i>|)>=<smash|<bigchi>><rsub|<Prop><around|(|S|)>><around|(|m<rsub|i>|)>>.
        By definition, <math|n\<in\><Prop><around|(|S|)>>.
      </description>

      <item*|(Cumulative)>For the (<math|\<subseteq\>>) direction, let
      <math|n\<in\><Prop><around|(|S<rsub|1>|)>>. We proceed by induction on
      <math|<Prop><around|(|S<rsub|1>|)>>.

      <\description>
        <item*|Base Step>Suppose <math|n\<in\>S<rsub|1>>. Well,
        <math|S<rsub|1>\<subseteq\>S<rsub|2>\<subseteq\><Prop><around|(|S<rsub|2>|)>>,
        so <math|n\<in\><Prop><around|(|S<rsub|2>|)>>.

        <item*|Inductive Step>For those <math|m<rsub|1>,\<ldots\>,m<rsub|k>>
        such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

        <\equation*>
          O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<Prop><around|(|S<rsub|1>|)>><around|(|m<rsub|i>|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,n|)>|)>|)>=1
        </equation*>

        By inductive hypothesis, <math|<smash|<bigchi>><rsub|<Prop><around|(|S<rsub|1>|)>><around|(|m<rsub|i>|)>=<smash|<bigchi>><rsub|<Prop><around|(|S<rsub|2>|)>><around|(|m<rsub|i>|)>>.
        By definition, <math|n\<in\><Prop><around|(|S<rsub|2>|)>>.
      </description>

      Now consider the (<math|\<supseteq\>>) direction. The Inductive Step
      holds similarly (just swap <math|S<rsub|1>> and <math|S<rsub|2>>). As
      for the Base Step, if <math|n\<in\>S<rsub|2>> then since
      <math|S<rsub|2>\<subseteq\><Prop><around|(|S<rsub|1>|)>>,
      <math|n\<in\>S<rsub|1>>.

      <item*|(Loop)>Let <math|n\<geq\>0> and suppose the hypothesis. Our goal
      is to show that for each <math|i>, <math|<Prop><around|(|S<rsub|i>|)>\<subseteq\><Prop><around|(|S<rsub|i-1>|)>>,
      and additionally <math|<Prop><around|(|S<rsub|0>|)>\<subseteq\><Prop><around|(|S<rsub|n>|)>>.
      This will show that all <math|<Prop><around|(|S<rsub|i>|)>> contain
      each other, and so are equal. Let <math|i\<in\><around*|{|0,\<ldots\>,n|}>>
      (if <math|i=0> then <math|i-1> refers to <math|n>), and let
      <math|e\<in\><Prop><around|(|S<rsub|i>|)>>. We proceed by induction on
      <math|<Prop><around|(|S<rsub|i>|)>>.

      <\description>
        <item*|Base Step><math|e\<in\>S<rsub|i>>, and since
        <math|S<rsub|i>\<subseteq\><Prop><around|(|S<rsub|i-1>|)>> by
        assumption, <math|e\<in\><Prop><around|(|S<rsub|i-1>|)>>.

        <item*|Inductive Step>For those <math|m<rsub|1>,\<ldots\>,m<rsub|k>>
        such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

        <\equation*>
          O<rsup|<around|(|e|)>><around|(|A<rsup|<around|(|e|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<Prop><around|(|S<rsub|i>|)>><around|(|m<rsub|i>|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,e|)>|)>|)>=1
        </equation*>

        By inductive hypothesis, <math|<smash|<bigchi>><rsub|<Prop><around|(|S<rsub|i>|)>><around|(|m<rsub|j>|)>=<smash|<bigchi>><rsub|<Prop><around|(|S<rsub|i-1>|)>><around|(|m<rsub|j>|)>>.
        By definition, <math|n\<in\><Prop><around|(|S<rsub|i-1>|)>>.
      </description>
    </description>
  </proof>

  <\proof>
    <with|font-series|bold|(of Proposition <reference|thm:reach-props>)> We
    check each in turn:

    <\description>
      <item*|(Inclusion)>Similar to the proof of Inclusion for
      <math|<value|Prop>>.

      <item*|(Idempotence)>Similar to the proof of Idempotence for
      <math|<Prop>>.

      <item*|(Monotonicity)>Let <math|n\<in\><Reach><around|(|S<rsub|1>|)>>.
      We proceed by induction on <math|<Reach><around|(|S<rsub|1>|)>>.

      <\description>
        <item*|Base Step><math|n\<in\>S<rsub|1>>. So
        <math|n\<in\>S<rsub|2>\<subseteq\><Reach><around|(|S<rsub|2>|)>>.

        <item*|Inductive Step>There is an
        <math|m\<in\><Reach><around|(|S<rsub|1>|)>> such that
        <math|<around|(|m,n|)>\<in\>E>. By inductive hypothesis,
        <math|m\<in\><Reach><around|(|S<rsub|2>|)>>. And so by definition,
        <math|n\<in\><Reach><around|(|S<rsub|2>|)>>.
      </description>

      <item*|(Containment)>Let <math|n\<in\><Prop><around|(|S|)>>. We proceed
      by induction on <math|<Prop><around|(|S|)>>.

      <item*|base step><math|n\<in\>S>. So
      <math|n\<in\><Reach><around|(|S|)>>.

      <item*|inductive step>For those <math|m<rsub|1>,\<ldots\>,m<rsub|k>>
      such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

      <\equation*>
        O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<Prop><around|(|S|)>><around|(|m<rsub|i>|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,n|)>|)>|)>=1
      </equation*>

      Note that one of these <math|m<rsub|i>> must be in
      <math|<Prop><around|(|S|)>>, i.e. <math|<smash|<bigchi>><rsub|<Prop><around|(|S|)>><around|(|m<rsub|i>|)>=1>,
      since otherwise

      <\equation*>
        O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<Prop><around|(|S|)>><around|(|m<rsub|i>|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,n|)>|)>|)>=O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<wide|0|\<vect\>>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,n|)>|)>|)>=0
      </equation*>

      For this <math|m<rsub|i>>, our inductive hypothesis gives us
      <math|<smash|<bigchi>><rsub|<Reach><around|(|S|)>><around|(|m<rsub|i>|)>=1>.
      So <math|m<rsub|i>\<in\><Reach><around|(|S|)>>, and
      <math|<around|(|m<rsub|i>,n|)>\<in\>E>, so by definition
      <math|n\<in\><Reach><around|(|S|)>>.
    </description>
  </proof>

  <\proof>
    <with|font-series|bold|(of Proposition <reference|prop-reach-inverse>)>
    <math|<around*|(|\<rightarrow\>|)>> Suppose
    <math|u\<in\><value|Reach><rsup|-1><around*|(|n|)>>, i.e. for all
    <math|X> such that <math|n<neg|\<in\>><value|Reach><around*|(|X|)>>,
    <math|u\<in\>X<rsup|\<complement\>>>. Consider in particular

    <\equation*>
      X=<around*|{|m\<mid\>there is an E<math-up|->path from m to
      n|}><rsup|\<complement\>>
    </equation*>

    Notice that <math|n<neg|\<in\>><value|Reach><around*|(|X|)>>. And so
    <math|u\<in\>X<rsup|\<complement\>>>, i.e. there
    <with|font-shape|italic|is> an <math|E>-path from <math|u> to <math|n>.

    <math|<around*|(|\<leftarrow\>|)>> Suppose there is an <math|E>-path from
    <math|u> to <math|n>, and let <math|X> be such that
    <math|n<neg|\<in\>><value|Reach><around*|(|X|)>>. By definition of
    <math|<value|Reach>>, there is no <math|m\<in\>X> with an <math|E>-path
    from <math|m> to <math|n>. So in particular, <math|u<neg|\<in\>>X>, i.e.
    <math|u\<in\>X<rsup|\<complement\>>>. So
    <math|u\<in\><big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>=<value|Reach><rsup|-1><around*|(|n|)>>.
  </proof>

  <\proof>
    <with|font-series|bold|(of Proposition <reference|prop-reach-acyclic>)>
    Suppose <math|n<rsub|1>\<in\><value|Reach><rsup|-1><around*|(|n<rsub|2>|)>,\<ldots\>,n<rsub|k-1>\<in\><value|Reach><rsup|-1><around*|(|n<rsub|k>|)>,n<rsub|k>\<in\><value|Reach><rsup|-1><around*|(|n<rsub|1>|)>>.
    By Proposition <reference|prop-reach-inverse>, there is an <math|E>-path
    from each <math|n<rsub|i>> to <math|n<rsub|i+1>>, and an <math|E>-path
    from <math|n<rsub|k>> to <math|n<rsub|1>>. But since <math|E> is acyclic,
    each <math|n<rsub|i>=n<rsub|j>>.
  </proof>

  <\proof>
    <with|font-series|bold|(of Proposition <reference|minimal-cause>)> Let
    <math|n\<in\><value|Prop><around*|(|S|)>>. We proceed by induction on
    <math|<value|Prop><around*|(|S|)>>.

    <\description>
      <item*|Base Step><math|n\<in\>S>. Our plan is to show
      <math|n\<in\><big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>=<value|Reach><rsup|-1><around*|(|n|)>>
      (so <math|n\<in\>S\<cap\><value|Reach><rsup|-1><around*|(|n|)>>), which
      will give us our conclusion by the base case of <math|<value|Prop>>.
      Let <math|X> be any set where <math|n<neg|\<in\>><value|Reach><around*|(|X|)>>.
      So <math|n<neg|\<in\>>X> (since <math|X\<subseteq\><value|Reach><around*|(|X|)>>),
      i.e. <math|n\<in\>X<rsup|\<complement\>>>. But this is what we needed
      to show.

      <item*|Inductive Step>Suppose <math|n\<in\><value|Prop><around*|(|S|)>>
      via its constructor, i.e. for those
      <math|m<rsub|1>,\<ldots\>,m<rsub|k>> such that
      <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

      <\equation*>
        O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<Prop><around|(|S|)>><around|(|m<rsub|i>|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,n|)>|)>|)>=1
      </equation*>

      By inductive hypothesis,

      <\equation*>
        <smash|<bigchi>><rsub|<Prop><around|(|S|)>><around|(|m<rsub|i>|)>=<smash|<bigchi>><rsub|<Prop><around*|(|S\<cap\><around*|(|<big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>|)>|)>><around|(|m<rsub|i>|)>
      </equation*>

      So we can substitute the latter for the former. By definition,
      <math|n\<in\><value|Prop><around*|(|S\<cap\><around*|(|<big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>|)>|)>>.
    </description>
  </proof>

  <appendix|Proofs for Neighborhood Models>

  <todo|UPDATE WHEN FINISHED IN MAIN NOTES>

  <appendix|Proofs for Simulation Theorems>

  <\proof>
    <with|font-series|bold|(of Theorem <reference|thm-net-to-frame>)> By
    induction on <math|\<varphi\>>. The nominal, propositional,
    <math|\<neg\>\<varphi\>>, and <math|\<varphi\>\<wedge\>\<psi\>> cases are
    trivial.

    <\description>
      <with|font-series|bold|<math|<math|<diaKnow>\<varphi\>>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model><rsup|\<bullet\>>,w\<Vdash\><diaKnow>\<varphi\>>|<cell|<text|iff
        >>|<cell|<around*|{|u \<mid\><value|Model><rsup|\<bullet\>>,w<neg|\<Vdash\>>\<varphi\>|}>\<nin\>f<around|(|w|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<text|iff >>|<cell|<around*|{|u
        \<mid\>u <neg|\<in\>><semantics|\<varphi\>>|}>\<nin\>f<around|(|w|)>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<semantics|\<varphi\>><rsup|\<complement\>>\<nin\>f<around|(|w|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Reach><around|(|<semantics|<around|(|\<varphi\><rsup|\<complement\>>|)><rsup|\<complement\>>>|)>>|<cell|<text|(by
        choice of >f)>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Reach><around|(|<semantics|\<varphi\>>|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaKnow>\<varphi\>>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|<value|Net>,w\<Vdash\><value|diaKnow>\<varphi\>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>

      <with|font-series|bold|<math|<value|diaKnownby>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model><rsup|\<bullet\>>,w\<Vdash\><value|diaKnownby>\<varphi\>>|<cell|<text|iff
        >>|<cell|\<exists\>u<text| such that
        >w\<in\>\<cap\>f<around*|(|u|)><text| and
        ><value|Model><rsup|\<bullet\>>,u<neg|\<Vdash\>>\<varphi\>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|\<exists\>u<text| such
        that >w\<in\>\<cap\>f<around*|(|u|)><text| and
        >u<neg|\<in\>><semantics|\<varphi\>>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|\<exists\>u\<in\><semantics|\<varphi\>><rsup|\<complement\>><text|
        such that >w\<in\><big|cap><rsub|X\<in\>f<around*|(|u|)>>X>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|\<exists\>u\<in\><semantics|\<varphi\>><rsup|\<complement\>><text|
        such that >w\<in\><big|cap><rsub|u<neg|\<in\>><value|Reach><around*|(|X<rsup|\<complement\>>|)>>X>|<cell|<text|(by
        choice of <math|f>)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|\<exists\>u\<in\><semantics|\<varphi\>><rsup|\<complement\>><text|
        such that >w\<in\><value|Reach><rsup|-1><around*|(|u|)>>|<cell|<text|>>>|<row|<cell|>|<cell|iff>|<cell|<value|Net>,w\<Vdash\><value|diaKnownby>\<varphi\>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>

      <with|font-series|bold|<math|<diaTyp>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model><rsup|\<bullet\>>,w\<Vdash\><diaTyp>\<varphi\>>|<cell|<text|iff
        >>|<cell|<around*|{|u \<mid\><value|Model><rsup|\<bullet\>>,w<neg|\<Vdash\>>\<varphi\>|}>\<nin\>g<around|(|w|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<text|iff >>|<cell|<around*|{|u
        \<mid\>u <neg|\<in\>><semantics|\<varphi\>>|}>\<nin\>g<around|(|w|)>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<semantics|\<varphi\>><rsup|\<complement\>>\<nin\>g<around|(|w|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Prop><around|(|<semantics|<around|(|\<varphi\><rsup|\<complement\>>|)><rsup|\<complement\>>>|)>>|<cell|<text|(by
        choice of >g)>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Prop><around|(|<semantics|\<varphi\>>|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaTyp>\<varphi\>>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|<value|Net>,w\<Vdash\><value|diaTyp>\<varphi\>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>
    </description>
  </proof>

  <\proof>
    <with|font-series|bold|(of Theorem <reference|simulation-is-preferential>)>
    We show each in turn:

    <\itemize>
      <item><with|font-series|bold|<math|<with|font-series|bold|>W> is
      finite:> This holds because our BFNN is finite.

      <item><with|font-series|bold|<math|<with|font|cal|F>> is closed under
      finite intersection><with|font-series|bold|:> Suppose
      <math|X<rsub|1>,\<ldots\>,X<rsub|n>\<in\>f<around|(|w|)>>. By
      definition of <math|f>, <math|w\<nin\><big|cup><rsub|i><Reach><around|(|X<rsub|i><rsup|\<complement\>>|)>>
      for all <math|i>. Since <math|<Reach>> is monotonic, <todo|Make this a
      lemma!> we have <math|<big|cup><rsub|i><Reach><around|(|X<rsub|i><rsup|\<complement\>>|)>=<Reach><around|(|<big|cup><rsub|i>X<rsub|i><rsup|\<complement\>>|)>=<Reach><around|(|<around|(|<big|cap><rsub|i>X<rsub|i>|)><rsup|\<complement\>>|)>>.
      So <math|w<neg|\<in\>><Reach><around|(|<around|(|<big|cap><rsub|i>X<rsub|i>|)><rsup|\<complement\>>|)>>.
      But this means that <math|<big|cap><rsub|i>X<rsub|i>\<in\>f<around|(|w|)>>.

      <item><with|font-series|bold|<math|<with|font|cal|F>> is closed under
      superset><with|font-series|bold|:> Suppose
      <math|X\<in\>f<around|(|w|)>,X\<subseteq\>Y>. By definition of
      <math|f>, <math|w\<nin\><Reach><around|(|X<rsup|\<complement\>>|)>>.
      Note that <math|Y<rsup|\<complement\>>\<subseteq\>X<rsup|\<complement\>>>,
      and so by monotonicity of <math|<Reach>> we have
      <math|w\<nin\><Reach><around|(|Y<rsup|\<complement\>>|)>>. But this
      means <math|Y\<in\>f<around|(|w|)>>, so we are done.

      <item><with|font-series|bold|<math|<with|font|cal|F>> contains the
      unit><with|font-series|bold|:> Note that for all <math|w\<in\>W>,
      <math|w\<nin\><Reach><around|(|\<emptyset\>|)>=<Reach><around|(|W<rsup|\<complement\>>|)>>.
      So <math|W\<in\>f<around|(|w|)>>.

      <item><with|font-series|bold|<math|<with|font|cal|F>> is
      reflexive><with|font-series|bold|:> We want to show that
      <math|w\<in\>\<cap\>f<around|(|w|)>>. Well, suppose
      <math|X\<in\>f<around|(|w|)>>, i.e.
      <math|w\<nin\><Reach><around|(|X<rsup|\<complement\>>|)>> (by
      definition of <math|f>). Since for all <math|S>,
      <math|S\<subseteq\><Reach><around|(|S|)>>, we have
      <math|w\<nin\>X<rsup|\<complement\>>>. But this means <math|w\<in\>X>,
      and we are done.

      <item><with|font-series|bold|<math|<with|font|cal|F>> is
      transitive><with|font-series|bold|:> Suppose
      <math|X\<in\>f<around|(|w|)>>, i.e.
      <math|w\<nin\><Reach><around|(|X<rsup|\<complement\>>|)>>. Well,

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Reach><around|(|X<rsup|\<complement\>>|)>>|<cell|=>|<cell|<Reach><around|(|<Reach><around|(|X<rsup|\<complement\>>|)>|)>>|<cell|<with|font-family|rm|<text|(by
        Idempotence of >><Reach>)>>|<row|<cell|>|<cell|=>|<cell|<Reach><around|(|<around*|{|u\<mid\>u\<in\><value|Reach><around*|(|X<rsup|\<complement\>>|)>|}>|)>>|<cell|>>|<row|<cell|>|<cell|=>|<cell|<Reach><around|(|<around*|{|u\<mid\>u<neg|\<in\>><value|Reach><around*|(|X<rsup|\<complement\>>|)>|}><rsup|\<complement\>>|)>>|<cell|>>|<row|<cell|>|<cell|=>|<cell|<Reach><around|(|<around*|{|u\<mid\>X\<in\>f<around*|(|u|)>|}><rsup|\<complement\>>|)>>|<cell|<with|font-family|rm|<text|(by
        definition of >>f)>>>>>
      </equation*>

      So by definition of <math|f>, <math|<around*|{|u\<mid\>X\<in\>f<around*|(|u|)>|}>\<in\>f<around|(|w|)>>.

      <item><with|font-series|bold|<with|font|cal|F> is
      acyclic><with|font-series|bold|:> Suppose
      <math|u<rsub|1>,\<ldots\>,u<rsub|n>\<in\>W>, with
      <math|u<rsub|1>\<in\>\<cap\>f<around*|(|u<rsub|2>|)>,\<ldots\>,u<rsub|n-1>\<in\>\<cap\>f<around*|(|u<rsub|n>|)>,u<rsub|n>\<in\>\<cap\>f<around*|(|u<rsub|1>|)>>.
      That is, each <math|u<rsub|i>\<in\><big|cap><rsub|X\<in\>f<around*|(|u<rsub|i+1>|)>>X>.
      By choice of <math|f>, each <math|u<rsub|i>\<in\><big|cap><rsub|u<rsub|i+1><neg|\<in\>><value|Reach><around*|(|X<rsup|\<complement\>>|)>>X>.
      Substituting <math|X<rsup|\<complement\>>> for <math|X> we get
      <math|u<rsub|i>\<in\><big|cap><rsub|u<rsub|i+1><neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>.
      In other words, <math|u<rsub|1>\<in\><value|Reach><rsup|-1><around*|(|u<rsub|2>|)>,\<ldots\>,u<rsub|n-1>\<in\><value|Reach><rsup|-1><around*|(|n|)>,u<rsub|n>\<in\><value|Reach><rsup|-1><around*|(|u<rsub|1>|)>>.
      By Proposition <reference|prop-reach-acyclic>, each
      <math|u<rsub|i>=u<rsub|j>>.

      <item><with|font-series|bold|<with|font|cal|G> is
      reflexive><with|font-series|bold|:> Follows similarly, since
      <math|X\<subseteq\><Prop><around|(|X|)>> by (Inclusion).

      <item><with|font-series|bold|<with|font|cal|G> is
      transitive><with|font-series|bold|:> Follows similarly, since
      <math|<Prop><around|(|X|)>=<Prop><around|(|<Prop><around|(|X|)>|)>> by
      (Idempotence).

      <item><with|font-series|bold|<math|<with|font|cal|F>> guides
      <math|<with|font|cal|G>>:> Suppose <math|X\<cup\><around*|(|\<cap\>f<around*|(|w|)>|)><rsup|\<complement\>>\<in\>g<around*|(|w|)>>.
      By choice of <math|g>, <math|w<neg|\<in\>><value|Prop><around*|(|<around*|[|X\<cup\><around*|(|\<cap\>f<around*|(|w|)>|)><rsup|\<complement\>>|]><rsup|\<complement\>>|)>>.
      Distributing the outer complement, we have
      <math|w<neg|\<in\>><value|Prop><around*|(|X<rsup|\<complement\>>\<cap\><around*|(|\<cap\>f<around*|(|w|)>|)>|)>>,
      i.e. <math|w<neg|\<in\>><value|Prop><around*|(|X<rsup|\<complement\>>\<cap\><around*|(|<big|cap><rsub|Y\<in\>f<around*|(|w|)>>Y|)>|)>>.
      By choice of <math|f>, <math|w<neg|\<in\>><value|Prop><around*|(|X<rsup|\<complement\>>\<cap\><around*|(|<big|cap><rsub|w<neg|\<in\>><value|Reach><around*|(|Y<rsup|\<complement\>>|)>>Y|)>|)>>.
      Substituting <math|Y<rsup|\<complement\>>> for <math|Y>, we get
      <math|w<neg|\<in\>><value|Prop><around*|(|X<rsup|\<complement\>>\<cap\><around*|(|<big|cap><rsub|w<neg|\<in\>><value|Reach><around*|(|Y|)>>Y<rsup|\<complement\>>|)>|)>>.
      By definition of <math|<value|Reach><rsup|-1>>,
      <math|w<neg|\<in\>><value|Prop><around*|(|X<rsup|\<complement\>>\<cap\><value|Reach><rsup|-1><around*|(|w|)>|)>>.
      From (Minimal Cause), we conclude that
      <math|w<neg|\<in\>><value|Prop><around*|(|X<rsup|\<complement\>>|)>>,
      i.e. <math|X\<in\>g<around*|(|w|)>>.
    </itemize>
  </proof>

  <\proof>
    <with|font-series|bold|(of Proposition <reference|hash-well-defined>)> To
    show that <math|<hash>> is injective, suppose
    <math|<hash><around|(|S<rsub|1>|)>=<hash><around|(|S<rsub|2>|)>>. So
    <math|<big|prod><rsub|m<rsub|i>\<in\>S<rsub|1>>p<rsub|i>=<big|prod><rsub|m<rsub|i>\<in\>S<rsub|2>>p<rsub|i>>,
    and since products of primes are unique,
    <math|<around*|{|p<rsub|i>\<mid\>m<rsub|i>\<in\>S<rsub|1>|}>=<around*|{|p<rsub|i>\<mid\>m<rsub|i>\<in\>S<rsub|2>|}>>.
    And so <math|S<rsub|1>=S<rsub|2>>.

    To show that <math|<hash>> is surjective, let
    <math|x\<in\><Primes><rsub|k>>. Now let
    <math|S=<around*|{|m<rsub|i>\<mid\>p<rsub|i><text| divides >x|}>>. Then
    <math|<hash><around|(|S|)>=<big|prod><rsub|m<rsub|i>\<in\>S>p<rsub|i>=<big|prod><rsub|(p<rsub|i><text|
    divides > x<with|font-size|0.84|<text|>)>>p<rsub|i>=x>.
  </proof>

  <\proof>
    <with|font-series|bold|(of Claim <reference|simulation-is-a-BFNN>)>Clearly
    <math|<value|Net><rsup|\<bullet\>>> is a binary ANN. We check the rest of
    the conditions:

    <\description>
      <item*|<math|<value|Net><rsup|\<bullet\>>> is feed-forward>Suppose for
      contradiction that <math|E> contains a cycle, i.e. distinct
      <math|u<rsub|1>,\<ldots\>,u<rsub|n>\<in\>N> such that
      <math|u<rsub|1><op|E>u<rsub|2>,\<ldots\>,u<rsub|n-1><op|E>u<rsub|n>,u<rsub|n><op|E>u<rsub|1>>.
      Then we have <math|u<rsub|1>\<in\>\<cap\>f<around*|(|u<rsub|2>|)>,\<ldots\>,u<rsub|n-1>\<in\>\<cap\>f<around*|(|u<rsub|n-1>|)>,u<rsub|n>\<in\>\<cap\>f<around*|(|u<rsub|1>|)>>,
      which contradicts the fact that <math|<with|font|cal|F>> is acyclic.

      <item*|<math|O<rsup|<around|(|n|)>>\<circ\>A<rsup|<around|(|n|)>>> is
      zero at zero>Suppose for contradiction that
      <math|O<rsup|<around|(|v|)>><around|(|A<rsup|<around|(|v|)>><around|(|<wide|0|\<vect\>>,<wide|w|\<vect\>>|)>|)>=1>.
      Then <math|<around*|(|<hash><rsup|-1><around|(|<hash><around|(|\<emptyset\>|)>|)>|)><rsup|\<complement\>>=\<emptyset\><rsup|\<complement\>>=W<neg|\<in\>>g<around*|(|v|)>>,
      which contradicts the fact that <math|<with|font|cal|F>> contains the
      unit.

      <item*|<math|O<rsup|<around|(|n|)>>\<circ\>A<rsup|<around|(|n|)>>> is
      monotonically increasing>Let <math|<wide|w|\<vect\>><rsub|1>,<wide|w|\<vect\>><rsub|2>>
      be such that <math|O> is well-defined (i.e. are vectors of prime
      numbers), and suppose <math|<wide|w|\<vect\>><rsub|1>\<less\><wide|w|\<vect\>><rsub|2>>.
      If <math|O<rsup|<around|(|v|)>><around|(|A<rsup|<around|(|v|)>><around|(|<wide|x|\<vect\>>,<wide|w<rsub|1>|\<vect\>>|)>|)>=1>,
      then <math|<around*|(|<hash><rsup|-1><around|(|<hash><around|(|<wide|x|\<vect\>>,<wide|w<rsub|1>|\<vect\>>|)>|)><around|[|0|]>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>.
      But this just means <math|<around*|{|m<rsub|i>\<mid\>x<rsub|i>=1|}><rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>.
      And so <math|<around*|(|<hash><rsup|-1><around|(|<hash><around|(|<wide|x|\<vect\>>,<wide|w<rsub|2>|\<vect\>>|)>|)><around|[|0|]>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>.
      But then <math|O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<wide|x|\<vect\>>,<wide|w<rsub|2>|\<vect\>>|)>|)>=1>.

      The main point here is just that <math|<wide|w<rsub|1>|\<vect\>>> and
      <math|<wide|w<rsub|2>|\<vect\>>> are just indexing the set in question,
      and their actual values don't affect the final output (we don't need
      the <math|<wide|w|\<vect\>><rsub|1>\<less\><wide|w|\<vect\>><rsub|2>>
      hypothesis!). The real work happens within <math|g<around*|(|v|)>>.
    </description>
  </proof>

  <\proof>
    <with|font-series|bold|(of Lemma <reference|lemma-Reach-and-R*>)> For the
    <math|(\<supseteq\>)> direction, let <math|v> be such that
    <math|S<rsup|\<complement\>><neg|\<in\>>f<around*|(|v|)>>. By Proposition
    <reference|prop-filter-consistency> and the fact that
    <math|<with|font|cal|F>> is a proper filter,
    <math|S\<in\>f<around*|(|v|)>>. By definition of core,
    <math|\<cap\>f<around*|(|v|)>\<subseteq\>S>. <math|<with|font|cal|F>> is
    reflexive, which means in particular that
    <math|v\<in\>\<cap\>f<around*|(|v|)>\<subseteq\>S>. By the base case of
    <math|<value|Reach>>, we have <math|v\<in\><value|Reach><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>>.

    Now for the <math|(\<subseteq\>)> direction. Suppose
    <math|v\<in\><Reach><around|(|S|)>>, and proceed by induction on
    <math|<Reach>>.

    <\description>
      <item*|Base step><math|v\<in\>S>. Suppose for contradiction that
      <math|S<rsup|\<complement\>>\<in\>f<around*|(|v|)>>. By definition of
      core, <math|\<cap\>f<around*|(|v|)>\<subseteq\>S<rsup|\<complement\>>>.
      But since <math|<with|font|cal|F>> is reflexive,
      <math|v\<in\>\<cap\>f<around*|(|v|)>>. So
      <math|v\<in\>S<rsup|\<complement\>>>, which contradicts
      <math|v\<in\>S>.

      <item*|Inductive step>There is <math|u\<in\><value|Reach><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>>
      such that <math|<around|(|u,v|)>\<in\>E> (and so
      <math|u\<in\>\<cap\>f<around*|(|v|)>>). By inductive hypothesis,
      <math|S<rsup|\<complement\>><neg|\<in\>>f<around*|(|u|)>>. Now suppose
      for contradiction that <math|S<rsup|\<complement\>>\<in\>f<around*|(|v|)>>.
      Since <math|<with|font|cal|F>> is transitive,
      <math|<around*|{|t\<mid\>S<rsup|\<complement\>>\<in\>f<around*|(|t|)>|}>\<in\>f<around*|(|v|)>>.
      By definition of core, <math|\<cap\>f<around*|(|v|)>\<subseteq\><around*|{|t\<mid\>S<rsup|\<complement\>>\<in\>f<around*|(|t|)>|}>>.
      Since <math|u\<in\>\<cap\>f<around*|(|v|)>>,
      <math|S<rsup|\<complement\>>\<in\>f<around*|(|u|)>>. But this
      contradicts <math|S<rsup|\<complement\>><neg|\<in\>>f<around*|(|u|)>>!
    </description>
  </proof>

  <\proof>
    <with|font-series|bold|(of Lemma <reference|lemma-Prop-and-H*>)> For the
    <math|(\<supseteq\>)> direction, suppose
    <math|S<rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>. Since
    <math|<with|font|cal|F>> guides <math|<with|font|cal|G>>, we have
    <math|S<rsup|\<complement\>>\<cup\><around*|(|\<cap\>f<around*|(|v|)>|)><rsup|\<complement\>><rsup|><neg|\<in\>>g<around*|(|v|)>>,
    i.e. <math|<around*|[|S\<cap\><around*|(|\<cap\>f<around*|(|v|)>|)>|]><rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>.
    But <math|S\<cap\><around*|(|\<cap\>f<around*|(|v|)>|)>=<around*|{|u\<mid\>u\<in\>S<infix-and><around*|(|u<rsub|>,v|)>\<in\>E|}>=<hash><rsup|-1><around|(|<value|hash><around*|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<value|Prop><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>><around|(|u|)>,<smash|<wide|W|\<vect\>>><around|(|u,v|)>|)>|)><around|[|0|]>>,
    and so

    <\equation*>
      <around*|(|<hash><rsup|-1><around|(|<hash><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<value|Prop><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>><around|(|u|)>,<smash|<wide|W|\<vect\>>><around|(|u,v|)>|)>|)><around|[|0|]>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>
    </equation*>

    i.e. <math|O<rsup|<around|(|v|)>><around|(|A<rsup|<around|(|v|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<Prop><rsub|<value|Net><rsup|\<bullet\>>><around|(|S|)>><around|(|u|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|u,v|)>|)>|)>=1>,
    and we conclude that <math|v\<in\><value|Prop><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>>.

    As for the <math|(\<subseteq\>)> direction, suppose
    <math|v\<in\><Prop><rsub|<value|Net><rsup|\<bullet\>>><around|(|S|)>>,
    and proceed by induction on <math|<Prop>>.

    <\description>
      <item*|Base step><math|v\<in\>S>. Suppose for contradiction that
      <math|S<rsup|\<complement\>>\<in\>g<around*|(|v|)>>. Since
      <math|<with|font|cal|G>> is reflexive,
      <math|v\<in\>\<cap\>g<around*|(|v|)>>. By definition of core, we have
      <math|\<cap\>g<around*|(|v|)>\<subseteq\>S<rsup|\<complement\>>>. But
      then <math|v\<in\>\<cap\>g<around*|(|v|)>\<subseteq\>S<rsup|\<complement\>>>,
      i.e. <math|v\<in\>S<rsup|\<complement\>>>, which contradicts
      <math|v\<in\>S>.

      <item*|Inductive step>Let <math|u<rsub|1>,\<ldots\>,u<rsub|k>> list
      those nodes such that <math|<around|(|u<rsub|i>,v|)>\<in\>E>. We have

      <\equation*>
        O<rsup|<around|(|v|)>><around|(|A<rsup|<around|(|v|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<Prop><rsub|<value|Net><rsup|\<bullet\>>><around|(|S|)>><around|(|u<rsub|i>|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|u<rsub|i>,v|)>|)>|)>=1
      </equation*>

      Let <math|T=<around*|{|u<rsub|i>\<mid\>S<rsup|\<complement\>>
      <neg|\<in\>>g<around*|(|u<rsub|i>|)>|}>>. By our inductive hypothesis,

      <\equation*>
        O<rsup|<around|(|v|)>><around|(|A<rsup|<around|(|v|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|T><around|(|u<rsub|i>|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|u<rsub|i>,v|)>|)>|)>=1
      </equation*>

      By choice of <math|O> and <math|A>,

      <\equation*>
        <around*|(|<hash><rsup|-1><around|(|<hash><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|T><around|(|u<rsub|i>|)>,<smash|<wide|W|\<vect\>>><around|(|u<rsub|i>,v|)>|)>|)><around|[|0|]>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>
      </equation*>

      \ i.e. <math|T<rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>. We
      would like to show that <math|S<rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>.
      Suppose for contradiction that <math|S<rsup|\<complement\>>\<in\>g<around*|(|v|)>>.
      Recall that <math|T=><math|<around*|{|u<rsub|i>\<mid\>S<rsup|\<complement\>>
      <neg|\<in\>>g<around*|(|u<rsub|i>|)>|}>>, i.e.
      <math|T<rsup|\<complement\>>=<around*|{|u<rsub|i>\<mid\>S<rsup|\<complement\>>\<in\>g<around*|(|u<rsub|i>|)>|}>>.
      Since <math|S<rsup|\<complement\>>\<in\>g<around*|(|v|)>> and
      <math|<with|font|cal|G>> is transitive,
      <math|T<rsup|\<complement\>>\<in\>g<around*|(|v|)>>, which contradicts
      <math|T<rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>.
    </description>
  </proof>

  <\proof>
    <with|font-series|bold|(of Theorem <reference|frame-to-net>)> By
    induction on <math|\<varphi\>>. Again, the nominal, propositional,
    <math|\<neg\>\<varphi\>>, and <math|\<varphi\>\<wedge\>\<psi\>> cases are
    trivial.

    <\description>
      <with|font-series|bold|><with|font-series|bold|<math|<diaKnow>\<varphi\>>
      case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model>,w\<Vdash\><diaKnow>\<varphi\>>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\><value|Model>,w<neg|\<Vdash\>>\<varphi\>|}>\<nin\>f<around|(|w|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\>u<neg|\<in\>><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>>|}><rsub|>\<nin\>f<around|(|w|)>>|<cell|<text|(Inductive
        Hypothesis)>>>|<row|<cell|>|<cell|iff>|<cell|<semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>><rsup|\<complement\>>\<nin\>g<around|(|w|)>>|<cell|>>|<row|<cell|>|<cell|iff>|<cell|w\<in\><Reach><rsub|<Net><rsup|\<bullet\>>><around|(|<semantics|\<varphi\>>|)>>|<cell|<text|(by
        Lemma <reference|lemma-Reach-and-R*>)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaKnow>\<varphi\>><rsub|<Net><rsup|\<bullet\>>>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|<value|Net><rsup|\<bullet\>>,w\<Vdash\><value|diaKnow>\<varphi\>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>

      <with|font-series|bold|<math|<value|diaKnownby>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model>,w\<Vdash\><value|diaKnownby>\<varphi\>>|<cell|<text|iff
        >>|<cell|\<exists\>u<text| such that
        >w\<in\>\<cap\>f<around*|(|u|)><text| and
        ><value|Model>,u<neg|\<Vdash\>>\<varphi\>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|\<exists\>u<text| such
        that >w\<in\>\<cap\>f<around*|(|u|)><text| and
        >u<neg|\<in\>><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|iff>|<cell|\<exists\>u\<in\><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>><rsup|\<complement\>><text|
        such that >w\<in\><big|cap><rsub|X\<in\>f<around*|(|u|)>>X>|<cell|>>|<row|<cell|>|<cell|>|<cell|\<exists\>u\<in\><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>><rsup|\<complement\>><text|
        such that >w\<in\><big|cap><rsub|u<neg|\<in\>><value|Reach><rsub|<value|Net><rsup|\<bullet\>>><around*|(|X<rsup|\<complement\>>|)>>X>|<cell|<text|(by
        Lemma <reference|lemma-Reach-and-R*>)>>>|<row|<cell|>|<cell|>|<cell|\<exists\>u\<in\><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>><rsup|\<complement\>><text|
        such that >w\<in\><value|Reach><rsub|<value|Net><rsup|\<bullet\>>><rsup|-1><around*|(|u|)>>|<cell|>>|<row|<cell|>|<cell|iff>|<cell|<value|Net><rsup|\<bullet\>>,w\<Vdash\><value|diaKnownby>\<varphi\>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>

      <with|font-series|bold|<math|<diaTyp>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model>,w\<Vdash\><diaTyp>\<varphi\>>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\><value|Model>,u<neg|\<Vdash\>>\<varphi\>|}>\<nin\>g<around|(|w|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\>u<neg|\<in\>><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>>|}>\<nin\>g<around|(|w|)>>|<cell|<text|(Inductive
        Hypothesis)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>><rsup|\<complement\>>\<nin\>g<around|(|w|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Prop><rsub|<Net><rsup|\<bullet\>>><around|(|<semantics|\<varphi\>>|)>>|<cell|<text|(by
        Lemma <reference|lemma-Prop-and-H*>)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaTyp>\<varphi\>><rsub|<Net><rsup|\<bullet\>>>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|<value|Net><rsup|\<bullet\>>,w\<Vdash\><value|diaTyp>\<varphi\>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>
    </description>
  </proof>

  <appendix|Building Canonical Models>

  <todo|THIS IS NEW MATERIAL THAT I NEED TO WRITE UP!>

  <appendix|Proofs for Hebbian Learning>
</body>

<\initial>
  <\collection>
    <associate|font|math=termes,times>
    <associate|font-family|rm>
    <associate|math-font|math-termes>
    <associate|page-crop-marks|>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-screen-margin|false>
    <associate|page-type|letter>
    <associate|page-width|auto>
    <associate|par-columns|2>
    <associate|par-columns-sep|2fn>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|5|4>>
    <associate|auto-11|<tuple|6|4>>
    <associate|auto-12|<tuple|7|4>>
    <associate|auto-13|<tuple|7|4>>
    <associate|auto-14|<tuple|A|5>>
    <associate|auto-15|<tuple|B|5>>
    <associate|auto-16|<tuple|C|7>>
    <associate|auto-17|<tuple|D|7>>
    <associate|auto-18|<tuple|E|?>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|3.1|1>>
    <associate|auto-5|<tuple|3.2|2>>
    <associate|auto-6|<tuple|3.3|3>>
    <associate|auto-7|<tuple|4|3>>
    <associate|auto-8|<tuple|4.1|3>>
    <associate|auto-9|<tuple|4.2|3>>
    <associate|frame-to-net|<tuple|4.11|3>>
    <associate|hash-well-defined|<tuple|4.6|3>>
    <associate|lemma-Prop-and-H*|<tuple|4.10|3>>
    <associate|lemma-Reach-and-R*|<tuple|4.9|3>>
    <associate|minimal-cause|<tuple|3.13|2>>
    <associate|prop-filter-consistency|<tuple|3.23|3>>
    <associate|prop-reach-acyclic|<tuple|3.12|2>>
    <associate|prop-reach-inverse|<tuple|3.11|2>>
    <associate|simulation-is-a-BFNN|<tuple|4.8|3>>
    <associate|simulation-is-preferential|<tuple|4.4|3>>
    <associate|thm-net-to-frame|<tuple|4.2|3>>
    <associate|thm:prop-props|<tuple|3.7|2>>
    <associate|thm:reach-props|<tuple|3.9|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      ?
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Groundwork>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Syntax
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Neural Network Semantics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>(Classical) Neighborhood
      Semantics <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>From
      Nets to Classical Models and Back> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Simulating Neighborhood
      Models with Nets <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Simulating Nets with
      Neighborhood Models <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Model-Building
      and Completeness> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Learning:
      The Cherry on Top> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Related
      Work and Future Directions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      A<space|2spc>Proofs for <with|mode|<quote|math>|<with|font-family|<quote|ss>|Reach>>
      and <with|mode|<quote|math>|<with|font-family|<quote|ss>|Prop>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      B<space|2spc>Proofs for Neighborhood Models>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      C<space|2spc>Proofs for Simulation Theorems>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      D<space|2spc>Building Canonical Models>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      E<space|2spc>Proofs for Hebbian Learning>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>