<TeXmacs|2.1.1>

<style|<tuple|tmconf|number-long-article|python|preview-ref|smart-ref|cite-sort|cite-author-year|framed-theorems>>

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

    <assign|Update|<with|font-family|ss|Update>>

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

    \;
  </hide-preamble>

  <doc-data|<\doc-title>
    Some Notes on Completeness

    of the Logic of Hebbian Learning
  </doc-title>|<doc-author|<author-data|<author-name|<with-toc|toc|>Caleb
  Kisby>>>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|1<space|2spc>Definitions>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|1.1<space|2spc>Nets and<with|toc-prefix|toc|> Forward
    Propagation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|1.2<space|2spc>Properties of
    <with|font-family|ss|Prop> and <with|font-family|ss|Reach>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|1.3<space|2spc>Syntax and (Neural) Semantics
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|1.4<space|2spc>Hypergraphs
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|1.5<space|2spc>Neighborhood Semantics
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|1.6<space|2spc>Rules and Axioms
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|2<space|2spc>Are
    the Semantics Flipped?> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|3<space|2spc>Neural
    Semantics <with|mode|math|\<rightsquigarrow\>> Neighborhood Semantics>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|4<space|2spc>Neighborhood
    Semantics <with|mode|math|\<rightsquigarrow\>> Neural Semantics>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|5<space|2spc>Soundness
    and Completeness> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|6<space|2spc>Dynamics
    of Neural Network Update> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|font-shape|small-caps|<with|color|#0749ac|References>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <pageref|auto-13><vspace|0.5fn>
  </table-of-contents>

  \;

  <section|Definitions>

  <subsection|Nets and<with-toc|toc|> Forward Propagation>

  <\definition>
    \ An <key|ANN> (Artificial Neural Network) is a pointed directed graph
    <math|<value|Net>=\<langle\>N,E,W,T,A\<rangle\>>, where

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
    <math|<value|Net>=\<langle\>N,E,W,T,A\<rangle\>> that is

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

  For notational convenience, we also define a function
  <math|<value|Reach><rsup|-1>:N\<rightarrow\><value|Set>> that, given a
  neuron <math|n\<in\>N>, recovers the smallest set containing
  <with|font-shape|italic|all> of those <math|m> that graph-reach <math|n>.

  <\definition>
    For all <math|n\<in\>N>, <math|<value|Reach><rsup|-1><around*|(|n|)>=<big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>
  </definition>

  <\proposition>
    <label|prop-reach-inverse>For all <math|n\<in\>N>,
    <math|<value|Reach><rsup|-1><around*|(|n|)>=<around*|{|m\<mid\>there is
    an E<math-up|->path from m to n|}>>
  </proposition>

  <\proof>
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

  <subsection|Properties of <value|Prop> and <value|Reach>>

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

  <\proof>
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
  </proof>

  <\proposition>
    <label|thm:reach-props>Let <math|<Net>\<in\><AllNets>>. For all
    <math|S,S<rsub|1>,S<rsub|2>\<in\><Set>>, <math|n,m\<in\>N>,
    <math|<value|Reach>> satisfies

    <\description>
      <item*|<key|(Inclusion)>><math|S\<subseteq\><Reach><around|(|S|)>>

      <item*|<key|(Idempotence)>><math|<Reach><around|(|S|)>=<Reach><around|(|<Reach><around|(|S|)>|)>>

      <item*|<key|(Monotonicity)>>If <math|S<rsub|1>\<subseteq\>S<rsub|2>>
      then <math|<Reach><around|(|S<rsub|1>|)>\<subseteq\><Reach><around|(|S<rsub|2>|)>>

      <item*|<key|(Pointwise-Antisymmetry)>>If
      <math|n\<in\><value|Reach><rsup|-1><around*|(|m|)>> and
      <math|m\<in\><value|Reach><rsup|-1><around*|(|n|)>> then <math|n=m>.
    </description>
  </proposition>

  <\proof>
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

      <item*|(Inverse-Antisymmetry)>Suppose
      <math|n\<in\><value|Reach><rsup|-1><around*|(|m|)>> and
      <math|m\<in\><value|Reach><rsup|-1><around*|(|n|)>>. By Proposition
      <reference|prop-reach-inverse>, there is an <math|E>-path from <math|n>
      to <math|m> and an <math|E>-path from <math|m> to <math|n>. But since
      <math|E> is acyclic, <math|m=n>.
    </description>
  </proof>

  Intuitively, <math|<Reach>> is the fully monotonic extension of
  <math|<Prop>>. <math|<Prop>> is not monotonic because the weights of the
  net may be negative. <math|<value|Prop>> and <value|Reach> interact in the
  following way:

  <\proposition>
    <key|(Minimal Cause)> For all <math|n\<in\>N>,
    <math|n\<in\><value|Prop><around*|(|S|)>> iff
    <math|n\<in\><value|Prop><around*|(|S\<cap\><value|Reach><rsup|-1><around*|(|n|)>|)>>
  </proposition>

  <todo|Is there a property <with|font-shape|italic|expressible in our modal
  logic> that implies <with|font-series|bold|(Minimal Cause)>?>

  <\proof>
    <math|<around*|(|\<rightarrow\>|)>> Let
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

    <math|<around*|(|\<leftarrow\>|)>> Let
    <math|n\<in\><value|Prop><around*|(|S\<cap\><value|Reach><rsup|-1><around*|(|n|)>|)>>.
    We again proceed by induction.

    <\description>
      <item*|Base Step><math|n\<in\>S\<cap\><value|Reach><rsup|-1><around*|(|n|)>>.
      So in particular, <math|n\<in\>S>. By the base case of
      <math|<value|Prop>>, <math|n\<in\><value|Prop><around*|(|S|)>>.

      <item*|Inductive Step>Similar to the inductive step for the
      <math|<around*|(|\<rightarrow\>|)>> direction.
    </description>
  </proof>

  <subsection|Syntax and (Neural) Semantics>

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
    A <key|neural network model> is <math|\<langle\><value|Net>,<semantics|\<cdot\>>\<rangle\>>,
    where <math|<value|Net>> is a BFNN and <math|<semantics|\<cdot\>>
    :<value|Lang>\<rightarrow\><value|Set><rsub|<value|Net>>> is an
    interpretation function.
  </definition>

  <\definition>
    Let <math|<value|Net>\<in\><value|AllNets>>. The semantics for
    <math|<value|Lang>> are defined recursively as follows:

    <\equation*>
      <tabular|<tformat|<twith|table-lborder|0em>|<twith|table-rborder|0em>|<twith|table-bborder|0em>|<twith|table-tborder|0em>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<table|<row|<cell|<semantics|p>>|<cell|>|<cell|\<in\><value|Set>
      <with|font-family|rm|is fixed,nonempty>>>|<row|<cell|<semantics|\<neg\>\<varphi\>>>|<cell|=>|<semantics|\<varphi\>><rsup|\<complement\>>>|<row|<cell|<semantics|\<varphi\>\<wedge\>\<psi\>>>|<cell|=>|<cell|<semantics|\<varphi\>>\<cap\><semantics|\<psi\>>>>|<row|<cell|<semantics|<value|diaKnow>\<varphi\>>>|<cell|=>|<cell|<value|Reach><around*|(|<semantics|\<varphi\>>|)>>>|<row|<cell|<semantics|<value|diaTyp>\<varphi\>>>|<cell|=>|<cell|<value|Prop><around*|(|<semantics|\<varphi\>>|)>>>>>>
    </equation*>
  </definition>

  <\definition>
    <math|<value|Net>\<models\>\<varphi\>> iff
    <math|<semantics|\<varphi\>><rsub|<value|Net>>=N>
  </definition>

  <subsection|Hypergraphs>

  <\definition>
    A <key|hypergraph> is a tuple <math|<with|font|cal|H>=\<langle\>V,H\<rangle\>>,
    where <math|V> is the set of vertices and
    <math|H:<value|powerset><around*|(|V|)>\<times\>V> is the set of
    <key|hyperarcs>.
  </definition>

  Unfortunately, there is no agreed-upon definition of a path in a
  hypergraph. There are several candidates to choose from, and this choice is
  made to fit the use-case <cite|thakur2009linear>. The same goes for
  properties on <math|<with|font|cal|H>> (e.g. reflexivity, transitivity,
  etc.). I've decided on the following definitions, which are highly
  non-standard but natural for our setting.

  <\definition>
    Say we have a sequence <math|<around*|(|S=S<rsub|1>,\<ldots\>S<rsub|l>|)>>
    such that for all <math|i>,

    <\equation*>
      S<rsub|i+1>=<around*|{|u \<mid\>S<rsub|i>H u|}>
    </equation*>

    We call this the <key|sequence generated by <math|S>> (of length
    <math|l>).
  </definition>

  <\proposition>
    The sequence of length <math|l> generated by <math|S> is unique.
  </proposition>

  <\proof>
    By induction on <math|l>.

    <\description>
      <item*|Base Step><math|l=1>, so both sequences are
      <math|<around|(|S|)>>, and we are done.

      <item*|Inductive Step>Say we have sequences
      <math|<around|(|S=A<rsub|1>,A<rsub|2>,\<ldots\>,A<rsub|l>|)>> and
      <math|<around|(|S=B<rsub|1>,B<rsub|2>,\<ldots\>,B<rsub|l>|)>> generated
      by <math|S>. By inductive hypothesis, <math|A<rsub|l-1>=B<rsub|l-1>>.
      And so

      <\equation*>
        A<rsub|l>=<around*|{|u \<mid\>A<rsub|l-1>H u|}>=<around*|{|u
        \<mid\>B<rsub|l-1>H u|}>=B<rsub|l>
      </equation*>

      and we are done.
    </description>
  </proof>

  <\definition>
    We say there is a <key|strong hyperpath> from source set <math|S> to node
    <math|v> iff for some <math|l>, the sequence
    <math|<around|(|S=S<rsub|1>,S<rsub|2>,S<rsub|3>,\<ldots\>*S<rsub|l>|)>>
    generated by <math|S> is such that <math|v\<in\>S<rsub|l>>.
  </definition>

  <\definition>
    We say there is a <key|strong hypercycle> iff for some <math|S,l>, the
    sequence generated by <math|S> begins and ends with <math|S>, i.e. is
    <math|<around|(|S=S<rsub|1>,S<rsub|2>,S<rsub|3>,\<ldots\>*S<rsub|l>=S|)>>.
  </definition>

  <\definition>
    Let <math|<with|font|cal|H>=\<langle\>V,H\<rangle\>> be a hypergraph, and
    <math|G=\<langle\>V,E\<rangle\>> be a binary graph.

    <\itemize>
      <item><with|font|cal|H> is <key|reflexive> iff for all <math|s\<in\>S>,
      <math|S H s>.

      <item><with|font|cal|H> is <key|transitive> iff
      <math|T=<around*|{|u\<mid\>S H u|}>> and <math|T H v> implies <math|S H
      v>.

      <item><with|font|cal|H> is <key|acyclic> iff for all strong hypercycles
      <math|<around|(|S<rsub|1>,S<rsub|2>,S<rsub|3>,\<ldots\>*S<rsub|l>|)>>
      in <math|\<cal-H\>>, <math|S<rsub|i>=S<rsub|j>> for all
      <math|i,j\<in\><around*|{|1,\<ldots\>,l|}>>.

      <item><math|\<cal-H\>> <key|extends> <math|G> whenever <math|S H v> iff
      <math|<around*|(|S\<cap\><around*|{|u\<mid\>u E v|}>|)>H v>.
    </itemize>
  </definition>

  <\definition>
    Let <math|\<cal-H\>=<around|\<langle\>|V,H|\<rangle\>>> be a hypergraph.
    Then

    <\itemize>
      <item><math|<with|math-font|cal|H<rsup|\<ast\>>>=<around|\<langle\>|V,H<rsup|\<ast\>>|\<rangle\>>>,
      the <key|reflexive-transitive closure> of <math|\<cal-H\>>, is that
      graph extending <math|\<cal-H\>> with the minimum number of hyperedges
      such that it is reflexive and transitive.

      <item><math|<with|math-font|cal|H<rsup|->>=<around|\<langle\>|V,H<rsup|->|\<rangle\>>>,
      the <key|reflexive-transitive reduction> of <math|\<cal-H\>>, is the
      graph with the minimum number of hyperedges such that
      <math|<around|(|H<rsup|->|)><rsup|\<ast\>>=H<rsup|\<ast\>>>.
    </itemize>
  </definition>

  <\proposition>
    <label|prop-hyperpath>Let <math|<with|font|cal|H<rsup|\<ast\>>>> be the
    reflexive-transitive closure of <math|<with|font|cal|H<rsup|\<ast\>>>>.
    Then <math|S H<rsup|\<ast\>> v> iff there is a strong hyperpath from
    <math|S> to <math|v> in <math|\<cal-H\>>.
  </proposition>

  <\proof>
    (<math|\<rightarrow\>>) If <math|S H<rsup|\<ast\>>v>, then <math|S H v>
    <todo|Todo: This is a big mistake!!!> (since <math|H<rsup|\<ast\>>> is an
    extension of <math|H>). Let <math|S<rsub|2>=<around*|{|u\<mid\>S H u|}>>.
    Then <math|<around|(|S,S<rsub|2>|)>> with <math|v\<in\>S<rsub|2>> forms a
    strong hyperpath from <math|S> to <math|v>.

    (<math|\<leftarrow\>>) We proceed by induction on the length of the
    strong hyperpath.

    <\description>
      <item*|Base Step>The hyperpath is of length <math|1>, i.e.
      <math|<around|(|S|)>>, with <math|v\<in\>S>. Since
      <math|H<rsup|\<ast\>>> is reflexive, <math|S H<rsup|\<ast\>> v>.

      <item*|Inductive Step>Say we have strong hyperpath
      <math|<around|(|S=S<rsub|1>,S<rsub|2>,\<ldots\>,S<rsub|l>|)>> from
      <math|S> to <math|v> (in <math|H>). By definition of strong hyperpath,
      <math|S<rsub|l>=<around*|{|u \<mid\>S<rsub|l-1> H u|}>>. In particular,
      <math|S<rsub|l-1>H v>.

      <\claim*>
        <math|S<rsub|l-1>=<around*|{|u\<mid\>S H<rsup|\<ast\>>u|}>>.
      </claim*>

      <\proof>
        <math|<around*|(|\<rightarrow\>|)>> Let <math|u\<in\>S<rsub|l-1>>. We
        have strong hyperpath <math|<around|(|S=S<rsub|1>,S<rsub|2>,\<ldots\>,S<rsub|l-1>|)>>
        from above, with <math|u\<in\>S<rsub|l-1>>. By inductive hypothesis,
        <math|S H<rsup|\<ast\>>u>.

        <math|<around*|(|\<leftarrow\>|)>> Suppose <math|S H<rsup|\<ast\>>u>.
        By inductive hypothesis, there is a strong hyperpath from <math|S> to
        <math|u> in <math|H>. But the strong sequence generated by <math|S>
        is unique, so we know the hyperpath is
        <math|<around|(|S=S<rsub|1>,S<rsub|2>,\<ldots\>,S<rsub|l-1>|)>> with
        <math|u\<in\>S<rsub|l-1>>.
      </proof>

      From here, we have <math|S<rsub|l-1>=<around*|{|u\<mid\>S
      H<rsup|\<ast\>>u|}>> and <math|S<rsub|l-1>H v> (so
      <math|S<rsub|l-1>H<rsup|\<ast\>>v>). By transitivity, we have <math|S
      H<rsup|\<ast\>> v>.
    </description>
  </proof>

  <subsection|Neighborhood Semantics>

  Modal logics are traditionally interpreted via a relational possible-worlds
  semantics. But relational frames do not allow for non-normal operators like
  <math|<Typ>>. Instead, we need to use neighborhood semantics (see
  <cite|pacuit2017neighborhood>).

  <\definition>
    A <key|neighborhood frame> is a pair <math|\<cal-F\>=<around|\<langle\>|W,f|\<rangle\>>>,
    where <math|W> is a non-empty set of <key|worlds> and
    <math|f:W\<to\>\<cal-P\><around|(|\<cal-P\><around|(|W|)>|)>> is a
    <key|neighborhood function>.
  </definition>

  The intuition is that <math|f<around|(|w|)>> selects those sets of worlds
  that are necessary (or known, or typical) at <math|w>.

  <\definition>
    A <key|multi-frame> is <math|\<frak-F\>=<around|\<langle\>|W,f,g|\<rangle\>>>,
    where <math|f> and <math|g> are neighborhood functions.
  </definition>

  <\definition>
    Let <math|\<cal-F\>=<around|\<langle\>|W,f|\<rangle\>>> be a neighborhood
    frame, and let <math|w\<in\>W>. The set
    <math|<big|cap><rsub|X\<in\>f<around|(|w|)>>X> is called the <key|core>
    of <math|f<around|(|w|)>>. We often abbreviate this by
    <math|\<cap\>f<around|(|w|)>>.
  </definition>

  <\definition>
    Let <math|\<cal-F\>=<around|\<langle\>|W,f|\<rangle\>>> be a neighborhood
    frame, and let <math|w\<in\>W>. We say that
    <math|X,Y\<in\>f<around|(|w|)>> <key|form a loop> in <math|\<cal-F\>> iff
    there exist <math|X=X<rsub|1>*\<ldots\>,X<rsub|n>=Y> such that for all
    <math|1\<leq\>i\<leq\>n>, <math|<around*|{|u\<mid\>X<rsub|i>\<in\>f<around*|(|u|)>|}>\<subseteq\>X<rsub|i+1>>.
    (Including, of course, <math|<around*|{|u\<mid\>X<rsub|n>\<in\>f<around*|(|u|)>|}>\<subseteq\>X<rsub|1>>).
  </definition>

  <\definition>
    Let <math|\<cal-F\>=<around|\<langle\>|W,f|\<rangle\>>,\<cal-G\>=<around|\<langle\>|W,g|\<rangle\>>>
    be neighborhood frames with <math|W> nonempty.

    <\itemize>
      <item><math|\<cal-F\>> is <key|closed under finite intersections> iff
      for all <math|w\<in\>W>, if <math|X<rsub|1>,\<ldots\>,X<rsub|n>\<in\>f<around|(|w|)>>
      then their intersection <math|<big|cap><rsup|k><rsub|i=1>X<rsub|i>\<in\>f<around|(|w|)>>.

      <item><math|\<cal-F\>> is <key|closed under supersets> iff for all
      <math|w\<in\>W>, if <math|X\<in\>f<around|(|w|)>> and
      <math|X\<subseteq\>Y\<subseteq\>W>, then <math|Y\<in\>f<around|(|w|)>>.

      <item><math|\<cal-F\>> <key|contains the unit> iff
      <math|W\<in\>f<around|(|w|)>>.

      <item><math|\<cal-F\>> <key|contains the empty set> iff
      <math|\<emptyset\>\<in\>f<around|(|w|)>>.

      <item><math|\<cal-F\>> is <key|reflexive> iff for all <math|w\<in\>W>,
      <math|w\<in\>\<cap\>f<around|(|w|)>>

      <item><math|\<cal-F\>> is <key|transitive> iff for all <math|w\<in\>W>,
      if <math|X\<in\>f<around|(|w|)>> then <math|<around*|{|u
      \<mid\>X\<in\>f<around*|(|u|)>|}>\<in\>f<around|(|w|)>>.

      <item><math|<with|font|cal|F>> is <key|antisymmetric> iff for all
      <math|u,v\<in\>W>, if <math|u\<in\>\<cap\>f<around*|(|v|)>> and
      <math|v\<in\>\<cap\>f<around*|(|u|)>> then <math|u=v>.

      <item><math|\<cal-F\>> is <key|loop-cumulative> iff for all
      <math|w\<in\>W>, if <math|X> and <math|Y> form a loop, then

      <\equation*>
        <around*|{|u \<mid\>X\<in\>g<around*|(|u|)>|}>=<around*|{|u
        \<mid\>Y\<in\>g<around*|(|u|)>|}>
      </equation*>

      <item><math|\<cal-G\>> <key|subsumes> <math|\<cal-F\>> iff for all
      <math|w\<in\>W>, <math|X\<cup\><around*|(|\<cap\>f<around*|(|w|)>|)><rsup|\<complement\>><rsup|>\<in\>g<around*|(|w|)>>
      iff <math|X\<in\>g<around*|(|w|)>>.
    </itemize>
  </definition>

  <\definition>
    Let <math|\<cal-F\>=<around|\<langle\>|W,f|\<rangle\>>> be a frame, and
    <math|\<frak-F\>=<around|\<langle\>|W,f,g|\<rangle\>>> be a multi-frame
    extending <math|\<cal-F\>>. We will focus on the following special
    classes of frames:

    <\itemize>
      <item><math|\<cal-F\>> is a <key|proper filter> iff for all
      <math|w\<in\>W>, <math|f<around|(|w|)>> is closed under finite
      intersections, closed under supersets, contains the unit, and does not
      contain the empty set.

      <item><math|\<cal-F\>> is a <key|loop-subfilter> iff for all
      <math|w\<in\>W>, <math|f<around|(|w|)>> contains the unit and is
      loop-cumulative.

      <item><math|\<frak-F\>> is a <key|preferential multi-frame> iff

      <\itemize>
        <item><math|\<cal-F\>=<around|\<langle\>|W,f|\<rangle\>>> forms a
        reflexive, transitive, antisymmetric, proper filter,

        <item><math|\<cal-G\>=<around|\<langle\>|W,g|\<rangle\>>> forms a
        reflexive, transitive, loop-subfilter and

        <item><math|\<cal-G\>> subsumes <math|\<cal-F\>>
      </itemize>
    </itemize>
  </definition>

  <\proposition>
    <dueto|Pacuit>If <math|\<cal-F\>=<around|\<langle\>|W,f|\<rangle\>>> is a
    filter, and <math|W> is finite, then <math|\<cal-F\>> contains its core.
  </proposition>

  <\proposition>
    <label|prop-filter-consistency>If <math|\<cal-F\>=<around|\<langle\>|W,f|\<rangle\>>>
    is a proper filter, then for all <math|w\<in\>W>,
    <math|Y<rsup|\<complement\>>\<in\>f<around*|(|w|)>> iff
    <math|Y<neg|\<in\>>f<around*|(|w|)>>.
  </proposition>

  <\proof>
    <math|<around*|(|\<rightarrow\>|)>> Suppose for contradiction that
    <math|Y<rsup|\<complement\>>\<in\>f<around*|(|w|)>> and
    <math|Y\<in\>f<around*|(|w|)>>. Since <math|<with|font|cal|F>> is closed
    under intersection, <math|Y<rsup|\<complement\>>\<cap\>Y=\<emptyset\>\<in\>f<around*|(|w|)>>,
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

  <\definition>
    Let <math|\<cal-F\>=<around|\<langle\>|W,f|\<rangle\>>>,
    <math|\<cal-G\>=<around|\<langle\>|W,g|\<rangle\>>> be a neighborhood
    frame. A <key|neighborhood model> based on <math|\<cal-F\>> and
    <math|\<cal-G\>> is <math|<Model>=<around|\<langle\>|W,f,g,V|\<rangle\>>>,
    where <math|V :<value|Lang>\<to\>\<cal-P\><around|(|W|)>> is a valuation
    function.
  </definition>

  <\definition>
    Let <math|<Model>=<around|\<langle\>|W,f,g,V|\<rangle\>>> be a model
    based on two frames <math|\<cal-F\>=<around|\<langle\>|W,f|\<rangle\>>,\<cal-G\>=<around|\<langle\>|W,g|\<rangle\>>>.
    The (neighborhood) semantics for <math|<value|Lang>> are defined
    recursively as follows:

    <\equation*>
      <tabular|<tformat|<cwith|1|1|1|3|cell-tborder|1ln>|<cwith|5|5|1|3|cell-bborder|1ln>|<cwith|1|5|1|1|cell-lborder|1ln>|<cwith|1|5|3|3|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lsep|1em>|<cwith|1|-1|2|2|cell-rsep|1em>|<table|<row|<cell|<value|Model>,w\<models\>p>|<cell|iff>|<cell|w\<in\>V<around*|(|p|)>>>|<row|<cell|<value|Model>,w\<models\>\<neg\>\<varphi\>>|<cell|iff>|<value|Model>,w<neg|\<models\>>\<varphi\>>|<row|<cell|<value|Model>,w\<models\>\<varphi\>\<wedge\>\<psi\>>|<cell|iff>|<cell|<value|Model>,w\<models\>\<varphi\><infix-and><value|Model>,w\<models\>\<psi\>>>|<row|<cell|<value|Model>,w\<models\><value|diaKnow>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
      \<mid\><value|Model>,u<neg|\<models\>>\<varphi\>|}><neg|\<in\>>f<around*|(|w|)>>>|<row|<cell|<value|Model>,w\<models\><value|diaTyp>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
      \<mid\><value|Model>,u<neg|\<models\>>\<varphi\>|}><neg|\<in\>>g<around*|(|w|)>>>>>>
    </equation*>
  </definition>

  <subsection|Rules and Axioms>

  The proof system for our logic is as follows. We have
  <math|<proves>\<varphi\>> iff either <math|\<varphi\>> is an axiom, or
  <math|\<varphi\>> follows from previously obtained formulas by one of the
  inference rules (axioms and rules shown below). If
  <math|\<Gamma\>\<subseteq\><value|Lang>> is a set of formulas, we consider
  <math|\<Gamma\><proves>\<varphi\>> to hold whenever there exist finitely
  many <math|\<psi\><rsub|1>,\<ldots\>,\<psi\><rsub|k>\<in\>\<Gamma\>> such
  that <math|<proves>\<psi\><rsub|1>\<wedge\>\<ldots\>\<wedge\>\<psi\><rsub|k>\<to\>\<varphi\>>.

  <\equation*>
    <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|2|2|1|1|cell-valign|t>|<cwith|2|2|2|2|cell-valign|t>|<cwith|2|2|3|3|cell-valign|t>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|2|2|3|3|cell-rborder|1ln>|<cwith|1|1|3|3|cell-tborder|1ln>|<cwith|1|1|3|3|cell-bborder|0ln>|<cwith|2|2|3|3|cell-tborder|0ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|1|1|2|2|cell-tborder|1ln>|<cwith|1|1|2|2|cell-rborder|0ln>|<cwith|1|1|3|3|cell-lborder|0ln>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|1|1|cell-rborder|0ln>|<cwith|1|1|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-bborder|0ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|2|2|cell-tborder|0ln>|<cwith|1|1|2|2|cell-bborder|0ln>|<cwith|2|2|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-rborder|0ln>|<cwith|2|2|2|2|cell-rborder|0ln>|<cwith|2|2|3|3|cell-lborder|0ln>|<cwith|1|1|1|-1|cell-bsep|0.25em>|<cwith|1|1|1|-1|cell-tsep|0.25em>|<cwith|1|1|1|-1|cell-halign|l>|<cwith|1|1|1|-1|cell-lsep|1.25em>|<cwith|1|1|1|-1|cell-rsep|1.25em>|<twith|table-halign|l>|<table|<row|<cell|<strong|Basic
    Axioms and Inference Rules>>|<cell|<value|Know>
    <strong|Axioms>>|<cell|<value|Typ> <strong|Axioms>>>|<row|<cell|<tabular|<tformat|<cwith|1|1|1|1|cell-tborder|0ln>|<cwith|2|2|1|1|cell-bborder|0ln>|<cwith|3|3|1|1|cell-tborder|0ln>|<cwith|1|2|1|1|cell-lborder|0ln>|<cwith|1|2|1|1|cell-rborder|0ln>|<cwith|1|2|2|2|cell-lborder|0ln>|<table|<row|<cell|<axiom|<around*|(|PC|)>>>|<cell|<with|font-family|rm|All
    propositional tautologies>>>|<row|<cell|<axiom|<around*|(|MP|)>>>|<cell|<frac|\<varphi\><space|2em>\<varphi\>\<rightarrow\>\<psi\>|\<psi\>>>>|<row|<cell|<axiom|<around*|(|Nec<rsub|<value|Know>>|)>>>|<cell|<frac|\<varphi\>|<value|Know>\<varphi\>>>>|<row|<cell|<axiom|<around*|(|Nec<rsub|<value|Typ>>|)>>>|<cell|<frac|\<varphi\>|<value|Typ>\<varphi\>>>>>>>>|<cell|<tabular|<tformat|<cwith|3|3|2|2|cell-valign|B>|<twith|table-valign|C>|<table|<row|<cell|<axiom|<around*|(|K|)>>>|<cell|<value|Know><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|<value|Know>\<varphi\>\<rightarrow\><value|Know>\<psi\>|)>>>|<row|<cell|<axiom|<around*|(|T|)>>>|<cell|<value|Know>\<varphi\>\<rightarrow\>\<varphi\>>>|<row|<cell|<axiom|<around*|(|4|)>>>|<cell|<value|Know>\<varphi\>\<rightarrow\><value|Know><value|Know>\<varphi\>>>>>>>|<cell|<tabular|<tformat|<cwith|3|3|2|2|cell-valign|B>|<cwith|3|3|2|2|cell-tborder|0ln>|<cwith|1|2|1|1|cell-lborder|0ln>|<cwith|3|3|2|2|cell-rborder|0ln>|<cwith|3|3|1|-1|cell-bborder|0ln>|<cwith|1|1|2|2|cell-hyphen|t>|<cwith|3|3|1|1|cell-bborder|0ln>|<table|<row|<cell|<axiom|<around*|(|Loop|)>>>|<\cell>
      <around*|(|<value|Typ>\<varphi\><rsub|1>\<rightarrow\>\<varphi\><rsub|2>|)>\<wedge\>\<ldots\>\<wedge\><around*|(|<value|Typ>\<varphi\><rsub|n>\<rightarrow\>\<varphi\><rsub|1>|)>

      \<rightarrow\><around*|(|<value|Typ>\<varphi\><rsub|i>\<leftrightarrow\><value|Typ>\<varphi\><rsub|j>|)>
      <around*|(|<with|font-family|rm|for each> i,j|)>
    </cell>>|<row|<cell|<axiom|<around*|(|T|)>>>|<cell|<value|Typ>\<varphi\>\<rightarrow\>\<varphi\>>>|<row|<cell|<axiom|<around*|(|4|)>>>|<cell|<value|Typ>\<varphi\>\<rightarrow\><value|Typ><value|Typ>\<varphi\>>>|<row|<cell|<axiom|<around*|(|<value|Know><value|Typ>|)>>>|<cell|<value|Know>\<varphi\>\<rightarrow\><value|Typ>\<varphi\>>>>>>>>>>>
  </equation*>

  \;

  <section|Are the Semantics Flipped?>

  The semantics for <math|\<wedge\>,\<to\>> are flipped, relative to what we
  had before. We could have alternatively given our semantics by:

  <\equation*>
    <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|3|3|cell-rborder|0ln>|<table|<row|<cell|<semantics|p><rprime|'>>|<cell|>|<cell|\<in\><Set><text|
    is fixed, nonempty>>>|<row|<cell|<semantics|\<neg\>\<varphi\>><rprime|'>>|<cell|=>|<cell|<semantics|\<varphi\>><rsup|\<prime\>*\<complement\>>>>|<row|<cell|<semantics|\<varphi\>\<wedge\>\<psi\>><rprime|'>>|<cell|=>|<cell|<semantics|\<varphi\>><rprime|'><with|color|m*y*b*l*u*e|\<cup\>><semantics|\<psi\>><rprime|'>>>|<row|<cell|<semantics|<value|Know>\<varphi\>><rprime|'>>|<cell|=>|<cell|<Reach><around|(|<semantics|\<varphi\>><rprime|'>|)>>>|<row|<cell|<semantics|<value|Typ>\<varphi\>><rprime|'>>|<cell|=>|<cell|<Prop><around|(|<semantics|\<varphi\>><rprime|'>|)>>>>>>
  </equation*>

  and then defined

  <\equation*>
    <Net>\<models\><rprime|'>\<varphi\><infix-iff><semantics|\<varphi\>><rsup|<rprime|'>><rsub|<Net>>=\<emptyset\>
  </equation*>

  As explained by Leitgeb in <cite|leitgeb2001nonmonotonic>: This choice
  reflects the intuition that neurons act as
  \Pelementary-feature-detectors\Q. For example, say
  <math|<semantics|\<varphi\>>> represents those neurons that are
  <with|font-shape|italic|necessary> for detecting an apple, and
  <math|<semantics|\<psi\>>> represents those neurons that are
  <with|font-shape|italic|necessary> for detecting the color red. If the net
  observes a red apple (<math|\<varphi\>\<wedge\>\<psi\>>), both the neurons
  detecting red-features <math|<semantics|\<varphi\>>> and the neurons
  detecting apple-features <math|<semantics|\<psi\>>> necessarily activate,
  i.e. <math|<semantics|\<varphi\>>\<cup\><semantics|\<psi\>>> activates. As
  for implication, \Pevery apple is red\Q (<math|\<varphi\>\<to\>\<psi\>>)
  holds for a net iff whenever the neurons detecting apple-features
  <math|<semantics|\<varphi\>>> necessarily activate, so do the neurons
  detecting red-features <math|<semantics|\<psi\>>>. But this is only true if
  <math|<semantics|\<varphi\>>\<supseteq\><semantics|\<psi\>>>.

  However, our next result shows that these two choices are interchangeable
  \V and so we stick with the choice of semantics that is easier to work
  with.

  <\proposition>
    For all <math|<Net>\<in\><AllNets>>,

    <\equation*>
      <Net>\<models\><rprime|'>\<varphi\><infix-iff><Net>\<models\>\<varphi\>
    </equation*>
  </proposition>

  <\proof>
    The key point is that for all <math|\<varphi\>>,
    <math|<semantics|\<varphi\>><rsup|\<complement\>>=<semantics|\<varphi\>><rprime|'>>.
    To see this for <math|<Know>\<varphi\>> and <math|<Typ>\<varphi\>>
    (assuming it holds inductively for <math|\<varphi\>>), note that

    <\equation*>
      <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<table|<row|<cell|<semantics|<Know>\<varphi\>><rsup|\<complement\>>=<semantics|\<neg\><diaKnow>\<neg\>\<varphi\>><rsup|\<complement\>>=<Reach><around|(|<semantics|\<varphi\>><rsup|\<complement\>>|)>=<Reach><around|(|<semantics|\<varphi\>><rprime|'>|)>=<semantics|<Know>\<varphi\>><rprime|'>>>|<row|<cell|<semantics|<Typ>\<varphi\>><rsup|\<complement\>>=<semantics|\<neg\><diaTyp>\<neg\>\<varphi\>><rsup|\<complement\>>=<Prop><around|(|<semantics|\<varphi\>><rsup|\<complement\>>|)>=<Prop><around|(|<semantics|\<varphi\>><rprime|'>|)>=<semantics|<Typ>\<varphi\>><rprime|'>>>>>>
    </equation*>

    And so

    <\equation*>
      <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|3|3|cell-rborder|0ln>|<table|<row|<cell|<Net>\<models\><rprime|'>\<varphi\>>|<cell|<text|iff
      >>|<cell|<semantics|\<varphi\>><rprime|'>=\<emptyset\>>>|<row|<cell|>|<cell|<text|iff
      >>|<cell|<semantics|\<varphi\>>=N>>|<row|<cell|>|<cell|<text|iff
      >>|<cell|<Net>\<models\>\<varphi\>>>>>>
    </equation*>
  </proof>

  <section|Neural Semantics <math|\<rightsquigarrow\>> Neighborhood
  Semantics>

  <\definition>
    Given a BFNN <math|<Net>>, its <key|simulation frame>
    <math|\<frak-F\><rsup|\<bullet\>>=<around|\<langle\>|W,f,g|\<rangle\>>>
    is given by:

    <\itemize>
      <item><math|W=N>

      <item><math|f<around|(|w|)>=<around*|{|S\<subseteq\>W
      \<mid\>w<neg|\<in\>><value|Reach><around*|(|S<rsup|\<complement\>>|)>|}>>

      <item><math|g<around|(|w|)>=><math|<around*|{|S\<subseteq\>W
      \<mid\>w<neg|\<in\>><value|Prop><around*|(|S<rsup|\<complement\>>|)>|}>>
    </itemize>

    Moreover, given an interpretation function
    <math|<semantics|\<cdot\>><rsub|<Net>>>, the <key|simulation model>
    <math|<Model><rsup|\<bullet\>>=<around|\<langle\>|W,f,g,V|\<rangle\>>>
    based on <math|\<frak-F\><rsup|\<bullet\>>> has:

    <\itemize>
      <item><math|V<around|(|p|)>=<semantics|p><rsub|<Net>>>
    </itemize>
  </definition>

  <\theorem>
    Let <math|<Net>> be a BFNN, and let <math|\<cal-M\><rsup|\<bullet\>>> be
    the simulation model based on <math|\<frak-F\><rsup|\<bullet\>>>. Then

    <\equation*>
      \<cal-M\><rsup|\<bullet\>>,w\<models\>\<varphi\>*<infix-iff>w\<in\><semantics|\<varphi\>><rsub|<Net>>
    </equation*>
  </theorem>

  <\proof>
    By induction on <math|\<varphi\>>.

    <\description>
      <with|font-series|bold|<math|p> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model><rsup|\<bullet\>>,w\<models\>p>|<cell|<text|iff
        >>|<cell|w\<in\>V<around|(|p|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|p>>|<cell|>>>>>
      </equation*>

      <with|font-series|bold|<math|\<neg\>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model><rsup|\<bullet\>>,w\<models\>\<neg\>\<varphi\>>|<cell|<text|iff
        >>|<cell|<Model><rsup|\<bullet\>>,w<neg|\<models\>>\<varphi\>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<nin\><semantics|\<varphi\>>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|\<neg\>\<varphi\>>>|<cell|>>>>>
      </equation*>

      <with|font-series|bold|<math|\<varphi\>\<wedge\>\<psi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model><rsup|\<bullet\>>,w\<models\>\<varphi\>\<wedge\>\<psi\>>|<cell|<text|iff
        >>|<cell|<Model><rsup|\<bullet\>>,w\<models\>\<varphi\><infix-and><text|><Model><rsup|\<bullet\>>,w\<models\>\<psi\>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|\<varphi\>><infix-and>w\<in\><semantics|\<psi\>>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|\<varphi\>\<wedge\>\<psi\>>>|<cell|>>>>>
      </equation*>

      <with|font-series|bold|<math|<diaKnow>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model><rsup|\<bullet\>>,w\<models\><diaKnow>\<varphi\>>|<cell|<text|iff
        >>|<cell|<around*|{|u \<mid\><value|Model><rsup|\<bullet\>>,w\<models\>\<varphi\>|}>\<nin\>f<around|(|w|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<text|iff >>|<cell|<around*|{|u
        \<mid\>u <neg|\<in\>><semantics|\<varphi\>>|}>\<nin\>f<around|(|w|)>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<semantics|\<varphi\>><rsup|\<complement\>>\<nin\>f<around|(|w|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Reach><around|(|<semantics|<around|(|\<varphi\><rsup|\<complement\>>|)><rsup|\<complement\>>>|)>>|<cell|<text|(by
        choice of >f)>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Reach><around|(|<semantics|\<varphi\>>|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaKnow>\<varphi\>>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>

      <with|font-series|bold|<math|<diaTyp>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model><rsup|\<bullet\>>,w\<models\><diaTyp>\<varphi\>>|<cell|<text|iff
        >>|<cell|<around*|{|u \<mid\><value|Model><rsup|\<bullet\>>,w\<models\>\<varphi\>|}>\<nin\>g<around|(|w|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<text|iff >>|<cell|<around*|{|u
        \<mid\>u <neg|\<in\>><semantics|\<varphi\>>|}>\<nin\>g<around|(|w|)>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<semantics|\<varphi\>><rsup|\<complement\>>\<nin\>g<around|(|w|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Prop><around|(|<semantics|<around|(|\<varphi\><rsup|\<complement\>>|)><rsup|\<complement\>>>|)>>|<cell|<text|(by
        choice of >g)>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Prop><around|(|<semantics|\<varphi\>>|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaTyp>\<varphi\>>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>
    </description>
  </proof>

  <\corollary>
    <math|<Model><rsup|\<bullet\>>\<models\>\<varphi\>> iff
    <math|<Net>\<models\>\<varphi\>>.
  </corollary>

  <\proof>
    \;

    <\equation*>
      <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|3|3|cell-rborder|0ln>|<table|<row|<cell|<Model><rsup|\<bullet\>>\<models\>\<varphi\>>|<cell|<text|iff
      >>|<cell|<Model><rsup|\<bullet\>>,w\<models\>\<varphi\>*<text|for all
      >w\<in\>W=N>>|<row|<cell|>|<cell|<text|iff
      >>|<cell|w\<in\><semantics|\<varphi\>><rsub|<Net>><text|for all
      >w\<in\>N>>|<row|<cell|>|<cell|<text|iff
      >>|<cell|<semantics|\<varphi\>><rsub|<Net>>=N>>|<row|<cell|>|<cell|<text|iff
      >>|<cell|<Net>\<models\>\<varphi\>>>>>>
    </equation*>
  </proof>

  <\theorem>
    <math|\<frak-F\><rsup|\<bullet\>>> is a preferential multi-frame.
  </theorem>

  <\proof>
    We show each in turn:

    <\itemize>
      <item><with|font-series|bold|<math|\<cal-F\>> is closed under finite
      intersection><with|font-series|bold|:> Suppose
      <math|X<rsub|1>,\<ldots\>,X<rsub|n>\<in\>f<around|(|w|)>>. By
      definition of <math|f>, <math|w\<nin\><big|cup><rsub|i><Reach><around|(|X<rsub|i><rsup|\<complement\>>|)>>
      for all <math|i>. Since <math|<Reach>> is monotonic, by Proposition
      <todo|TODO> we have <math|<big|cup><rsub|i><Reach><around|(|X<rsub|i><rsup|\<complement\>>|)>=<Reach><around|(|<big|cup><rsub|i>X<rsub|i><rsup|\<complement\>>|)>=<Reach><around|(|<around|(|<big|cap><rsub|i>X<rsub|i>|)><rsup|\<complement\>>|)>>.
      So <math|w<neg|\<in\>><Reach><around|(|<around|(|<big|cap><rsub|i>X<rsub|i>|)><rsup|\<complement\>>|)>>.
      But this means that <math|<big|cap><rsub|i>X<rsub|i>\<in\>f<around|(|w|)>>.

      <item><with|font-series|bold|<math|\<cal-F\>> is closed under
      superset><with|font-series|bold|:> Suppose
      <math|X\<in\>f<around|(|w|)>,X\<subseteq\>Y>. By definition of
      <math|f>, <math|w\<nin\><Reach><around|(|X<rsup|\<complement\>>|)>>.
      Note that <math|Y<rsup|\<complement\>>\<subseteq\>X<rsup|\<complement\>>>,
      and so by monotonicity of <math|<Reach>> we have
      <math|w\<nin\><Reach><around|(|Y<rsup|\<complement\>>|)>>. But this
      means <math|Y\<in\>f<around|(|w|)>>, so we are done.

      <item><with|font-series|bold|<math|\<cal-F\>> contains the
      unit><with|font-series|bold|:> Note that for all <math|w\<in\>W>,
      <math|w\<nin\><Reach><around|(|\<emptyset\>|)>=<Reach><around|(|W<rsup|\<complement\>>|)>>.
      So <math|W\<in\>f<around|(|w|)>>.

      <item><with|font-series|bold|<math|\<cal-F\>> does not contain the
      empty set><with|font-series|bold|:> Similarly, for all <math|w\<in\>W>,
      <math|w\<in\><Reach><around|(|W|)>=<Reach><around|(|W|)>=<Reach><around|(|\<emptyset\><rsup|\<complement\>>|)>>.
      So <math|\<emptyset\>\<nin\>f<around|(|w|)>>.

      <item><with|font-series|bold|<math|\<cal-F\>> is
      reflexive><with|font-series|bold|:> We want to show that
      <math|w\<in\>\<cap\>f<around|(|w|)>>. Well, suppose
      <math|X\<in\>f<around|(|w|)>>, i.e.
      <math|w\<nin\><Reach><around|(|X<rsup|\<complement\>>|)>> (by
      definition of <math|f>). Since for all <math|S>,
      <math|S\<subseteq\><Reach><around|(|S|)>>, we have
      <math|w\<nin\>X<rsup|\<complement\>>>. But this means <math|w\<in\>X>,
      and we are done.

      <item><with|font-series|bold|<math|\<cal-F\>> is
      transitive><with|font-series|bold|:> Suppose
      <math|X\<in\>f<around|(|w|)>>, i.e.
      <math|w\<nin\><Reach><around|(|X<rsup|\<complement\>>|)>>. Well,

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Reach><around|(|X<rsup|\<complement\>>|)>>|<cell|=>|<cell|<Reach><around|(|<Reach><around|(|X<rsup|\<complement\>>|)>|)>>|<cell|<with|font-family|rm|<text|(by
        Idempotence of >><Reach>)>>|<row|<cell|>|<cell|=>|<cell|<Reach><around|(|<around*|{|u\<mid\>u\<in\><value|Reach><around*|(|X<rsup|\<complement\>>|)>|}>|)>>|<cell|>>|<row|<cell|>|<cell|=>|<cell|<Reach><around|(|<around*|{|u\<mid\>u<neg|\<in\>><value|Reach><around*|(|X<rsup|\<complement\>>|)>|}><rsup|\<complement\>>|)>>|<cell|>>|<row|<cell|>|<cell|=>|<cell|<Reach><around|(|<around*|{|u\<mid\>X\<in\>f<around*|(|u|)>|}><rsup|\<complement\>>|)>>|<cell|<with|font-family|rm|<text|(by
        definition of >>f)>>>>>
      </equation*>

      So by definition of <math|f>, <math|<around*|{|u\<mid\>X\<in\>f<around*|(|u|)>|}>\<in\>f<around|(|w|)>>.

      <item><with|font-series|bold|<math|\<cal-F\>> is
      antisymmetric><with|font-series|bold|:> Suppose
      <math|u\<in\>\<cap\>f<around*|(|v|)>> and
      <math|v\<in\>\<cap\>f<around*|(|u|)>>, i.e.
      <math|u\<in\><big|cap><rsub|X\<in\>f<around*|(|v|)>>X> and
      <math|v\<in\><big|cap><rsub|X\<in\>f<around*|(|u|)>>X>. By choice of
      <math|f>, <math|u\<in\><big|cap><rsub|v<neg|\<in\>><value|Reach><around*|(|X<rsup|\<complement\>>|)>>X>
      and <math|v\<in\><big|cap><rsub|u<neg|\<in\>><value|Reach><around*|(|X<rsup|\<complement\>>|)>>X>.
      Substituting <math|X<rsup|\<complement\>>> for <math|X> we get
      <math|u\<in\><big|cap><rsub|v<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>
      and <math|v\<in\><big|cap><rsub|u<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>.
      In other words, <math|u\<in\><value|Reach><rsup|-1><around*|(|v|)>> and
      <math|v\<in\><value|Reach><rsup|-1><around*|(|u|)>>. By
      Pointwise-Antisymmetry of <math|<value|Reach>>, <math|u=v>.

      <item><with|font-series|bold|<math|\<cal-G\>> contains the
      unit><with|font-series|bold|:> Similarly to <math|g>, for all
      <math|w\<in\>W>, <math|w\<nin\><Prop><around|(|\<emptyset\>|)>>, i.e.
      <math|W\<in\>g<around|(|w|)>>.

      <item><with|font-series|bold|<math|\<cal-G\>> is
      loop-cumulative><with|font-series|bold|:>\ 

      <\equation*>
        <tabular|<tformat|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|-1|1|1|cell-halign|r>|<table|<row|<cell|>|<cell|<around*|{|u
        \<mid\>X<rsub|1>\<in\>g<around*|(|u|)>|}>\<subseteq\>X<rsub|2>>|<cell|,\<ldots\>,>|<cell|<around*|{|u
        \<mid\>X<rsub|n>\<in\>g<around*|(|u|)>|}>\<subseteq\>X<rsub|1>>|<cell|>>|<row|<cell|<around*|(|\<rightarrow\>|)>>|<cell|X<rsub|2><rsup|\<complement\>>\<subseteq\><around*|{|u\<mid\>X<rsub|1><neg|\<in\>>g<around*|(|u|)>|}>>|<cell|,\<ldots\>,>|<cell|X<rsub|1><rsup|\<complement\>>\<subseteq\><around*|{|u\<mid\>X<rsub|n><neg|\<in\>>g<around*|(|u|)>|}>>|<cell|>>|<row|<cell|<around*|(|\<rightarrow\>|)>>|<cell|X<rsub|2><rsup|\<complement\>>\<subseteq\><around*|{|u\<mid\>u\<in\><value|Prop><around*|(|X<rsub|1><rsup|\<complement\>>|)>|}>>|<cell|,\<ldots\>,>|<cell|X<rsub|1><rsup|\<complement\>>\<subseteq\><around*|{|u\<mid\>u\<in\><value|Prop><around*|(|X<rsub|n><rsup|\<complement\>>|)>|}>>|<cell|<around*|(|by|)>>>|<row|<cell|<around*|(|\<rightarrow\>|)>>|<cell|X<rsup|\<complement\>><rsub|2>\<subseteq\><value|Prop><around*|(|X<rsub|1><rsup|\<complement\>>|)>>|<cell|,\<ldots\>,>|<cell|X<rsup|\<complement\>><rsub|1>\<subseteq\><value|Prop><around*|(|X<rsub|n><rsup|\<complement\>>|)>>|<cell|>>|<row|<cell|<around*|(|\<rightarrow\>|)>>|<cell|<value|Prop><around*|(|X<rsub|i><rsup|\<complement\>>|)>>|<cell|=>|<cell|<value|Prop><around*|(|X<rsub|j><rsup|\<complement\>>|)>>|<cell|<with|font-family|rm|for
        all >i,j <around*|(|<with|font-family|rm|by <axiom|Loop> for>
        <value|Prop>|)>>>|<row|<cell|<around*|(|\<rightarrow\>|)>>|<cell|<around*|{|u\<mid\>u\<in\><value|Prop><around*|(|X<rsub|i><rsup|\<complement\>>|)>|}>>|<cell|=>|<cell|<around*|{|u\<mid\>u\<in\><value|Prop><around*|(|X<rsub|j><rsup|\<complement\>>|)>|}>>|<cell|>>|<row|<cell|<around*|(|\<rightarrow\>|)>>|<cell|<around*|{|u\<mid\>X<rsub|i><neg|\<in\>>g<around*|(|u|)>|}>>|<cell|=>|<cell|<around*|{|u\<mid\>X<rsub|j><neg|\<in\>>g<around*|(|u|)>|}>>|<cell|<around*|(|by
        definition of g|)>>>|<row|<cell|<around*|(|\<rightarrow\>|)>>|<cell|<around*|{|u\<mid\>X<rsub|i>\<in\>g<around*|(|u|)>|}>>|<cell|=>|<cell|<around*|{|u\<mid\>X<rsub|j>\<in\>g<around*|(|u|)>|}>>|<cell|>>>>>
      </equation*>

      So in particular, if X and Y form a loop, then
      <math|<around*|{|u\<mid\>X\<in\>g<around*|(|u|)>|}>=<around*|{|u\<mid\>Y\<in\>g<around*|(|u|)>|}>>.

      <item><with|font-series|bold|<math|\<cal-G\>> is
      reflexive><with|font-series|bold|:> Follows similarly, since
      <math|X\<subseteq\><Prop><around|(|X|)>> by (Inclusion).

      <item><with|font-series|bold|<math|\<cal-G\>> is
      transitive><with|font-series|bold|:> Follows similarly, since
      <math|<Prop><around|(|X|)>=<Prop><around|(|<Prop><around|(|X|)>|)>> by
      (Idempotence).

      <item><with|font-series|bold|<math|<with|font|cal|G>> subsumes
      <math|<with|font|cal|F>>:> Suppose <math|X\<cup\><around*|(|\<cap\>f<around*|(|w|)>|)><rsup|\<complement\>>\<in\>g<around*|(|w|)>>.
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

  <section|Neighborhood Semantics <math|\<rightsquigarrow\>> Neural
  Semantics>

  <\definition>
    Let <math|\<frak-F\>=<around|\<langle\>|W,f,g|\<rangle\>>> be a
    preferential multi-frame. We define the graph relation <math|R<rsub|f>>
    and hypergraph relation <math|H<rsub|g><rsup|\<ast\>>> by:

    <\itemize>
      <item><math|u R<rsub|f>v<infix-iff>u\<in\>\<cap\>f<around|(|v|)>>

      <item><math|S H<rsub|g>v<infix-iff>S<rsup|\<complement\>>\<nin\>g<around|(|v|)>>
    </itemize>
  </definition>

  <\proposition>
    <math|R<rsub|f>> and <math|H<rsub|g>> are both reflexive, transitive, and
    acyclic, and <math|H<rsub|g>> extends <math|R<rsub|f>>.
  </proposition>

  <\proof>
    Let <math|\<cal-F\>=<around|\<langle\>|W,f|\<rangle\>>>, and
    <math|\<cal-G\>=<around|\<langle\>|W,g|\<rangle\>>>

    <\itemize>
      <item><with|font-series|bold|<math|R<rsub|f>> is reflexive:> Since
      <math|\<cal-F\>> is a reflexive frame, for all <math|u\<in\>W> we have
      <math|u\<in\>\<cap\>f<around|(|u|)>>. But by definition this means
      <math|u*R<rsub|f>*u>.

      <item><with|font-series|bold|<math|R<rsub|f>> is transitive:> Suppose
      <math|u*R<rsub|f>*v> and <math|v*R<rsub|f>*w>. So
      <math|u\<in\>\<cap\>f<around|(|v|)>> and
      <math|v\<in\>\<cap\>f<around|(|w|)>>. Our goal is to show that
      <math|u\<in\>\<cap\>f<around|(|w|)>>. So let
      <math|X\<in\>f<around|(|w|)>> \V we want to show that <math|u\<in\>X>.\ 

      Since <math|X\<in\>f<around|(|w|)>>,
      <math|<around*|{|y\<mid\>X\<in\>f<around*|(|y|)>|}>\<in\>f<around|(|w|)>>
      (since <math|\<cal-F\>> is a transitive frame). But this means that
      <math|\<cap\>f<around|(|w|)>\<subseteq\><around*|{|y\<mid\>X\<in\>f<around*|(|y|)>|}>>.
      Since <math|v\<in\>\<cap\>f<around|(|w|)>>,
      <math|X\<in\>f<around|(|v|)>>. But this means that
      <math|\<cap\>f<around|(|v|)>\<subseteq\>X>. Since
      <math|u\<in\>\<cap\>f<around|(|v|)>>, <math|u\<in\>X>.

      <item><with|font-series|bold|<math|R<rsub|f> is acyclic:>> Suppose
      <math|u<rsub|1>R<rsub|f>u<rsub|2>,\<ldots\>,u<rsub|n-1>R<rsub|f>u<rsub|n>,u<rsub|n>R<rsub|f>u<rsub|1>>.
      We will show <math|u<rsub|1>=u<rsub|n>> (the other cases are similar).
      Since <math|R<rsub|f>> is transitive, we have
      <math|u<rsub|1>R<rsub|f>u<rsub|n>>. <math|u<rsub|n>R<rsub|f>u<rsub|1>>
      gives us <math|u<rsub|n>\<in\>\<cap\>f<around*|(|u<rsub|1>|)>>, and
      <math|u<rsub|1>R<rsub|f>u<rsub|n>> gives us
      <math|u<rsub|1>\<in\>\<cap\>f<around*|(|u<rsub|n>|)>>. Since
      <math|<with|font|cal|F>> is an antisymmetric frame,
      <math|u<rsub|1>=u<rsub|n>>.

      <item><with|font-series|bold|<math|H<rsub|g>> is reflexive:> Suppose
      <math|s\<in\>S> and for contradiction <math|\<neg\>S H<rsub|g>s>, i.e.
      <math|S<rsup|\<complement\>>\<in\>g<around|(|s|)>>. Since
      <math|s\<in\>\<cap\>g<around|(|s|)>> (since <math|<with|font|cal|G>> is
      a reflexive frame), and <math|\<cap\>g<around|(|s|)>\<subseteq\>S<rsup|\<complement\>>>
      (by definition of core), <math|s\<in\>S<rsup|\<complement\>>>, which
      contradicts <math|s\<in\>S>.

      <item><with|font-series|bold|<math|H<rsub|g>> is transitive:> Suppose
      <math|T=<around*|{|v\<mid\>S H<rsub|g>v|}>> and <math|T H<rsub|g>u>. We
      want to show that <math|S H<rsub|g>u>. Suppose for contradiction that
      <math|\<neg\>S H<rsub|g>u>, i.e. <math|S<rsup|\<complement\>>\<in\>g<around*|(|u|)>>.
      Since <math|u\<in\>U>, <math|T H<rsub|g>u>, i.e.
      <math|T<rsup|\<complement\>><neg|\<in\>>g<around*|(|u|)>>. Note also
      that <math|T=<around*|{|u\<mid\>S<rsup|\<complement\>><neg|\<in\>>g<around*|(|u|)>|}>>,
      i.e. <math|T<rsup|\<complement\>>=<around*|{|u\<mid\>S<rsup|\<complement\>>\<in\>g<around*|(|u|)>|}>>.
      Since <math|<with|font|cal|G>> is a transitive frame,
      <math|T<rsup|\<complement\>>\<in\>g<around|(|u|)>>. But this
      contradicts <math|T<rsup|\<complement\>><neg|\<in\>>g<around*|(|u|)>>.

      <item><todo|Todo: We don't use this fact in the proof \V does it follow
      from <math|R<rsub|f>> being acyclic?>

      <with|font-series|bold|<math|H<rsub|g>> is acyclic:> Suppose we have a
      strong hypercycle <math|<around*|(|S<rsub|1>,\<ldots\>,S<rsub|l>,S<rsub|1>|)>>
      in <math|H<rsub|g>>. We will show that <math|S<rsub|1>=S<rsub|l>> (the
      other cases are similar). By definition, for each
      <math|<around*|(|i,i+1|)>> (including <math|<around*|(|l,1|)>>),
      <math|S<rsub|i+1>=<around*|{|u\<mid\>S<rsub|i>H<rsub|g>u|}>>. So
      <math|S<rsub|i+1>=<around*|{|u\<mid\>S<rsub|i><rsup|\<complement\>><neg|\<in\>>g<around*|(|u|)>|}>>,
      i.e.

      <\equation*>
        S<rsup|\<complement\>><rsub|i+1>=<around*|{|u\<mid\>S<rsub|i><rsup|\<complement\>>\<in\>g<around*|(|u|)>|}>
      </equation*>

      Since <with|font|cal|G> is a loop-cumulative frame,
      <math|<around*|{|u\<mid\>S<rsub|i><rsup|\<complement\>>\<in\>g<around*|(|u|)>|}>=<around*|{|u\<mid\>S<rsub|j><rsup|\<complement\>>\<in\>g<around*|(|u|)>|}>>
      for all <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>>.

      From here, we can prove <math|S<rsub|1>=S<rsub|l>>. We will show
      <math|S<rsub|1>\<subseteq\>S<rsub|l>>, but the other direction is
      similar (in fact, it's easier). Let <math|u\<in\>S<rsub|1>>. Well,

      <\equation*>
        S<rsup|\<complement\>><rsub|l>=<around*|{|u\<mid\>S<rsub|l-1><rsup|\<complement\>>\<in\>g<around*|(|u|)>|}>=<around*|{|u\<mid\>S<rsub|1><rsup|\<complement\>>\<in\>g<around*|(|u|)>|}>
      </equation*>

      We claim that <math|S<rsub|1><rsup|\<complement\>><neg|\<in\>>g<around*|(|u|)>>
      \V from which we can conclude <math|u<neg|\<in\>>S<rsub|l><rsup|\<complement\>>>,
      i.e. <math|u\<in\>S<rsub|l>> (which was our goal). Well, suppose not;
      say <math|S<rsub|1><rsup|\<complement\>>\<in\>g<around*|(|u|)>>. By
      definition of core we have <math|\<cap\>g<around*|(|u|)>\<subseteq\>S<rsub|1><rsup|\<complement\>>>.
      Since <math|<with|font|cal|G>> is a reflexive frame,
      <math|u\<in\>\<cap\>g<around*|(|u|)>>, and so
      <math|u\<in\>S<rsub|1><rsup|\<complement\>>>. This contradicts
      <math|u\<in\>S<rsub|1>> from before.

      <item><with|font-series|bold|<math|H<rsub|g>> extends
      <math|R<rsub|f>>:> Suppose <math|S H<rsub|g>v>. By definition,
      <math|S<rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>. Since
      <math|<with|font|cal|G>> subsumes <with|font|cal|F>,
      <math|S<rsup|\<complement\>>\<cup\><around*|(|\<cap\>f<around*|(|v|)>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>.
      But this means that <math|<around*|(|S<rsup|\<complement\>>\<cup\><around*|(|\<cap\>f<around*|(|v|)>|)><rsup|\<complement\>>|)><rsup|\<complement\>>H<rsub|g>v>.
      Distributing the outer complement, we get
      <math|<around*|(|S\<cap\><around*|(|\<cap\>f<around*|(|v|)>|)>|)>H<rsub|g>v>.
      By definition of <math|R<rsub|f>>, we conclude that
      <math|<around*|(|S\<cap\><around*|{|u\<mid\>u
      R<rsub|f>v|}>|)>H<rsub|g>v>.
    </itemize>

    \;
  </proof>

  <\proposition>
    <dueto|Pacuit><label|prop-R*-and-f>For all <math|w\<in\>W>,

    <\equation*>
      S\<in\>f<around|(|w|)><infix-iff><around*|{|v\<mid\>v
      R<rsub|f>w|}>\<subseteq\>S
    </equation*>
  </proposition>

  <\proof>
    (<math|\<rightarrow\>>) Suppose <math|S\<in\>f<around|(|w|)>>, and let
    <math|v> be such that <math|v R<rsub|f> w>. So
    <math|v\<in\>\<cap\>f<around|(|w|)>>, and so in particular
    <math|v\<in\>S>.

    (<math|\<leftarrow\>>) Now suppose <math|<around*|{|v\<mid\>v
    R<rsub|f>w|}>\<subseteq\>S>. Note that by definition of <math|R<rsub|f>>,
    <math|\<cap\>f<around|(|w|)>\<subseteq\><around*|{|v\<mid\>v
    R<rsub|f>w|}>> (any <math|v> in the core will be <math|v R<rsub|f> w>).
    Since <math|\<cal-F\>> is closed under finite intersections and
    supersets, <math|S\<in\>f<around|(|w|)>>.
  </proof>

  <\proposition>
    <label|prop-H*-and-g>For all <math|w\<in\>W>,

    <\equation*>
      S\<in\>g<around|(|w|)><infix-iff>\<neg\>S<rsup|\<complement\>>*H<rsub|g>*w
    </equation*>
  </proposition>

  <\proof>
    By definition, <math|S\<in\>g<around|(|w|)>> iff
    <math|\<neg\>S\<nin\>g<around|(|w|)>> iff
    <math|\<neg\>S<rsup|\<complement\>>*H<rsub|g>*w>.
  </proof>

  <todo|TODO: Clean up and streamline the <math|<value|hash>> function & its
  properties, etc. Make sure that the (Loop) property doesn't secretly show
  up here.>

  <\definition>
    Suppose we have net <math|<Net>> and node <math|n\<in\>N> with incoming
    nodes <math|m<rsub|1>,\<ldots\>,m<rsub|k>,<around|(|m<rsub|i>,n|)>\<in\>E>.
    Let <math|<hash>:\<cal-P\><around|(|<around*|{|m<rsub|1>,\<ldots\>,m<rsub|k>|}>|)>\<times\><with|font|Bbb|\<bbb-N\>><rsup|k>\<to\><with|font|Bbb|\<bbb-N\>>>
    be defined by

    <\equation*>
      <hash><around|(|S,<wide|w|\<vect\>>|)>=<big|prod><rsub|m<rsub|i>\<in\>S>w<rsub|i>
    </equation*>
  </definition>

  <\proposition>
    <math|<hash><around|(|S,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,n|)>|)>:\<cal-P\><around|(|<around*|{|m<rsub|1>,\<ldots\>,m<rsub|k>|}>|)>\<to\><Primes><rsub|k>>,
    where

    <\equation*>
      <Primes><rsub|k>=<around*|{|n\<in\><with|font|Bbb|N >\<mid\>n is the
      product of some subset of primes <around*|{|p<rsub|1>,\<ldots\>,p<rsub|k>|}>|}>
    </equation*>

    is bijective (and so has a well-defined inverse <math|<hash><rsup|-1>>).
  </proposition>

  <\proof>
    To show that <math|<hash>> is injective, suppose
    <math|<hash><around|(|S<rsub|1>|)>=<hash><around|(|S<rsub|2>|)>>. So
    <math|<big|prod><rsub|m<rsub|i>\<in\>S<rsub|1>>p<rsub|i>=<big|prod><rsub|m<rsub|i>\<in\>S<rsub|2>>p<rsub|i>>,
    and since products of primes are unique,
    <math|<around*|{|p<rsub|i>\<mid\>m<rsub|i>\<in\>S<rsub|1>|}>=<around*|{|p<rsub|i>\<mid\>m<rsub|i>\<in\>S<rsub|2>|}>>.
    And so <math|S<rsub|1>=S<rsub|2>>.

    To show that <math|<hash>> is surjective, let
    <math|x\<in\><Primes><rsub|k>>. Now let
    <math|S=<around*|{|m<rsub|i>\<mid\>p<rsub|i> divides x|}>>. Then
    <math|<hash><around|(|S|)>=<big|prod><rsub|m<rsub|i>\<in\>S>p<rsub|i>=<big|prod><rsub|(p<rsub|i>
    divides x<with|font-size|0.84|<text|>)>>p<rsub|i>=x>.
  </proof>

  <\definition>
    Let <math|\<frak-F\>=<around|\<langle\>|W,f,g|\<rangle\>>> be a
    preferential multi-frame, and let <math|R<rsub|f>,H<rsub|g>> be the
    reflexive-transitive reductions of <math|R<rsup|\<ast\>><rsub|f>,H<rsup|\<ast\>><rsub|g>>.
    Its <key|simulation net> <math|<Net><rsup|\<bullet\>>=<around|\<langle\>|N,E,W,A,O|\<rangle\>>>
    is the BFNN given by:

    <\itemize>
      <item><math|N=W>

      <item><math|E=R<rsub|f>>
    </itemize>

    Now let <math|m<rsub|1>,\<ldots\>,m<rsub|k>> list those nodes such that
    <math|<around*|(|m<rsub|i>,n|)>\<in\>E>.

    <\itemize>
      <item><math|W<around|(|m<rsub|i>,n|)>=p<rsub|i>>, the <math|i>th prime
      number.

      <item><math|A<rsup|<around|(|n|)>><around|(|<wide|x|\<vect\>>,<wide|w|\<vect\>>|)>=<hash><around|(|<around*|{|m<rsub|i>\<mid\><around*|(|m<rsub|i>,n|)>\<in\>E<infix-and>x<rsub|i>=1|}>,<wide|w|\<vect\>>|)>>

      <item><math|O<rsup|<around|(|n|)>><around|(|x|)>=1> iff
      <math|<hash><rsup|-1><around|(|x|)><around|[|0|]>H<rsub|g> n>
      (<math|<hash><rsup|-1>> is well-defined in special circumstances, see
      the next proposition)
    </itemize>

    Moreover, given a valuation function <math|V>, the <key|simulation net
    model> <math|<around|\<langle\>|<Net><rsup|\<bullet\>>,<semantics|\<cdot\>>|\<rangle\>>>
    based on <math|<Net>> has for all propositions <math|p>:

    <\equation*>
      <semantics|p><rsub|<Net><rsup|\<bullet\>>>=V<around|(|p|)>
    </equation*>
  </definition>

  <\claim>
    <math|<value|Net><rsup|\<bullet\>>> is a BFNN.
  </claim>

  <\proof>
    Clearly <math|<value|Net><rsup|\<bullet\>>> is a binary ANN. We check the
    rest of the conditions:

    <\description>
      <item*|<math|<value|Net><rsup|\<bullet\>>> is
      feed-forward><math|E=R<rsub|f>> cannot have a cycle where all edges
      have nonzero weights because <math|R<rsub|f>> is acyclic.

      <item*|<math|O<rsup|<around|(|n|)>>\<circ\>A<rsup|<around|(|n|)>>> is
      zero at zero><math|O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<wide|0|\<vect\>>,<wide|w|\<vect\>>|)>|)>=0>,
      since we cannot have <math|<hash><rsup|-1><around|(|<hash><around|(|\<emptyset\>|)>|)>=\<emptyset\>*H
      n>.

      <item*|<math|O<rsup|<around|(|n|)>>\<circ\>A<rsup|<around|(|n|)>>> is
      monotonically increasing>Let <math|<wide|w|\<vect\>><rsub|1>,<wide|w|\<vect\>><rsub|2>>
      be such that <math|O> is well-defined (i.e. are vectors of prime
      numbers), and suppose <math|<wide|w|\<vect\>><rsub|1>\<less\><wide|w|\<vect\>><rsub|2>>.
      If <math|O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<wide|x|\<vect\>>,<wide|w<rsub|1>|\<vect\>>|)>|)>=1>,
      then <math|<hash><rsup|-1><around|(|<hash><around|(|<wide|x|\<vect\>>,<wide|w<rsub|1>|\<vect\>>|)>|)><around|[|0|]>*Hn>.
      But this just means <math|<around*|{|m<rsub|i>\<mid\>x<rsub|i>=1|}>H
      n>. And so <math|<hash><rsup|-1><around|(|<hash><around|(|<wide|x|\<vect\>>,<wide|w<rsub|2>|\<vect\>>|)>|)><around|[|0|]>*H
      n>. But then <math|O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<wide|x|\<vect\>>,<wide|w<rsub|2>|\<vect\>>|)>|)>=1>.

      The main point here is just that <math|<wide|w<rsub|1>|\<vect\>>> and
      <math|<wide|w<rsub|2>|\<vect\>>> are just indexing the set in question,
      and their actual values don't affect the final output.
    </description>
  </proof>

  <\lemma>
    <label|lemma-Reach-and-R*><math|<Reach><rsub|<Net><rsup|\<bullet\>>><around|(|S|)>=<around*|{|v\<mid\>\<exists\>u\<in\>S
    such that u R<rsub|f>v|}>>.
  </lemma>

  <\proof>
    For the <math|(\<supseteq\>)> direction, suppose there is a
    <math|u\<in\>S> such that <math|u R<rsub|f> v> and proceed by induction
    on the length of this path. If the path has length 0, <math|v\<in\>S>,
    and so <math|v\<in\><Reach><around|(|S|)>>. Otherwise, let <math|u>
    immediately precede <math|v> on this path. By inductive hypothesis
    <math|u\<in\><Reach><around|(|S|)>>. Since
    <math|<around|(|u,v|)>\<in\>E>, <math|v\<in\><Reach><around|(|S|)>>.

    Now for the <math|(\<subseteq\>)> direction. Suppose
    <math|v\<in\><Reach><around|(|S|)>>, and proceed by induction on
    <math|<Reach>>.

    <\description>
      <item*|Base step><math|v\<in\>S>. Since <math|R<rsub|f>> is reflexive,
      <math|v R<rsub|f> v>, and we are done.

      <item*|Inductive step>There is <math|u\<in\><Reach><around|(|S|)>> such
      that <math|<around|(|u,v|)>\<in\>E> (and so
      <math|<around|(|u,v|)>\<in\>R<rsub|f>>). By inductive hypothesis, there
      is a <math|t\<in\>S> such that <math|t R<rsub|f> u>. Since
      <math|R<rsub|f>> is transitive, <math|t R<rsub|f> v> as well.
    </description>
  </proof>

  <\lemma>
    <label|lemma-Prop-and-H*><math|<Prop><rsub|<Net><rsup|\<bullet\>>><around|(|S|)>=<around*|{|n\<mid\>S
    H<rsub|g>n|}>>
  </lemma>

  <\proof>
    For the <math|(\<supseteq\>)> direction, suppose <math|S H<rsub|g> n>. By
    Proposition <reference|prop-hyperpath> there is a strong hyperpath from
    <math|S> to <math|n> in <math|H<rsub|g>>. We show that
    <math|n\<in\>><math|<Prop><rsub|<value|Net><rsup|\<bullet\>>><around|(|S|)>>
    by induction on the length of this hyperpath:

    <\description>
      <item*|Base step>We have a strong hyperpath of length <math|1>,
      <math|<around|(|S|)>> with <math|n\<in\>S>. So
      <math|n\<in\><Prop><rsub|<value|Net><rsup|\<bullet\>>><around|(|S|)>>.

      <item*|Inductive step>Say the hyperpath is
      <math|<around|(|S=S<rsub|1>,S<rsub|2>,\<ldots\>,S<rsub|l>|)>>, with
      <math|n\<in\>S<rsub|l>>. By definition we have

      <\equation*>
        S<rsub|l>=<around*|{|u\<mid\>S<rsub|l-1> H<rsup|><rsub|g>u|}>
      </equation*>

      In particular, <math|S<rsub|l-1>H<rsub|g>n>. From here, we have

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|>|<cell|S<rsub|l-1>H<rsub|g>n>|<cell|>>|<row|<cell|<around*|(|\<rightarrow\>|)>>|<cell|<around*|(|S<rsub|l-1>\<cap\><around*|{|m<rsub|i>\<mid\>m<rsub|i>R<rsub|f>n|}>|)>H<rsub|g>n>|<cell|<around*|(|since
        H<rsub|g> extends R<rsub|f>|)>>>|<row|<around*|(|\<rightarrow\>|)>|<cell|<around*|{|m<rsub|i>\<mid\>m<rsub|i>\<in\>S<rsub|l-1><infix-and><around*|(|m<rsub|i>,n|)>\<in\>E|}>H<rsub|g>n>|<around*|(|by
        choice of E|)>>|<row|<cell|<around*|(|\<rightarrow\>|)>>|<cell|<around*|{|m<rsub|i>\<mid\>m<rsub|i>\<in\><value|Prop><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)><infix-and><around*|(|m<rsub|i>,n|)>\<in\>E|}>H<rsub|g>n>|<cell|<around*|(|by
        Inductive Hypothesis|)>>>|<row|<cell|<around*|(|\<rightarrow\>|)>>|<cell|<hash><rsup|-1><around|(|<hash><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<value|Prop><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>><around|(|m<rsub|i>|)>,<smash|<wide|W|\<vect\>>><around|(|m<rsub|i>,n|)>|)>|)><around|[|0|]>*H<rsub|g>
        n>|<cell|<around*|(|by definition of
        <value|hash>|)>>>|<row|<cell|<around*|(|\<rightarrow\>|)>>|<cell|O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<Prop><rsub|<value|Net><rsup|\<bullet\>>><around|(|S|)>><around|(|m<rsub|i>|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,n|)>|)>|)>=1>|<cell|<around*|(|by
        choice of O and A|)>>>>>>
      </equation*>

      By definition, <math|n\<in\><value|Prop><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>>.
    </description>

    As for the <math|(\<subseteq\>)> direction, suppose
    <math|n\<in\><Prop><rsub|<value|Net><rsup|\<bullet\>>><around|(|S|)>>,
    and proceed by induction on <math|<Prop>>.

    <\description>
      <item*|Base step><math|n\<in\>S>. Since <math|H<rsub|g>> is reflexive,
      <math|S H<rsub|g> n>.

      <item*|Inductive step>Let <math|m<rsub|1>,\<ldots\>,m<rsub|k>> list
      those nodes such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>. We have

      <\equation*>
        O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<Prop><rsub|<value|Net><rsup|\<bullet\>>><around|(|S|)>><around|(|m<rsub|i>|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,n|)>|)>|)>=1
      </equation*>

      Let <math|T=<around*|{|u\<mid\>S H<rsub|g>u|}>>. By our inductive
      hypothesis,

      <\equation*>
        O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|T><around|(|m<rsub|i>|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,n|)>|)>|)>=1
      </equation*>

      By choice of <math|O> and <math|A>,

      <\equation*>
        <hash><rsup|-1><around|(|<hash><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|T><around|(|m<rsub|i>|)>,<smash|<wide|W|\<vect\>>><around|(|m<rsub|i>,n|)>|)>|)><around|[|0|]><op|H<rsub|g>>n
      </equation*>

      \ i.e. <math|T<op|H<rsub|g>>n>. Since <math|H<rsub|g>> is transitive,
      <math|S<op|H<rsub|g>>n>.
    </description>

    \;
  </proof>

  <\theorem>
    Let <math|\<cal-M\>> be a model based on a preferential multi-frame
    <math|\<frak-F\>>, and let <math|<around|\<langle\>|<Net><rsup|\<bullet\>>,<semantics|\<cdot\>>|\<rangle\>>>
    be the corresponding simulation net model. We have

    <\equation*>
      \<cal-M\>,w\<models\>\<varphi\>*<infix-iff>w\<in\><semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>>
    </equation*>
  </theorem>

  <\proof>
    By induction on <math|\<varphi\>>.

    <\description>
      <with|font-series|bold|<math|p> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<twith|table-halign|C>|<table|<row|<cell|<Model>,w\<models\>p>|<cell|<text|iff
        >>|<cell|w\<in\>V<around|(|p|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|p><rsub|<Net><rsup|\<bullet\>>>>|<cell|>>>>>
      </equation*>

      <with|font-series|bold|<math|\<neg\>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<twith|table-halign|C>|<table|<row|<cell|<Model>,w\<models\>\<neg\>\<varphi\>>|<cell|<text|iff
        >>|<cell|<Model>,w<neg|\<models\>>\<varphi\>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<nin\><semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|\<neg\>\<varphi\>><rsub|<Net><rsup|\<bullet\>>>>|<cell|>>>>>
      </equation*>

      <with|font-series|bold|<math|\<varphi\>\<wedge\>\<psi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model>,w\<models\>\<varphi\>\<wedge\>\<psi\>>|<cell|<text|iff
        >>|<cell|<Model>,w\<models\>\<varphi\><infix-and><Model>,w\<models\>\<psi\>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>><infix-and>w\<in\><semantics|\<psi\>><rsub|<Net><rsup|\<bullet\>>>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|\<varphi\>\<wedge\>\<psi\>><rsub|<Net><rsup|\<bullet\>>>>|<cell|>>>>>
      </equation*>

      <with|font-series|bold|<math|<diaKnow>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model>,w\<models\><diaKnow>\<varphi\>>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\><value|Model>,u<neg|\<models\>>\<varphi\>|}>\<nin\>f<around|(|w|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\>u<neg|\<in\>><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>>|}><rsub|>\<nin\>f<around|(|w|)>>|<cell|<text|(Inductive
        Hypothesis)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\>u R<rsup|<rsub|>><rsub|f>w|}>\<nsubseteq\><around*|{|u\<mid\>u<neg|\<in\>><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>>|}>>|<cell|<text|(by
        Proposition <reference|prop-R*-and-f>)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|\<exists\>u*<text|such that >u R<rsub|f> w*<text|and
        >u\<in\><semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Reach><rsub|<Net><rsup|\<bullet\>>><around|(|<semantics|\<varphi\>>|)>>|<cell|<text|(by
        Lemma <reference|lemma-Reach-and-R*>)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaKnow>\<varphi\>><rsub|<Net><rsup|\<bullet\>>>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>

      <with|font-series|bold|<math|<diaTyp>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model>,w\<models\><diaTyp>\<varphi\>>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\><value|Model>,u<neg|\<models\>>\<varphi\>|}>\<nin\>g<around|(|w|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\>u<neg|\<in\>><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>>|}>\<nin\>g<around|(|w|)>>|<cell|<text|(Inductive
        Hypothesis)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>><rsup|\<complement\>>\<nin\>g<around|(|w|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>>H<rsub|g>*w>|<cell|<text|(by
        Proposition <reference|prop-H*-and-g>)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Prop><rsub|<Net><rsup|\<bullet\>>><around|(|<semantics|\<varphi\>>|)>>|<cell|<text|(by
        Lemma <reference|lemma-Prop-and-H*>)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaTyp>\<varphi\>><rsub|<Net><rsup|\<bullet\>>>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>
    </description>
  </proof>

  <\corollary>
    <math|\<cal-M\>\<models\>\<varphi\>> iff
    <math|<Net><rsup|\<bullet\>>\<models\>\<varphi\>>.
  </corollary>

  <\proof>
    \;

    <\equation*>
      <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|3|3|cell-rborder|0ln>|<table|<row|<cell|<Model>\<models\>\<varphi\>>|<cell|<text|iff
      >>|<cell|<Model>,w\<models\>\<varphi\>*<text|for all
      >w\<in\>W=N>>|<row|<cell|>|<cell|<text|iff
      >>|<cell|w\<in\><semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>><text|for
      all >w\<in\>N>>|<row|<cell|>|<cell|<text|iff
      >>|<cell|<semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>>=N>>|<row|<cell|>|<cell|<text|iff
      >>|<cell|<Net><rsup|\<bullet\>>\<models\>\<varphi\>>>>>>
    </equation*>
  </proof>

  <section|Soundness and Completeness>

  <todo|Soundness is straightforward, it's just a check that the properties
  hold for all models based on the frame.>

  <todo|Corollary: Soundness of neural semantics!>

  <todo|[The plan for completeness: \ High-level describe that we can do the
  canonical model construction (from, e.g., Pacuit, see page 65, second to
  last paragraph) & Lindenbaum Lemma stuff for our particular logic.
  \ [actually state canonical model definition] \ We then, as usual, prove
  the truth lemma [actually state truth lemma] \ The last thing to show is
  that our canonical model's frame is a preferential frame, i.e. satisfies
  all the right properties \ [then put it all together]]>

  <todo|Strong completeness follows straightforwardly from weak completeness>

  <todo|Corollary: Strong completeness for neural semantics!>

  \;

  \;

  <section|Dynamics of Neural Network Update><em|>

  <\bibliography|bib|tm-plain|Arxiv2022/neurosymbolic>
    <\bib-list|3>
      <bibitem*|1><label|bib-leitgeb2001nonmonotonic>Hannes Leitgeb.
      <newblock>Nonmonotonic reasoning by inhibition nets.
      <newblock><with|font-shape|italic|Artificial Intelligence>,
      128(1-2):161\U201, 2001.<newblock>

      <bibitem*|2><label|bib-pacuit2017neighborhood>Eric Pacuit.
      <newblock><with|font-shape|italic|Neighborhood semantics for modal
      logic>. <newblock>Springer, 2017.<newblock>

      <bibitem*|3><label|bib-thakur2009linear>Mayur Thakur<localize| and
      >Rahul Tripathi. <newblock>Linear connectivity problems in directed
      hypergraphs. <newblock><with|font-shape|italic|Theoretical Computer
      Science>, 410(27-29):2592\U2618, 2009.<newblock>
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|bib-prefix|bib>
    <associate|font-base-size|11>
    <associate|global-title|Some Notes on Completeness>
    <associate|item-vsep|0.5spc>
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
    <associate|auto-10|<tuple|4|10>>
    <associate|auto-11|<tuple|5|14>>
    <associate|auto-12|<tuple|6|14>>
    <associate|auto-13|<tuple|6|14>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|1.3|4>>
    <associate|auto-5|<tuple|1.4|4>>
    <associate|auto-6|<tuple|1.5|6>>
    <associate|auto-7|<tuple|1.6|7>>
    <associate|auto-8|<tuple|2|7>>
    <associate|auto-9|<tuple|3|8>>
    <associate|bib-leitgeb2001nonmonotonic|<tuple|1|14>>
    <associate|bib-pacuit2017neighborhood|<tuple|2|14>>
    <associate|bib-thakur2009linear|<tuple|3|14>>
    <associate|lemma-Prop-and-H*|<tuple|4.10|12>>
    <associate|lemma-Reach-and-R*|<tuple|4.9|12>>
    <associate|prop-H*-and-g|<tuple|4.4|11>>
    <associate|prop-R*-and-f|<tuple|4.3|11>>
    <associate|prop-filter-consistency|<tuple|1.31|7>>
    <associate|prop-hyperpath|<tuple|1.23|5>>
    <associate|prop-reach-inverse|<tuple|1.8|2>>
    <associate|thm:prop-props|<tuple|1.9|2>>
    <associate|thm:reach-props|<tuple|1.10|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      thakur2009linear

      pacuit2017neighborhood

      leitgeb2001nonmonotonic
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|1<space|2spc>Definitions>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Nets
      and<with|toc-prefix|<quote|toc>|> Forward Propagation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Properties of
      <with|font-family|<quote|ss>|Prop> and
      <with|font-family|<quote|ss>|Reach>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Syntax and (Neural)
      Semantics <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Hypergraphs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Neighborhood Semantics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Rules and Axioms
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|2<space|2spc>Are
      the Semantics Flipped?> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|3<space|2spc>Neural
      Semantics <with|mode|<quote|math>|\<rightsquigarrow\>> Neighborhood
      Semantics> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|4<space|2spc>Neighborhood
      Semantics <with|mode|<quote|math>|\<rightsquigarrow\>> Neural
      Semantics> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|5<space|2spc>Soundness
      and Completeness> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|6<space|2spc>Dynamics
      of Neural Network Update> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|<with|color|<quote|#0749ac>|References>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-13><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>