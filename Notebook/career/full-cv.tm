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
      \;

      <\wide-tabular>
        <tformat|<cwith|1|1|1|1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-bborder|0.5ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|1|1|cell-rborder|0ln>|<twith|table-bsep|0.3fn>|<table|<row|<\cell>
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
        <tformat|<cwith|1|2|1|1|cell-halign|r>|<cwith|1|1|1|1|cell-rsep|>|<cwith|1|1|1|1|cell-lsep|0>|<cwith|2|2|2|2|cell-hyphen|t>|<cwith|1|1|3|3|cell-halign|r>|<cwith|1|-1|2|2|cell-width|6in>|<cwith|1|-1|2|2|cell-hmode|exact>|<table|<row|<\cell>
          <arg|conf-tag><space|1em>
        </cell>|<\cell>
          <with|font-series|bold|<arg|heading>>
        </cell>|<\cell>
          <small|<arg|optional>>
        </cell>>|<row|<\cell>
          \;
        </cell>|<\cell>
          <\small>
            <\with|par-sep|0.4fn|par-par-sep|0.4fn>
              <\small>
                <arg|body>
              </small>
            </with>
          </small>
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
  </hide-preamble>

  <\wide-tabular>
    <tformat|<cwith|1|1|1|-1|cell-valign|t>|<cwith|1|1|2|2|cell-halign|c>|<cwith|1|1|3|3|cell-halign|r>|<table|<row|<\cell>
      <tabular|<tformat|<table|<row|<cell|<with|font-series|bold|Email:>
      <hlink|cckisby@iu.edu|mailto:cckisby@iu.edu>>>|<row|<cell|<with|font-series|bold|Phone:>
      +1 609 455 0673>>>>>

      \;
    </cell>|<\cell>
      <tabular|<tformat|<cwith|2|2|1|1|cell-halign|c>|<cwith|1|1|1|1|cell-halign|c>|<table|<row|<cell|<really-huge|Caleb
      Schultz Kisby>>>|<row|<cell|<hlink|ais-climber.github.io|https://ais-climber.github.io/>>>>>>
    </cell>|<\cell>
      <tabular|<tformat|<cwith|1|1|1|1|cell-halign|r>|<cwith|2|2|1|1|cell-halign|r>|<table|<row|<cell|<with|font-series|bold|GitHub:>
      <hlink|ais-climber|https://github.com/ais-climber>>>|<row|<cell|<with|font-series|bold|LinkedIn:>
      <hlink|caleb-kisby|https://www.linkedin.com/in/caleb-kisby-b2565a232/>>>>>>
    </cell>>>>
  </wide-tabular>

  <\cv-section>
    EDUCATION
  </cv-section>

  <\cv-line|Ph.D. Candidate, Computer Science (in progress)>
    Indiana University

    Concentration: Neuro-Symbolic AI
  </cv-line|Fall 2018 \U Present|GPA: 3.75>

  <cv-line|B.S. Computer Science and Mathematics|University of South
  Carolina|Spring 2018|GPA: 3.97>

  <\cv-section>
    EXPERIENCE
  </cv-section>

  <\cv-line|Graduate Research Assistant>
    Indiana University

    Supervisors: Lawrence Moss, Saúl Blanco, and David Leake
  </cv-line|Spring 2022 \U Present|Fall 2018 \U Spring 2019>

  <\cv-line|Teaching Assistant>
    Indiana University

    Supervisors: Saúl Blanco, Erik Wennstrom, and Daniel Leivant
  </cv-line|Summer 2019 \U Fall 2021|>

  <\cv-line|Magellan Scholar Undergraduate Researcher>
    University of South Carolina

    Supervisor: George McNulty
  </cv-line|Fall 2016 \U Fall 2017|>

  <\cv-section>
    AWARDS
  </cv-section>

  <cv-line-award|\PThe Logic of Hebbian Learning\Q nominated for Best Student
  Paper, FLAIRS||2022|>

  <cv-line-award|Paul Purdom Fellowship, Department of Computer Science,
  Indiana University||2019|>

  <cv-line-award|Outstanding Senior in Computer Science, USC Columbia||2018|>

  <cv-line-award|Jeong S. Yang Award for Excellence in Undergraduate
  Mathematics, USC Columbia|||>

  <cv-line-award|Thomas Markham Mathematics Scholarship, USC Columbia||2017|>

  <cv-line-award|Magellan Scholar Undergraduate Research Grant, USC
  Columbia|||>

  <\cv-section>
    PUBLICATIONS
  </cv-section>

  <cv-line-2|The Logic of Hebbian Learning|with Saúl A. Blanco and Lawrence
  Moss. In The International FLAIRS Conference Proceedings, Jensen Beach FL.
  <with|font-shape|italic|Nominated for Best Student Paper>.|FLAIRS
  2022|<cv-link|pdf|https://journals.flvc.org/FLAIRS/article/view/130735>>

  <cv-line-2|Logics for Sizes with Union or Intersection|with Saúl A. Blanco,
  Alex Kruckman, and Lawrence Moss. In Proceedings of AAAI'20, New York
  NY|AAAI 2020|<cv-link|pdf|https://ojs.aaai.org/index.php/AAAI/article/download/5677/5533>>

  <cv-line-2|CBR Confidence as a Basis for Confidence in Black Box
  Systems|with Lawrence Gates and David Leake. In Proceedings of ICCBR,
  Otzenhausen Germany.|ICCBR 2019|<cv-link|pdf|https://ais-climber.github.io/files/Gates_CBR_Confidence.pdf>>

  <\cv-section>
    TALKS AND POSTER PRESENTATIONS
  </cv-section>

  <\cv-section>
    PROJECTS
  </cv-section>

  <cv-line|Argyle|An Agda library for formally verifying properties of neural
  network learning (in progress).|<cv-link|GitHub|https://github.com/ais-climber/argyle>|>

  <cv-line|à la Mode|A Python suite for building neural networks from a
  symbolic knowledge base|<cv-link|GitHub|https://github.com/ais-climber/a-la-mode>|>

  <cv-line|Notakto Player|A CNN that uses reinforcement learning to learn
  winning strategies for Thane Plambeck's
  Notakto.|<cv-link|GitHub|https://github.com/ais-climber/notakto-player><cv-link|Report|https://ais-climber.github.io/files/Kisby_Playing_Notakto.pdf>|>

  <cv-line||A computationally light (P-Time) reasoner for cardinality
  constraints with union and intersection|<cv-link|Github|https://github.com/ais-climber/syllogistic-sizes>|>

  <cv-line|CoBB|A hybrid system that uses a case-based reasoner (CBR) to
  assess confidence in a neural network|<cv-link|Github todo|>|>

  <\cv-line|Sense-Able>
    A proof-of-concept LIDAR obstacle sensor for the visually impaired

    This was my senior project at USC, in collaboration with P. B. Mumola,
    Ph.D., LLC
  </cv-line|<cv-link|GitHub|https://github.com/ais-climber/sense-able><cv-link|Docs|https://ais-climber.github.io/files/LeddarSDK-C_Tutorial.pdf>|>

  <\cv-section>
    TECHNICAL SKILLS
  </cv-section>

  <\cv-line|Frameworks and Languages>
    Tensorflow (Keras), Scikit-Learn, Python, Agda, Lisp (Racket)
  </cv-line||>

  <cv-line|Other Tools|Git, LaTeX, TexMacs, Jupyter Notebook (Google Colab),
  Visual Studio Code, Emacs, Linux||>

  <\cv-section>
    TEACHING
  </cv-section>

  <\cv-section>
    SERVICE AND OUTREACH
  </cv-section>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
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