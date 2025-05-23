<TeXmacs|2.1.4>

<style|<tuple|article|python|cite-author-year|cite-sort|fontawesome|termes-font|my-macros>>

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

    <assign|Model|<with|font|cal|M>>

    <assign|Net|<with|font|cal|N>>

    <assign|State|<with|font-family|ss|State>>

    <assign|semantics|<macro|body|<around*|\<llbracket\>|<arg|body>|\<rrbracket\>>>>

    <assign|lang|<with|font|cal|L>>

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

    <assign|Typ|<with|font-series|bold|<text|T>>>

    <assign|diaBelieve|\<langle\><value|Believe>\<rangle\>>

    <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

    <assign|diaTyp|\<langle\><value|Typ>\<rangle\>>

    <assign|Knownby|<with|font-series|bold|<text|K><rsup|\<downarrow\>>>>

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

    <assign|todo-bg-color|#e0dfba>

    <assign|todo-color|#4c4b0d>

    <assign|cursor-color|#8f3f71>

    <assign|math-cursor-color|#8f3f71>

    <assign|selection-color|#4c4b0d>

    <assign|match-color|#4c4b0d>

    <assign|subsection-toc|<macro|name|>>

    <assign|paragraph-toc|<macro|name|>>
  </hide-preamble>

  <doc-data|<\doc-title>
    Collection of Model Updates &

    Learning Policies
  </doc-title>|<doc-author|<author-data|<author-name|Notes by Caleb Schultz
  Kisby>>>|<doc-author|<author-data>>|<with|doc-date|<macro|body|<vspace|0fn><inactive*|<doc-title-block|<with|font-shape|italic|<arg|body>>>>>|<doc-date|November
  4, 2024>>>

  <section|Base Models and Languages>

  <\itemize>
    <item>Over modal/epistemic/doxastic languages (including common
    knowledge):

    <\itemize>
      <item>Relational (Kripke) models

      <item>Plausibility models

      <item>Sphere models

      <item>Neighborhood models

      <item>Neural network models

      <item>Social network models
    </itemize>

    <item>Over quantified/assignment/first-order languages:

    <\itemize>
      <item>van Benthem's Generalized Relational Models (assignment-based
      possible worlds models)

      <item>We can generalize this basic idea and do the same for
      plausibility models, sphere models, neighborhood models, neural network
      models, social network models, <text-dots>
    </itemize>
  </itemize>

  <section|Properties of Base Models>

  <\itemize>
    <item>Relational (Kripke) models <hlink|[Source:
    SEP]|https://plato.stanford.edu/entries/logic-modal/#ModAxiConFra>

    <\itemize>
      <item>All relational models satisfy
      <math|\<box\><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|\<box\>\<varphi\>\<rightarrow\>\<box\>\<psi\>|)>>,
      which is a constraint on the topology of the model that basically says
      the model is a graph (is <with|font-series|bold|normal>). All
      relational models also satisfy the <with|font-series|bold|necessitation
      rule>: If <math|<value|proves>\<varphi\>> then
      <math|<value|proves>\<box\>\<varphi\>>.

      <item><math|\<box\>\<varphi\>\<rightarrow\>\<varphi\>>: The graph is
      <with|font-series|bold|reflexive>

      <item><math|\<box\>\<varphi\>\<rightarrow\>\<box\>\<box\>\<varphi\>>:
      The graph is <with|font-series|bold|transitive>

      <item><math|\<varphi\>\<rightarrow\>\<box\><value|Diamond>\<varphi\>>:
      The graph is <with|font-series|bold|symmetric>

      <item><math|\<box\>\<varphi\>\<rightarrow\><value|Diamond>\<varphi\>>:
      The graph is <with|font-series|bold|serial>

      <item><math|<value|Diamond>\<varphi\>\<rightarrow\>\<box\>\<varphi\>>:
      The graph is <with|font-series|bold|functional> (basically a function,
      up to one world above)

      <item><math|<value|Diamond>\<varphi\>\<rightarrow\>\<box\><value|Diamond>\<varphi\>>:
      The graph is <with|font-series|bold|euclidean>

      <item><math|\<box\><around*|(|\<box\>\<varphi\>\<rightarrow\>\<varphi\>|)>>:
      The graph is <with|font-series|bold|shift-reflexive>

      <item><math|\<box\>\<box\>\<varphi\>\<rightarrow\>\<box\>\<varphi\>>:
      The graph is <with|font-series|bold|dense>

      <item><math|<value|Diamond>\<box\>\<varphi\>\<rightarrow\>\<box\><value|Diamond>\<varphi\>>:
      The graph is <with|font-series|bold|convergent>

      <item>(Grz) & Lob/Godel provability rules

      <item>Connected
    </itemize>

    <item>Plausibility models

    <\itemize>
      <item>
    </itemize>

    <item>Sphere models

    <\itemize>
      <item>
    </itemize>

    <item>Neighborhood models

    <\itemize>
      <item>
    </itemize>

    <item>Neural network models

    <\itemize>
      <item>
    </itemize>

    <item>Social network models

    <\itemize>
      <item>
    </itemize>

    <item>Epistemic Utility Models

    <\itemize>
      <item>
    </itemize>
  </itemize>

  <section|Model Updates>

  A model update is any function <math|\<heartsuit\>> over a class of models
  <math|<value|Class>> and language <math|<value|lang>> that takes in a
  formula <math|\<varphi\>\<in\><value|lang>> as input and updates the model
  <math|<value|Model>\<in\><value|Class>>, i.e. a function whose type is
  <math|\<heartsuit\>:<value|Class>\<times\><value|lang>\<rightarrow\><value|Class>>.
  A <with|font-shape|italic|supervised update> is one where an additional
  formula label <math|\<psi\>\<in\><value|lang>> is given as input, i.e.
  <math|\<heartsuit\>:<value|Class>\<times\><value|lang>\<times\><value|lang>\<rightarrow\><value|Class>>.
  Think of this label as if some external agent tells you that
  <math|\<varphi\>\<Rightarrow\>\<psi\>> holds (so the update not only takes
  in the fact that <math|\<varphi\>>, but also that
  <math|\<varphi\>\<Rightarrow\>\<psi\>>).

  Here is a collection of all model updates I am currently aware of:

  <\itemize>
    <item>Relational (Kripke) models <math|\<langle\>W,R,V\<rangle\>>

    <\itemize>
      <item>Arrow Update

      <item>Conditionalization\ 

      <item>Public Announcement (this is just what we call Conditionalization
      when )
    </itemize>

    <item>Plausibility models <math|\<langle\>W,R,\<prec\>,V\<rangle\>>
    (<math|R>, sometimes given as <math|\<sim\>>, is optional)

    <\itemize>
      <item>Lexicographic Update

      <item>Conservative Update
    </itemize>

    <item>Sphere models

    <\itemize>
      <item>The 27 updates given by Hans Rott in \PShifting Priorities\Q
      2007:

      <\itemize>
        <item>Conservative expansion, plain expansion, moderate expansion,
        radical expansion, very radical expansion

        <item>Radical (irrevocable) revision, very radical revision,
        conservative (natural) revision, moderate revision, restrained
        revision

        <item>Severe withdrawal (mild contradiction), severe revision, plain
        severe revision, moderate severe revision

        <item>Conservative (AGM) contraction, moderate contraction, refining
        (reverse <math|<value|Lex>>), revision by comparison (raising),
        irrefutable revision (fixed <math|\<epsilon\>>)

        <item>Lowering, Dual of severe withdrawal, gentle raising, gentle
        lowering, raising by strict comparison, lowering by strict
        comparison, bounded revision (strict), bounded revision (non-strict)
      </itemize>
    </itemize>

    <item>Neighborhood models <math|\<langle\>W,N,V\<rangle\>> [Source:
    Pacuit's Neighborhood Semantics]

    <\itemize>
      <item>Intersection & Subset variants of Conditionalization/Public
      Announcement

      <item>\PIgnore emptyset\Q variant (<math|\<Cap\>>) with reduction over
      conditional modalities

      <item>Evidence Addition, Evidence Removal
    </itemize>

    <item>Neural network models <math|\<langle\>N,E,W,A,\<eta\>,V\<rangle\>>

    <\itemize>
      <item>Hebbian update

      <item>Oja's update

      <item>Iterated Hebbian update

      <item>Iterated Oja update

      <item>Gradient descent update (this is a supervised update!)

      <item>Iterated gradient descent update
    </itemize>

    <item>Social network models

    <\itemize>
      <item>
    </itemize>

    <item>Epistemic Utility Models

    <\itemize>
      <item>Utility Upgrade
    </itemize>

    <item>Relational Assignment-Worlds Models

    <\itemize>
      <item>
    </itemize>
  </itemize>

  <section|Properties of Model Updates>

  <\itemize>
    <item>Is a given update <math|\<heartsuit\>>
    <with|font-series|bold|equivalent to>/<with|font-series|bold|definable
    as> a known one?

    <item>Is a given update <math|\<heartsuit\>>
    <with|font-series|bold|reducible> to some \Preasonable\Q extension of
    modal/epistemic logic? Note that \Preasonable\Q is more of an art form,
    and there might not be a nice way to formalize this idea in general.

    <item>\Phard\Q vs \Psoft\Q updates <todo|Need concrete definition>

    <item>\Psupervised\Q vs \Punsupervised\Q updates. Is a given supervised
    update equivalent to an existing unsupervised one? If not, the update is
    <with|font-shape|italic|necessarily> supervised. <todo|Could use a better
    word for this>

    <item>\Pupgrade\Q vs \Pdowngrade\Q

    <item>Which updates are definable as some
    <with|font-series|bold|re-ordering of a plausibility order>
    <math|\<prec\>>? Did Rott classify all of them, or are there other
    important ones?

    <item>Which updates are definable as a relation-changing operation that
    can be expressed in PDL (without iteration)? This is a special class that
    van Benthem identified (all such updates are known to be reducible).

    <item>Which updates are definable as a <with|font-series|bold|product
    update>? (all such updates are known to be reducible; this is a more
    general condition than the previous PDL one.)

    <item>Which updates are definable as an iterated form of another update?

    <item><with|font-series|bold|\PInductive\Q Updates> (many variations of
    this property given by Polya)

    <item>From Baltag, Gierasimczuk, Smets \PTruth-Tracking by Belief
    Revision\Q:

    <\itemize>
      <item><with|font-series|bold|Strongly conservative> (\Pif the new piece
      of data was already believed, [<math|\<heartsuit\>>] does not change
      the plausibility space at all\Q)

      <item><with|font-series|bold|History-independent> (\Pthe update's
      output at any stage depends only on the previous output and the most
      recently observed data\Q)
    </itemize>

    <item>
  </itemize>

  <section|Learning Policies (<math|=>Iterated Model Update)>

  <section|Properties of Learning Policies>

  The following (afaik) come from Baltag, Gierasimczuk, Smets
  \PTruth-Tracking by Belief Revision\Q

  <\itemize>
    <item><with|font-series|bold|Weakly data-retentive>

    <item><with|font-series|bold|Strongly data-retentive>

    <item><with|font-series|bold|Conservative>

    <item><with|font-series|bold|Data-driven>

    <item><with|font-series|bold|Memory-free>

    <item><with|font-series|bold|Universal> (can learn any epistemic space
    that is learnable (identifiable in the limit))

    <item><with|font-series|bold|Universal over fair streams> (can learn even
    if finitely many data are erroneous)

    <item><with|font-series|bold|Standardly Universal>
  </itemize>

  <section*|Fun Little Diversion 1: Neural Network Learning Policies>

  <with|color|#EA4335|<aw|times-circle|1fn>>
  <with|color|#34A853|<aw|check-circle|1fn>>
  <with|color|#FBBC05|<aw|circle|1fn>>

  <center|<tabular|<tformat|<cwith|1|1|2|2|cell-row-span|1>|<cwith|1|1|2|2|cell-col-span|6>|<cwith|1|1|2|2|cell-halign|c>|<cwith|2|2|2|-1|cell-halign|c>|<cwith|1|1|2|2|cell-bsep|0.5fn>|<cwith|3|13|2|-1|cell-halign|c>|<cwith|1|1|1|1|cell-row-span|2>|<cwith|1|1|1|1|cell-col-span|1>|<cwith|2|2|2|-1|cell-tborder|0ln>|<cwith|2|2|2|-1|cell-bborder|1ln>|<cwith|2|2|2|2|cell-lborder|0ln>|<cwith|1|2|1|1|cell-rborder|0ln>|<cwith|2|2|7|7|cell-rborder|0ln>|<cwith|1|2|1|1|cell-bborder|0ln>|<cwith|3|13|1|1|cell-lborder|0ln>|<cwith|3|13|1|1|cell-rborder|1ln>|<cwith|3|13|2|2|cell-lborder|1ln>|<cwith|3|13|1|-1|cell-bsep|0.2fn>|<cwith|3|13|1|-1|cell-tsep|0.2fn>|<cwith|3|3|1|1|cell-hyphen|t>|<cwith|3|13|2|-1|cell-valign|c>|<cwith|5|5|1|1|cell-hyphen|t>|<cwith|4|4|1|1|cell-hyphen|t>|<cwith|7|7|1|1|cell-hyphen|t>|<cwith|9|9|2|7|cell-halign|c>|<cwith|9|9|2|2|cell-lborder|1ln>|<cwith|9|9|2|7|cell-bsep|0.2fn>|<cwith|9|9|2|7|cell-tsep|0.2fn>|<cwith|9|9|2|7|cell-valign|c>|<cwith|7|7|2|7|cell-halign|c>|<cwith|7|7|2|2|cell-lborder|1ln>|<cwith|7|7|2|7|cell-bsep|0.2fn>|<cwith|7|7|2|7|cell-tsep|0.2fn>|<cwith|7|7|2|7|cell-valign|c>|<cwith|6|6|2|-1|cell-tborder|0ln>|<cwith|5|5|2|-1|cell-bborder|0ln>|<cwith|6|6|2|-1|cell-bborder|0ln>|<cwith|7|7|2|-1|cell-tborder|0ln>|<cwith|6|6|7|7|cell-rborder|0ln>|<cwith|6|6|1|1|cell-tborder|0ln>|<cwith|5|5|1|1|cell-bborder|0ln>|<cwith|6|6|1|1|cell-bborder|0ln>|<cwith|7|7|1|1|cell-tborder|0ln>|<cwith|6|6|1|1|cell-lborder|0ln>|<cwith|6|6|1|1|cell-rborder|1ln>|<cwith|6|6|2|2|cell-lborder|1ln>|<cwith|8|8|1|1|cell-hyphen|t>|<cwith|9|9|1|1|cell-hyphen|t>|<cwith|3|13|5|5|cell-lborder|1ln>|<cwith|3|13|4|4|cell-rborder|1ln>|<cwith|3|13|5|5|cell-rborder|0ln>|<cwith|3|13|6|6|cell-lborder|0ln>|<cwith|2|2|5|5|cell-tborder|0ln>|<cwith|1|1|2|-1|cell-bborder|0ln>|<cwith|2|2|5|5|cell-bborder|1ln>|<cwith|3|3|5|5|cell-tborder|1ln>|<cwith|2|2|5|5|cell-lborder|0ln>|<cwith|2|2|4|4|cell-rborder|0ln>|<cwith|2|2|5|5|cell-rborder|0ln>|<cwith|2|2|6|6|cell-lborder|0ln>|<cwith|12|12|1|1|cell-hyphen|t>|<table|<row|<cell|>|<cell|<with|font-series|bold|Induced
  Learning Policy>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<math|<value|Cond>>>|<cell|<math|<value|Lex>>>|<cell|<math|<value|Consr>>>|<cell|Hebb>|<cell|Oja>|<cell|Grad
  Desc>>|<row|<\cell>
    Weakly data-retentive
  </cell>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>>|<row|<\cell>
    Strongly data-retentive

    (on arbitrary streams)
  </cell>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>>|<row|<\cell>
    Strongly data-retentive

    (on sound data streams)
  </cell>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>>|<row|<cell|Conservative>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>>|<row|<\cell>
    Strongly conservative
  </cell>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>>|<row|<\cell>
    Data-driven (conservative

    + weak data-retentive)
  </cell>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>>|<row|<\cell>
    History-independent (every

    iterated single-step update

    is history-independent)
  </cell>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>>|<row|<cell|Memory-free>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>>|<row|<cell|Universal>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>>|<row|<\cell>
    Universal on fair streams

    (with erroneous data)
  </cell>|<cell|<with|color|#34A853|<aw|check-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#EA4335|<aw|times-circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>|<cell|<with|color|#FBBC05|<aw|circle|1fn>>>>>>>>

  <subsection*|(Binary) Neural Network Spaces>

  <\definition>
    A neural network space is <math|<value|Net>=\<langle\>N,<value|Observables>,<value|bias>,E,W,A,\<eta\>\<rangle\>>,
    where

    <\itemize>
      <item><math|N> is a finite nonempty set (the set of
      <with|font-shape|italic|neurons>)

      <item><math|<value|Observables>\<subseteq\><value|powerset><around*|(|N|)>>
      is a set of <with|font-shape|italic|observable propositions>

      <item><math|<value|bias>> is a fixed node (the
      <with|font-shape|italic|bias> node)

      <item>Each <math|E\<subseteq\>N\<times\>N> (the
      <with|font-shape|italic|edge relation>)

      <item><math|W:E\<rightarrow\><with|font|Bbb|Q>> (the
      <with|font-shape|italic|edge weights>)

      <item><math|A:<with|font|Bbb|Q\<rightarrow\><with|font|Bbb|Q>>> (the
      <with|font-shape|italic|activation function>)

      <item><math|\<eta\>\<in\><with|font|Bbb|Q>>, <math|\<eta\>\<geq\>0>
      (the <with|font-shape|italic|learning rate>)
    </itemize>
  </definition>

  Note that <math|<value|Space>=\<langle\>N,<value|Observables>\<rangle\>>
  forms an epistemic space as defined by the Truth-Tracking paper, and
  <math|\<langle\>N,<value|bias>,E,W,A,\<eta\>\<rangle\>> forms a neural
  network. A neural network space is just an epistemic space whose beliefs
  are determined by the weights, activation function, and learning rate of
  the underlying neural network.

  In general, a <with|font-shape|italic|state> is just a possible activation
  pattern or configuration of the net. In practice, a neural network's nodes
  take on fuzzy activation values in <math|<around*|[|0,1|]>>. But we would
  like to associate each state with a binary set of neurons\Veither a neuron
  is active (1) or it is not (0). To do this, I assume that the activation
  function <math|A> is a (nonzero) binary step function
  (<math|A:<with|font|Bbb|Q>\<rightarrow\><around*|{|0,1|}>>).
  <todo|Definition: <math|<value|Net>> has a threshold,
  <math|\<exists\>t\<in\><with|font|Bbb|Q>> with <math|A<around*|(|t|)>=1>;
  <math|<value|Net>> is nondecreasing. These things amount to <math|A> being
  a binary step function.> It turns out this binary constraint is also a
  common theoretical assumption in work that analyzes neural networks as
  automata <cite|merrill2020formal|weiss2018practical|merrill2019sequential>.
  In their terminology, we say our nets are
  <with|font-shape|italic|saturated>.

  Additionally, I assume there is a special bias node that is active in every
  state. This is purely for ruling out the particular edge case where
  <with|font-shape|italic|no> node is active. Since <math|<value|bias>> is
  active in every state, we can assume that no edges go into
  <math|<value|bias>>. Putting all this together, the states of the net are
  defined as follows.

  <\equation*>
    <value|State><rsub|<value|Net>>=<around*|{|S<value|st>S\<subseteq\>N<infix-and><value|bias>\<in\>S|}>
  </equation*>

  Usually <math|<value|Net>> is understood from context, and I'll just write
  <math|<value|State>> without the subscript.

  We can describe the input-output behavior of neural networks in terms of
  their state. Say we are given an input state <math|A> consisting of
  input-layer nodes, and a possible classification state <math|B> consisting
  of output-layer nodes. Active neurons in <math|A> subsequently activate new
  neurons, which activate yet more neurons, until eventually the state of the
  net stabilizes. If this final state includes the output <math|B>, we say
  \Pthe net <with|font-shape|italic|classifies> <math|A> as <math|B>\Q.

  The state at the fixed point of this process is called the
  <with|font-shape|italic|closure> or <with|font-shape|italic|forward
  propagation> of the signal <math|A> through the net,
  <math|<value|Closure><around*|(|A|)>>. This closure operator is central to
  my semantics, since it captures the underlying dynamics involved in neural
  network inference. Formally, each choice of <math|E,W,A> specifies a
  transition function from state <math|S\<in\><value|State>> to the next
  state. Given an initial state <math|S<rsub|0>>, this transition function
  <math|F<rsub|S<rsub|0>>> is given by

  <\equation*>
    F<rsub|S<rsub|0>><around*|(|S|)>=S<rsub|0>\<cup\><around*|{|n<value|st>A<around*|(|<big|sum><rsub|m\<in\><value|preds><around*|(|n|)>>W<around*|(|m,n|)>\<cdot\><value|bigchi><rsub|S><around*|(|m|)>|)>=1|}>
  </equation*>

  where <math|<value|bigchi><rsub|S><around*|(|m|)>=1> iff <math|m\<in\>S> is
  the indicator function. In other words,
  <math|F<rsub|S<rsub|0>><around*|(|S|)>> is the initial state
  <math|S<rsub|0>>, along with the set of nodes that are activated by their
  predecessors in <math|S>. Notice that <math|F<rsub|S<rsub|0>><around*|(|S|)>>
  is extensive: all nodes in the initial state will stay activated in
  successive states.

  My neural network models have one final constraint: This transition
  function <math|F<rsub|S<rsub|0>>> eventually gives a unique
  <with|font-shape|italic|fixed point> (or stable state) under the input
  <math|S<rsub|0>>, i.e. a unique state <math|S> such that
  <math|F<rsub|S<rsub|0>><around*|(|S|)>=S>. This guarantees that the closure
  <math|<value|Closure><around*|(|S|)>> exists.

  <\postulate>
    I assume that for all states <math|S<rsub|0>>, <math|F> applied
    repeatedly to <math|S<rsub|0>>, i.e.

    <\equation*>
      S<rsub|0>,F<rsub|S<rsub|0>><around*|(|S<rsub|0>|)>,F<rsub|S<rsub|0>><around*|(|F<rsub|S<rsub|0>><around*|(|S<rsub|0>|)>|)>,\<ldots\>,F<rsub|S<rsub|0>><rsup|k><around*|(|S<rsub|0>|)>,\<ldots\>
    </equation*>

    has a finite fixed point, and moreover that this state is the
    <with|font-shape|italic|only> fixed point under <math|S<rsub|0>>\Vthat
    is, it is the only state <math|S> such that
    <math|F<rsub|S<rsub|0>><around*|(|S|)>=S>. Let the closure
    <math|<value|Closure>:<value|State>\<rightarrow\><value|State>> be the
    function that produces that least fixed point. For concreteness, we can
    say that there is some <math|k\<in\><with|font|Bbb|N>> for which

    <\equation*>
      <value|Closure><around*|(|S|)>=F<rsup|k><rsub|S><around*|(|S|)>
    </equation*>
  </postulate>

  Let <math|<value|NetModel>> be the class of all binary neural network
  spaces that satisfy this postulate.

  Let's consider two closure operators over neural networks that
  <with|font-shape|italic|are> monotonic\Vgraph reachability
  <math|<value|Reach>>, and \Preverse\Q graph reachability
  <math|<value|Reaches>>. <math|<value|Reach><around*|(|S|)>> just returns
  the set of all neurons graph-reachable from <math|S>, i.e.
  <math|<value|Reach>:<value|State>\<rightarrow\><value|State>> is given by
  <math|n\<in\><value|Reach><around*|(|S|)>> iff there exists <math|m\<in\>S>
  with an <math|E>-path from <with|font-series|bold|<math|m> to <math|n>>.
  Similarly, <math|<value|Reaches><around*|(|S|)>> returns the set of all
  neurons that graph-reach some node in <math|S>, i.e.
  <math|<value|Reaches>:<value|State>\<rightarrow\><value|State>> is given by
  <math|n\<in\><value|Reaches><around*|(|S|)>> iff there exists
  <math|m\<in\>S> with an <math|E>-path from <with|font-series|bold|<math|n>
  to <math|m>>.

  <subsection*|Neural Network Updates>

  Note: Like the paper \PTruth-Tracking by Belief Revision\Q, I only allow
  \Pobservable propositions\Q as input, i.e., <math|p\<in\><value|langProp>>.
  For neural networks, <math|<semantics|p>=>those neurons which activate on
  <math|p> (without taking the closure per se).

  <\definition>
    <dueto|Hebbian Update>Let <math|<value|Hebb>:<value|NetModel>\<times\><value|langProp>\<rightarrow\><value|NetModel>>
    be given by\ 

    <\equation*>
      <value|Hebb><around*|(|\<langle\>N,<value|Observables>,<value|bias>,E,W,A,\<eta\>\<rangle\>,<hspace|0.5em>p|)>=\<langle\>N,<value|Observables>,<value|bias>,E,W<rprime|'>,A,\<eta\>\<rangle\>
    </equation*>

    where <math|W<rprime|'><around*|(|m,n|)>=W<around*|(|m,n|)>+\<eta\>\<cdot\><value|bigchi><rsub|<value|Closure><around*|(|<semantics|p>|)>><around*|(|m|)>\<cdot\><value|bigchi><rsub|<value|Closure><around*|(|<semantics|p>|)>><around*|(|n|)>>.
  </definition>

  <\definition>
    <dueto|Oja Update><todo|todo>
  </definition>

  <\definition>
    <dueto|Gradient Descent Update><todo|todo>
  </definition>

  <subsection*|Definitions of Learning Policies and their Properties>

  Let <math|<value|Space>=\<langle\>S,<value|Observables>\<rangle\>> be an
  underlying epistemic space.

  <\definition>
    A <with|font-shape|italic|data stream> is an infinite sequence
    <math|<wide|O|\<vect\>>=<around*|(|p<rsub|0>,p<rsub|1>,\<ldots\>|)>> of
    data <math|p<rsub|i>\<in\><value|Observables>>. A
    <with|font-shape|italic|data sequence> is a finite sequence
    <math|\<sigma\>=<around*|(|\<sigma\><rsub|0>,\<ldots\>,\<sigma\><rsub|n>|)>>.
  </definition>

  <\definition>
    A data stream <math|<wide|O|\<vect\>>> is <with|font-shape|italic|sound
    with respect to state <math|s>> if <math|s\<in\><wide|O|\<vect\>><rsub|n>>
    for all <math|n\<in\><with|font|Bbb|N>>. (i.e., every observable
    proposition in the sequence <math|<wide|O|\<vect\>>> is true at world
    <math|s>)
  </definition>

  <\definition>
    A data stream <math|<wide|O|\<vect\>>> is
    <with|font-shape|italic|complete with respect to state <math|s>> if for
    any <math|p\<in\><value|Observables>>, if <math|s\<in\>p> then
    <math|O=<wide|O|\<vect\>><rsub|n>> for some
    <math|n\<in\><with|font|Bbb|N>>.
  </definition>

  <\definition>
    Let <math|<value|Space>=\<langle\>S,<value|Observables>\<rangle\>> be an
    epistemic space, <math|\<sigma\>> a data sequence. A
    <with|font-shape|italic|learning method> is a function <math|L> that on
    input of <math|<value|Space>> and <math|\<sigma\>> outputs a set of
    worlds <math|L<around*|(|<value|Space>,\<sigma\>|)>\<subseteq\>S> (a
    <with|font-shape|italic|conjecture>)
  </definition>

  <\definition>
    Learning method <math|L> is <with|font-shape|italic|weakly
    data-retentive> iff for all <math|<value|Space>> and
    <math|\<sigma\>=<around*|(|\<sigma\><rsub|0>,\<ldots\>,\<sigma\><rsub|n>|)>>,
    if <math|L<around*|(|<value|Space>,\<sigma\>|)>\<neq\>\<emptyset\>> then
    <math|L<around*|(|<value|Space>,\<sigma\>|)>\<subseteq\>\<sigma\><rsub|n>>.
  </definition>

  <\definition>
    Learning method <math|L> is <with|font-shape|italic|strongly
    data-retentive> iff for all <math|<value|Space>> and
    <math|\<sigma\>=<around*|(|\<sigma\><rsub|0>,\<ldots\>,\<sigma\><rsub|n>|)>>,
    if <math|L<around*|(|<value|Space>,\<sigma\>|)>\<neq\>\<emptyset\>> then
    <math|L<around*|(|<value|Space>,\<sigma\>|)>\<subseteq\><big|cap><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<sigma\><rsub|i>>.
  </definition>

  <\definition>
    Learning method <math|L> is <with|font-shape|italic|conservative> if for
    all <math|<value|Space>> and <math|p\<in\><value|Observables>>, if
    <math|L<around*|(|<value|Space>,\<sigma\>|)>\<neq\>\<emptyset\>> and if
    <math|L<around*|(|<value|Space>,\<sigma\>|)>\<subseteq\>p> then
    <math|L<around*|(|<value|Space>,\<sigma\>|)>=L<around*|(|<value|Space>,\<sigma\>\<ast\>p|)>>
  </definition>

  <\definition>
    Learning method <math|L> is <with|font-shape|italic|data-driven> if it is
    both conservative and weakly data-retentive.
  </definition>

  <\definition>
    Learning method <math|L> is <with|font-shape|italic|memory-free> if for
    all <math|<value|Space>>, all data sequences
    <math|\<sigma\>,\<sigma\><rprime|'>>, and all
    <math|p\<in\><value|Observables>>, if
    <math|L<around*|(|<value|Space>,\<sigma\>|)>=L<around*|(|<value|Space>,\<sigma\><rprime|'>|)>>
    then <math|L<around*|(|<value|Space>,\<sigma\>\<ast\>p|)>=L<around*|(|<value|Space>,\<sigma\><rprime|'>\<ast\>p|)>>
  </definition>

  <todo|add definition of \Pbelief revision method\Q (here do I need \Pneural
  revision method\Q??)>

  <\definition>
    A <with|font-shape|italic|one-step neural revision method> is a function
    <math|\<heartsuit\><rsub|1>:<value|NetModel>\<times\><value|Observables>\<rightarrow\><value|NetModel>>,
    i.e. given neural net space <math|<value|Net>> and observable
    <math|p\<in\><value|Observables>>, outputs new net space
    <math|\<heartsuit\><rsub|1><around*|(|<value|Net>,p|)>>. An
    (<with|font-shape|italic|iterated)> neural revision method
    <math|\<heartsuit\>> is obtained by iterating a one-step neural revision
    method:

    <\description>
      <item*|Base Step>For the empty data sequence <math|\<lambda\>>,
      <math|\<heartsuit\><around*|(|<value|Net>,\<lambda\>|)>=<value|Net>>

      <item*|Inductive Step><math|\<heartsuit\><around*|(|<value|Net>,\<sigma\>\<ast\>p|)>=\<heartsuit\><rsub|1><around*|(|\<heartsuit\><around*|(|<value|Net>,\<sigma\>|)>,p|)>>
    </description>
  </definition>

  <\definition>
    Every neural revision method, together with an initial neural network
    space <math|<value|Net>> generates a learning method
    <math|L<rsup|<value|Net>><rsub|\<heartsuit\>>>.
  </definition>

  \;

  <subsection*|Checks & Proofs>

  \;

  \;
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
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|6|4>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<bullet\>>|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      merrill2019sequential

      weiss2018practical

      merrill2020formal
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|1fn>Base
      Models and Languages> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|1fn>Properties
      of Base Models> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|1fn>Model
      Updates> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|1fn>Properties
      of Model Updates> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|1fn>Learning
      Policies (<with|mode|<quote|math>|=>Iterated Model Update)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|1fn>Properties
      of Learning Policies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Fun
      Little Diversion 1: Neural Network Learning Policies>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>