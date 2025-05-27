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

    <assign|Know|<with|font-series|bold|<text|K>>>

    <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

    <assign|Typ|<with|font-series|bold|<text|T>>>

    <assign|diaTyp|\<langle\><value|Typ>\<rangle\>>

    <assign|Reach|<with|font-family|ss|Reach>>

    <assign|Prop|<with|font-family|ss|Prop>>

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
    Fuzzy Neural Semantics
  </doc-title>>

  <section|Introduction>

  At FLAIRS, anonymous reviewer #3 said about our neural semantics work that:

  <\quote-env>
    \PThe outputs for the neurons in this model are binary which from the
    deep learning algorithm point of view is completely wrong.\Q
  </quote-env>

  The point of these notes is to finally address this criticism. I'll show
  that if our underlying language is crisp (i.e. consists of terms such as
  booleans, modalities, and conditionals), fuzzy feedforward nets satisfy
  <with|font-shape|italic|exactly> the same logical properties as their
  binary counterparts. This means we can lift the soundness and completeness
  (i.e. verification and model-building) of a binary neural network to the
  fuzzy setting. So what we learn in the simpler binary setting is not at all
  irrelevant to neural networks used in practice.

  However, the same isn't true if our underlying language is
  <with|font-shape|italic|fuzzy> or <with|font-shape|italic|probabilistic>.
  So I'll also consider what kinds of properties we can express that are
  unique to fuzzy neural networks.

  <section|What I Mean by \PNeural Semantics\Q>

  \;

  <section|From Binary to Fuzzy Nets (and Back)>

  \;

  <section|Probabilistic Properties of ANNs>

  \;

  \;

  Come up with a better name for \Plogics with neural network
  models\Q<text-dots>

  <todo|Todo: Define the language and logic in general terms!>

  <todo|Todo: Give Balkenius&Gardenfors, Garcez, Giordano, and my own logics
  as examples of this>

  <todo|Gives us a framework to ask the questions: Soundness (Verification),
  Completeness (Model Building)>

  <todo|For our examples, mention which we know are sound and which we know
  are complete (and for which case \U binary or fuzzy!)>

  <todo|Also talk about the Initial Interpretation of the net (we often know
  this in the fuzzy case)>

  \;

  <todo|Bottom line: Choice of binary vs fuzzy doesn't matter! We can lift
  results from binary nets to the fuzzy case (can we do the same for the
  probabilistic case? What does this mean?)>

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|11>
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
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|4|1>>
    <associate|auto-5|<tuple|5|1>>
    <associate|auto-6|<tuple|6|1>>
    <associate|auto-7|<tuple|7|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|2<space|2spc>Background>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|3<space|2spc>Soundness
      for Fuzzy Nets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|4<space|2spc>Completeness
      for Fuzzy Nets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|5<space|2spc>Probabilistic
      Properties of ANNs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|6<space|2spc>Related
      Work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|7<space|2spc>Conclusions>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>