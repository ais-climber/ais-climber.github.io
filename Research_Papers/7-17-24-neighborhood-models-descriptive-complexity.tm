<TeXmacs|2.1.1>

<style|<tuple|article|indent-paragraphs|python|cite-author-year|cite-sort|termes-font>>

<\body>
  <\hide-preamble>
    \;

    <assign|doc-title|<macro|x|<doc-title-block|<very-large|<doc-title-name|<arg|x>>>>>>

    <assign|by-text|<macro|>>

    <assign|doc-subtitle|<macro|x|<\surround|<vspace*|0.25fn>|<vspace|0.5fn>>
      <doc-title-block|<font-magnify|1.25|<arg|x>>>
    </surround>>>

    <assign|author-name|<macro|author|<surround|<vspace*|0fn>|<vspace|0.3fn>|<doc-author-block|<with|font-series|bold|<author-by|<arg|author>>>>>>>

    <assign|sectional-sep|<macro|<space|0.5fn>>>

    <assign|bibliography-text|<macro|<localize|References>>>

    \;

    <assign|Model|<with|font|cal|M>>

    <assign|Class|<with|font|cal|C>>

    <assign|Net|<with|font|cal|N>>

    <assign|State|<with|font-family|ss|State>>

    <assign|semantics|<macro|body|<around*|\<llbracket\>|<arg|body>|\<rrbracket\>>>>

    <assign|lang|<with|font|cal|L>>

    <assign|transl|\<tau\>>

    <assign|proves|\<vdash\>>

    <assign|orr|\<vee\>>

    <assign|land|\<wedge\>>

    <assign|bigchi|<larger|\<chi\>>>

    <assign|powerset|<with|font|cal|P>>

    \;

    <assign|Closure|<with|font-family|ss|Cl>>

    <assign|Prop|<with|font-family|ss|Prop>>

    <assign|Reach|<with|font-family|ss|Reach>>

    <assign|Reaches|<with|font-family|ss|Reach<rsup|\<downarrow\>>>>

    <assign|Hebbstar|<with|font-family|ss|Hebb<rsup|\<star\>>>>

    <assign|iter|<with|font-family|ss|iter>>

    <assign|Update|<with|font-family|ss|Update>>

    <assign|Cond|<with|font-family|ss|Cond>>

    <assign|Lex|<with|font-family|ss|Lex>>

    <assign|Consr|<with|font-family|ss|Consr>>

    <assign|AllNets|<with|font-family|ss|Net>>

    <assign|bias|<with|font-family|ss|bias>>

    <assign|axiom|<macro|x|<text|<name|(<arg|x>)>>>>

    <assign|Hebb|<with|font-family|ss|Hebb>>

    <assign|best|<with|font-family|ss|best>>

    <assign|Believe|<with|font-series|bold|<text|B>>>

    <assign|Know|<with|font-series|bold|<text|K>>>

    <assign|Knownby|<with|font-series|bold|<text|K><rsup|\<downarrow\>>>>

    <assign|Typ|<with|font-series|bold|<text|T>>>

    <assign|diaBelieve|\<langle\><value|Believe>\<rangle\>>

    <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

    <assign|diaTyp|\<langle\><value|Typ>\<rangle\>>

    <assign|diaKnownby|\<langle\><value|Knownby>\<rangle\>>

    <assign|Hebbop|<macro|formula|[<arg|formula>]<rsub|<value|Hebb>>>>

    <assign|Hebbstarop|<macro|formula|[<arg|formula>]<rsub|<value|Hebbstar>>>>

    \;

    <assign|Satisfy|<with|font-family|rm|Sat>>

    <assign|Theory|<with|font-family|rm|Th>>

    <assign|Definable|<with|font-family|rm|Def>>

    <assign|Rel|<with|font-family|rm|<with|font-series|bold|Rel>>>

    <assign|Relrefl|<with|font-family|rm|<with|font-series|bold|Rel>>>

    <assign|Nbhd|<with|font-family|rm|<with|font-series|bold|Nbhd>>>

    <assign|Nbhdrefl|<with|font-family|rm|<with|font-series|bold|Nbhd>><rsub|<with|font-family|rm|S4>>>

    <assign|Plaus|<with|font-family|rm|<with|font-series|bold|Plaus>>>

    <assign|NetModel|<with|font-family|rm|<with|font-series|bold|Net>>>

    <assign|SocialNet|<with|font-family|rm|<with|font-series|bold|SocialNet>>>

    \;

    <assign|AC|<with|font-shape|small-caps|AC><rsup|0>>

    <assign|Log|<with|font-shape|small-caps|L>>

    <assign|Poly|<with|font-shape|small-caps|P>>

    <assign|NP|<with|font-shape|small-caps|NP>>

    <assign|PSPACE|<with|font-shape|small-caps|PSPACE>>

    <assign|EXPTIME|<with|font-shape|small-caps|EXPTIME>>

    <assign|Modal|<with|font-shape|small-caps|MODAL>>

    <assign|FO|<with|font-shape|small-caps|FO>>

    <assign|FODTC|<with|font-shape|small-caps|FO[DTC]>>

    <assign|FOLFP|<with|font-shape|small-caps|FO[LFP]>>

    <assign|SOex|<with|font-shape|small-caps|SO>\<exists\>>

    <assign|SOTC|<with|font-shape|small-caps|SO[TC]>>

    <assign|SOLFP|<with|font-shape|small-caps|SO[LFP]>>

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

    <assign|subsection-title|<macro|name|<sectional-normal-bold|<vspace*|1.5fn><large|<arg|name>><vspace|0.5fn>>>>

    <assign|section-title|<macro|name|<sectional-normal-bold|<vspace*|1.5fn><very-large|<arg|name>><vspace|1fn>>>>

    <new-list|todo-list|<macro|x|\<box\>>|>
  </hide-preamble>

  <doc-data|<doc-title|Neighborhood Models & Descriptive
  Complexity>|<doc-author|<author-data|<author-name|Caleb Schultz
  Kisby>|<\author-affiliation>
    Last revised: <with|font-shape|italic|November 21, 2024>
  </author-affiliation>>>|<with|doc-date|<macro|body|<vspace|0fn><inactive*|<doc-title-block|<with|font-shape|italic|<arg|body>>>>>|<doc-date|November
  4, 2024>>>

  <section|Problem Statement>

  Descriptive complexity aims to organize complexity classes by the
  expressive power of the languages that are able to describe problems in
  them. But work in this area often takes for granted the role that the class
  of models has to play in characterizing this expressive power. A common
  practice for motivating descriptive complexity is to emphasize that
  expressivity in a logical language is machine, resource, or
  model-independent, and therefore classes such as <math|<value|Poly>,<NP>>,
  and <math|<PSPACE>> are made more robust by having this kind of
  resource-independent characterization (emphasis mine):

  <\quote-env>
    In the beginning, there were two measures of computational complexity:
    time and space. From an engineering standpoint, these were very natural
    measures, quantifying the amount of physical resources needed to perform
    a computation. From a mathematical viewpoint, time and space were
    somewhat less satisfying, since neither appeared to be tied to the
    inherent mathematical complexity of the computational problem \<ldots\>
    [Fagin's Theorem] was a remarkable insight, for it demonstrated that the
    computational complexity of a problem can be understood as the richness
    of a language needed to specify the problem. <with|font-series|bold|Time
    and space are not model-dependent engineering concepts, they are more
    fundamental.>

    \VImmerman, <with|font-shape|italic|Descriptive Complexity>
    <cite|immerman1998descriptive>
  </quote-env>

  <\quote-env>
    The technique of the proof \<ldots\> was reused by Fagin almost a quarter
    century later to prove his celebrated result that put the equality sign
    between the class <math|<value|NP>> and existential second-order logic,
    thereby providing a <with|font-series|bold|machine-independent
    characterization> of an important complexity class.

    \VLibkin, <with|font-shape|italic|Elements of Finite Model Theory>
    <cite|libkin2004elements>
  </quote-env>

  <\quote-env>
    This result provided one of the first <with|font-series|bold|machine
    independent characterizations> of an important complexity class\Vi.e.
    <with|font-series|bold|one whose formulation does not make reference to a
    specific model of computation> \<ldots\> The availability of such
    characterizations is often taken to provide additional evidence for the
    mathematical robustness of classes like <math|<value|NP>>.

    \VDean, \PComputational Complexity Theory\Q
    <cite|sep-computational-complexity> (SEP)
  </quote-env>

  But descriptive complexity classes <with|font-shape|italic|do> depend on a
  specific model of computation \V they depend on the choice of model that is
  used to interpret the logical language, just as much as they depend on the
  choice of language. Historically, these classes have been defined using
  relational (graph) models, i.e. classical models for first- and
  second-order logics. (I will call this class of relational models
  <math|<value|Rel>>.) But this choice was somewhat arbitrary. For example,
  the theory could have been developed instead using more general
  <em|neighborhood space models> <math|<value|Nbhd>>.

  The purpose of these notes is to explore this possibility \V to develop
  descriptive complexity using neighborhood models rather than graph models.
  What I have in mind is a set of alternative logical classes that parallel
  the classes <math|<SOex>,<FOLFP>,<FODTC>>, and so on. These in turn will
  give rise to a set of previously undiscovered computational complexity
  classes that likewise parallel the classes <math|<NP>,<Poly>,<Log>>, and so
  on. I posit that these new classes are in many ways more natural than their
  counterparts, in a sense that I will make more precise in writing these
  notes.

  In concrete terms, I would like to answer the questions:

  <\question>
    What are the ``neighborhood descriptive complexity'' classes like? Are
    they actually distinct from their counterparts? (For instance, is
    <math|<around*|(|<value|SOex>,<value|Rel>|)>\<subset\><around*|(|<value|SOex>,<value|Nbhd>|)>>?
    Try to give a <em|specific> problem in
    <math|<around*|(|<value|SOex>,<value|Nbhd>|)>> but not in
    <math|<around*|(|<value|SOex>,<value|Rel>|)>>. What are these problems
    like?)
  </question>

  <\question>
    What <em|computational> complexity classes correspond to the neighborhood
    classes? What are these classes, and their models of computation, like?
    (For instance, what class <math|<NP><rsup|\<dagger\>>> is equivalent to
    <math|<around*|(|<value|SOex>,<value|Nbhd>|)>>? Try to give a specific
    problem in <math|<NP><rsup|\<dagger\>>> but not in <math|<NP>>.
    Additionally, try to give a specific problem that is
    <math|<NP><rsup|\<dagger\>>>-complete.)
  </question>

  <\question>
    Neighborhood models are in many ways more natural than relational models
    <emdash> for example, in modal logic, relational models carry with them
    the normal modal axioms, whereas neighborhood models are complete with
    respect to no axioms at all. In what ways does this sense of \Pnatural\Q
    carry over in the complexity context? How are these neighborhood classes
    more natural than their counterparts?
  </question>

  The inclusion diagram to the right is a roadmap for what's ahead. The black
  lines show the classical complexity hierarchy alongside the descriptive
  complexity hierarchy. Classes below are contained in classes above, and
  horizontal lines indicate equality. The green lines extend the hierarchy to
  include the neighborhood classes and their computational counterparts. Note
  that the green inclusions <with|font-series|bold|haven't been proven yet>
  \V they illustrate the conjecture I'm chasing after in these notes.

  <section|Basic Setup & Definitions>

  <subsection|Computational Complexity>

  [define, as brief as possible, the basic complexity classes & (will need to
  define machines too!). I will also need to define reductions and
  completeness (give examples of complete problems for each!!)]

  <subsection|Descriptive Complexity>

  [first, define traditional models for modal logic, then in Johan's style
  define FOL and SOL semantics as dynamic generalizations.]

  <subsection|Descriptive Complexity using Neighborhood Semantics>

  [define neighborhood models for modal logic; we can generalize this idea
  straightforwardly to FOL and SOL; then define the descriptive complexity
  classes we get by using neighborhood models instead]

  <subsection|Why Consider Neighborhood Models?>

  [state some classical/already-known theorems that explain why neighborhood
  models are more general / more natural. Start with the very easy example of
  modal logic: Neighborhood models are able to express non-monotonicity in a
  way that relational models cannot. The interesting thing later will be to
  see how these results translate into insights for complexity theory.]

  <section|Progress So Far>

  <\definition>
    Let <math|<value|Class><rsub|1>,<value|Class><rsub|2>> be classes of
    models (each with their own satisfaction relation <math|\<models\>>),
    <math|<value|lang><rsub|1>,<value|lang><rsub|2>> be formulas. There is a
    <with|font-shape|italic|translation> <math|<around*|(|<value|Class><rsub|1>,<value|lang><rsub|1>|)>\<rightsquigarrow\><around*|(|<value|Class><rsub|2>,<value|lang><rsub|2>|)>>
    iff there are mappings <math|f:<value|Class><rsub|1>\<rightarrow\><value|Class><rsub|2>>,
    <math|<value|transl>:<value|lang><rsub|1>\<rightarrow\><value|lang><rsub|2>>
    such that for all <math|<value|Model>\<in\><value|Class><rsub|1>,\<varphi\>\<in\><value|lang><rsub|1>>,

    <\equation*>
      <value|Model>\<models\>\<varphi\><infix-iff>f<around*|(|<value|Model>|)>\<models\><value|transl><around*|(|\<varphi\>|)>
    </equation*>
  </definition>

  <\note*>
    In today's LiRA talk (11/21/24), Johan van Benthem suggested that the
    correct line here is actually

    <\equation*>
      f<around*|(|<value|Model>|)>\<models\>\<varphi\><infix-iff><value|Model>\<models\><value|transl><around*|(|\<varphi\>|)>
    </equation*>

    with the mapping from models <with|font-shape|italic|flipped>! Why?
    What's going on here?
  </note*>

  <\note*>
    My goal here is to have some definition of a translation that is more
    general than (1) definability over languages, and (2) satisfiability over
    sets. I want <math|<around*|(|<value|Class>,<value|lang><rsub|1>|)>\<rightsquigarrow\><around*|(|<value|Class>,<value|lang><rsub|2>|)>>
    (class fixed) to imply <math|<value|Definable><around*|(|<value|Class>,<value|lang><rsub|1>|)>\<subseteq\><value|Definable><around*|(|<value|Class>,<value|lang><rsub|2>|)>>,
    and also <math|<around*|(|<value|Class><rsub|1>,<value|lang>|)>\<rightsquigarrow\><around*|(|<value|Class><rsub|2>,<value|lang>|)>>
    (language fixed) to imply <math|<value|Satisfy><around*|(|<value|Class><rsub|1>,<value|lang>|)>\<subseteq\><value|Satisfy><around*|(|<value|Class><rsub|2>,<value|lang>|)>>.
    But I also want it to be easy to show, e.g. if
    <math|P<neg|\<in\>><value|Definable><around*|(|<value|Class>,<value|lang><rsub|2>|)>>
    but <math|P\<in\><value|Definable><around*|(|<value|Class>,<value|lang><rsub|1>|)>>
    then there <with|font-shape|italic|cannot> be a translation
    <math|<around*|(|<value|Class>,<value|lang><rsub|1>|)>\<rightsquigarrow\><around*|(|<value|Class>,<value|lang><rsub|2>|)>>!
    (This last part is tricky to get right!)
  </note*>

  \;

  \;

  [The very first results should focus on NP (SO<math|\<exists\>>). First,
  show that the class for SO<math|\<exists\>> with neighborhood models is
  <em|distinct> from SO<math|\<exists\>> \V by finding a problem expressible
  in the former that is not expressible in the latter! (I expect this will be
  a generalization of the non-monotonicity example from earlier)] [Prove that
  this new class is closed under FO-reductions (the plan is to essentially do
  Fagin's proof)] [Identify the class that corresponds to NP on the other
  side; as a sanity check, prove that it is distinct from NP (includes a
  problem that NP does not)] [Identify a problem that is complete for this
  new NP class] [Show that this problem is expressible in SO<math|\<exists\>>
  with neighborhood models] [Prove that the SO<math|\<exists\>> neighborhood
  class is <math|\<subseteq\>> this new NP class] [Put it all together to
  show that the new classes are equal]

  [So we would have: A neighborhood model alternative to SO<math|\<exists\>>
  that is distinct from it; an alternative to NP that corresponds to it;
  example problems in each; an example <em|complete> problem; and a proof
  that they're equal] [I will accept this as a proof of concept that I can
  actually do all this.]

  <section|Todo List>

  <\enumerate>
    <item>
  </enumerate>

  <\bibliography|bib|tm-plain|references.bib>
    <\bib-list|3>
      <bibitem*|1><label|bib-sep-computational-complexity>Walter Dean.
      <newblock>Computational complexity theory. <newblock><localize|In
      >Edward<nbsp>N.<nbsp>Zalta<localize|, editor>,
      <with|font-shape|italic|The Stanford Encyclopedia of Philosophy>.
      Metaphysics Research Lab, Stanford University, 2021.<newblock>

      <bibitem*|2><label|bib-immerman1998descriptive>Neil Immerman.
      <newblock><with|font-shape|italic|Descriptive Complexity>.
      <newblock>Springer Science & Business Media, 1998.<newblock>

      <bibitem*|3><label|bib-libkin2004elements>Leonid Libkin.
      <newblock><with|font-shape|italic|Elements of Finite Model Theory>,
      <localize|volume><nbsp>41. <newblock>Springer, 2004.<newblock>
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|bg-color|#f9f5d7>
    <associate|color|#000000>
    <associate|eqn-short-above|<macro|0.3fn>>
    <associate|eqn-short-below|<macro|0.3fn>>
    <associate|font-base-size|11>
    <associate|info-flag|minimal>
    <associate|item-vsep|<macro|0.3fn>>
    <associate|large-padding-above|0.5fn>
    <associate|large-padding-below|0.5fn>
    <associate|math-font|math-termes>
    <associate|padding-above|1fn>
    <associate|padding-below|1fn>
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
    <associate|quote-left-indentation|1.5tab>
    <associate|quote-right-indentation|1.5tab>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|10-22-24-thesis-proposal.tm>>
    <associate|auto-2|<tuple|2|2|10-22-24-thesis-proposal.tm>>
    <associate|auto-3|<tuple|2.1|2|10-22-24-thesis-proposal.tm>>
    <associate|auto-4|<tuple|2.2|2|10-22-24-thesis-proposal.tm>>
    <associate|auto-5|<tuple|2.3|2|10-22-24-thesis-proposal.tm>>
    <associate|auto-6|<tuple|2.4|3|10-22-24-thesis-proposal.tm>>
    <associate|auto-7|<tuple|3|3|10-22-24-thesis-proposal.tm>>
    <associate|auto-8|<tuple|4|3|10-22-24-thesis-proposal.tm>>
    <associate|auto-9|<tuple|1|3|10-22-24-thesis-proposal.tm>>
    <associate|bib-immerman1998descriptive|<tuple|2|3|10-22-24-thesis-proposal.tm>>
    <associate|bib-libkin2004elements|<tuple|3|3|10-22-24-thesis-proposal.tm>>
    <associate|bib-sep-computational-complexity|<tuple|1|3|10-22-24-thesis-proposal.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      immerman1998descriptive

      libkin2004elements

      sep-computational-complexity
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|0.5fn>Problem
      Statement> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|0.5fn>Basic
      Setup & Definitions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|0.5fn>Computational Complexity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|0.5fn>Descriptive Complexity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.3<space|0.5fn>Descriptive Complexity
      using Neighborhood Semantics <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|2.4<space|0.5fn>Why Consider Neighborhood
      Models? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|0.5fn>Progress
      So Far> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|0.5fn>Todo
      List> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>