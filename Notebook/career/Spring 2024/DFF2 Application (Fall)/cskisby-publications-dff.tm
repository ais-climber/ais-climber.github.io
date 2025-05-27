<TeXmacs|2.1.1>

<style|<tuple|generic|british|reduced-margins|termes-font>>

<\body>
  <\hide-preamble>
    <\style-only*>
      <\wide-tabular>
        <tformat|<cwith|1|1|1|1|cell-lsep|1em>|<cwith|1|1|1|1|cell-rsep|1em>|<cwith|1|1|1|1|cell-bsep|1em>|<cwith|1|1|1|1|cell-tsep|1em>|<cwith|1|1|1|1|cell-background|#f0f0f0>|<cwith|1|1|1|1|cell-tborder|0.5ln>|<cwith|1|1|1|1|cell-bborder|0.5ln>|<cwith|1|1|1|1|cell-lborder|0.5ln>|<cwith|1|1|1|1|cell-rborder|0.5ln>|<table|<row|<\cell>
          <with|font-series|bold|Resume template > (ver 1.0)

          <copyright> License Creative Commons CC BY 4.0.

          This \ document is based on the resume template
          \ <slink|https://github.com/prabhuomkar/latex-resume-template> \ by
          Omkar Prabhu.\ 

          Reimplemented in <TeXmacs> by M. Gubinelli.

          <\small>
            Custom tags:

            <\itemize>
              <item><tt|cv-section> \ : start a new section of the CV

              <item><tt|cv-line> \ : a line within a section, with a bold
              header, a body and an italic timeline information

              <item><tt|cv-line>-2 \ : a line within a section, with a bold
              header, a body but without timeline information

              <item><tt|cv-line>-1 \ : a line within a section without any
              specific structure

              <item><tt|cv-link> : a link to some URL with a description
            </itemize>
          </small>
        </cell>>>>
      </wide-tabular>
    </style-only*>

    \;

    <assign|cv-link|<macro|name|url|<hlink|[<arg|name>]|<arg|url>>>>

    <assign|cv-section|<\macro|title>
      <\wide-tabular>
        <tformat|<cwith|1|1|1|1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-bborder|0.5ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|1|1|cell-rborder|0ln>|<twith|table-bsep|0.3fn>|<twith|table-tsep|0.5fn>|<table|<row|<\cell>
          <with|font-shape|small-caps|<very-large|<arg|title>>>
        </cell>>>>
      </wide-tabular>
    </macro>>

    <assign|cv-line|<\macro|heading|body|timeline|optional>
      <tabular|<tformat|<cwith|1|1|2|2|cell-halign|r>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|2|2|1|1|cell-hyphen|n>|<cwith|2|2|2|2|cell-halign|r>|<table|<row|<cell|<with|font-series|bold|<arg|heading>>>|<cell|<small|<arg|timeline>>>>|<row|<cell|<\small>
        <\with|par-sep|0.4fn|par-par-sep|0.4fn>
          <\small>
            <arg|body>
          </small>
        </with>
      </small>>|<cell|<small|<arg|optional>>>>>>>
    </macro>>

    <assign|cv-line-5|<\macro|heading|body>
      <tabular|<tformat|<cwith|1|1|1|1|cell-width|>|<cwith|1|1|1|1|cell-hmode|auto>|<table|<row|<cell|<space|1em><arg|heading>>>>>>
    </macro>>

    <assign|cv-line-4|<\macro|heading|body|conf-tag|optional>
      <tabular|<tformat|<cwith|1|1|1|1|cell-halign|r>|<cwith|1|1|1|1|cell-rsep|>|<cwith|1|1|1|1|cell-lsep|0>|<cwith|1|1|3|3|cell-halign|r>|<cwith|1|1|2|2|cell-width|>|<cwith|1|1|2|2|cell-hmode|auto>|<cwith|1|1|1|1|cell-width|8fn>|<cwith|1|1|1|1|cell-hmode|exact>|<table|<row|<\cell>
        <with|font-shape|small-caps|<arg|conf-tag>><space|1em>
      </cell>|<\cell>
        <arg|heading>
      </cell>|<\cell>
        <small|<arg|optional>>
      </cell>>>>>
    </macro>>

    <assign|cv-line-3|<\macro|heading|body|conf-tag|optional>
      <\wide-tabular>
        <tformat|<cwith|1|2|1|1|cell-halign|r>|<cwith|1|1|1|1|cell-rsep|>|<cwith|1|1|1|1|cell-lsep|0>|<cwith|2|2|2|2|cell-hyphen|t>|<cwith|1|1|3|3|cell-halign|r>|<twith|table-hmode|auto>|<twith|table-rsep|0fn>|<cwith|1|-1|2|2|cell-width|>|<cwith|1|-1|2|2|cell-hmode|auto>|<cwith|2|2|2|2|cell-block|yes>|<cwith|1|-1|1|1|cell-width|8fn>|<cwith|1|-1|1|1|cell-hmode|exact>|<twith|table-min-rows|2>|<table|<row|<\cell>
          <with|font-shape|small-caps|<arg|conf-tag>><space|1em>
        </cell>|<\cell>
          <arg|heading>
        </cell>|<\cell>
          <small|<arg|optional>>
        </cell>>|<row|<\cell>
          \;
        </cell>|<\cell>
          <arg|body>
        </cell>|<\cell>
          \;
        </cell>>>>
      </wide-tabular>
    </macro>>

    <assign|cv-line-2|<\macro|heading|body|conf-tag|optional|op-body>
      <\wide-tabular>
        <tformat|<cwith|1|2|1|1|cell-halign|r>|<cwith|1|1|1|1|cell-rsep|>|<cwith|1|1|1|1|cell-lsep|0>|<cwith|2|2|2|2|cell-hyphen|t>|<cwith|1|1|3|3|cell-halign|r>|<twith|table-hmode|auto>|<twith|table-rsep|0fn>|<cwith|1|-1|2|2|cell-width|>|<cwith|1|-1|2|2|cell-hmode|auto>|<cwith|2|2|2|2|cell-block|yes>|<cwith|1|-1|1|1|cell-width|8fn>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|3|3|1|-1|cell-height|0fn>|<cwith|3|3|1|-1|cell-vmode|auto>|<twith|table-min-rows|2>|<table|<row|<\cell>
          <with|font-shape|small-caps|<arg|conf-tag>><space|1em>
        </cell>|<\cell>
          <arg|heading>
        </cell>|<\cell>
          <small|<arg|optional>>
        </cell>>|<row|<\cell>
          \;
        </cell>|<\cell>
          <arg|body>
        </cell>|<\cell>
          \;
        </cell>>|<row|<\cell>
          \;
        </cell>|<\cell>
          <arg|op-body>
        </cell>|<\cell>
          \;
        </cell>>>>
      </wide-tabular>
    </macro>>

    <assign|cv-line-1|<\macro|body>
      <\wide-tabular>
        <tformat|<cwith|1|1|1|1|cell-width|1em>|<cwith|1|1|1|1|cell-hmode|exact>|<cwith|1|1|1|1|cell-halign|c>|<cwith|1|1|1|1|cell-valign|t>|<table|<row|<\cell>
          <math|\<bullet\>>
        </cell>|<\cell>
          <\small>
            <\with|par-sep|0.4fn|par-par-sep|0.4fn>
              <\small>
                <arg|body>
              </small>
            </with>
          </small>
        </cell>>>>
      </wide-tabular>
    </macro>>

    <assign|cv-line-award|<\macro|heading|body|conf-tag>
      <\wide-tabular>
        <tformat|<cwith|1|2|1|1|cell-halign|r>|<cwith|1|1|1|1|cell-rsep|>|<cwith|1|1|1|1|cell-lsep|0>|<cwith|1|-1|2|2|cell-width|6in>|<cwith|1|-1|2|2|cell-hmode|exact>|<table|<row|<\cell>
          <arg|conf-tag><space|1em>
        </cell>|<\cell>
          <arg|heading>
        </cell>>>>
      </wide-tabular>
    </macro>>

    <assign|doc-title|<macro|x|<doc-title-block|<really-huge|<arg|x>>>>>

    <assign|enumerate|<\macro|body>
      <\with|enumerate-level|<plus|<value|enumerate-level>|1>>
        <compound|<merge|enumerate-|<enumerate-reduce|<value|enumerate-level>>>|<arg|body>>
      </with>
    </macro>>

    <assign|sectional-sep|<macro|<space|2spc>>>

    <assign|doc-title-block|<macro|body|<tabular*|<tformat|<twith|table-width|1par>|<cwith|1|1|1|1|cell-lsep|0spc>|<cwith|1|1|1|1|cell-rsep|0spc>|<cwith|1|1|1|1|cell-bsep|0spc>|<cwith|1|1|1|1|cell-tsep|0spc>|<cwith|1|1|1|1|cell-hyphen|t>|<twith|table-bsep|0fn>|<twith|table-tsep|0fn>|<table|<row|<\cell>
      <\with|par-mode|center>
        <arg|body>
      </with>
    </cell>>>>>>>
  </hide-preamble>

  <\wide-tabular>
    <tformat|<cwith|1|1|1|1|cell-halign|c>|<twith|table-bsep|1fn>|<cwith|2|2|1|1|cell-halign|c>|<table|<row|<\cell>
      <really-huge|Caleb Schultz Kisby>
    </cell>>|<row|<\cell>
      List of Publications
    </cell>>>>
  </wide-tabular>

  <\cv-section>
    Peer-Reviewed Publications
  </cv-section>

  <with|item-vsep|0fn|last-item-nr|0|<\enumerate>
    <item><with|font-series|bold|Caleb Schultz Kisby>, Saúl A. Blanco, and
    Lawrence S. Moss. What Do Hebbian Learners Learn? Reduction Axioms for
    Iterated Hebbian Learning. In Proceedings of the AAAI Conference on
    Artificial Intelligence, Vol. 38, No. 13, March 2024.

    <item><with|font-series|bold|Caleb Kisby>, Saúl A. Blanco, and Lawrence
    S. Moss. The Logic of Hebbian Learning. In The International FLAIRS
    Conference Proceedings, Vol. 35, May 2022.

    <item><with|font-series|bold|Caleb Kisby>, Saúl A. Blanco, Alex Kruckman,
    and Lawrence S. Moss. Logics for Sizes with Union or Intersection. In
    Proceedings of the AAAI Conference on Artificial Intelligence, Vol. 34,
    No. 03, February 2020.

    <item>Lawrence Gates, <with|font-series|bold|Caleb Kisby>, and David
    Leake. CBR Confidence as a Basis for Confidence in Black Box Systems. In
    Case-Based Reasoning Research and Development, ICCBR 2019, Springer, pp.
    95\U109, September 2019.
  </enumerate>>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|item-hsep|<macro|1tab>>
    <associate|item-vsep|<macro|-1fn>>
    <associate|math-font|math-termes>
    <associate|page-bot|0.75in>
    <associate|page-even|0.75in>
    <\associate|page-even-footer>
      <htab|5mm>
    </associate>
    <associate|page-even-header|>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-odd|0.75in>
    <\associate|page-odd-footer>
      <htab|5mm>
    </associate>
    <associate|page-odd-header|>
    <associate|page-right|0.75in>
    <associate|page-screen-margin|false>
    <associate|page-top|0.6in>
    <associate|page-type|letter>
    <associate|page-width|auto>
    <associate|par-columns|1>
    <associate|par-hyphen|professional>
    <associate|par-par-sep|0.5fn>
    <associate|par-sep|0.2fn>
    <associate|preamble|false>
    <associate|src-compact|inline args>
  </collection>
</initial>