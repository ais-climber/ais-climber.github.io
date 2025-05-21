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
      <tabular|<tformat|<table|<row|<cell|<with|font-series|bold|Email:>
      <hlink|cckisby@iu.edu|mailto:cckisby@iu.edu>>>|<row|<cell|<with|font-series|bold|Phone:>
      +1 609 455 0673>>>>>

      \;
    </cell>|<\cell>
      <tabular|<tformat|<cwith|2|2|1|1|cell-halign|c>|<cwith|1|1|1|1|cell-halign|c>|<table|<row|<cell|<really-huge|Caleb
      Schultz Kisby>>>|<row|<cell|Neuro-Symbolic AI Researcher>>>>>
    </cell>|<\cell>
      <tabular|<tformat|<cwith|1|1|1|1|cell-halign|r>|<cwith|2|2|1|1|cell-halign|r>|<table|<row|<cell|<with|font-series|bold|GitHub:>
      <hlink|ais-climber|https://github.com/ais-climber>>>|<row|<cell|<with|font-series|bold|LinkedIn:>
      <hlink|[Link]|https://www.linkedin.com/in/caleb-schultz-kisby-b2565a232/>>>>>>
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

  <\cv-line|Research Assistant>
    Indiana University

    \<circ\> Supported by a DoD Trusted AI grant for which I co-wrote the
    grant proposal. See Projects listed below.
  </cv-line|Spring 2022 \U Present|Fall 2018 \U Spring 2019>

  <\cv-line|Teaching Assistant>
    Indiana University

    \<circ\> Planned and taught recitations for Theory of Computation, Honors
    Discrete Math, and Intro to Programming.
  </cv-line|Summer 2019 \U Fall 2021|>

  <\cv-section>
    PROJECTS
  </cv-section>

  <\cv-line|à la Mode: Neural Network Model Checking & Building>
    \<circ\> Independently developed a suite for verifying and building
    neural networks via symbolic constraints (using Tensorflow).

    \<circ\> Proved that the neuro-symbolic translation at the heart of the
    program is formally sound (see FLAIRS paper below).
  </cv-line|<cv-link|GitHub|https://github.com/ais-climber/a-la-mode>|>

  <\cv-line>
    Notakto Player
  <|cv-line>
    \<circ\> Supplemented the <hlink|AlphaZero
    CNN|https://github.com/suragnair/alpha-zero-general> with light
    knowledge-based features to better play <hlink|Thane Plambeck's
    Notakto|https://www.youtube.com/watch?v=ktPvjr1tiKk&t=0s&ab_channel=Numberphile>

    <space|1em>(AlphaZero alone fails to learn a winning strategy for this
    game \V see the linked <hlink|Report|https://ais-climber.github.io/files/Kisby_Playing_Notakto.pdf>).

    \<circ\> Wrote testbed code (using Tensorflow) to compare the
    supplemented net against the original AlphaZero net.
  </cv-line|<cv-link|GitHub|https://github.com/ais-climber/notakto-player><cv-link|Report|https://ais-climber.github.io/files/Kisby_Playing_Notakto.pdf>|>

  <\cv-line|An Efficient & Light Cardinality Reasoner>
    \<circ\> Proved completeness for a computationally light logic that
    reasons about cardinalities with intersection in polynomial time.

    \<circ\> Collaborated with co-authors on proof (see AAAI paper below);
    Independently implemented model-building in Python.
  </cv-line|<cv-link|GitHub|https://github.com/ais-climber/syllogistic-sizes>|>

  <\cv-line|COBB: Case-Based Confidence for Black Box Predictions>
    \<circ\> Co-developed a hybrid neuro-symbolic system that uses a
    case-based reasoner to assess confidence and explain a neural

    <space|1em>network's predictions (using Scikit-Learn). Larry Gates and I
    divided all work evenly. (See ICCBR paper below.)
  </cv-line|<cv-link|GitHub|https://github.iu.edu/gatesla/Explain_CBR_BB>|>

  <\cv-line|Sense-Able: Obstacle Sensor for Visually Impaired>
    \<circ\> Collaborated with a team to develop a proof-of-concept LIDAR
    sensor for our clients at <hlink|P. B. Mumola, Ph.D.,
    LLC|https://www.linkedin.com/in/pbmumola/>.

    \<circ\> Wrote Qt front-end application & object detection code in C++;
    Independently wrote a tutorial for the LIDAR SDK.
  </cv-line|<cv-link|GitHub|https://github.com/ais-climber/sense-able><cv-link|Tutorial|https://ais-climber.github.io/files/LeddarSDK-C_Tutorial.pdf>|>

  <\cv-section>
    SKILLS
  </cv-section>

  <\cv-paragraph>
    <\description>
      <item*|Machine Learning><with|font-base-size|9pt|Deep Neural Networks,
      Reinforcement Learning, Tensorflow, SciKit-Learn, NLP (Word2Vec, NLTK)>

      <item*|Symbolic AI><with|font-base-size|9pt|Knowledge Representation &
      Reasoning, Model Building, First-Order & Modal Logics, Natural Language
      Semantics>

      <item*|Languages><with|font-base-size|9pt|><with|font-base-size|9pt|><with|font-base-size|9pt|Python,
      C++, C, Java, Agda, Lisp (Racket), Haskell, Prolog, Lean>

      <item*|Other Tools><with|font-base-size|9pt|Git, LaTeX, TexMacs,
      Jupyter Notebook (Google Colab), Visual Studio Code, Emacs, Linux>
    </description>
  </cv-paragraph|||>

  <\cv-section>
    PUBLICATIONS
  </cv-section>

  <\cv-line-2|The Logic of Hebbian Learning>
    with Saúl A. Blanco and Lawrence Moss. Presented at FLAIRS 2022, Jensen
    Beach FL.

    <with|font-shape|italic|Nominated for Best Student Paper>.
  </cv-line-2|FLAIRS 2022|<cv-link|pdf|https://journals.flvc.org/FLAIRS/article/view/130735>>

  <cv-line-2|Logics for Sizes with Union or Intersection|with Saúl A. Blanco,
  Alex Kruckman, and Lawrence Moss. Presented at AAAI'20, New York NY|AAAI
  2020|<cv-link|pdf|https://ojs.aaai.org/index.php/AAAI/article/download/5677/5533>>

  <cv-line-2|CBR Confidence as a Basis for Confidence in Black Box
  Systems|with Lawrence Gates and David Leake. Presented at ICCBR 2019,
  Otzenhausen Germany.|ICCBR 2019|<cv-link|pdf|https://ais-climber.github.io/files/Gates_CBR_Confidence.pdf>>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|11>
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