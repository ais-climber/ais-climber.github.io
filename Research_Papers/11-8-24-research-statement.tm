<TeXmacs|2.1.1>

<style|<tuple|article|indent-paragraphs|python|cite-author-year|cite-sort>>

<\body>
  <\hide-preamble>
    \;

    <assign|doc-title|<macro|x|<doc-title-block|<very-large|<doc-title-name|<arg|x>>>>>>

    <assign|by-text|<macro|>>

    <assign|doc-subtitle|<macro|x|<\surround|<vspace*|0.25fn>|<vspace|0.5fn>>
      <doc-title-block|<font-magnify|1.25|<arg|x>>>
    </surround>>>

    <assign|author-name|<macro|author|<doc-author-block|<name|<author-by|<arg|author>>>>>>

    <assign|sectional-sep|<macro|<space|0.5fn>>>

    <assign|bibliography-text|<macro|<localize|References>>>

    <assign|section-title|<\macro|name>
      \;

      <\padded-center>
        <\sectional-normal-bold>
          <arg|name>
        </sectional-normal-bold>
      </padded-center>

      \;
    </macro>>

    <assign|subsection-title|<\macro|name>
      \;

      <\padded-center>
        <\sectional-normal-bold>
          <arg|name>
        </sectional-normal-bold>
      </padded-center>
    </macro>>

    <assign|section|<macro|title|<no-indent><assign|section-numbered|<compound|section-display-numbers>><assign|section-prefix|<macro|<compound|the-section>.>><compound|next-section><compound|section-clean><compound|section-header|<arg|title>><compound|section-toc|<arg|title>><if|<value|section-numbered>|<compound|section-numbered-title|<arg|title>>|<compound|section-unnumbered-title|<arg|title>>>>>

    <assign|doc-date|<macro|body|<vspace*|0.2fn><doc-title-block|<with|font-shape|italic|<arg|body>>><vspace|0.2fn>>>
  </hide-preamble>

  <doc-data|<doc-title|Research Proposal>|<doc-author|<author-data|<author-name|Caleb
  Schultz Kisby>>>|<doc-date|December 13, 2024>>

  [High-level introduction, background & motivation (a paragraph or two). Say
  what kinds of problems & issues I'm interested in understanding or solving,
  and the kinds of approaches I like and why.]

  [The communities of FOLLI (social networks & dynamic logics), NeSy (neural
  network logics), and FLaNN (neural networks as automata) have something
  fundamental to say to each other\VI am working to be the bridge between
  these communities]

  [draw picture of the connections between Belief Revision + Dynamic
  Epistemic Logic + Computational Learning Theory + Machine Learning via
  neural networks! My dissertation work has been mainly on ]

  <section|Previous Work>

  Three paragraphs, pick from the following \Pthreads\Q that I've focused on:

  <\itemize>
    <item>My PhD work on logics with neural network semantics / foundations
    for neuro-symbolic AI

    <item>Work on experimental work / development of neuro-symbolic systems

    <item>Logics that model more cognitively plausible reasoning
  </itemize>

  <section|Future Work>

  Three or four paragraphs, pick from the following projects I've started or
  would like to start in the near future:

  <\itemize>
    <item>Neural network semantics for first-order logic

    <item>Exploring the relationship between neural network models & social
    network models, especially comparing their inferences and updates,
    unifying these two approaches

    <item>Neural network update and learning in the limit

    <item>Descriptive complexity across a wider range of models, including
    neural network models, neighborhood models, dynamic update models.
  </itemize>

  Make the questions I'm asking / want to explore very explicit,
  <with|font-shape|italic|as questions>!

  <\bibliography|bib|tm-plain|references.bib>
    <\bib-list|0>
      \;
    </bib-list>
  </bibliography>

  <set-header|<tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|1|1|1|cell-halign|r>|<twith|table-bborder|0.075fn>|<table|<row|<cell|<with|font-series|bold|Research
  Statement, Caleb Schultz Kisby (cckisby@iu.edu)>>>>>>>
</body>

<\initial>
  <\collection>
    <associate|bg-color|#f9f5d7>
    <associate|color|#000000>
    <associate|font|stix>
    <associate|font-base-size|12>
    <associate|font-family|rm>
    <associate|info-flag|minimal>
    <associate|item-vsep|<macro|0.2fn>>
    <associate|math-font|math-stix>
    <associate|padding-above|0.5fn>
    <associate|padding-below|0.5fn>
    <associate|page-bot|1in>
    <associate|page-even|1in>
    <associate|page-even-footer|>
    <associate|page-even-header|>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-odd|1in>
    <associate|page-odd-footer|>
    <associate|page-odd-header|>
    <associate|page-right|1in>
    <associate|page-screen-margin|false>
    <associate|page-top|1.5in>
    <associate|page-type|letter>
    <associate|page-width|auto>
    <associate|page-width-margin|false>
    <associate|par-par-sep|0fn>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|0.5fn>Previous
      Work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|0.5fn>Future
      Work> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>