<TeXmacs|2.1.4>

<style|<tuple|article|python|cite-author-year|cite-sort|fontawesome|my-macros|termes-font>>

<\body>
  <\hide-preamble>
    \;

    <assign|doc-title|<macro|x|<doc-title-block|<very-large|<doc-title-name|<arg|x>>>>>>

    <assign|by-text|<macro|>>

    <assign|doc-subtitle|<macro|x|<\surround|<vspace*|0.25fn>|<vspace|0.5fn>>
      <doc-title-block|<font-magnify|1.25|<arg|x>>>
    </surround>>>

    <assign|author-name|<macro|author|<surround|<vspace*|0fn>|<vspace|0.3fn>|<doc-author-block|<with|font-series|bold|<author-by|<arg|author>>>>>>>

    <assign|sectional-sep|<macro|<space|1fn>>>

    <assign|bibliography-text|<macro|<localize|References>>>

    \;

    <assign|render-theorem|<\macro|which|body>
      <render-enunciation|<theorem-name|<arg|which><theorem-sep>>|<arg|body>>
    </macro>>

    <assign|postulate|<\macro|body>
      <surround|<next-theorem>||<render-theorem|<theorem-numbered|Postulate|<the-theorem>>|<arg|body>>>
    </macro>>

    <assign|thesis-statement|<\macro|body>
      <render-theorem|<\theorem-unnumbered>
        Thesis Statement
      </theorem-unnumbered>|<arg|body>>
    </macro>>

    <assign|author-affiliation|<\macro|address>
      <doc-author-block|<arg|address>>
    </macro>>

    <assign|doc-date|<macro|body|<doc-title-block|<with|font-shape|italic|<arg|body>>>>>

    <assign|doc-author-block|<\macro|body>
      <space|0pt><tabular*|<tformat|<cwith|1|1|1|1|cell-lsep|0spc>|<cwith|1|1|1|1|cell-rsep|0spc>|<cwith|1|1|1|1|cell-bsep|0spc>|<cwith|1|1|1|1|cell-tsep|0spc>|<cwith|1|1|1|1|cell-hyphen|t>|<cwith|1|1|1|1|cell-hmode|min>|<cwith|1|1|1|1|cell-width|1par>|<table|<row|<\cell>
        <\with|par-mode|center>
          <arg|body>
        </with>
      </cell>>>>>
    </macro>>

    <assign|subsection-title|<macro|name|<sectional-normal-bold|<vspace*|1.5fn><large|<with|color|#076678|<arg|name>>><vspace|0.5fn>>>>

    <assign|section-title|<macro|name|<sectional-normal-bold|<vspace*|1.5fn><very-large|<with|color|#8f3f71|<arg|name>>><vspace|1fn>>>>

    <assign|subsection-toc|<macro|name|>>

    <assign|paragraph-toc|<macro|name|>>

    <assign|paragraph-title|<macro|name|<sectional-short-bold|<vspace*|0.5fn><with|color|#076678|<arg|name>>>>>

    <assign|doc-title-name|<macro|x|<strong|<with|color|#8f3f71|<arg|x>>>>>

    <assign|author-by|<macro|body|<if|<skip-by-text>||<by-text>
    ><with|color|#076678|<arg|body>>>>

    <\assign|strong-color>
      black
    </assign>

    <assign|strong|<macro|body|<with|font-series|bold|math-font-series|bold|<with|color|#79740e|<arg|body>>>>>

    <assign|item-strong|<macro|name|<with|font-series|bold|math-font-series|bold|<with|color|#79740e|<arg|name>>>>>
  </hide-preamble>

  <doc-data|<\doc-title>
    A personal collection of quotes that

    inspire a response in me
  </doc-title>|<doc-author|<author-data|<author-name|Caleb Schultz
  Kisby>>>|<\doc-author>
    \;

    <author-data>
  </doc-author>|<with|doc-date|<macro|body|<vspace|0fn><inactive*|<doc-title-block|<with|font-shape|italic|<arg|body>>>>>|<doc-date|November
  4, 2024>>>

  This is a collection of quotes from different research communities that
  illicit some sort of emotional reaction from me. I want to list every
  single one of these, and give a one or two sentence response giving my
  personal opinion or perspective on the matter (e.g., praise or criticism).

  <section*|Neuro-Symbolic Community (NeSy)>

  <paragraph|List of Value Words.>

  <subsection|Theoretical approaches\VNeural network semantics>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <subsection|Theoretical approaches\VNeural nets, FOL, and variable
  substitutions>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <subsection|General approaches to neuro-symbolic AI>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <subsection|Overviews and calls to action in neuro-symbolic AI>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <section*|Formal Languages and Nets Community (FLaNN)>

  <paragraph|List of Value Words.>

  <subsection|General complexity + descriptive complexity resources>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <subsection|Neural networks as automata>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <subsection|Neural network descriptive complexity>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <section*|Logic, Language and Information Community (FoLLI)>

  <paragraph|List of Value Words.>

  <subsection|General modal logic>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <subsection|General dynamic epistemic logic>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <subsection|Dynamic logics that model learning processes>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <subsection|Social network semantics>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <section*|Knowledge Representation Community (KR, NMR)>

  <paragraph|List of Value Words.>

  <subsection|KLM Semantics / Defeasible reasoning in conditional logics>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <subsection|Defeasible reasoning in modal logics>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <subsection|Belief Revision>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <section*|Category Theory for AI Community (Cats for AI)>

  <paragraph|List of Value Words.>

  \;

  <section*|General AI Community (AAAI, IJCAI, ICLR)>

  <paragraph|List of Value Words.>

  <subsection|Classic papers in AI>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <subsection|General AI + neural network alignment>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>

  <subsection|Neural network verification>

  <\description>
    <item*|Quote>

    <\quote-env>
      quotation

      \VAuthor, <with|font-shape|italic|Source> <todo|cite>
    </quote-env>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>

    \;

    <item*|Quote>

    <item*|My thoughts>
  </description>
</body>

<\initial>
  <\collection>
    <associate|bg-color|#f9f5d7>
    <associate|color|#000000>
    <associate|eqn-short-above|<macro|0.3fn>>
    <associate|eqn-short-below|<macro|0.3fn>>
    <associate|info-flag|minimal>
    <associate|item-vsep|<macro|0.3fn>>
    <associate|large-padding-above|0.5fn>
    <associate|large-padding-below|0.5fn>
    <associate|math-font|math-termes>
    <associate|padding-above|0.5fn>
    <associate|padding-below|0.5fn>
    <associate|page-bot|1.25in>
    <associate|page-even|1.25in>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-odd|1.25in>
    <associate|page-right|1.25in>
    <associate|page-screen-margin|false>
    <associate|page-top|1.25in>
    <associate|page-type|letter>
    <associate|page-width|auto>
    <associate|page-width-margin|false>
    <associate|par-par-sep|0fn>
    <associate|toc-next|5fn>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1|neural-networks-FOL-draft.tm>>
    <associate|auto-2|<tuple|My thoughts|2|neural-networks-FOL-draft.tm>>
    <associate|auto-3|<tuple|My thoughts|2|neural-networks-FOL-draft.tm>>
    <associate|auto-4|<tuple|My thoughts|3|neural-networks-FOL-draft.tm>>
    <associate|auto-5|<tuple|My thoughts|3|neural-networks-FOL-draft.tm>>
    <associate|auto-6|<tuple|1|3|neural-networks-FOL-draft.tm>>
    <associate|auto-7|<tuple|My thoughts|3|neural-networks-FOL-draft.tm>>
    <associate|auto-8|<tuple|1.2|?|neural-networks-FOL-draft.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Neuro-Symbolic
      Community (NeSy)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Formal
      Languages and Nets Community (FLaNN)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Logic,
      Language and Information Community (FoLLI)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Knowledge
      Representation Community (KR, NMR)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Category
      Theory for AI Community (Cats for AI)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|General
      AI Community (AAAI, IJCAI, ICLR)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>