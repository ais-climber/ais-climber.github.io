<TeXmacs|2.1.1>

<style|<tuple|generic|british|reduced-margins|pagella-font>>

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
        <tformat|<cwith|1|1|1|1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-bborder|0.5ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|1|1|cell-rborder|0ln>|<twith|table-tsep|0.3fn>|<twith|table-bsep|0.2fn>|<table|<row|<\cell>
          <with|font-series|bold|<large|<arg|title>>>
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

    <assign|cv-line-2|<\macro|heading|body|conf-tag|optional>
      <\wide-tabular>
        <tformat|<cwith|1|2|1|1|cell-halign|r>|<cwith|1|1|1|1|cell-rsep|>|<cwith|1|1|1|1|cell-lsep|0>|<cwith|1|1|3|3|cell-halign|r>|<cwith|1|-1|2|2|cell-width|6in>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|2|2|2|2|cell-hyphen|n>|<table|<row|<\cell>
          <arg|conf-tag><space|1em>
        </cell>|<\cell>
          <with|font-series|bold|<arg|heading>>
        </cell>|<\cell>
          <small|<arg|optional>>
        </cell>>|<row|<\cell>
          \;
        </cell>|<cell|<\small>
          <\with|par-sep|0.4fn|par-par-sep|0.4fn>
            <\small>
              <arg|body>
            </small>
          </with>
        </small>>|<\cell>
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

    <assign|cv-paragraph|<\macro|body>
      <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|1|1|1|cell-hyphen|n>|<table|<row|<\cell>
        <with|font-base-size|11pt|<arg|body>>
      </cell>>>>>
    </macro>>

    <assign|item*|<macro|name|<render-item|<arg|name>><with|index-enabled|false|<set-binding|<arg|name>>>>>
  </hide-preamble>

  <\wide-tabular>
    <tformat|<cwith|1|1|1|-1|cell-valign|t>|<cwith|1|1|2|2|cell-halign|c>|<cwith|1|1|3|3|cell-halign|r>|<table|<row|<\cell>
      \;

      <tabular|<tformat|<table|<row|<cell|<with|font-series|bold|Email:>
      <hlink|cckisby@iu.edu|mailto:cckisby@iu.edu>>>|<row|<cell|<with|font-series|bold|LinkedIn:>
      <hlink|[Link]|https://www.linkedin.com/in/caleb-schultz-kisby-b2565a232/>>>>>>
    </cell>|<\cell>
      <tabular|<tformat|<cwith|2|2|1|1|cell-halign|c>|<cwith|1|1|1|1|cell-halign|c>|<table|<row|<cell|<really-huge|Caleb
      Schultz Kisby>>>|<row|<cell|ais-climber.github.io>>>>>
    </cell>|<\cell>
      \;

      <tabular|<tformat|<cwith|1|1|1|1|cell-halign|r>|<cwith|2|2|1|1|cell-halign|r>|<table|<row|<cell|<with|font-series|bold|GitHub:>
      <hlink|ais-climber|https://github.com/ais-climber>>>|<row|<cell|<with|font-series|bold|SemScholar:>
      <hlink|[Link]|https://www.semanticscholar.org/author/Caleb-Kisby/1396229697>>>>>>
    </cell>>>>
  </wide-tabular>

  <\cv-section>
    RESEARCH INTERESTS
  </cv-section>

  <\cv-paragraph>
    <\description>
      <item*|AI>Neural-Symbolic AI, Logical Foundations, Knowledge
      Representation

      <item*|Logic>Dynamic Doxastic Logics, Belief Revision, Nonmonotonic
      Reasoning, Formal Verification
    </description>
  </cv-paragraph|||>

  <\cv-section>
    EDUCATION
  </cv-section>

  <\cv-line|PhD Candidate in Computer Science (in progress)>
    Indiana University

    Advisors: Larry Moss, Saúl Blanco

    Committee: David Leake
  </cv-line|2018 \U Present|GPA: 3.75>

  <cv-line|BS in Computer Science and Mathematics|University of South
  Carolina|2014 \U 2018|GPA: 3.97>

  <\cv-section>
    EMPLOYMENT
  </cv-section>

  <\cv-line|Research Assistant>
    Department of Computer Science

    Indiana University
  </cv-line|Spring 2022 \U Present|Fall 2018 \U Spring 2019>

  <\cv-line|Teaching Assistant>
    Department of Computer Science

    Indiana University
  </cv-line|Summer 2019 \U Fall 2021|>

  <\cv-section>
    AWARDS & GRANTS
  </cv-section>

  <\cv-paragraph>
    \<circ\> Nominated Best Student Paper for \PThe Logic of Hebbian
    Learning\Q, FLAIRS, May 2022

    \<circ\> US Department of Defense <with|font-shape|italic|Trusted AI>
    Grant (helped write project proposal), Jan 2022 \U Present

    \<circ\> Indiana University Department of Computer Science, Paul Purdom
    Fellowship, Aug 2018 \U May 2019

    \<circ\> University of South Carolina Outstanding Senior in Computer
    Science, Apr 2018

    \<circ\> University of South Carolina Jeong S. Yang Award for Excellence
    in Undergraduate Mathematics, Apr 2018

    \<circ\> University of South Carolina Thomas Markham Mathematics
    Scholarship, Apr 2017

    \<circ\> University of South Carolina Magellan Scholar Undergraduate
    Research Grant (USD 2,500), Jan 2017
  </cv-paragraph|||>

  <\cv-section>
    PUBLICATIONS
  </cv-section>

  <\cv-line-2|The Logic of Hebbian Learning>
    (first author), with Saúl A. Blanco and Lawrence Moss.
  </cv-line-2|FLAIRS 2022|<cv-link|pdf|https://journals.flvc.org/FLAIRS/article/view/130735>>

  <cv-line-2|Logics for Sizes with Union or Intersection|(first author), with
  Saúl A. Blanco, Alex Kruckman, and Lawrence Moss.|AAAI
  2020|<cv-link|pdf|https://ojs.aaai.org/index.php/AAAI/article/download/5677/5533>>

  <cv-line-2|CBR Confidence as a Basis for Confidence in Black Box
  Systems|with Lawrence Gates and David Leake.|ICCBR
  2019|<cv-link|pdf|https://link.springer.com/chapter/10.1007/978-3-030-29249-2_7>>

  <\cv-section>
    UNDER REVIEW
  </cv-section>

  <\cv-line-2>
    Reduction Axioms for Unstable Hebbian Learning
  <|cv-line-2>
    (first author), with Saúl A. Blanco and Lawrence Moss. Under review.
  </cv-line-2|AAAI 2024|<space|3em>>

  \;

  <\cv-section>
    TALKS
  </cv-section>

  <\cv-paragraph>
    \<circ\> A Semantic Theory for Neuro-Symbolic AI, IU Cognitive Lunch,
    Indiana University, Feb 2023

    \<circ\> The Logic of Hebbian Learning, FLAIRS 2022, Jensen Beach, May
    2022

    \<circ\> The Logic of Hebbian Learning, IU Logic Seminar, Indiana
    University, May 2022

    \<circ\> From Logic to Hebbian-Learned Nets and Back, Trusted AI Project
    Meeting, Bloomington, Mar 2022

    \<circ\> Logics for Sizes with Union or Intersection, AAAI 2020, New
    York, Feb 2020

    \<circ\> Logics for Sizes with Union or Intersection, IU Logic Seminar,
    Indiana University, Sep 2019

    \<circ\> CBR Confidence as a Basis for Confidence in Black Box Systems,
    ICCBR 2019, Otzenhausen, Sep 2019
  </cv-paragraph|||>

  <\cv-section>
    PROFESSIONAL ACTIVITIES
  </cv-section>

  <\cv-paragraph>
    \<circ\> Local Organizer for the Conference on Algebra and Coalgebra in
    Computer Science (<hlink||https://coalg.org/calco-mfps-2023/calco>CALCO
    2023) and the\ 

    <space|1em>Conference on the Mathematical Foundations of Programming
    Semantics <hlink||https://coalg.org/calco-mfps-2023/mfps>(MFPS XXXIX),
    June 2023

    \<circ\> Reviewer for the Journal of Logic, Language, and Information,
    May 2019\ 
  </cv-paragraph|||>

  <\cv-section>
    TEACHING
  </cv-section>

  <\cv-line|Indiana University (Teaching Assistant)>
    \<circ\> Introduction to Programming, Fall 2020, Spring 2021, and Fall
    2021

    \<circ\> Discrete Structures, Summer 2019, Spring 2020, and Summer 2021

    \<circ\> Theory of Computation, Fall 2019 (PhD & undergraduate level)
  <|cv-line|>
    \;
  </cv-line>

  <\cv-line|University of South Carolina (Undergraduate Teaching Assistant)>
    \<circ\> Discrete Structures, Fall 2016 and Spring 2016

    \<circ\> Calculus I, Fall 2015

    \<circ\> Calculus II, Spring 2015
  </cv-line||>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|item-vsep|<macro|-0.5fn>>
    <associate|math-font|math-pagella>
    <associate|page-bot|1.5cm>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-screen-margin|false>
    <associate|page-top|1.5cm>
    <associate|page-type|letter>
    <associate|page-width|auto>
    <associate|par-columns|1>
    <associate|par-par-sep|0.4fn>
    <associate|par-sep|0.4fn>
    <associate|preamble|false>
    <associate|src-compact|inline args>
  </collection>
</initial>