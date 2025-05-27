<TeXmacs|2.1.1>

<style|<tuple|tmconf|compact-list|termes-font|number-long-article>>

<\body>
  <\hide-preamble>
    <assign|table-of-contents-text|<macro|<inactive|<localize|<myblue|Navigation>>>>>

    <assign|definition-text|<macro|<localize|Definition>>>

    <assign|render-theorem|<\macro|which|body>
      <render-enunciation|<theorem-name|<arg|which><theorem-sep>>|<arg|body>>
    </macro>>

    <assign|section|<macro|title|<assign|section-numbered|<compound|section-display-numbers>><assign|section-prefix|<macro|<compound|the-section>.>><compound|next-section><compound|section-clean><compound|section-header|<arg|title>><compound|section-toc|<arg|title>><if|<value|section-numbered>|<section-numbered-title|<myblue|<arg|title>>>|<compound|section-unnumbered-title|<myblue|<arg|title>>>>>>

    \;

    <assign|subsection|<macro|title|<assign|subsection-numbered|<compound|subsection-display-numbers>><assign|subsection-prefix|<macro|<compound|the-subsection>.>><compound|next-subsection><compound|subsection-clean><compound|subsection-header|<arg|title>><compound|subsection-toc|<arg|title>><if|<value|subsection-numbered>|<compound|subsection-numbered-title|<myblue|<arg|title>>>|<compound|subsection-unnumbered-title|<myblue|<arg|title>>>>>>

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

    <assign|hash|<with|font-family|ss|hash>>

    <assign|Know|<with|font-series|bold|<text|Know>>>

    <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

    <assign|Typ|<with|font-series|bold|<text|Typ>>>

    <assign|diaTyp|\<langle\><value|Typ>\<rangle\>>

    <assign|Reach|<with|font-family|ss|GraphReach>>

    <assign|Prop|<with|font-family|ss|Propagate>>

    <assign|Hebb|<with|font-family|ss|Update_hebb>>

    <assign|Stable|<with|font-family|ss|Update_stable>>

    <assign|Backprop|<with|font-family|ss|Update_backprop>>

    <assign|Inc|<with|font-family|ss|Inc>>

    <assign|AllNets|<with|font-family|ss|Net>>

    <assign|AllModels|<with|font-family|ss|Model>>

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
  </hide-preamble>

  <doc-data|<doc-title|Notes on the Transitive Reduction <math|\<box\>> of
  <math|\<box\><rsup|*\<ast\>>>>>

  <\quote-env>
    <with|font-series|bold|Step 0. Find a paper I enjoy, and read it. Try to
    understand its ideas, with an eye towards extending it/altering it.>
  </quote-env>

  This idea is inspired by <hlink|Larry Moss' paper that discusses
  <with|font-series|bold|K>+<math|\<box\><rsup|\<ast\>>>|https://link.springer.com/content/pdf/10.1007/s10992-007-9052-4.pdf>,
  the <hlink|Original Source on Segerberg
  axioms|https://www.cs.cornell.edu/~kozen/Papers/ElemPDL.pdf>, and the
  concept of a Transitive Reduction (see the <hlink|original
  paper|https://www.cs.tufts.edu/~nr/cs257/archive/al-aho/transitive-reduction.pdf>).

  <with|font-series|bold|<\quote-env>
    Step 1. Look for an extension/open problem that makes me think \PWhat the
    fuck? That's still open? No way, this shit is low-hanging fruit, free
    paper here I come.\Q i.e. something <with|font-shape|italic|easy> and
    <with|font-shape|italic|straightforward>, <with|font-shape|italic|without
    complications>.
  </quote-env>>

  <math|\<box\><rsup|\<ast\>>> denotes the transitive-reflexive closure of
  <math|\<box\>>. We know that completeness for <math|K\<box\><rsup|\<ast\>>>
  follows from completeness for just <math|K> (i.e. just <math|\<box\>>) by
  adding only the axioms:

  <\itemize>
    <item><with|font-series|bold|(Mix)> <math|\<box\><rsup|\<ast\>>\<varphi\>\<rightarrow\><around*|(|\<varphi\>\<wedge\>\<box\>\<box\><rsup|\<ast\>>\<varphi\>|)>>

    <item><with|font-series|bold|(Induction)>
    <math|<around*|(|\<varphi\>\<wedge\>\<box\><rsup|\<ast\>><around*|(|\<varphi\>\<rightarrow\>\<box\>\<varphi\>|)>|)>\<rightarrow\>\<box\><rsup|\<ast\>>\<varphi\>>
  </itemize>

  But we should easily have the other way around \V i.e. given a normal modal
  logic <math|L> with <math|\<box\>> satisfying (Mix) and (Induction), we
  should be able to get completeness for <math|L\<box\><rsup|->>, where
  <math|\<box\><rsup|->> is the <with|font-shape|italic|transitive reduction>
  of <math|L>'s <math|\<box\>>. Try it with <math|K\<box\><rsup|\<ast\>>>!

  Completeness for <math|\<box\><rsup|\<ast\>>> is mostly a matter of
  extending the accessibility relation for <math|\<box\>> to be reflexive and
  transitive. Similarly, I expect completeness for <math|\<box\><rsup|->> to
  be a matter of taking the transitive-reflexive
  <with|font-shape|italic|reduction> of the graph for
  <with|font-shape|italic|its> <math|\<box\>>.

  I <with|font-shape|italic|may> have to consider Hybrid Logic (i.e. modal
  logic in which we can name states) in case there are properties of
  <math|\<box\><rsup|->> I can't express, but that's an ordinary thing to
  expect.

  <\with|font-series|bold>
    <\quote-env>
      Step 2. Follow-up question (only answer after Step 1): Is the extension
      <with|font-shape|italic|interesting> or
      <with|font-shape|italic|surprising>? What do we learn by extending the
      result?
    </quote-env>
  </with>

  Modal logic is really just an elegant language for reasoning about states
  in a graph. <math|\<box\><rsup|\<ast\>>> lets us reason about states that
  are arbitrarily far away, whereas <math|\<box\><rsup|->> lets us reason
  about <with|font-shape|italic|the very next state(s)>. This would
  absolutely be interesting to a Logic In Computer Science (LICS) or
  Knowledge Representation (KR) audience. Here are some examples of what this
  lets us express:

  <\example>
    <with|font-series|bold|(The next best states)> Let's give <math|\<box\>>
    a preferential reading. Let the accessibility relation for <math|\<box\>>
    be <math|x<op|R>y> iff <math|x> is at least as good to the agent as
    <math|y> (note that this is a transitive and reflexive preference
    relation). So <math|\<box\>\<varphi\>> reads \P<math|\<varphi\>> holds in
    all states less preferable.\Q Then <math|\<box\><rsup|->\<varphi\>> reads
    \P<math|\<varphi\>> holds in all states immediately less preferable than
    this one,\Q i.e. \P<math|\<varphi\>> holds in all the next best states.\Q
  </example>

  <\example>
    <with|font-series|bold|(What we learn in one step)> Now suppose we have a
    modality <math|<around*|[|\<varphi\>|]>> that indicates that an agent
    <with|font-shape|italic|learns> <math|\<varphi\>>. The accessibility
    relation is functional: <math|x<op|R><rsub|\<varphi\>>y> iff
    <math|y=f<around*|(|x,\<varphi\>|)>>, where <math|f> is the agent's
    learning \ function. In this context,
    <math|<around*|[|\<varphi\>|]><rsup|\<ast\>>\<psi\>> reads \PIn the limit
    of learning <math|\<varphi\>>, <math|\<psi\>> holds.\Q We can then read
    <math|<around*|[|\<varphi\>|]><rsup|->\<psi\>> as \Pafter a
    <with|font-shape|italic|single step> of learning, <math|\<psi\>> holds.\Q
  </example>

  <\quote-env>
    <\with|font-series|bold>
      Step 3. Two things to do at this point:

      <\itemize>
        <item>Make a new Texmacs file named \PPAPERNAME-master-notes.tm\Q.
        Transcribe the key definitions, examples, lemmas, and results from
        the paper. This makes it easier to later copy-paste parts of proofs,
        and also ensures that I don't reinvent the wheel later (it's tempting
        to redefine everything yourself!)

        <item>Go to <slink|https://www.connectedpapers.com/> and download any
        major nearby papers. Upload the papers to
        <with|font-series|bold|paperless-ngx> and make a point to read them
        (understanding context helps a lot!).
      </itemize>
    </with>
  </quote-env>

  <section*|Related Papers:>

  <\itemize>
    <item><hlink|The Transitive Reduction of a Directed Graph
    (1972)|cs.tufts.edu/~nr/cs257/archive/al-aho/transitive-reduction.pdf>

    Introduced the concept of transitive reduction, proves important
    properties

    <item><hlink|An Elementary Proof of the Completeness of PDL
    (1981)|https://www.cs.cornell.edu/~kozen/Papers/ElemPDL.pdf>

    Proves completeness of PDL, making use of the (Mix) and (Induction)
    axioms

    <item><hlink|Finite Models Constructed from Canonical Formulas
    (2005)|https://link.springer.com/content/pdf/10.1007/s10992-007-9052-4.pdf>\ 

    Generalizes the proof from the 1981 paper for modal logics in general \V
    this is the proof I will be adapting here.

    <item>Internalizing Labeled Deduction (Blackburn, 2000)

    Defines irreflexivity and anti-transitivity using hybrid modal language

    <item><hlink|Representation, Reasoning, and Relational Structures: a
    Hybrid Logic Manifesto|https://carlosareces.github.io/cordoba08/Bib/representation.pdf>

    The best source on Hybrid logic

    <item>Modal Expressiveness of Graph Properties (2008)
  </itemize>

  It's actually pretty difficult to find <with|font-shape|italic|any> paper
  at all combining both modal logic and transitive reductions \V even though
  modal logic with transitive closure is everywhere! (Note: Look into
  syllogistic logics with transitive closure.)

  <section*|Existing Definitions and Results:>

  <subsection*|Transitive-Reflexive Closure + Reduction>

  <\definition>
    Let <math|R> be a binary relation (graph) over vertices <math|V>. Then

    <\itemize>
      <item><math|<with|math-font|cal|R<rsup|\<ast\>>>>, the
      <key|transitive-reflexive closure> of <math|R>, is that graph extending
      <math|R> with the minimum number of edges such that it is reflexive and
      transitive.

      <item><math|<with|math-font|cal|R<rsup|->>>, the
      <key|transitive-reflexive reduction> of <math|R>, is the graph with the
      minimum number of edges such that <math|<around|(|R<rsup|->|)><rsup|\<ast\>>=R<rsup|\<ast\>>>.
    </itemize>
  </definition>

  <\note*>
    If <math|R> is finite, then <math|R<rsup|->> exists and is a subset of
    <math|R>; if <math|R> is acyclic, then <math|R<rsup|->> is unique.
  </note*>

  <\proposition>
    <with|font-series|bold|(Characterizing <math|R<rsup|\<ast\>>>)>
    <math|u<op|R<rsup|\<ast\>>>v> iff there is a path from <math|u> to
    <math|v> in <math|R>.
  </proposition>

  <\proof>
    <math|<around*|(|\<rightarrow\>|)>> <todo|Todo \U see <hlink|proof wiki
    article|https://proofwiki.org/wiki/Definition:Transitive_Closure_(Relation_Theory)>>

    <math|<around*|(|\<leftarrow\>|)>> Suppose there is a path from <math|u>
    to <math|v> in <math|R>. By induction on the length <math|l> of this
    path:

    <\description>
      <item*|Base Step><math|l=0>, i.e. <math|u=v>. By reflexivity,
      <math|u<op|R<rsup|\<ast\>>>v>.

      <item*|Inductive Step><math|l\<geq\>0>. Let <math|x> immediately
      precede <math|v> on the path, i.e. <math|x<op|R>v>. Since
      <math|R<rsup|\<ast\>>> extends <math|R>, <math|x<op|R<rsup|\<ast\>>>v>.
      Note that the path from <math|u> to <math|x> is of length <math|l-1>;
      By Inductive Hypothesis, <math|u<op|R<rsup|\<ast\>>>x>. Since
      <math|R<rsup|\<ast\>>> is transitive, <math|u<op|R<rsup|\<ast\>>>v>.
    </description>
  </proof>

  <\definition>
    We define the set of all subgraphs of <math|R> that share the same
    transitive-reflexive closure <math|R<rsup|\<ast\>>>:

    <\equation*>
      S<around*|(|R|)>=<around*|{|R<rsub|i>\<mid\>R<rsub|i><rsup|\<ast\>>=R<rsup|\<ast\>>|}>
    </equation*>
  </definition>

  <\proposition>
    <with|font-series|bold|(Characterizing <math|R<rsup|->>)> Suppose
    <math|R<rsup|->> is finite and acyclic. Then:

    <\equation*>
      R<rsup|->=<big|cap><rsub|R<rsub|i>\<in\>S<around*|(|R|)>>R<rsub|i>
    </equation*>

    \;
  </proposition>

  <\proof>
    The proof is in Aho, Garey, and Ullman's paper. It's a bit complicated,
    so I'm just going to take it for granted for now.
  </proof>

  <subsection*|The Logic <math|K>>

  <\definition>
    <math|K> is the smallest normal modal logic, i.e. the smallest logic
    containing

    <\itemize>
      <item><with|font-series|bold|(K)> <math|\<box\><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|\<box\>\<varphi\>\<rightarrow\>\<box\>\<psi\>|)>>

      <item><with|font-series|bold|(Dual)>
      <math|\<diamond\>\<varphi\>\<leftrightarrow\>\<neg\>\<box\>\<neg\>\<varphi\>>
    </itemize>

    and closed under <with|font-series|bold|(Necessitation)>, i.e. if
    <math|\<varphi\>\<in\>K> then <math|\<box\>\<varphi\>\<in\>K>.
  </definition>

  <\definition>
    <with|font-series|bold|(Proofs)> <math|K<value|proves>\<varphi\>> iff
    either <math|\<varphi\>\<in\>K> is a tautology, or <math|\<varphi\>>
    follows from <math|\<psi\><rsub|1>,\<ldots\>,\<psi\><rsub|k>\<in\>K> via
    <with|font-series|bold|(Modus Ponens)> and
    <with|font-series|bold|(Necessitation)>.
    <math|\<Gamma\><value|proves>\<varphi\>> iff there exist
    <math|\<psi\><rsub|1>,\<ldots\>,\<psi\><rsub|k>\<in\>\<Gamma\>> such that
    <math|K<value|proves>\<psi\><rsub|1>\<wedge\>\<ldots\>\<wedge\>\<psi\><rsub|k>\<rightarrow\>\<varphi\>>
  </definition>

  <\definition>
    A model is just a tuple <math|<value|Model>=\<langle\>W,R,V\<rangle\>>,
    where <math|W> is a set of worlds/states, <math|R:W\<times\>W> is an
    accessibility relation, and <math|V:proposition\<rightarrow\><value|powerset><around*|(|W|)>>
    is a valuation function mapping propositions to sets of states.
  </definition>

  <\definition>
    <with|font-series|bold|(Truth at a World)> We give the usual possible
    worlds interpretation. Given model <math|<value|Model>=\<langle\>W,R,V\<rangle\>>
    and world <math|w\<in\>W>, and given the transitive-reflexive closure
    <math|R<rsup|\<ast\>>> of <math|R>:

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<value|Model>,w\<Vdash\>p>|<cell|<infix-iff>>|<cell|w\<in\>V<around*|(|p|)>>>|<row|<cell|<value|Model>,w\<Vdash\>\<varphi\>\<wedge\>\<psi\>>|<cell|<infix-iff>>|<cell|<value|Model>,w\<Vdash\>\<varphi\><infix-and><value|Model>,w\<Vdash\>\<psi\>>>|<row|<cell|<value|Model>,w\<Vdash\>\<neg\>\<varphi\>>|<cell|<infix-iff>>|<cell|<value|Model>,w<neg|\<Vdash\>>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\>\<box\>\<varphi\>>|<cell|<infix-iff>>|<cell|<value|Model>,u\<Vdash\>\<varphi\>
      <prefix-for-all>w<op|R>u>>>>>
    </equation*>
  </definition>

  <\definition>
    <with|font-series|bold|(Truth in a Model)>
    <math|<value|Model>\<models\>\<varphi\>> iff
    <math|<value|Model>,w\<Vdash\>\<varphi\>> for all <math|w\<in\>W>. If
    <math|<value|Model>\<models\>\<varphi\>> for all models
    <math|<value|Model>>, we just write <math|\<models\>\<varphi\>>
    (<math|\<varphi\>> is <with|font-shape|italic|valid>).
  </definition>

  <\definition>
    <with|font-series|bold|(Entailment)> <math|\<Gamma\>\<models\>\<varphi\>>
    if whenever <math|<value|Model>,w\<Vdash\>\<psi\>> for all
    <math|\<psi\>\<in\>\<Gamma\>>, it follows that
    <math|<value|Model>,w\<Vdash\>\<varphi\>>.
  </definition>

  <\theorem>
    <with|font-series|bold|(Soundness, K)> <math|K> is sound w.r.t. the class
    of all models, i.e.

    <\equation*>
      <text|If >K<value|proves>\<varphi\><text| then >\<models\>\<varphi\>
    </equation*>
  </theorem>

  <\proof>
    We just need to show that <with|font-series|bold|(K)>,
    <with|font-series|bold|(Dual)>, <with|font-series|bold|(Necessitation)>,
    and <with|font-series|bold|(Modus Ponens)> are valid. (The validity of
    any <math|\<varphi\>> provable in <math|K> then follows by induction.)
    Let <math|<value|Model>=\<langle\>W,R,V\<rangle\>> be a model, and
    <math|w\<in\>W> be a world.

    <\description>
      <item*|<math|\<models\>>(K)>Suppose
      <math|<value|Model>,w\<Vdash\>\<box\><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>>,
      and suppose <math|<value|Model>,w\<Vdash\>\<box\>\<varphi\>>. So for
      all <math|w<op|R>u>, we have <math|<value|Model>,u\<Vdash\>\<varphi\>\<rightarrow\>\<psi\>>
      and <math|<value|Model>,u\<Vdash\>\<varphi\>>. Let <math|u> be an
      arbitrary world such that <math|w<op|R>u>. By English if-then we have
      <math|<value|Model>,u\<Vdash\>\<psi\>>. Since <math|u> is arbitrary, we
      get <math|<value|Model>,w\<Vdash\>\<box\>\<psi\>>.

      <item*|<math|\<models\>>(Dual)>Valid by by definition of
      <math|\<diamond\>>.

      <item*|<math|\<models\>>(Nec)>Suppose
      <math|<value|Model>,u\<Vdash\>\<varphi\>> <with|font-shape|italic|for
      all> <math|u\<in\>W>. Then in particular
      <math|<value|Model>,v\<Vdash\>\<varphi\>> for that <math|v> such that
      <math|w<op|R>v>, and so <math|<value|Model>,w\<Vdash\>\<box\>\<varphi\>>.
      Since <math|w> is arbitrary, <math|<value|Model>,u\<Vdash\>\<box\>\<varphi\>>
      for all <math|u\<in\>W>.

      <item*|<math|\<models\>>(MP)>Valid by definition of
      <math|\<rightarrow\>>.
    </description>
  </proof>

  <\theorem>
    <with|font-series|bold|(Completeness, K)> <math|K> is complete w.r.t. the
    class of all models, i.e.

    <\equation*>
      <text|If >\<models\>\<varphi\><text| then >K<value|proves>\<varphi\>
    </equation*>
  </theorem>

  <\proof>
    <todo|Todo>
  </proof>

  <subsection*|The Logic <math|K\<box\><rsup|\<ast\>>>>

  <\definition>
    <math|K\<box\><rsup|\<ast\>>> is the smallest logic extending <math|K>
    with the axiom schemas:

    <\itemize>
      <item><with|font-series|bold|(Mix)>
      <math|\<box\><rsup|\<ast\>>\<varphi\>\<rightarrow\><around*|(|\<varphi\>\<wedge\>\<box\>\<box\><rsup|\<ast\>>\<varphi\>|)>>

      <item><with|font-series|bold|(Induction)>
      <math|<around*|(|\<varphi\>\<wedge\>\<box\><rsup|\<ast\>><around*|(|\<varphi\>\<rightarrow\>\<box\>\<varphi\>|)>|)>\<rightarrow\>\<box\><rsup|\<ast\>>\<varphi\>>
    </itemize>

    again closed under <with|font-series|bold|(Necessitation)>, i.e. if
    <math|\<varphi\>\<in\>K> then <math|\<box\><rsup|\<ast\>>\<varphi\>\<in\>K>.
  </definition>

  <\definition>
    Let <math|<value|Model>=\<langle\>W,R,V\<rangle\>>, <math|w\<in\>W>, and
    let <math|R<rsup|\<ast\>>> be the transitive-reflexive closure of
    <math|R>. We interpret <math|\<box\><rsup|\<ast\>>> by:

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<value|Model>,w\<models\>\<box\><rsup|\<ast\>>\<varphi\>>|<cell|<infix-iff>>|<cell|<value|Model>,u\<models\>\<varphi\>
      <prefix-for-all>w<op|R<rsup|\<ast\>>>u>>>>>
    </equation*>
  </definition>

  <\theorem>
    <with|font-series|bold|(Soundness, <math|K\<box\><rsup|\<ast\>>>)> If
    <math|K\<box\><rsup|\<ast\>><value|proves>\<varphi\>> then
    <math|\<models\>\<varphi\>>.
  </theorem>

  <\proof>
    We just need to check that <with|font-series|bold|(Mix)> and
    <with|font-series|bold|(Induction)> are valid \V the validity of <math|K>
    and any <math|\<varphi\>> derivable from <math|K\<box\><rsup|\<ast\>>>
    follows by induction. Let <math|<value|Model>=\<langle\>W,R,V\<rangle\>>
    be a model, and <math|w\<in\>W> be a world.

    <\description>
      <math|><item*|<math|\<models\>>(Mix)>Suppose
      <math|<value|Model>,w\<Vdash\>\<box\><rsup|\<ast\>>\<varphi\>>. So
      <math|<value|Model>,u\<models\>\<varphi\>> for all worlds
      <math|w<op|R<rsup|\<ast\>>>u>. We have two things to show:

      <\description>
        <item*|<math|<value|Model>,w\<Vdash\>\<varphi\>>>Since
        <math|R<rsup|\<ast\>>> is reflexive, <math|w<op|R<rsup|\<ast\>>>w>.
        So <math|<value|Model>,u\<models\>\<varphi\>>.

        <item*|<math|<value|Model>,w\<Vdash\>\<box\>\<box\><rsup|\<ast\>>\<varphi\>>>Let
        <math|u> be an arbitrary world with <math|w<op|R>u>, and <math|v> be
        an arbitrary world with <math|u<op|R<rsup|\<ast\>>>v>. By reflexivity
        of <math|R<rsup|\<ast\>>>, we have <math|w<op|R<rsup|\<ast\>>>u>. By
        transitivity, we have <math|w<op|R<rsup|\<ast\>>>v>. By our earlier
        hypothesis, this means that <math|<value|Model>,v\<models\>\<varphi\>>,
        i.e. that <math|<value|Model>,w\<models\>\<box\>\<box\><rsup|\<ast\>>\<varphi\>>.
      </description>

      <item*|<math|\<models\>>(Induction)>Suppose
      <math|<value|Model>,w\<models\>\<varphi\>> and
      <math|<value|Model>,w\<models\>\<box\><rsup|\<ast\>><around*|(|\<varphi\>\<rightarrow\>\<box\>\<varphi\>|)>>.
      We will now show that <math|<value|Model>,w\<models\>\<box\><rsup|\<ast\>>\<varphi\>>.
      Let <math|u> be some world with <math|w<op|R<rsup|\<ast\>>>u>. By our
      second hypothesis, <math|<value|Model>,u\<models\>\<varphi\>\<rightarrow\>\<box\>\<varphi\>>.
      In addition, we have a path from <math|w> to <math|u> in <math|R>. By
      induction on the length of this path:

      <\description>
        <item*|Base Step><math|u=w>. <todo|Todo>

        <item*|Inductive Step><todo|Todo: take <math|x> immediately preceding
        <math|u> and apply IH>
      </description>

      <todo|TODO: Old, inelegant proof> By our second hypothesis,
      <math|<value|Model>,u\<models\>\<varphi\>\<rightarrow\>\<box\>\<varphi\>>.
      Since <math|R<rsup|\<ast\>>> is reflexive, <math|w> is such a <math|u>,
      and in particular we have <math|<value|Model>,w\<models\>\<varphi\>\<rightarrow\>\<box\>\<varphi\>>.
      Since <math|<value|Model>,w\<models\>\<varphi\>>,
      <math|<value|Model>,w\<models\>\<box\>\<varphi\>>, i.e.
      <math|<value|Model>,v\<models\>\<varphi\>> for all <math|w<op|R>v>. But
      <math|w<op|R>v> implies <math|w<op|R><rsup|\<ast\>>v>.

      This means that for our <math|u> before,
      <math|<value|Model>,u\<models\>\<varphi\>>. So
      <math|<value|Model>,w\<models\>\<box\><rsup|\<ast\>>\<varphi\>>.
    </description>
  </proof>

  <\theorem>
    <with|font-series|bold|(Completeness, <math|K\<box\><rsup|\<ast\>>>)> If
    <math|\<models\>\<varphi\>> then <math|K\<box\><rsup|\<ast\>><value|proves>\<varphi\>>.
  </theorem>

  <\proof>
    <todo|Todo>
  </proof>

  <\quote-env>
    <with|font-series|bold|Step 4. Write up my new definitions & proof in the
    Texmacs file. Again, should be a <with|font-shape|italic|very>
    straightforward extension, and the proof (proofs are just unit-tests for
    definitions) shouldn't take up too much room at all (1-2 pages, including
    defs)>
  </quote-env>

  <section*|My Own Definitions and Results>

  <subsection*|Properties of Transitive-Reflexive Reduction>

  <\proposition>
    <with|font-series|bold|(Algebraic Characterization of <math|R<rsup|->>)>
    Suppose <math|R> is acyclic. <math|R<rsup|->> is the only subgraph of
    <math|R> that is irreflexive and anti-transitive.
  </proposition>

  <\proof>
    First, we show that <math|R<rsup|->> is irreflexive and anti-transitive.
    Then, we show that it is unique.

    <\description>
      <item*|<math|R<rsup|->> is irreflexive>Suppose for contradiction that
      <math|u<op|R<rsup|->>u>. Let <math|R<rprime|'>> be a graph constructed
      by removing this <math|<around*|(|u,u|)>> edge from <math|R<rsup|->>.
      Note that <math|<around*|(|R<rprime|'>|)><rsup|\<ast\>>=R<rsup|\<ast\>>>,
      since taking the transitive-reflexive closure just re-constructs the
      missing <math|<around*|(|u,u|)>> edge. This contradicts the fact that
      <math|R<rsup|->> is the smallest graph such that
      <math|<around*|(|R<rsup|->|)><rsup|\<ast\>>=R<rsup|\<ast\>>>.

      <item*|<math|R<rsup|->> is anti-transitive>Suppose
      <math|u<op|R<rsup|->>v>, <math|v<op|R<rsup|->>w>, but for contradiction
      <math|u<op|R<rsup|->>w>. Again, let <math|R<rprime|'>> be constructed
      by removing this <math|<around*|(|u,w|)>> edge from <math|R<rsup|->>.
      And again, <math|<around*|(|R<rprime|'>|)><rsup|\<ast\>>=R<rsup|\<ast\>>>,
      since taking the transitive-reflexive closure just re-constructs the
      missing <math|<around*|(|u,w|)>> edge. This contradicts the fact that
      <math|R<rsup|->> is the smallest such graph.

      <item*|<math|R<rsup|->> is the unique such graph>Let
      <math|R<rsub|k>\<in\>S<around*|(|R|)>> be some subgraph of <math|R>
      that shares the same transitive-reflexive closure, i.e.
      <math|R<rsub|k><rsup|\<ast\>>=R<rsup|\<ast\>>>, and suppose
      <math|R<rsub|k>> is irreflexive and anti-transitive. We need to show
      that <math|R<rsub|k>=R<rsup|->>.

      <math|<around*|(|\<supseteq\>|)>> This is the easy direction.
      <math|R<rsub|k>\<in\>S<around*|(|R|)>>, and so
      <math|R<rsup|->=<big|cap><rsub|R<rsub|i>\<in\>S<around*|(|R|)>>R<rsub|i>\<subseteq\>R<rsub|k>>.

      <math|<around*|(|\<subseteq\>|)>> Suppose for contradiction that
      <math|R<rsub|k><neg|\<subseteq\>>R<rsup|->>. So there is some
      <math|<around*|(|u,v|)>\<in\>R<rsub|k>> such that
      <math|<around*|(|u,v|)><neg|\<in\>>R<rsup|->>. Since
      <math|R<rsub|k>\<subseteq\>R<rsub|k><rsup|\<ast\>>=<around*|(|R<rsup|->|)><rsup|\<ast\>>>,
      we have <math|<around*|(|u,v|)>\<in\><around*|(|R<rsup|->|)><rsup|\<ast\>>>.
      That is, we have a path from <math|u> to <math|v> in <math|R<rsup|->>.
      By Well-Ordering, suppose this is the minimal such path. We have two
      cases depending on the length <math|l> of this path:

      <\description>
        <item*|Base Step><math|l=0>, i.e. <math|u=v>. But
        <math|<around*|(|u,v|)>\<in\>R<rsub|k>>, which contradicts the fact
        that <math|R<rsub|k>> is irreflexive.

        <item*|Inductive Step><math|l\<gtr\>0>. So there is some <math|x>
        with <math|u\<neq\>x>, <math|v\<neq\>x> with
        <math|u<op|<around*|(|R<rsup|->|)><rsup|\<ast\>>>x> and
        <math|x<op|R<rsup|->>v>. But by the previous
        <math|<around*|(|\<supseteq\>|)>> direction,
        <math|R<rsup|->\<subseteq\>R<rsub|k>>, and so
        <math|u<op|<around*|(|R<rsub|k>|)><rsup|\<ast\>>>x> and
        <math|x<op|R<rsub|k>>v>. So we have edge <math|u<op|R<rsub|k>>v> and
        a different path from <math|u> to <math|v> in <math|R<rsub|k>>, which
        contradicts the fact that <math|R<rsub|k>> is anti-transitive.
      </description>
    </description>

    \;
  </proof>

  <\corollary>
    Suppose <math|R> is acyclic. If <math|R> is also irreflexive and
    anti-transitive, then <math|R=R<rsup|->>.
  </corollary>

  <\proof>
    This follows from the fact that <math|R<rsup|->> is the unique such
    subgraph of <math|R>.
  </proof>

  <subsection*|The Logic <math|K\<box\><rsup|\<ast\>>\<box\><rsup|->>>

  <\definition>
    In order to reason about the transitive-reflexive reduction, we need to
    expand our language. Let <math|PROP=<around*|{|p,q,\<ldots\>|}>> denote
    finitely many propositional variables, and
    <math|NOM=<around*|{|i,j,\<ldots\>|}>> denote finitely many nominal
    variables.

    <\equation*>
      \<varphi\>\<assign\>i\<mid\>p\<mid\>\<neg\>\<varphi\>\<mid\>\<varphi\>\<rightarrow\>\<psi\>\<mid\>\<box\>\<varphi\>\<mid\>\<box\><rsup|\<ast\>>\<varphi\>\<mid\>\<box\><rsup|->\<varphi\>\<mid\><text|@><rsub|i>\<varphi\>
    </equation*>

    The new additions are <math|i>, <math|<text|@><rsub|i>\<varphi\>>, and
    <math|\<box\><rsup|->\<varphi\>>. <math|i> is a formula from hybrid logic
    that is true exactly at the world denoted by <math|i>.
    <math|<text|@><rsub|i>\<varphi\>> is also from hybrid logic, and is read
    \P<math|\<varphi\>> holds at world <math|i>.\Q We will interpret
    <math|\<box\><rsup|->\<varphi\>> as the transitive-reflexive reduction of
    <math|\<box\>>.
  </definition>

  <\definition>
    <math|K\<box\><rsup|\<ast\>>\<box\><rsup|->> is the smallest hybrid logic
    with the axiom schemas:

    <\itemize>
      <item><with|font-series|bold|(K)> <math|\<box\><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|\<box\>\<varphi\>\<rightarrow\>\<box\>\<psi\>|)>>

      <item><with|font-series|bold|(Dual)>
      <math|\<diamond\>\<varphi\>\<leftrightarrow\>\<neg\>\<box\>\<neg\>\<varphi\>>

      \;

      <item><with|font-series|bold|(Mix)>
      <math|\<box\><rsup|\<ast\>>\<varphi\>\<rightarrow\><around*|(|\<varphi\>\<wedge\>\<box\>\<box\><rsup|\<ast\>>\<varphi\>|)>>

      <item><with|font-series|bold|(Induction)>
      <math|<around*|(|\<varphi\>\<wedge\>\<box\><rsup|\<ast\>><around*|(|\<varphi\>\<rightarrow\>\<box\>\<varphi\>|)>|)>\<rightarrow\>\<box\><rsup|\<ast\>>\<varphi\>>

      \;

      <item><with|font-series|bold|(Acyclic)>
      <math|i\<rightarrow\>\<box\><rsup|\<ast\>><around*|(||)>> <todo|Not
      quite right<text-dots>>

      <item><with|font-series|bold|(Re-Mix)>
      <math|\<neg\>\<box\>i\<rightarrow\><around*|(|i\<wedge\>\<box\>\<box\>\<neg\>i|)>>

      <item><with|font-series|bold|(Re-Duction)>
      <math|\<box\><rsup|->\<box\><rsup|\<ast\>>\<varphi\>\<leftrightarrow\>\<box\>\<box\><rsup|\<ast\>>\<varphi\>>
    </itemize>

    again closed under <with|font-series|bold|(Necessitation)> for each of
    the modalities, e.g. if <math|\<varphi\>\<in\>K> then
    <math|\<box\><rsup|->\<varphi\>\<in\>K>.
  </definition>

  <\definition>
    Let <math|<value|Model>=\<langle\>W,R,V\<rangle\>>, <math|w\<in\>W>,
    <math|R<rsup|->> be the transitive-reflexive reduction of <math|R>. We
    interpret <math|\<box\><rsup|->> by:

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<value|Model>,w\<models\>\<box\><rsup|->\<varphi\>>|<cell|<infix-iff>>|<cell|<value|Model>,u\<models\>\<varphi\>
      <prefix-for-all>w<op|R<rsup|->>u>>>>>
    </equation*>
  </definition>

  <\theorem>
    <with|font-series|bold|(Soundness, <math|K\<box\><rsup|\<ast\>>\<box\><rsup|->>)>
    If <math|K\<box\><rsup|\<ast\>>\<box\><rsup|-><value|proves>\<varphi\>>
    then <math|\<models\>\<varphi\>>.
  </theorem>

  <\proof>
    <todo|>
  </proof>

  <\theorem>
    <with|font-series|bold|(Completeness,
    <math|K\<box\><rsup|\<ast\>>><math|\<box\><rsup|->>)> If
    <math|\<models\>\<varphi\>> then <math|K\<box\><rsup|\<ast\>>\<box\><rsup|-><value|proves>\<varphi\>>.
  </theorem>

  <\proof>
    <todo|>
  </proof>

  \;

  <\with|font-series|bold>
    <\quote-env>
      Step 5. Step away (for a few days). Come back and check the proof
      <with|font-shape|italic|slowly> to make sure there aren't any missing
      edge cases or conditions.

      <\itemize>
        <item>If it's all good \V <with|font-series|bold|congratulations>,
        you got a free paper!

        <item>Usually there will be some idiotic mistake in the proof. It may
        seem like <with|font-shape|italic|you're> the idiot for trying it \V
        but in fact, it's now your job to figure out
        <with|font-shape|italic|what conditions will make this naive proof
        work>!
      </itemize>
    </quote-env>
  </with>

  \;

  <\quote-env>
    <with|font-series|bold|Step 6. Write a computer program/simulation to
    collect statistics on the objects/models. Ask:
    <with|font-shape|italic|How unusual> is it for the models to fail the
    proof scenario? What about this lemma? This other lemma? Am I looking for
    a weird exception here, or is it very common? Make the simulation as
    <with|font-shape|italic|visual> as possible so that I can
    <with|font-shape|italic|picture> the condition/failure.>
  </quote-env>

  \;

  <\quote-env>
    <\with|font-series|bold>
      Step 7. If the condition is rare, try to modify the proof to account
      for the exceptions (they may satisfy the theorem but fail just this
      proof). Think: \Pis there a simple thing I can add to the system that
      will help the proof go through?\Q

      Otherwise, sit down and try to define <with|font-shape|italic|exactly>
      that condition the proof doesn't fuck up at that step. Use the
      generated examples for help. Prove the claim for models satisfying
      Condition.
    </with>
  </quote-env>

  \;

  <\quote-env>
    <with|font-series|bold|Step 8. Prove (i.e. unit-test/sanity-check)
    general properties of models satisfying Condition. Build up a theory of
    how Condition behaves \V what is it like? What algebra does it follow?
    What is it similar to? What does it mean?>
  </quote-env>

  \;

  <\quote-env>
    <\with|font-series|bold>
      Step 9. Consider whether this <with|font-series|bold|partial> result is
      still <with|font-shape|italic|interesting> enough to be published.

      Is it meaningful to everyone in the field? <math|\<longrightarrow\>>
      Submit it to a top-tier conference

      Is it meaningful to this niche sub-field? <math|\<longrightarrow\>>
      Submit it to the main conference for the sub-field

      Is it meaningful as a technical lemma? <math|\<longrightarrow\>> Submit
      it to a conference specifically for technical results

      None of the above? <math|\<longrightarrow\>> It's okay to not publish
      for now, and wait until you see the whole proof.
    </with>
  </quote-env>

  \;

  <\quote-env>
    <with|font-series|bold|Step 10. Move on to the write-up stage. But
    otherwise, step away from the problem \V there are too many other
    interesting things to spend all of your time on this one. Trust that one
    day a different solution will come to you.>
  </quote-env>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|math-font|math-termes>
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
    <associate|auto-1|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|12|4>>
    <associate|auto-6|<tuple|16|5>>
    <associate|auto-7|<tuple|16|5>>
    <associate|auto-8|<tuple|2|6>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Related
      Papers:> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Existing
      Definitions and Results:> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Transitive-Reflexive Closure + Reduction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|The Logic <with|mode|<quote|math>|K>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|The Logic
      <with|mode|<quote|math>|K\<box\><rsup|\<ast\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|My
      Own Definitions and Results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Properties of Transitive-Reflexive
      Reduction <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|The Logic
      <with|mode|<quote|math>|K\<box\><rsup|\<ast\>>\<box\><rsup|->>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>
    </associate>
  </collection>
</auxiliary>