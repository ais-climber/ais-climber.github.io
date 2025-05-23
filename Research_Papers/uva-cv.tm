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
    <tformat|<cwith|1|1|1|1|cell-halign|c>|<twith|table-bsep|1fn>|<table|<row|<\cell>
      <really-huge|Caleb Schultz Kisby>
    </cell>>>>
  </wide-tabular>

  <\cv-section>
    Personal Information
  </cv-section>

  <tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|1|1|cell-rsep|1em>|<twith|table-tsep|0fn>|<table|<row|<cell|<with|font-shape|small-caps|Email:>>|<cell|<hlink|cckisby@gmail.com|mailto:cckisby@gmail.com>>>|<row|<cell|<with|font-shape|small-caps|Website:>>|<cell|<hlink|ais-climber.github.io|https://ais-climber.github.io/>>>>>>

  <\cv-section>
    Research Interests
  </cv-section>

  I am a computer scientist studying the foundations of artificial
  intelligence (AI) and cognition, using tools from logic and theoretical
  computer science. My research spans issues at the intersection of
  neuro-symbolic AI, machine learning, belief revision, dynamic epistemic
  logic, and descriptive complexity. I'm especially interested in questions
  such as:

  <\with|par-par-sep|0.1fn>
    <\itemize>
      <item>How should we best integrate symbolic and neural (sub-symbolic)
      systems?

      <item>How can we extract, interpret, and verify the internal beliefs of
      neural networks?

      <item>How powerful and reliable are different learning algorithms, when
      compared to one another?

      <item>Is provably correct AI alignment possible?
    </itemize>
  </with>

  <\cv-section>
    Education
  </cv-section>

  <cv-line-2|<with|font-series|bold|PhD Candidate>, Indiana University,
  Bloomington, USA|PhD in Computer Science (in progress), minor in
  Logic.|2018 \U Present||Jointly advised by Lawrence Moss and Saúl A.
  Blanco>

  <with|cv-line-2|<\macro|heading|body|conf-tag|optional|op-body>
    <\wide-tabular>
      <tformat|<cwith|1|2|1|1|cell-halign|r>|<cwith|1|1|1|1|cell-rsep|>|<cwith|1|1|1|1|cell-lsep|0>|<cwith|2|2|2|2|cell-hyphen|t>|<cwith|1|1|3|3|cell-halign|r>|<twith|table-hmode|auto>|<twith|table-rsep|0fn>|<cwith|1|-1|2|2|cell-width|>|<cwith|1|-1|2|2|cell-hmode|auto>|<cwith|2|2|2|2|cell-block|yes>|<cwith|1|-1|1|1|cell-width|8fn>|<cwith|1|-1|1|1|cell-hmode|exact>|<table|<row|<\cell>
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
  </macro>|<\cv-line-2|<with|font-series|bold|Bachelors>, University of South
  Carolina, Columbia, USA>
    BSCS in Computer Science, BS in Mathematics,
    <with|font-shape|italic|Summa Cum Laude>
  </cv-line-2|2014 \U 2018||Undergraduate research advised by George
  McNulty>>

  <\cv-section>
    Peer-Reviewed Publications
  </cv-section>

  <with|item-vsep|0fn|last-item-nr|0|<\enumerate>
    <item><with|font-series|bold|Caleb Schultz Kisby>, S. Blanco, and L.
    Moss. <hlink|What Do Hebbian Learners Learn? Reduction Axioms for
    Iterated Hebbian Learning|https://ojs.aaai.org/index.php/AAAI/article/view/29409/30660>.
    <with|font-series|medium|AAAI>, Feb. 2024.

    <item><with|font-series|bold|Caleb Kisby>, S. Blanco, and L. Moss.
    <hlink|The Logic of Hebbian Learning|https://journals.flvc.org/FLAIRS/article/view/130735>.
    The International FLAIRS (Florida AI Research Society) Conference, May
    2022. <with|font-shape|italic|Nominated for Best Student Paper.>

    <item><with|font-series|bold|Caleb Kisby>, S. Blanco, A. Kruckman, and L.
    Moss. <hlink|Logics for Sizes with Union or
    Intersection|https://ojs.aaai.org/index.php/AAAI/article/download/5677/5533>.
    AAAI, Feb. 2020.

    <item>L. Gates, <with|font-series|bold|Caleb Kisby>, and D. Leake.
    <hlink|CBR Confidence as a Basis for Confidence in Black Box
    Systems|https://ais-climber.github.io/assets/pdf/Gates_CBR_Confidence.pdf>.
    International Conference on Case-Based Reasoning, Sep. 2019.
  </enumerate>>

  <\cv-section>
    Talks and Presentations
  </cv-section>

  <cv-line-3|Seminar on Logic and Interactive Rationality, University of
  Amsterdam, Online (Sep 2024)|<with|font-shape|italic|The Modeling Power of
  Neural Networks>|Invited Talk|>

  <cv-line-3|PhD Visit Day, Indiana University (Feb
  2024)|<with|font-shape|italic|Reduction Axioms for Iterated Hebbian
  Learning>|Poster|>

  <cv-line-3|AAAI (Feb 2024)|<with|font-shape|italic|Reduction Axioms for
  Iterated Hebbian Learning>|Talk & Poster|>

  <\cv-line-3>
    <math|1<rsup|st>> GALAI (General Algebra, Logic & AI) Workshop, Chapman
    University (Jan 2024)
  </cv-line-3|<with|font-shape|italic|Logical Dynamics of Neural Network
  Learning>|Invited Talk|>

  <cv-line-3|Trusted AI DoD Grant Project Meeting, University of Notre Dame
  (Apr 2023)|<with|font-shape|italic|Neural Network Semantics>|Poster|>

  <cv-line-3|AI Center Open House, Indiana University (Mar
  2023)|<with|font-shape|italic|Reasoning about Neural Network
  Learning>|Poster|>

  <cv-line-3|Cognitive Lunch Seminar, Indiana University (Feb
  2023)|<\with|font-shape|italic>
    A Semantic Theory for Neuro-Symbolic AI
  </with>|Talk|>

  <\cv-line-3>
    The International FLAIRS (Florida AI Research Society) Conference (May
    2022)
  </cv-line-3|<with|font-shape|italic|The Logic of Hebbian Learning>|Talk|>

  <cv-line-3|Logic Seminar, Indiana University (May
  2022)|<with|font-shape|italic|The Logic of Hebbian Learning>|Talk|>

  <cv-line-3|Trusted AI DoD Grant Project Meeting, IUPUI (Apr
  2022)|<with|font-shape|italic|Reasoning about Neural Network
  Learning>|Poster|>

  <cv-line-3|Trusted AI DoD Grant Project Meeting, Indiana University (Mar
  2022)|<with|font-shape|italic|From Logic to Hebbian-Learned Nets and
  Back>|Talk|>

  <cv-line-3|AAAI (Feb 2020)|<with|font-shape|italic|Logics for Sizes with
  Union or Intersection>|Talk & Poster|>

  <cv-line-3|Logic Seminar, Indiana University (Sep
  2019)|<with|font-shape|italic|Logics for Sizes with Union or
  Intersection>|Talk|>

  <cv-line-3|International Conference on Case-Based Reasoning (Sep
  2019)|<with|font-shape|italic|CBR Confidence as a Basis for Confidence in
  Black Box Systems> (joint talk with L. Gates)|Talk|>

  <cv-line-3|PL Wonks Seminar, Indiana University (Sep
  2019)|<with|font-shape|italic|Syllogistic Logic with Sizes of Sets and Noun
  Union>|Talk|>

  <cv-line-3|Discover UofSC, University of South Carolina (Apr
  2017)|<with|font-shape|italic|Exploring Non-finitely Based Finite
  Algebras>|Poster||>

  <\cv-section>
    Service
  </cv-section>

  <\cv-line-4>
    Local Organizer for the KOI Combinatorics Conference
  </cv-line-4||Oct 2024|>

  <\cv-line-4>
    Volunteer for AAAI, as well as for the AAAI Workshop on Neuro-Symbolic\ 

    Learning and Reasoning in the era of Large Language Models
  </cv-line-4||Feb 2024|>

  <\cv-line-4>
    Reviewer for the AAAI Workshop on Neuro-Symbolic Learning and Reasoning\ 

    in the era of Large Language Models (2 reviews)
  </cv-line-4||Nov 2023|>

  <\cv-line-4>
    Local Organizer for CALCO (Algebra and Coalgebra in Computer Science),\ 

    & jointly-held MFPS (Mathematical Foundations of Programming Semantics)
  </cv-line-4||Jun 2023|>

  <\cv-line-4>
    Reviewer for the Journal of Logic, Language, and Information (1 review)
  </cv-line-4||Sep 2019|>

  <\cv-section>
    Other Conference Activity
  </cv-section>

  <\cv-line-4>
    Participated in NeSy (Workshop on Neural-Symbolic Learning and Reasoning)
  </cv-line-4||Jul 2023|>

  <\cv-line-4>
    Participated in the IBM Neuro-Symbolic AI Workshop
  </cv-line-4||Jan 2023|>

  <\cv-line-4>
    Participated in the Special Session on Algebras, Lattices, and Varieties
    at the\ 

    AMS Spring Southeastern Sectional Meeting
  </cv-line-4||Mar 2017|>

  <\cv-section>
    Honors and Awards
  </cv-section>

  <\cv-line-4>
    Recipient of the SCALE Ambassador Award for excellence in leadership and\ 

    research, US Department of Defense
  </cv-line-4||Mar 2024|>

  <\cv-line-4>
    \PThe Logic of Hebbian Learning\Q nominated for Best Student Paper at
    FLAIRS 2022
  </cv-line-4||May 2022|>

  <\cv-line-4>
    Recipient of the Paul Purdom Fellowship, Indiana University
  </cv-line-4||Aug 2019|>

  <\cv-line-4>
    Outstanding Senior in Computer Science, USC Columbia
  </cv-line-4||Apr 2018|>

  <\cv-line-4>
    Recipient of the Jeong S. Yang Award for Excellence in Undergraduate\ 

    Mathematics, USC Columbia
  </cv-line-4||Apr 2018|>

  <\cv-line-4>
    Recipient of the Thomas Markham Mathematics Scholarship, USC Columbia
  </cv-line-4||Apr 2017|>

  <\cv-line-4>
    Recipient of the Magellan Scholar Undergraduate Research Grant, USC
    Columbia
  </cv-line-4||Jan 2017|>

  <\cv-section>
    Selected Public Software
  </cv-section>

  <cv-line-5|<hlink|<with|font-series|bold|Argyle>|https://github.com/ais-climber/argyle><with|font-series|bold|:><space|1em>A
  suite of neural network properties that are formally verified in Lean|b|c|>

  <cv-line-5|<hlink|<with|font-series|bold|à-la-Mode>|https://github.com/ais-climber/a-la-mode><with|font-series|bold|:><space|1em>Neural
  network model checker & model builder |b|c|>

  <\cv-line-5>
    <with|font-series|bold|<hlink|Notakto
    Player|https://github.com/ais-climber/notakto-player>>
    <cv-link|pdf|https://ais-climber.github.io/assets/pdf/Kisby_Playing_Notakto.pdf><with|font-series|bold|:><space|1em>A
    convolutional neural network that uses reinforcement learning to learn\ 

    <space|1em>winning strategies for Thane Plambeck's Notakto.
  </cv-line-5|b|c|>

  <\cv-line-5>
    <hlink|<with|font-series|bold|Sense-Able>|https://github.com/ais-climber/sense-able><hlink||https://github.com/ais-climber/sense-able>
    <cv-link|pdf|https://ais-climber.github.io/assets/pdf/LeddarSDK-C_Tutorial.pdf><with|font-series|bold|:><space|1em>A
    proof-of-concept LIDAR obstacle sensor for the visually impaired. This
    was

    <space|1em>my senior team project at USC, in collaboration with our
    client P. B. Mumola, Ph.D., LLC.
  </cv-line-5|b|c|>

  <\cv-section>
    Teaching
  </cv-section>

  <with|cv-line-5|<\macro|heading|body>
    <tabular|<tformat|<cwith|1|1|1|1|cell-width|>|<cwith|1|1|1|1|cell-hmode|auto>|<table|<row|<cell|<arg|heading>>>>>>
  </macro>|<cv-line-5|<strong|Indiana University (Teaching Assistant)>|b|c|>>

  <\cv-line-4>
    CS 231 - Intro to the Mathematics of Cybersecurity (Head TA)
  </cv-line-4||Fall 2024|>

  <\cv-line-4>
    CS 200 - Introduction to Programming (Head TA)
  </cv-line-4||Spring 2021|>

  <\cv-line-4>
    CS 200 - Introduction to Programming (Head TA)
  </cv-line-4||Fall 2021|>

  <\cv-line-4>
    CS 241 - Discrete Structures
  </cv-line-4||Summer 2021|>

  <\cv-line-4>
    CS 200 - Introduction to Programming
  </cv-line-4||Spring 2021|>

  <\cv-line-4>
    CS 200 - Introduction to Programming
  </cv-line-4||Fall 2020|>

  <\cv-line-4>
    CS 241 - Discrete Structures
  </cv-line-4||Spring 2020|>

  <\cv-line-4>
    CS 501 - Graduate Theory of Computing

    CS 401 - Theory of Computing
  </cv-line-4||Fall 2019|>

  <\cv-line-4>
    CS 241 - Discrete Structures
  </cv-line-4||Summer 2019|>

  <vspace*|0.5fn><with|cv-line-5|<\macro|heading|body>
    <tabular|<tformat|<cwith|1|1|1|1|cell-width|>|<cwith|1|1|1|1|cell-hmode|auto>|<table|<row|<cell|<arg|heading>>>>>>
  </macro>|<cv-line-5|<strong|University of South Carolina (Undergraduate
  Teaching Assistant)>|b|c|>>

  <\cv-line-4>
    Math 374 - Discrete Structures
  </cv-line-4||Fall 2016|>

  <\cv-line-4>
    Math 174 - Discrete Structures for Informatics
  </cv-line-4||Spring 2016|>

  <\cv-line-4>
    Math 141 - Calculus I
  </cv-line-4||Fall 2015|>

  <\cv-line-4>
    Math 142 - Calculus II
  </cv-line-4||Spring 2015|>

  <\cv-section>
    Selected Coursework
  </cv-section>

  <with|cv-line-5|<\macro|heading|body>
    <tabular|<tformat|<cwith|1|1|1|1|cell-width|>|<cwith|1|1|1|1|cell-hmode|auto>|<table|<row|<cell|<arg|heading>>>>>>
  </macro>|<cv-line-5|<strong|Logic and Formal Languages>|b|c|>>

  <cv-line-5|Model Theory (IU, 2021)|b|c|>

  <cv-line-5|Programming Language Foundations (IU, 2020)|b|c|>

  <cv-line-5|Programming Language Principles (IU, 2019)|b|c|>

  <cv-line-5|Seminar on Proof Theory and Constructive Mathematics (IU,
  2018)|b|c|>

  <cv-line-5|Theory of Computing (IU, 2018)|b|c|>

  <cv-line-5|Seminar on Equational Logic (Audited, UofSC, 2017)|b|c|>

  <cv-line-5|Theory of Computation (UofSC, 2017)|b|c|>

  <cv-line-5|Intro to Mathematical Logic (UofSC, 2016)|b|c|>

  <cv-line-5|Introduction to Mathematical Philosophy (Coursera, organized by
  LMU, 2015)|b|c|>

  <vspace*|0.5fn><with|cv-line-5|<\macro|heading|body>
    <tabular|<tformat|<cwith|1|1|1|1|cell-width|>|<cwith|1|1|1|1|cell-hmode|auto>|<table|<row|<cell|<arg|heading>>>>>>
  </macro>|<cv-line-5|<strong|AI and Cognitive Science>|b|c|>>

  <cv-line-5|Computer Models of Symbolic Learning (IU, 2021)|b|c|>

  <cv-line-5|Knowledge-Based Artificial Intelligence (IU, 2021)|b|c|>

  <cv-line-5|Seminar on Natural Language Inference (IU, 2020)|b|c|>

  <cv-line-5|Philosophical Foundations of Cognitive Science (IU, 2020)|b|c|>

  <cv-line-5|Elements of Artificial Intelligence (IU, 2019)|b|c|>

  <cv-line-5|Semantics (Linguistics) (IU, 2019)|b|c|>

  <\cv-section>
    References
  </cv-section>

  <center|<tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<table|<row|<cell|>|<cell|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|1|1|cell-rsep|1em>|<twith|table-tsep|0fn>|<cwith|1|-1|1|-1|cell-bsep|0.2fn>|<cwith|1|-1|1|-1|cell-tsep|0.2fn>|<cwith|1|1|1|1|cell-row-span|1>|<cwith|1|1|1|1|cell-col-span|2>|<cwith|1|1|1|1|cell-halign|c>|<table|<row|<cell|<large|<with|font-series|bold|Larry
  Moss>>>|<cell|>>|<row|<cell|<with|font-shape|small-caps|Email:>>|<cell|lmoss@iu.edu<hlink||mailto:cckisby@gmail.com>>>|<row|<cell|<with|font-shape|small-caps|Website:>>|<cell|<hlink|iulg.sitehost.iu.edu/moss|https://iulg.sitehost.iu.edu/moss/>>>|<row|<cell|<with|font-shape|small-caps|Phone:>>|<cell|<itemize|+1
  812 855 8281<hlink||tel:18128558281>>>>>>>>|<cell|>|<cell|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|1|1|cell-rsep|1em>|<twith|table-tsep|0fn>|<cwith|1|-1|1|-1|cell-bsep|0.2fn>|<cwith|1|-1|1|-1|cell-tsep|0.2fn>|<cwith|1|1|1|1|cell-row-span|1>|<cwith|1|1|1|1|cell-col-span|2>|<cwith|1|1|1|1|cell-halign|c>|<table|<row|<cell|<large|<with|font-series|bold|Nina
  Gierasimczuk>>>|<cell|>>|<row|<cell|<with|font-shape|small-caps|Email:>>|<cell|nigi@dtu.dk<hlink||https://orbit.dtu.dk/en/persons/nina-gierasimczuk#><hlink||mailto:cckisby@gmail.com>>>|<row|<cell|<with|font-shape|small-caps|Website:>>|<cell|<hlink|ninagierasimczuk.com|https://ninagierasimczuk.com/>>>|<row|<cell|>|<cell|>>>>>>|<cell|>>>>>>

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|11>
    <associate|item-hsep|<macro|1tab>>
    <associate|item-vsep|<macro|-1fn>>
    <associate|math-font|math-termes>
    <associate|page-bot|1in>
    <associate|page-even|1in>
    <\associate|page-even-footer>
      <htab|5mm>
    </associate>
    <associate|page-even-header|>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-odd|1in>
    <\associate|page-odd-footer>
      <htab|5mm>
    </associate>
    <associate|page-odd-header|>
    <associate|page-right|1in>
    <associate|page-screen-margin|false>
    <associate|page-top|1in>
    <associate|page-type|letter>
    <associate|page-width|auto>
    <associate|par-columns|1>
    <associate|par-hyphen|professional>
    <associate|par-par-sep|0.3fn>
    <associate|par-sep|0.2fn>
    <associate|preamble|false>
    <associate|src-compact|inline args>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|4|?>>
  </collection>
</references>