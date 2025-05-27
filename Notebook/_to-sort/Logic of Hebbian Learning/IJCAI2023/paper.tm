<TeXmacs|2.1.1>

<style|tmconf>

<\body>
  <\hide-preamble>
    \;

    <assign|bibliography-text|<macro|<inactive|<localize|References>>>>
  </hide-preamble>

  <doc-data|<doc-title|Neural Semantics, <with|font-series|bold|á> la
  Mode:<next-line>Complete Modal Logics for Neural Network
  Dynamics>|<doc-author|<author-data|<author-name|Anonymous Submission>>>>

  <abstract-data|<abstract|>>

  <section|<with|color|#000000|Introduction>>

  [\PThis paper is a marriage of the bodies of work on neural semantics and
  dynamic epistemic modal logic.\Q]

  [Introduce previous work on (what we call) Neural Semantics \U a formal
  bridge between neural network architectures] [The insight that a binary,
  feed-forward neural network's predictions correspond to non-monotonic
  conditionals] [Completeness theorem for conditionals] [Almost all previous
  work focuses on conditionals \U note exceptions]

  In this paper, we refashion this idea within the language of modal logic.
  We consider sentences of the form:

  <\equation*>
    \<varphi\>\<colons\>=p\<mid\> \<neg\>\<varphi\>\<mid\> \<varphi\>
    \<wedge\>\<varphi\>\<mid\> K\<varphi\>\<mid\> T\<varphi\>
  </equation*>

  where <math|K\<varphi\>> is read \Pthe agent knows <math|\<varphi\>>\Q and
  <math|T\<varphi\>> is read \Pthe agent finds <math|\<varphi\> > typical.\Q
  We interpret[] [State neural interpretation right here (with a table)]

  Our main result is a complete axiomatization of this neural semantics. But
  what we see on the road to completeness is interesting in its own right:
  Binary, feedforward neural networks can simulate (and are simulable by)
  certain neighborhood semantics frames, which we characterize.\ 

  This is not merely an aesthetic overhaul of previous work on neural
  networks and conditionals \V we have two [motivating] reasons for working
  in the modal setting. First, our logic can express facts about the net that
  conditionals cannot, such as the fact that the net is feed-forward [FILL IN
  <math|T> version].\ 

  Second, modal logics have native support for dynamic update operators. This
  means that our logic can easily be extended with operators for neural
  network learning. We demonstrate this with a complete axiomatization of our
  logic extended with the operator <math|[\<varphi\>]<rsup|\<ast\>
  ><rsup|>\<psi\>> (\Pevaluate <math|\<psi\>> after iteratively performing
  Hebbian update on <math|\<varphi\>>\Q).\ 

  [TODO (put somewhere): Tie in relationship to the neural model building
  work of Garcez, Gabbay] [Tie in Keith Stenning's work] [Implications in AI;
  implications for cognitive science more broadly]

  <section|Background>

  <subsection|Neural Semantics>

  <subsection|Neighborhood Semantics>

  <section|From Neural Nets to Frames and Back>

  <subsection|Nets to Frames>

  <subsection|A Detour through Hypergraphs>

  <subsection|Frames to Nets>

  <section|A Complete Axiomatization>

  <subsection|The Proof System>

  <subsection|Soundness and Completeness>

  <section|Dynamic Operators for Neural Net Update>

  <section|Conclusions and Future Directions>

  <section|Acknowledgements>

  <\bibliography|bib|tm-plain|old texs/LogicOfHebbianLearning/neurosymbolic>
    \;
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|11>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-screen-margin|false>
    <associate|page-type|letter>
    <associate|page-width|auto>
    <associate|par-columns|2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4.1|1>>
    <associate|auto-11|<tuple|4.2|1>>
    <associate|auto-12|<tuple|5|1>>
    <associate|auto-13|<tuple|6|1>>
    <associate|auto-14|<tuple|7|1>>
    <associate|auto-15|<tuple|7|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|2.1|1>>
    <associate|auto-4|<tuple|2.2|1>>
    <associate|auto-5|<tuple|3|1>>
    <associate|auto-6|<tuple|3.1|1>>
    <associate|auto-7|<tuple|3.2|1>>
    <associate|auto-8|<tuple|3.3|1>>
    <associate|auto-9|<tuple|4|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|1<space|2spc><with|color|<quote|#000000>|Introduction>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|2<space|2spc>Background>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Neural Semantics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Neighborhood Semantics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|3<space|2spc>From
      Neural Nets to Frames and Back> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Nets to Frames
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>A Detour through Hypergraphs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Frames to Nets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|4<space|2spc>A
      Complete Axiomatization> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>The Proof System
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Soundness and Completeness
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|5<space|2spc>Dynamic
      Operators for Neural Net Update> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|6<space|2spc>Conclusions
      and Future Directions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|7<space|2spc>Acknowledgements>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-15><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>