<TeXmacs|2.1.1>

<style|<tuple|generic|termes-font>>

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

    <assign|appendix-text|<macro|<change-case|<localize|appendix>|Upcase>>>
  </hide-preamble>

  <doc-data|<doc-title|Some Notes on Recurrent Nets>>

  Simon Odense and Artur d'Avila Garcez in \P<hlink|A Semantic Framework for
  Neuro-Symbolic Computing|https://arxiv.org/pdf/2212.12050.pdf>\Q propose
  that we can give a logical theory of neural networks by assigning logical
  operators to <with|font-shape|italic|stable states> in a net. Stable states
  are also the key ingredient that makes Balkenius, Gardenfors, and Leitgeb's
  systems work. Odense and Garcez give three possible scenarios for the
  stable state of an operator <math|<with|font-family|ss|op>> over sets of
  neurons:

  <\enumerate>
    <item><math|<with|font-family|ss|op>> has a <key|single fixed point>,
    i.e. if we apply <with|font-family|ss|op> repeatedly on <math|S>, we
    eventually reach a unique state.

    <with|font-series|bold|Note:> This is a very special situation, and in
    logic we could call <math|<with|font-family|ss|op><rsup|\<ast\>>> a
    <with|font-shape|italic|closure operator> (it is reflexive, transitive,
    and possibly monotonic (although neural network propagation relaxes
    monotonicity)).

    <item><with|font-family|ss|op> will eventually <key|stabilize into a
    cycle>, i.e. if we repeatedly apply <with|font-family|ss|op> on <math|S>,
    we cycle through a finite set of states.

    <item><with|font-family|ss|op> has <key|chaotic behavior>, i.e. it does
    not stabilize at all, and oscillates through infinitely many states.

    <with|font-series|bold|Note:> (3) can only occur if the states are
    <with|font-shape|italic|fuzzy>, since there are only finitely many
    <with|font-shape|italic|binary> states in a binary net.
  </enumerate>

  They state that scenario (3) is not in the scope of their survey. But in
  fact, scenario (3) can be further divided into two scenarios:

  <\description>
    <item*|3.1><with|font-family|ss|op>'s infinitely many states
    <key|eventually converge>

    <item*|3.2><with|font-family|ss|op>'s infinitely many states
    <key|eventually diverge>
  </description>

  Forward propagation in feedforward nets necessarily follows (1), i.e.
  eventually converges to a single fixed point from initial state <math|S>.
  This allows us to characterize this operator as
  <with|font-shape|italic|reflexive, transitive, partially monotonic> over a
  monotonic, acyclic graph <math|G>.

  How about recurrent nets? If we have feedback connections, we obviously
  can't guarantee (1) \V a counterexample net uses feedback to change the
  state on repeat. (The <hlink|Wikipedia Article|https://en.wikipedia.org/wiki/Recurrent_neural_network>
  on RNNs calls this <with|font-shape|italic|infinite vs finite impulse
  response>, and points out that RNNs have infinite impulse response, in
  contrast to convolutional nets which have finite impulse (single fixed
  point), but are still able to encode temporal information).

  <with|font-series|bold|Infinite impulse response> - the network cannot be
  \Punrolled\Q and replaced with a feedforward neural network. This is
  typically what is meant by recurrent neural net.

  <with|font-series|bold|Questions for later:> When do RNNs stabilize into a
  cycle? When do RNNs converge? When do RNNs diverge? How do these situations
  affect the logical axioms for forward propagation?
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
  </collection>
</initial>