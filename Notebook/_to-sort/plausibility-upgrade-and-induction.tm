<TeXmacs|2.1.1>

<style|<tuple|Arxiv|smart-ref|preview-ref|number-long-article>>

<\body>
  <\hide-preamble>
    \;

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

    <assign|boxstar|<math|\<box\><rsup|\<ast\>>>>

    <assign|boxreduc|<math|\<box\><rsup|->>>

    <assign|diastar|<math|\<diamond\><rsup|\<ast\>>>>

    <assign|diareduc|<math|\<diamond\><rsup|->>>

    \;

    <assign|hash|<with|font-family|ss|hash>>

    <assign|unique|<with|font-family|ss|unique>>

    <assign|Know|<with|font-series|bold|<text|K>>>

    <assign|Knownby|<with|font-series|bold|<text|K><rsup|\<downarrow\>>>>

    <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

    <assign|diaKnownby|\<langle\><value|Knownby>\<rangle\>>

    <assign|Typ|<with|font-series|bold|<text|T>>>

    <assign|diaTyp|\<langle\><value|Typ>\<rangle\>>

    <assign|Reach|<with|font-family|ss|Reach>>

    <assign|Reachedby|<with|font-family|ss|Reach><rsup|\<downarrow\>>>

    <assign|Prop|<with|font-family|ss|Prop>>

    <assign|Hebb|<with|font-family|ss|Update>>

    <assign|Activ|<with|font-family|ss|Act>>

    <assign|Inc|<with|font-family|ss|Inc>>

    <assign|AllNets|<with|font-family|ss|Net>>

    <assign|AllModels|<with|font-family|ss|Model>>

    <assign|axiom|<macro|x|<text|<name|(<arg|x>)>>>>

    <assign|precede|<with|font-family|ss|prec>>

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

    <assign|par-sep|0.1fn>

    <assign|par-par-sep|0.3fns>
  </hide-preamble>

  <section*|Plausibility Upgrade and Induction (for WoLLIC 2024)>

  <\itemize>
    <item>Introduction

    <\itemize>
      <item>

      <item>George Pólya's hidden gem in \PMathematics and plausible
      reasoning;\Q he attempts to codify the logical rules that people (both
      students <with|font-shape|italic|and> experienced experts) use to
      upgrade their plausibility. It looks like his book is cited widely by
      mathematicians, educators, and abductive reasoning logicians, but it
      looks totally forgotten/ignored by\ 
    </itemize>

    <item>Background

    <\itemize>
      <item>Review the perspective in \PMechanizing Induction\Q; induction
      and plausi

      <item>The problem of induction learning, review the perspective in
      Mechanizing Induction

      <item>Induction and plausibility
    </itemize>

    <item>The Fundamental Inductive Axiom
  </itemize>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  In a spiritual successor to his famous \PHow to Solve It,\Q George Pólya
  wrote a two-volume book \PMathematics and plausible reasoning\Q in which he
  codifies the reasoning that mathematicians<section*|<hlink||https://scholar.google.com/scholar?cluster=5259028738465780537&hl=en&as_sdt=800005&sciodt=0,15>>
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
    <associate|auto-1|<tuple|?|1|modal-logic-transitive-reduction.tm>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|\<bullet\>>|?|modal-logic-transitive-reduction.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Plausibility
      Upgrade and Induction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>