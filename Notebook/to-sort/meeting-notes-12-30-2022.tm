<TeXmacs|2.1.1>

<style|<tuple|tmconf|number-long-article>>

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

    <assign|Know|<with|font-series|bold|<text|K>>>

    <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

    <assign|Typ|<with|font-series|bold|<text|T>>>

    <assign|diaTyp|\<langle\><value|Typ>\<rangle\>>

    <assign|Reach|<with|font-family|ss|Reach>>

    <assign|Prop|<with|font-family|ss|Prop>>

    <assign|Hebb|<with|font-family|ss|Update>>

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

  <doc-data|<\doc-title>
    Meeting Notes 12/30/2022
  </doc-title>>

  <\render-remark|Why bother with completeness?>
    In formal specifications (of AI agents, or otherwise), we're often
    content with just listing some sound rules or behaviors that the agent
    will always follow. And it's definitely cool to see that neural networks
    satisfy some sound logical axioms. But if we want to fundamentally bridge
    the gap between logic and neural networks, we should set our aim higher:
    Towards <with|font-shape|italic|complete> logical characterizations of
    neural networks.

    A more practical reason: Completeness gives us model-building, i.e. given
    a specification <math|\<Gamma\>>, we can <with|font-shape|italic|build> a
    neural network <math|<value|Net>> satisfying <math|\<Gamma\>>.
  </render-remark>

  <\render-remark|Why bother with this modal language?>
    Almost all of the previous work bridging logic and neural networks has
    focused on neural net models of <with|font-shape|italic|conditionals>. In
    some sense, doing this in modal language is just a re-write of this old
    work. But this previous work hasn't addressed how
    <with|font-shape|italic|learning> or <with|font-shape|italic|update> in
    neural networks can be cast in logical terms. This is not merely due to
    circumstance \V integrating conditionals with update is a long-standing
    controversial issue. So instead, we believe that it is more natural to
    work with modalities (instead of conditionals), because

    <center|<with|font-shape|italic|Modal language natively supports
    update.>>

    In other words, our modal setting sets us up to easily cast update
    operators (e.g. neural network learning) as modal operators in our logic.
  </render-remark>

  <section|Interpreted Neural Nets>

  <subsection|Basic Definitions>

  <\definition>
    \ An <key|interpreted ANN> (Artificial Neural Network) is a pointed
    directed graph <math|<value|Net>=\<langle\>N,E,W,T,A,V\<rangle\>>, where

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

      <item><math|V:propositions\<rightarrow\><value|powerset><around*|(|N|)>>
      is an assignment of propositional variables to sets of neurons (the
      <key|valuation function>)
    </itemize>
  </definition>

  <\definition>
    \ A <key|BFNN> (Binary Feedforward Neural Network) is an interpreted ANN
    <math|<value|Net>=\<langle\>N,E,W,T,A,V\<rangle\>> that is

    <\itemize>
      <item><key|Feed-forward>, i.e. <math|E> does not contain any cycles

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

  <subsection|<math|<value|Prop>> and <math|<value|Reach>>>

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
      <item*|<key|(Inclusion)>><math|S\<subseteq\><Prop><around|(|S|)>>

      <item*|<key|(Idempotence)>><math|<Prop><around|(|S|)>=<Prop><around|(|<Prop><around|(|S|)>|)>>

      <item*|<key|(Cumulative)>>If <math|S<rsub|1>\<subseteq\>S<rsub|2>\<subseteq\><Prop><around|(|S<rsub|1>|)>>
      then <math|<Prop><around|(|S<rsub|1>|)>\<subseteq\><Prop><around|(|S<rsub|2>|)>>

      <item*|<key|(Loop)>>If <math|S<rsub|1>\<subseteq\><Prop><around|(|S<rsub|0>|)>,\<ldots\>,S<rsub|n>\<subseteq\><Prop><around|(|S<rsub|n-1>|)>>
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
      <item*|<key|(Inclusion)>><math|S\<subseteq\><Reach><around|(|S|)>>

      <item*|<key|(Idempotence)>><math|<Reach><around|(|S|)>=<Reach><around|(|<Reach><around|(|S|)>|)>>

      <item*|<key|(Monotonicity)>>If <math|S<rsub|1>\<subseteq\>S<rsub|2>>
      then <math|<Reach><around|(|S<rsub|1>|)>\<subseteq\><Reach><around|(|S<rsub|2>|)>>
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
    <label|minimal-cause><key|(Minimal Cause)> For all <math|n\<in\>N>, if
    <math|n\<in\><value|Prop><around*|(|S|)>> then
    <math|n\<in\><value|Prop><around*|(|S\<cap\><value|Reach><rsup|-1><around*|(|n|)>|)>>
  </proposition>

  <subsection|Neural Network Semantics>

  <\definition>
    Formulas of our language <math|<value|Lang>> are given by\ 

    <\equation*>
      \<varphi\>\<colons\>=p\<mid\>\<neg\>\<varphi\>\<mid\>\<varphi\>\<wedge\>\<varphi\>\<mid\><value|Know>\<varphi\>\<mid\><value|Typ>\<varphi\>
    </equation*>

    where <math|p> is any propositional variable. Material implication
    <math|\<varphi\>\<rightarrow\>\<psi\>> is defined as
    <math|\<neg\>\<varphi\>\<vee\>\<psi\>>. We define
    <math|\<bot\>,\<vee\>,\<leftrightarrow\>,\<Leftrightarrow\>,>and the dual
    operators <math|<value|diaKnow>,<value|diaTyp>> in the usual way.
  </definition>

  <\definition>
    Let <math|<value|Net>\<in\><value|AllNets>>. The semantics for
    <math|<value|Lang>> are defined recursively as follows:

    <\equation*>
      <tabular|<tformat|<twith|table-lborder|0em>|<twith|table-rborder|0em>|<twith|table-bborder|0em>|<twith|table-tborder|0em>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<table|<row|<cell|<semantics|p>>|<cell|=>|<cell|V<around*|(|p|)>\<in\><value|Set>>>|<row|<cell|<semantics|\<neg\>\<varphi\>>>|<cell|=>|<semantics|\<varphi\>><rsup|\<complement\>>>|<row|<cell|<semantics|\<varphi\>\<wedge\>\<psi\>>>|<cell|=>|<cell|<semantics|\<varphi\>>\<cap\><semantics|\<psi\>>>>|<row|<cell|<semantics|<value|diaKnow>\<varphi\>>>|<cell|=>|<cell|<value|Reach><around*|(|<semantics|\<varphi\>>|)>>>|<row|<cell|<semantics|<value|diaTyp>\<varphi\>>>|<cell|=>|<cell|<value|Prop><around*|(|<semantics|\<varphi\>>|)>>>>>>
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

  <section|Neighborhood Models>

  <subsection|Basic Definitions>

  <\definition>
    A <key|neighborhood frame> is a pair <math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>>,
    where <math|W> is a non-empty set of <key|worlds> and
    <math|f:W\<to\><value|powerset><around|(|<value|powerset><around|(|W|)>|)>>
    is a <key|neighborhood function>.
  </definition>

  <\definition>
    A <key|multi-frame> is <math|<with|font|Euler|F>=<around|\<langle\>|W,f,g|\<rangle\>>>,
    where <math|f> and <math|g> are neighborhood functions.
  </definition>

  <\definition>
    Let <math|<with|font|Euler|<with|font|cal|F>>=<around|\<langle\>|W,f|\<rangle\>>>
    be a neighborhood frame, and let <math|w\<in\>W>. The set
    <math|<big|cap><rsub|X\<in\>f<around|(|w|)>>X> is called the <key|core>
    of <math|f<around|(|w|)>>. We often abbreviate this by
    <math|\<cap\>f<around|(|w|)>>.
  </definition>

  <\definition>
    Let <math|<with|font|Euler|<with|font|cal|F>>=<around|\<langle\>|W,f|\<rangle\>>,<with|font|Euler|<with|font|cal|G>>=<around|\<langle\>|W,g|\<rangle\>>>
    be neighborhood frames with <math|W> nonempty.

    <\itemize>
      <item><math|<with|font|Euler|<with|font|cal|F>>> is <key|closed under
      finite intersections> iff for all <math|w\<in\>W>, if
      <math|X<rsub|1>,\<ldots\>,X<rsub|n>\<in\>f<around|(|w|)>> then their
      intersection <math|<big|cap><rsup|k><rsub|i=1>X<rsub|i>\<in\>f<around|(|w|)>>.

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

      <item><math|<with|font|cal|F>> is a <key|loop-subfilter> iff for all
      <math|w\<in\>W>, <math|f<around|(|w|)>> contains the unit and is
      loop-cumulative.

      <item><math|<with|font|Euler|F>> is a <key|preferential multi-frame>
      iff

      <\itemize>
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

  <subsection|Neighborhood Semantics>

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
      <tabular|<tformat|<cwith|1|1|1|3|cell-tborder|1ln>|<cwith|5|5|1|3|cell-bborder|1ln>|<cwith|1|5|1|1|cell-lborder|1ln>|<cwith|1|5|3|3|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lsep|1em>|<cwith|1|-1|2|2|cell-rsep|1em>|<table|<row|<cell|<value|Model>,w\<Vdash\>p>|<cell|iff>|<cell|w\<in\>V<around*|(|p|)>>>|<row|<cell|<value|Model>,w\<Vdash\>\<neg\>\<varphi\>>|<cell|iff>|<value|Model>,w<neg|\<Vdash\>>\<varphi\>>|<row|<cell|<value|Model>,w\<Vdash\>\<varphi\>\<wedge\>\<psi\>>|<cell|iff>|<cell|<value|Model>,w\<Vdash\>\<varphi\><infix-and><value|Model>,w\<Vdash\>\<psi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|diaKnow>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
      \<mid\><value|Model>,u<neg|\<Vdash\>>\<varphi\>|}><neg|\<in\>>f<around*|(|w|)>>>|<row|<cell|<value|Model>,w\<Vdash\><value|diaTyp>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
      \<mid\><value|Model>,u<neg|\<Vdash\>>\<varphi\>|}><neg|\<in\>>g<around*|(|w|)>>>>>>
    </equation*>
  </definition>

  <\definition>
    <with|font-series|bold|(Truth in a model)>
    <math|<value|Model>\<models\>\<varphi\>> iff
    <math|<value|Model>,w\<Vdash\>\<varphi\>> for all <math|w\<in\>W>.
  </definition>

  <section|From Nets to Frames>

  <with|font-series|bold|<center|This is the easy (\Psoundness\Q)
  direction!>>

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
      <item><math|V<rsub|<value|Model><rsup|\<bullet\>>><around|(|p|)>=V<rsub|<value|Net>><around*|(|p|)>>
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

  <\note*>
    This is the first big result: Given a neural network <math|<value|Net>>,
    we can build an equivalent \Pclassical\Q model
    <math|<value|Model><rsup|\<bullet\>>>. This
    <math|<value|Model><rsup|\<bullet\>>> is in fact a preferential
    multi-frame \V each of the frame properties follows straightforwardly
    from the corresponding properties of <math|<value|Reach>> and
    <math|<value|Prop>>.
  </note*>

  <section|From Frames to Nets>

  <with|font-series|bold|<center|This is the harder (\Pcompleteness\Q)
  direction!>>

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

  <\note*>
    This is where we use the fact that <math|<with|font|cal|F>> is
    <with|font-series|bold|acyclic> and <with|font-series|bold|contains the
    unit>.
  </note*>

  <\lemma>
    <label|lemma-Reach-and-R*><math|<Reach><rsub|<Net><rsup|\<bullet\>>><around|(|S|)>=<around*|{|v\<mid\>\<exists\>u\<in\>S
    such that u\<in\>\<cap\>f<around*|(|v|)>|}>>.
  </lemma>

  <\note*>
    This is where we use the fact that <math|<with|font|cal|F>> is
    <with|font-series|bold|reflexive> and <with|font-series|bold|transitive>.
  </note*>

  <\lemma>
    <label|lemma-Prop-and-H*><math|<Prop><rsub|<Net><rsup|\<bullet\>>><around|(|S|)>=<around*|{|v\<mid\>S<rsup|\<complement\>>
    <neg|\<in\>>g<around*|(|v|)>|}>>
  </lemma>

  <\note*>
    This is the lemma that really gave me a hard time. The proof is in the
    appendix \V we should go over this one <with|font-shape|italic|very>
    carefully.

    This is where we use the fact that <math|<with|font|cal|G>> is
    <with|font-series|bold|reflexive>, <with|font-series|bold|transitive>,
    and <math|<with|font|cal|F>> <with|font-series|bold|guides>
    <math|<with|font|cal|G>>.
  </note*>

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

  <\note*>
    Finally, we have the second big result: Given a \Pclassical\Q model
    <math|<value|Model>>, we can build an equivalent feed-forward neural
    network <math|<value|Net><rsup|\<bullet\>>>. The proof of this follows
    straightforwardly from the previous two lemmas (which I had to work
    for!).

    This means that given a set of sentences <math|\<Gamma\>>, if we can
    build a model <math|<value|Model>\<models\>\<Gamma\>>, then we can build
    <math|<value|Net><rsup|\<bullet\>>\<models\>\<Gamma\>> \V i.e. we can
    build neural networks satisfying specific constraints!

    P.S. this is where we use the fact that <math|<with|font|cal|F>> is a
    <with|font-series|bold|proper filter>, i.e. closed under subset and
    finite intersection. I should probably put this in a lemma instead. I
    don't actually use the fact that <with|font|cal|F> doesn't contain the
    empty set, though<text-dots>
  </note*>

  <section|What's Left To Do>

  <\description>
    <item*|Completeness>We just need to give axioms that characterize
    \Ppreferential multi-frames.\Q The sticking point is the property:

    <center|for all <math|w\<in\>W>, if <math|X\<cup\><around*|(|\<cap\>f<around*|(|w|)>|)><rsup|\<complement\>><rsup|>\<in\>g<around*|(|w|)>>
    then <math|X\<in\>g<around*|(|w|)>>>

    <item*|<math|[hebb]<rsup|\<ast\>>> Extension>The whole point of this is
    was to make a language we could use to reduce <math|[hebb]<rsup|\<ast\>>>
    I have a reduction of <math|<around*|[|hebb|]><rsup|\<ast\>>> that I'd
    like to double-check. (i.e. characterizes what we learn in limit)

    <hrule>

    <center|RESULTS ABOVE THIS LINE WOULD MAKE A GREAT PAPER>

    \;

    <item*|Stable <math|[hebb]<rsup|\<ast\>>>>I should consider if it's
    possible to axiomatize stable Hebbian learning (i.e. can our language
    express convergence??? Important to know before backprop). I can run some
    computer simulations to see what these updates look like.

    <item*|Single-Step <math|[hebb]>>In the FLAIRS paper we used
    <math|[hebb]> instead of <math|[hebb]<rsup|\<ast\>>>. Is there a way to
    get an axiomatization of <math|[hebb]> starting from
    <math|[hebb]<rsup|\<ast\>>>? This would give us the full completeness
    result I wanted in the first place.

    <item*|Fuzzy Nets>Show that we still get soundness & completeness when we
    upgrade to fuzzy nets. We need a lemma like:

    For all <math|\<varphi\>> over this (note: non-fuzzy) language
    <math|<value|Lang>>,

    <\equation*>
      <value|Net><rsub|bin>,n\<Vdash\>\<varphi\><infix-iff><value|Net><rsub|fuzzy>,n\<Vdash\>\<varphi\>
    </equation*>

    <item*|Recurrent Nets>See what properties <math|<value|Prop>> has in a
    recurrent net, and see how the logic needs to change in response. (What
    does relaxing the 'acyclic' condition do?) I should run some computer
    simulations to see what these propagations look like.

    <hrule>

    <center|RESULTS ABOVE THIS LINE WOULD MAKE GREAT ADDITIONS TO A JOURNAL
    PAPER SYNTHESIZING ALL OF THIS>
  </description>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <appendix|Proofs of Lemmas>

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

  <\proof>
    <with|font-series|bold|(of Proposition
    <reference|prop-filter-consistency>)> <math|<around*|(|\<rightarrow\>|)>>
    Suppose for contradiction that <math|Y<rsup|\<complement\>>\<in\>f<around*|(|w|)>>
    and <math|Y\<in\>f<around*|(|w|)>>. Since <math|<with|font|cal|F>> is
    closed under intersection, <math|Y<rsup|\<complement\>>\<cap\>Y=\<emptyset\>\<in\>f<around*|(|w|)>>,
    which contradicts the fact that <math|<with|font|cal|F>> is proper.

    <math|<around*|(|\<leftarrow\>|)>> Suppose for contradiction that
    <math|Y<neg|\<in\>>f<around*|(|w|)>>, yet
    <math|Y<rsup|\<complement\>><neg|\<in\>>f<around*|(|w|)>>. Since
    <math|<with|font|cal|F>> is closed under intersection,
    <math|\<cap\>f<around*|(|w|)>\<in\>f<around*|(|w|)>>. Moreover, since
    <math|<with|font|cal|F>> is closed under superset we must have
    <math|\<cap\>f<around*|(|w|)><neg|\<subseteq\>>Y> and
    <math|\<cap\>f<around*|(|w|)><neg|\<subseteq\>>Y<rsup|\<complement\>>>.
    But this means <math|\<cap\>f<around*|(|w|)><neg|\<subseteq\>>Y\<cap\>Y<rsup|\<complement\>>=\<emptyset\>>,
    i.e. there is some <math|x\<in\>\<cap\>f<around*|(|w|)>> such that
    <math|x\<in\>\<emptyset\>>. This contradicts the definition of the empty
    set.
  </proof>

  <\proof>
    <with|font-series|bold|(of Theorem <reference|thm-net-to-frame>)> By
    induction on <math|\<varphi\>>. The propositional,
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

    \;
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
    <with|font-series|bold|(of Proposition <reference|simulation-is-a-BFNN>)>
    Clearly <math|<value|Net><rsup|\<bullet\>>> is a binary ANN. We check the
    rest of the conditions:

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
    <math|(\<supseteq\>)> direction, let <math|u\<in\>S> be such that
    <math|u\<in\>\<cap\>f<around*|(|v|)>>. By definition of <math|E>,
    <math|<around*|(|u,v|)>\<in\>E>. And since <math|u\<in\>S>,
    <math|u\<in\><value|Reach><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>>.
    By the constructor of <math|<value|Reach>>, we have
    <math|v\<in\><value|Reach><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>>.

    Now for the <math|(\<subseteq\>)> direction. Suppose
    <math|v\<in\><Reach><around|(|S|)>>, and proceed by induction on
    <math|<Reach>>.

    <\description>
      <item*|Base step><math|v\<in\>S>. Since <math|<with|font|cal|F>> is
      reflexive, <math|v\<in\>\<cap\>f<around*|(|v|)>>, and we are done.

      <item*|Inductive step>There is <math|u\<in\><value|Reach><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>>
      such that <math|<around|(|u,v|)>\<in\>E> (and so
      <math|u\<in\>\<cap\>f<around*|(|v|)>>). By inductive hypothesis, there
      is a <math|t\<in\>S> such that <math|t\<in\>f<around*|(|u|)>>. We are
      done if we can show that this <math|t\<in\>S> is also
      <math|t\<in\>\<cap\>f<around*|(|v|)>>. So let
      <math|X\<in\>f<around*|(|v|)>> \V we want to show that <math|t\<in\>X>.

      Since <math|<with|font|cal|F>> is transitive,
      <math|<around*|{|y\<mid\>X\<in\>f<around*|(|y|)>|}>\<in\>f<around*|(|v|)>>.
      But by definition of core, <math|\<cap\>f<around*|(|v|)>\<subseteq\><around*|{|y\<mid\>X\<in\>f<around*|(|y|)>|}>>.
      So, since <math|u\<in\>\<cap\>f<around*|(|v|)>>,
      <math|X\<in\>f<around*|(|u|)>>. But this means that
      <math|\<cap\>f<around*|(|u|)>\<subseteq\>X>, and since
      <math|t\<in\>f<around*|(|u|)>>, we get <math|t\<in\>X>.
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

    \;
  </proof>

  <\proof>
    <with|font-series|bold|(of Theorem <reference|frame-to-net>)> By
    induction on <math|\<varphi\>>. Again, the propositional,
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
        Hypothesis)>>>|<row|<cell|>|<cell|iff>|<cell|<semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>>\<in\>f<around*|(|w|)>>|<cell|<text|(by
        Proposition <reference|prop-filter-consistency>)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|\<exists\>u*\<in\><semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>><text|
        such that >u\<in\>\<cap\>f<around*|(|w|)>>|<cell|<text|(since
        <math|<with|font|cal|F>> is a proper
        filter)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Reach><rsub|<Net><rsup|\<bullet\>>><around|(|<semantics|\<varphi\>>|)>>|<cell|<text|(by
        Lemma <reference|lemma-Reach-and-R*>)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaKnow>\<varphi\>><rsub|<Net><rsup|\<bullet\>>>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|<value|Net><rsup|\<bullet\>>,w\<Vdash\><value|diaKnow>\<varphi\>>|<cell|<text|(by
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

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|font|termes>
    <associate|font-base-size|12>
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
    <associate|auto-1|<tuple|1|1|Modal-Completeness-master-notes.tm>>
    <associate|auto-10|<tuple|5|9|Modal-Completeness-master-notes.tm>>
    <associate|auto-11|<tuple|A|9|Modal-Completeness-master-notes.tm>>
    <associate|auto-2|<tuple|1.1|1|Modal-Completeness-master-notes.tm>>
    <associate|auto-3|<tuple|1.2|2|Modal-Completeness-master-notes.tm>>
    <associate|auto-4|<tuple|1.3|3|Modal-Completeness-master-notes.tm>>
    <associate|auto-5|<tuple|2|3|Modal-Completeness-master-notes.tm>>
    <associate|auto-6|<tuple|2.1|3|Modal-Completeness-master-notes.tm>>
    <associate|auto-7|<tuple|2.2|4|Modal-Completeness-master-notes.tm>>
    <associate|auto-8|<tuple|3|5|Modal-Completeness-master-notes.tm>>
    <associate|auto-9|<tuple|4|6|Modal-Completeness-master-notes.tm>>
    <associate|frame-to-net|<tuple|4.7|?|Modal-Completeness-master-notes.tm>>
    <associate|hash-well-defined|<tuple|4.2|?|Modal-Completeness-master-notes.tm>>
    <associate|lemma-Prop-and-H*|<tuple|4.6|7|Modal-Completeness-master-notes.tm>>
    <associate|lemma-Reach-and-R*|<tuple|4.5|7|Modal-Completeness-master-notes.tm>>
    <associate|minimal-cause|<tuple|1.12|?|Modal-Completeness-master-notes.tm>>
    <associate|pf:net-to-frame|<tuple|Inductive
    Step|?|Modal-Completeness-master-notes.tm>>
    <associate|prop-filter-consistency|<tuple|2.7|4|Modal-Completeness-master-notes.tm>>
    <associate|prop-reach-acyclic|<tuple|1.11|2|Modal-Completeness-master-notes.tm>>
    <associate|prop-reach-inverse|<tuple|1.10|2|Modal-Completeness-master-notes.tm>>
    <associate|simulation-is-a-BFNN|<tuple|4.4|?|Modal-Completeness-master-notes.tm>>
    <associate|simulation-is-preferential|<tuple|3.4|?|Modal-Completeness-master-notes.tm>>
    <associate|thm-net-to-frame|<tuple|3.2|?|Modal-Completeness-master-notes.tm>>
    <associate|thm:prop-props|<tuple|1.6|2|Modal-Completeness-master-notes.tm>>
    <associate|thm:reach-props|<tuple|1.8|2|Modal-Completeness-master-notes.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|1<space|2spc>Interpreted
      Neural Nets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Basic Definitions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc><with|mode|<quote|math>|<with|font-family|<quote|ss>|Prop>>
      and <with|mode|<quote|math>|<with|font-family|<quote|ss>|Reach>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Neural Network Semantics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|2<space|2spc>Neighborhood
      Models> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Basic Definitions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Neighborhood Semantics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|3<space|2spc>From
      Nets to Frames> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|4<space|2spc>From
      Frames to Nets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|5<space|2spc>What's
      Left To Do> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Appendix
      A<space|2spc>Proofs of Lemmas> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-11><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>