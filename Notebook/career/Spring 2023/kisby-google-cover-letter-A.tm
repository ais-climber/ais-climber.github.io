<TeXmacs|2.1.1>

<style|<tuple|letter|pagella-font|compact-list>>

<\body>
  <\hide-preamble>
    \;

    <assign|signature|<macro|body|<surround|<vspace*|5fn><left-flush>||<signature*|<arg|body>>>>>

    <assign|closing|<macro|body|<surround|<left-flush>||<signature*|<arg|body>>>>>

    <assign|doc-misc|<macro|body|<doc-title-block|<arg|body>>>>

    <assign|doc-title|<macro|x|<\surround|<vspace*|0.5fn>|<vspace*|0.5fn>>
      <doc-title-block|<font-magnify|1.682|<doc-title-name|<arg|x>>>>
    </surround>>>

    <assign|doc-title-name|<macro|x|<arg|x>>>
  </hide-preamble>

  <doc-data|<doc-title|Caleb Schultz Kisby>|<\doc-misc>
    <with|font-series|bold|Email:> <hlink|cckisby@iu.edu|mailto:cckisby@iu.edu><space|2em><with|font-series|bold|Phone:>
    +1 609 455 0673<new-line>\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V
  </doc-misc>|<with|doc-misc|<macro|body|<vspace*|0.5fn><doc-title-block|<arg|body>><vspace|0.5fn>>|<\doc-misc>
    jlk;dffjas;lfd

    \V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V\V
  </doc-misc>>>

  <with|font-series|bold|Position:> Student Researcher, PhD, 2023

  \;

  <\opening>
    Dear Google hiring team,
  </opening>

  Hi, I'm Caleb, a 5<math|<rsup|th>> year PhD candidate at Indiana
  University. I specialize in Neuro-Symbolic AI, i.e. I integrate deep
  learning with symbolic reasoning. I'm excited to see that you are looking
  for PhD students to do research at Google, and I'm here to apply.

  I have 6 years of experience (4 PhD + 2 undergrad) working on research
  projects and proof-of-concept prototypes. I've published and presented 3
  papers in established AI conferences (one in AAAI!). During my PhD, I've
  designed several neural network architectures that incorporate symbolic
  reasoning in some way \V see the open-source projects listed on my resume.
  Most recently, I have been independently developing a suite (in Python, via
  Tensorflow) to both <with|font-shape|italic|verify> if a neural network
  satisfies <math|P> and to <with|font-shape|italic|build> neural networks
  satisfying <math|P>. (See the project \Pà la Mode\Q on my resume and
  Github.)

  I also have a long-standing interest in natural language processing. I've
  taken graduate courses on classical (compositional) semantics, as well as
  distributional (vector) semantics, and I have experience with the NLTK and
  Word2Vec Python packages.

  Unlike most machine learning researchers, I have a particularly strong
  background in formal logic and symbolic reasoning. In fact, I've spent much
  of my PhD proving soundness and completeness for both a natural
  language-inspired logic, and also a formal neuro-symbolic translation. (See
  the FLAIRS and AAAI papers linked from my resume.) I also have experience
  in formal verification (I like Agda & Lean), which I hope to apply to
  formally verifying properties of neural nets.

  If you are interested, I'm available for a phone or Zoom interview during
  normal business hours (8am\U6pm, EST) \V please email me at the address
  above to schedule a time.

  <\closing>
    Thank you for your consideration,
  </closing>

  <\signature>
    Caleb Schultz Kisby
  </signature>

  \;

  \;

  \;

  \;

  \;

  <section*|Responses>

  <\question>
    Any papers and publications under your name? Are you attending any
    specific conferences? What is your role, are you presenting in them?
    (2000 chars max)
  </question>

  <\answer>
    I've written and presented the following papers:

    \;

    - Kisby, Caleb, Blanco, S., and Moss, L. "The Logic of Hebbian Learning,"
    at FLAIRS 2022

    - Kisby, Caleb, Blanco, S., Kruckman, A., & Moss, L. "Logics for sizes
    with union or intersection," at AAAI 2020

    - Gates, Lawrence, Caleb Kisby, and David Leake. "CBR confidence as a
    basis for confidence in black box systems," at ICCBR 2019

    \;

    I took a lot of initiative with the FLAIRS and AAAI paper -- the large
    majority of the ideas and writing are my own, and I personally presented
    them at the conferences. \ For the ICCBR paper, Larry Gates and I
    contributed work equally, and presented together.\ 

    \;

    I am currently working on a follow-up to the FLAIRS paper, to submit to
    KR 2023 (Knowledge Representation). \ But I generally keep AAAI, IJCAI,
    NeurIPS, and the Neuro-Symbolic workshop on my radar for future (planned)
    projects.

    \;

    See my Google Scholar profile for paper links and citation info:

    https://scholar.google.com/citations?user=KYin1BoAAAAJ&hl=en&oi=ao
  </answer>

  <\question>
    Please elaborate on your research focus. Is there additional information
    about your research and technical abilities that could help us match you
    to a project? e.g., Are you proficient in multiple programming languages?
    Have you received awards, built an exciting system or application, have a
    patent, acted as a project lead, made open source contributions or
    participated in major projects? (2000 chars max)
  </question>

  <\answer>
    I have a particularly strong background in logic and formal proofs. \ In
    fact, I did my undergraduate degree in both CS and Math, and was awarded
    the Magellan Scholar Undergraduate Research Grant at South Carolina to do
    research in equational logic. \ When I was admitted to Indiana
    University, I was awarded the Paul Purdom Fellowship, given to one math-y
    PhD student at IU each year.

    \;

    These days, I'm much more interested in cognitive science and artificial
    intelligence -- but I have a habit of turning neural network problems
    into logic problems! \ The coolest things I've done during my PhD are:

    \;

    1. I proved soundness (see my FLAIRS paper) for a formal neuro-symbolic
    translation. \ I believe I have a proof for completeness (read: given a
    knowledge base, we can build an equivalent neural network), which I plan
    to submit to KR.

    \;

    2. I'm writing a Python suite, using Tensorflow, to both verify if a
    neural network satisfies P and to build neural networks satisfying P.
    (See the project \Pà la Mode\Q on my resume and Github.)
  </answer>

  <\question>
    It's hard to overstate how much people's lives depend on deep neural
    networks, yet a neural network's inference is still considered a "black
    box" with no guarantees. \ Even OpenAI's ChatGPT, prompt-engineered to be
    respectful and polite to all users (e.g. by avoiding homophobic or
    transphobic language), can be hijacked so easily that it's become a meme:

    https://knowyourmeme.com/memes/sites/chatgpt-dan-50-jailbreak

    \;

    As Google -- already a dominating force in Artificial Intelligence --
    continues to scale, it is especially important for the company to take
    the interpretability, explainability, and verification of neural networks
    seriously. (Just to be clear -- Google Brain and Google's Responsible AI
    team *do* take this very seriously, which is why I applied!).

    \;

    My unique background in logic and neuro-symbolic AI puts me in a position
    to address this challenge. \ I have experience dealing with AI systems
    that have interpretable explanations for their behavior (e.g. Case-Based
    Reasoning, Symbolic Systems), and I am familiar with cutting-edge work on
    integrating these with neural networks.

    \;

    I also have experience with interactive theorem provers (e.g. Agda and
    Lean), which are the perfect tool for verifying that a program meets a
    spec. \ I'm very interested in using these tools to build neural networks
    that have formal guarantees (e.g. will never use a racial slur). \ I am
    in the process of implementing some of my neuro-symbolic translation
    ideas in Agda to do exactly this. \ Here's the code (not included on my
    resume because it's *very* early stage):

    https://github.com/ais-climber/argyle
  </question>

  <\answer>
    It's hard to overstate how much people's lives depend on deep neural
    networks, yet a neural network's inference is still considered a "black
    box" with no guarantees. \ Even OpenAI's ChatGPT, prompt-engineered to be
    respectful and polite to all users (e.g. by avoiding homophobic or
    transphobic language), can be hijacked so easily that it's become a meme:

    https://knowyourmeme.com/memes/sites/chatgpt-dan-50-jailbreak

    \;

    As Google -- already a dominating force in Artificial Intelligence --
    continues to scale, it is especially important for the company to take
    the interpretability, explainability, and verification of neural networks
    seriously. (Just to be clear -- Google Brain and Google's Responsible AI
    team *do* take this very seriously, which is why I applied!).

    \;

    My unique background in logic and neuro-symbolic AI puts me in a position
    to address this challenge. \ I have experience dealing with AI systems
    that have interpretable explanations for their behavior (e.g. Case-Based
    Reasoning, Symbolic Systems), and I am familiar with cutting-edge work on
    integrating these with neural networks.

    \;

    I also have experience with interactive theorem provers (e.g. Agda and
    Lean), which are the perfect tool for verifying that a program meets a
    spec. \ I'm very interested in using these tools to build neural networks
    that have formal guarantees (e.g. will never use a racial slur). \ I am
    in the process of implementing some of my neuro-symbolic translation
    ideas in Agda to do exactly this. \ Here's the code (not included on my
    resume because it's *very* early stage):

    https://github.com/ais-climber/argyle
  </answer>

  <\question>
    Is there anything else you would like us to know about your preferences?
    e.g., What kind of projects excite you? Do you have a favorite Google
    product or know of a specific Google team that might be a good fit for
    your interests? Is there an area/discipline that you really want to
    learn? (2000 chars max)
  </question>

  <\answer>
    These days, I've been really excited about extending my formal
    neuro-symbolic work to recurrent nets, nets with attention mechanisms
    (e.g. transformers) -- especially after reading Will Merrill's recent
    foundational work on them:

    https://arxiv.org/pdf/1906.01615.pdf

    \;

    But I don't yet have a good feel for what makes recurrence and attention
    "tick" (e.g. logical insights on how recurrent nets reason about time).
    \ I would love to be able to learn about these neural architectures in a
    practical, scaled setting (at Google). \ The main point is that I want to
    have real experience with these nets *before* setting out to prove
    theorems about them (and not end up with a theorem about a spherical
    cow!).

    \;

    I've had the Google Brain team and the Responsible AI team in mind
    throughout the application process. \ I would be very excited to work
    with either team, although I'm open to other teams depending on how well
    we fit.
  </answer>

  <\question>
    If you have picked one, provide a short summary of your thesis topic or
    primary research focus. (2000 chars max)
  </question>

  <\answer>
    My PhD work is on the theoretical foundations of neuro-symbolic AI. \ The
    key insight is to interpret formulas in a logic via dynamics of a neural
    network. \ For example, a classical result in this area is that forward
    propagation in a binary, feed-forward net is *completely* axiomatized by
    a certain conditional logic. \ This result has been extended to nets with
    fuzzy activation functions, as well as a variety of architectures (e.g.
    self-organizing maps). \ But work in this area don't give an account of
    learning.

    \;

    This is my focus: To give logical axioms characterizing different neural
    learning policies. \ My FLAIRS paper (see my resume) gave axioms for
    (unstable) Hebbian Learning. \ I now have my eye on stable Hebbian
    Learning, as well as backpropagation.
  </answer>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|math-font|math-pagella>
    <associate|page-even-footer|<htab|5mm><htab|5mm>>
    <associate|page-even-header|>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-odd-footer|<htab|5mm><htab|5mm>>
    <associate|page-odd-header|>
    <associate|page-screen-margin|false>
    <associate|page-type|letter>
    <associate|page-width|auto>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
  </collection>
</references>