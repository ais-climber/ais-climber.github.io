<TeXmacs|2.1.1>

<style|<tuple|tmconf|compact-list|termes-font|number-long-article>>

<\body>
  <\hide-preamble>
    <assign|table-of-contents-text|<macro|<inactive|<localize|<myblue|Navigation>>>>>

    <assign|definition-text|<macro|<localize|Definition>>>

    <assign|render-theorem|<\macro|which|body>
      <render-enunciation|<theorem-name|<arg|which><theorem-sep>>|<arg|body>>
    </macro>>

    <assign|section|<macro|title|<assign|section-numbered|<compound|section-display-numbers>><assign|section-prefix|<macro|<compound|the-section>.>><compound|next-section><compound|section-clean><compound|section-header|<arg|title>><compound|section-toc|<arg|title>><if|<value|section-numbered>|<section-numbered-title|<myblue|<arg|title>>>|<compound|section-unnumbered-title|<myblue|<arg|title>>>>>>

    \;

    <assign|subsection|<macro|title|<assign|subsection-numbered|<compound|subsection-display-numbers>><assign|subsection-prefix|<macro|<compound|the-subsection>.>><compound|next-subsection><compound|subsection-clean><compound|subsection-header|<arg|title>><compound|subsection-toc|<arg|title>><if|<value|subsection-numbered>|<compound|subsection-numbered-title|<myblue|<arg|title>>>|<compound|subsection-unnumbered-title|<myblue|<arg|title>>>>>>

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

    <assign|Know|<with|font-series|bold|<text|Know>>>

    <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

    <assign|Typ|<with|font-series|bold|<text|Typ>>>

    <assign|diaTyp|\<langle\><value|Typ>\<rangle\>>

    <assign|Reach|<with|font-family|ss|GraphReach>>

    <assign|Prop|<with|font-family|ss|Propagate>>

    <assign|Hebb|<with|font-family|ss|Update_hebb>>

    <assign|Stable|<with|font-family|ss|Update_stable>>

    <assign|Backprop|<with|font-family|ss|Update_backprop>>

    <assign|Inc|<with|font-family|ss|Inc>>

    <assign|AllNets|<with|font-family|ss|Net>>

    <assign|AllModels|<with|font-family|ss|Model>>

    <assign|doc-title|<macro|x|<\surround|<vspace*|0.5fn>|<vspace|0.5fn>>
      <doc-title-block|<font-magnify|1.682|<doc-title-name|<myblue|<arg|x>>>>>
    </surround>>>

    <assign|item*|<macro|name|<render-item|<arg|name>><with|index-enabled|false|<set-binding|<arg|name>>>>>

    <assign|bibliography-text|<macro|<localize|<myblue|References>>>>

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
  </hide-preamble>

  <doc-data|<doc-title|Some Results and Notes>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|1<space|2spc>The
    Base System: Reasoning about Static Nets>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|1.1<space|2spc>Feedforward Nets
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|1.2<space|2spc>Syntax and Semantics
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|1.3<space|2spc>Some Sound Laws
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|1.4<space|2spc>Aside: Fuzzy Activation Values
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|1.5<space|2spc>Aside: Our System vs Hannes' System
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|2<space|2spc>The
    Learning Policies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-7><vspace|0.5fn>

    <with|par-left|1tab|2.1<space|2spc>Hebbian Learning (Unstable)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|2.2<space|2spc>Hebbian Learning (Stable)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|2.3<space|2spc>Backpropagation
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|3<space|2spc>Reasoning
    about Learning> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-11><vspace|0.5fn>

    <with|par-left|1tab|3.1<space|2spc>Dynamic Operators for Learning
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|3.2<space|2spc>Characterizing
    <with|mode|math|<around*|[|\<varphi\>|]><rsub|hebb>> and
    <with|mode|math|<around*|[|\<varphi\>|]><rsub|stable>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <with|par-left|1tab|3.3<space|2spc>Characterizing
    <with|mode|math|<around*|[|\<varphi\>|]><rsub|backprop>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>>

    <with|par-left|1tab|3.4<space|2spc>Interactions Between Them
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|Appendix
    A<space|2spc>Proofs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-16><vspace|0.5fn>
  </table-of-contents>

  <section|The Base System: Reasoning about Static Nets>

  <subsection|Feedforward Nets>

  <\definition>
    An <key|ANN> (Artificial Neural Network) is a pointed directed graph
    <math|<value|Net>=\<langle\>N,E,W,A,O\<rangle\>>, where

    <\itemize>
      <item><math|N> is a finite nonempty set (the set of <key|neurons>)

      <item><math|E\<subseteq\> N\<times\> N> (the set of <key|excitatory
      neurons>)

      <item><math|W:E\<rightarrow\><with|font|Bbb|R>> (the <key|weight> of a
      given connection)

      <item><math|A> is a function which maps each <math|n\<in\> N> to
      <math|A<rsup|<around*|(|n|)>>:<with|font|Bbb|R<rsup|k>\<times\>
      R<rsup|k>\<rightarrow\>R<rsup|>>> (the <key|activation function> for
      <math|n>, where <math|k> is the indegree of <math|n>)

      <item><math|O> is a function which maps each <math|n\<in\> N> to
      <math|O<rsup|<around*|(|n|)>>:<with|font|Bbb|R>\<rightarrow\><around*|{|0,1|}>>
      (the <key|output function> for <math|n>)
    </itemize>
  </definition>

  <\definition>
    \ A <key|BFNN> (Binary Feedforward Neural Network) is an ANN
    <math|<value|Net>=\<langle\>N,E,W,A,O\<rangle\>> that is

    <\itemize>
      <item><key|Feed-forward>, i.e. <math|E> does not contain cycles of
      edges with all nonzero weights

      <item><key|Binary>, i.e. the output of each neuron is in {0, 1}

      <item><math|O<rsup|<around*|(|n|)>>\<circ\> A<rsup|<around*|(|n|)>>> is
      <key|zero at zero> in the first parameter, i.e.

      <\equation*>
        O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|0|\<vect\>>,<wide|w|\<vect\>>|)>|)>=0
      </equation*>

      <item><math|O<rsup|<around*|(|n|)>>\<circ\> A<rsup|<around*|(|n|)>>> is
      <key|strictly monotonically increasing> in the second parameter, i.e.
      for all <math|<wide|x|\<vect\>>,<wide|w<rsub|>|\<vect\>><rsub|1>,<wide|w|\<vect\>><rsub|2>\<in\>
      <with|font|Bbb|R><rsup|k>>, if <math|<wide|w<rsub|>|\<vect\>><rsub|1>\<less\><wide|w|\<vect\>><rsub|2>>
      then <math|O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|x|\<vect\>>,<wide|w|\<vect\>><rsub|1>|)>|)>\<less\>O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|x|\<vect\>>,<wide|w|\<vect\>><rsub|2>|)>|)>>.
      We will more often refer to the equivalent condition:

      <\equation*>
        <wide|w<rsub|>|\<vect\>><rsub|1>\<leqslant\><wide|w|\<vect\>><rsub|2><infix-iff>O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|x|\<vect\>>,<wide|w|\<vect\>><rsub|1>|)>|)>\<leqslant\>O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|x|\<vect\>>,<wide|w|\<vect\>><rsub|2>|)>|)>
      </equation*>
    </itemize>
  </definition>

  <\definition>
    Given a BFNN <value|Net>, <math|<value|Set>=<value|powerset><around*|(|N|)>=<around*|{|S\<mid\>S\<subseteq\>N|}>>
  </definition>

  <\definition>
    For <math|S\<in\><value|Set>>, let <math|<value|bigchi><rsub|S>:N\<rightarrow\><around*|{|0,1|}>>
    be given by <math|<value|bigchi><rsub|S>=1> iff <math|n\<in\> S>
  </definition>

  We write <math|W<rsub|ij>> to mean <math|W<around*|(|i,j|)>> for
  <math|<around*|(|i,j|)>\<in\>E>. When <math|m<rsub|i>> is drawn from a
  sequence <math|m<rsub|1>,\<ldots\>,m<rsub|k>>, we write
  <math|<wide|W|\<vect\>><around*|(|m<rsub|i>,n|)>> as shorthand for the
  sequence <math|<wide|W|\<vect\>><around*|(|m<rsub|1>,n|)>,\<ldots\>,<wide|W|\<vect\>><around*|(|m<rsub|k>,n|)>>.
  Similarly, we write <math|<wide|<value|bigchi>|\<vect\>><around*|(|m<rsub|i>|)>>
  as shorthand for the sequence <math|<wide|<value|bigchi>|\<vect\>><around*|(|m<rsub|1>|)>,\<ldots\><wide|<value|bigchi>|\<vect\>><around*|(|m<rsub|k>|)>>.

  Neurons in a state <math|S\<in\><value|Set>> can subsequently activate new
  neurons, which activate yet more neurons, until eventually the state of
  <math|<value|Net>> stabilizes. We call this final state of affairs
  <math|<value|Prop><around*|(|S|)>>, i.e. the <key|propagation> of <math|S>.
  We would also like to consider the set of all neurons that
  <with|font-shape|italic|could possibly> be in a propagation. We call this
  set <math|<value|Reach><around*|(|S|)>>, the set of all nodes
  graph-reachable from <math|S>.

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
    <dueto|Leitgeb><label|thm:prop-props>Let <math|<Net>\<in\><AllNets>>. For
    all <math|S,S<rsub|1>,S<rsub|2>\<in\><Set>>, <math|<value|Prop>>
    satisfies

    <\description>
      <item*|Inclusion><math|S\<subseteq\><Prop><around|(|S|)>>

      <item*|Idempotence><math|<Prop><around|(|S|)>=<Prop><around|(|<Prop><around|(|S|)>|)>>

      <item*|Cumulative>If <math|S<rsub|1>\<subseteq\>S<rsub|2>\<subseteq\><Prop><around|(|S<rsub|1>|)>>
      then <math|<Prop><around|(|S<rsub|1>|)>\<subseteq\><Prop><around|(|S<rsub|2>|)>>

      <item*|Loop>If <math|S<rsub|1>\<subseteq\><Prop><around|(|S<rsub|0>|)>,\<ldots\>,S<rsub|n>\<subseteq\><Prop><around|(|S<rsub|n-1>|)>>
      and <math|S<rsub|0>\<subseteq\><Prop><around|(|S<rsub|n>|)>>,

      then <math|<Prop><around|(|S<rsub|i>|)>=<Prop><around|(|S<rsub|j>|)>>
      for all <math|i,j\<in\><around*|{|0,\<ldots\>,n|}>>
    </description>
  </proposition>

  <\proposition>
    <label|thm:reach-props>Let <math|<Net>\<in\><AllNets>>. For all
    <math|S,S<rsub|1>,S<rsub|2>\<in\><Set>>, <math|n,m\<in\>N>,
    <math|<value|Reach>> satisfies

    <\description>
      <item*|Inclusion><math|S\<subseteq\><Reach><around|(|S|)>>

      <item*|Idempotence><math|<Reach><around|(|S|)>=<Reach><around|(|<Reach><around|(|S|)>|)>>

      <item*|Monotonicity>If <math|S<rsub|1>\<subseteq\>S<rsub|2>> then
      <math|<Reach><around|(|S<rsub|1>|)>\<subseteq\><Reach><around|(|S<rsub|2>|)>>
    </description>
  </proposition>

  Intuitively, <math|<Reach>> is the fully monotonic extension of
  <math|<Prop>>. <math|<Prop>> is not monotonic because the weights of the
  net may be negative.

  <subsection|Syntax and Semantics>

  <\definition>
    Formulas of our language <math|<value|Lang>> are given by\ 

    <\equation*>
      \<varphi\>\<colons\>=p\<mid\>\<neg\>\<varphi\>\<mid\>\<varphi\>\<wedge\>\<varphi\>\<mid\><value|Know><around*|(|\<varphi\>|)>\<mid\><value|Typ><around*|(|\<varphi\>|)>
    </equation*>

    where <math|p> is any propositional variable. Material implication
    <math|\<varphi\>\<rightarrow\>\<psi\>> is defined as
    <math|\<neg\>\<varphi\>\<vee\>\<psi\>>. We define
    <math|\<bot\>,\<vee\>,\<leftrightarrow\>,\<Leftrightarrow\>,>and the dual
    operators <math|<value|diaKnow>,<value|diaTyp>> in the usual way.
  </definition>

  <\definition>
    A <key|neural network model> is <math|\<langle\><value|Net>,V\<rangle\>>,
    where <math|<value|Net>> is a BFNN and <math|V
    :<with|font-family|ss|Prop>\<rightarrow\><value|Set><rsub|>> is an
    assignment of propositions to sets of neurons.
  </definition>

  <\definition>
    Let <math|\<langle\><value|Net>,V\<rangle\>> be a neural network model.
    The interpretation <math|<semantics|\<cdot\>>
    :<value|Lang>\<rightarrow\><value|Set><rsub|>> of formulas is defined
    recursively as follows:

    <\equation*>
      <tabular|<tformat|<twith|table-lborder|0em>|<twith|table-rborder|0em>|<twith|table-bborder|0em>|<twith|table-tborder|0em>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<table|<row|<cell|<semantics|p>>|<cell|=>|<cell|V<around*|(|p|)>>>|<row|<cell|<semantics|\<neg\>\<varphi\>>>|<cell|=>|<semantics|\<varphi\>><rsup|\<complement\>>>|<row|<cell|<semantics|\<varphi\>\<wedge\>\<psi\>>>|<cell|=>|<cell|<semantics|\<varphi\>>\<cap\><semantics|\<psi\>>>>|<row|<cell|<semantics|<value|diaKnow><around*|(|\<varphi\>|)>>>|<cell|=>|<cell|<value|Reach><around*|(|<semantics|\<varphi\>>|)>>>|<row|<cell|<semantics|<value|diaTyp><around*|(|\<varphi\>|)>>>|<cell|=>|<cell|<value|Prop><around*|(|<semantics|\<varphi\>>|)>>>>>>
    </equation*>

    The modal operators <math|<value|Know>> and <math|<value|Typ>> are
    defined as the duals of <math|<value|diaKnow>> and <math|<value|diaTyp>>,
    i.e. <math|\<neg\><value|diaKnow>\<neg\>> and
    <math|\<neg\><value|diaTyp>\<neg\>>, respectively.
  </definition>

  <\definition>
    <math|<value|Net>,V\<models\>\<varphi\>> iff
    <math|<semantics|\<varphi\>><rsub|<value|Net>>=N>
  </definition>

  <subsection|Some Sound Laws>

  The proof system for our logic is as follows. We have
  <math|<proves>\<varphi\>> iff either <math|\<varphi\>> is an axiom, or
  <math|\<varphi\>> follows from previously obtained formulas by one of the
  inference rules (axioms and rules shown below). If
  <math|\<Gamma\>\<subseteq\><value|Lang>> is a set of formulas, we consider
  <math|\<Gamma\><proves>\<varphi\>> to hold whenever there exist finitely
  many <math|\<psi\><rsub|1>,\<ldots\>,\<psi\><rsub|k>\<in\>\<Gamma\>> such
  that <math|<proves>\<psi\><rsub|1>\<wedge\>\<ldots\>\<wedge\>\<psi\><rsub|k>\<to\>\<varphi\>>.

  \;

  <with|font-series|bold|Reasoning about Static, Binary, Feedforward ANNs:>

  <\description>
    <item*|(PC)>All propositional tautologies

    <item*|(MP)><math|<frac|\<varphi\><space|1em>\<varphi\>\<rightarrow\>\<psi\>|\<psi\>>>

    <item*|(Nec<math|<rsub|<value|Know>>>)><math|<frac|\<varphi\>|<value|Know><around*|(|\<varphi\>|)>>>

    <item*|(Nec<math|<rsub|<value|Typ>>>)><math|<frac|\<varphi\>|<value|Typ>\<varphi\>>>

    \;

    <item*|(K)><math|<value|Know><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|<value|Know><around*|(|\<varphi\>|)>\<rightarrow\><value|Know><around*|(|\<psi\>|)>|)>>

    <item*|(T)><math|<value|Know><around*|(|\<varphi\>|)>\<rightarrow\>\<varphi\>>

    <item*|(4)><math|<value|Know><around*|(|\<varphi\>|)>\<rightarrow\><value|Know><around*|(|<value|Know><around*|(|\<varphi\>|)>|)>>

    \;

    <item*|(Loop)><math|><math|><math|<around*|(|<value|Typ><around*|(|\<varphi\><rsub|1>|)>\<rightarrow\>\<varphi\><rsub|2>|)>\<wedge\>\<ldots\>\<wedge\><around*|(|<value|Typ><around*|(|\<varphi\><rsub|n>|)>\<rightarrow\>\<varphi\><rsub|1>|)>\<rightarrow\><around*|(|<value|Typ><around*|(|\<varphi\><rsub|i>|)>\<leftrightarrow\><value|Typ><around*|(|\<varphi\><rsub|j>|)>|)>>
    for each <math|i,j>

    <item*|(T)><math|<value|Typ><around*|(|\<varphi\>|)>\<rightarrow\>\<varphi\>>

    <item*|(4)><math|<value|Typ><around*|(|\<varphi\>|)>\<rightarrow\><value|Typ><around*|(|<value|Typ><around*|(|\<varphi\>|)>|)>>

    <item*|(I)><math|<value|Know><around*|(|\<varphi\>|)>\<rightarrow\><value|Typ><around*|(|\<varphi\>|)>>
  </description>

  <\theorem>
    <label|thm:soundness>The rules and properties above are sound, i.e. hold
    for all <math|<value|Net>\<in\><value|AllNets>>.
  </theorem>

  <\question*>
    What axioms are we missing? What is the complete set of laws for
    reasoning about static, binary, feedforward ANNs?
  </question*>

  <section|The Learning Policies>

  (Write the <with|font-series|bold|functions> down, but don't write the
  properties yet!)

  <subsection|Hebbian Learning (Unstable)>

  <subsection|Hebbian Learning (Stable)>

  <subsection|Backpropagation>

  <section|Reasoning about Learning>

  <subsection|Dynamic Operators for Learning>

  (talk about <math|<around*|[||]><rsub|op>> vs
  <math|<around*|[||]><rsub|op><rsup|\<ast\>>>, and the properties that
  relate the two; Net containment; Monotonicity in <math|<value|Net>> for
  <math|<around*|[|\<varphi\>|]><rsub|hebb>,<around*|[|\<varphi\>|]><rsub|stable>>
  and <math|<around*|[|\<varphi\>|]><rsub|backprop>>)

  <subsection|Characterizing <math|<around*|[|\<varphi\>|]><rsub|hebb>> and
  <math|<around*|[|\<varphi\>|]><rsub|stable>>>

  <subsection|Characterizing <math|<around*|[|\<varphi\>|]><rsub|backprop>>>

  <subsection|Interactions Between Them>

  \;

  <appendix|Proofs>

  <\render-proof|Proof of Proposition <reference|thm:prop-props>>
    We prove each in turn:

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
  </render-proof>

  <\render-proof|Proof of Proposition <reference|thm:reach-props>>
    We check each in turn:

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
    </description>
  </render-proof>

  <\render-proof|Proof of Theorem <reference|thm:soundness>>
    <todo|TODO>
  </render-proof>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|math-font|math-termes>
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
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|3.1|4>>
    <associate|auto-11|<tuple|3.2|4>>
    <associate|auto-12|<tuple|3.3|4>>
    <associate|auto-13|<tuple|3.4|4>>
    <associate|auto-14|<tuple|A|4>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|3>>
    <associate|auto-4|<tuple|1.3|3>>
    <associate|auto-5|<tuple|2|4>>
    <associate|auto-6|<tuple|2.1|4>>
    <associate|auto-7|<tuple|2.2|4>>
    <associate|auto-8|<tuple|2.3|4>>
    <associate|auto-9|<tuple|3|4>>
    <associate|thm:prop-props|<tuple|1.7|2>>
    <associate|thm:reach-props|<tuple|1.8|2>>
    <associate|thm:soundness|<tuple|1.13|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|1<space|2spc>The
      Base System: Reasoning about Static Nets>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Feedforward Nets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Syntax and Semantics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Some Sound Laws
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|2<space|2spc>The
      Learning Policies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Hebbian Learning (Unstable)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Hebbian Learning (Stable)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Backpropagation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|3<space|2spc>Reasoning
      about Learning> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Dynamic Operators for
      Learning <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Characterizing
      <with|mode|<quote|math>|<around*|[|\<varphi\>|]><rsub|hebb>> and
      <with|mode|<quote|math>|<around*|[|\<varphi\>|]><rsub|stable>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Characterizing
      <with|mode|<quote|math>|<around*|[|\<varphi\>|]><rsub|backprop>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Interactions Between Them
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Appendix
      A<space|2spc>Proofs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-14><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>