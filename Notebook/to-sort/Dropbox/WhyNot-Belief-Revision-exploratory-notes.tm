<TeXmacs|2.1.1>

<style|<tuple|tmconf|compact-list|number-long-article|termes-font>>

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

  <doc-data|<\doc-title>
    Exploratory Notes:

    Belief Revision with \PWhy Not\Q
  </doc-title>>

  <section*|Scenarios>

  <todo|Show how belief revision fails to correctly handle
  <with|font-shape|italic|different strengths of belief> as well as
  <with|font-shape|italic|different levels of trust> in incoming information.
  Come up with 3 or 4 different good examples. e.g. say a child on their
  first day of school is told <math|X> by another student, but they have
  always been told <math|\<neg\>X> by their mother. Show how normal belief
  revision will accept <math|X> (say because this is the minimal revision of
  the belief base, i.e. <math|\<neg\>X> is quite a ridiculous thing to
  believe \V pledge of alleigance is a good example), but we would really
  expect a child to cling to <math|\<neg\>X> and reject <math|X> based on
  their <with|font-shape|italic|trust> in the person telling them the
  information.>

  <section*|A Solution>

  Introduce contingency into our syntax! We will have a new operator
  <math|?\<varphi\>> (pronounced \Pwhy not <math|\<varphi\>>\Q, come up with
  a better symbol), which indicates that <math|\<varphi\>> holds in our
  current knowledge base, but with less strength than <math|\<varphi\>>
  alone. We can further weaken the strength of belief by nesting why-nots:
  <math|???\<varphi\>>.

  <\equation*>
    p\<mid\>\<neg\>\<varphi\>\<mid\>\<varphi\>\<wedge\>\<psi\>\<mid\>\<box\>\<varphi\>\<mid\>?\<varphi\>\<mid\><around*|[|\<varphi\>|]>\<varphi\>
  </equation*>

  We model this with an ordering <math|\<less\>> over formulas
  <math|\<varphi\>\<in\>K> (alternatively, we could do a more traditional
  ordering <math|\<less\>> over worlds in a Kripke model \V this would let us
  bridge this work to Dynamic Epistemic work more easily). The idea is that
  <math|?\<varphi\>> and <math|?\<psi\>> are on the same level, but
  <math|??\<varphi\>> is below them. Ontic propositions are at the top (they
  are most strongly believed).

  The basic idea is that if we have an incoming <math|?\<varphi\>> formula
  that is <with|font-shape|italic|inconsistent> with our belief base, we only
  reject it outright if some <with|font-shape|italic|stronger> belief is the
  source of the inconsistency. If a weaker belief is, we replace it with the
  weaker belief.

  <section*|Notes>

  <\itemize>
    <item>I suspect this fixes the problem of <with|font-shape|italic|logical
    omniscience> \V if incoming information is <with|font-shape|italic|never>
    an ontic fact (as is the case in real life), our agent remains in a
    perpetual agnostic state. i.e. our agent will never be able to conclude
    <with|font-shape|italic|all true facts>, because they can't conclude all
    true facts above their strongest level of contingent belief. (This
    doesn't solve the <with|font-shape|italic|real> problem of logical
    omniscience; the agent is still able to infer everything at a given level
    without any cost. In fact, an account of cost should treat different
    nestings of '<math|?>' differently.)

    <item>
  </itemize>
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
    <associate|auto-1|<tuple|?|1|Transitive-Reduction-master-notes.tm>>
    <associate|auto-2|<tuple|?|1|Transitive-Reduction-master-notes.tm>>
    <associate|auto-3|<tuple|?|?|Transitive-Reduction-master-notes.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Scenarios>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|A
      Solution> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>