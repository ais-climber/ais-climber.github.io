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

  <section*|Notes: The reduction operator <value|boxreduc>>

  The (reflexive) transitive closure <math|R<rsup|\<ast\>>> of a graph
  <math|R> is the smallest extension of <math|R> that is (reflexive)
  transitive. The (reflexive) transitive <with|font-shape|italic|reduction>
  <math|R<rsup|->> of a graph <math|R> is the minimum graph whose closure is
  the same as <math|R>'s closure, i.e. <math|<around*|(|R<rsup|->|)><rsup|\<ast\>>=R<rsup|\<ast\>>>.
  Note that:

  <\description>
    <item*|If <math|R> is a finite graph><math|R<rsup|->> exists; we can
    compute it by systematically removing edges, checking the closure at each
    step.

    <item*|If <math|R> is an acyclic graph><math|R<rsup|->> is
    <with|font-shape|italic|unique>. Moreover,
    <math|<around*|(|R<rsup|\<ast\>>|)><rsup|->=R<rsup|->>.
  </description>

  Note that we get a unique reduction whether or not we have reflexive edges,
  so we take <with|font-shape|italic|acyclic> to allow for self-loops.

  \;

  Given a modal operator <math|\<box\>>, we can take its reflexive-transitive
  closure <value|boxstar> and get a complete logic for that. I would like to
  do the same for its reflexive-transitive <with|font-shape|italic|reduction>
  <math|<value|boxreduc>>. Similarly for just the transitive closure &
  reduction (drop reflexive). The point of these notes is to explore this
  idea. And maybe towards the end I'll explore what <math|<value|boxreduc>>
  means in different dynamic contexts (e.g. for announcement, upgrade, or
  learning).

  \;

  I'll start by taking the logic <math|<value|Lang><rsub|\<box\>,<value|boxstar>>>
  from (Moss, 2007), and I'll extend it with the operator
  <math|<value|boxreduc>> (the new language is
  <math|<value|Lang><rsub|\<box\>,<value|boxstar>,<value|boxreduc>>>). Why
  extend the language, rather than trying to axiomatize
  <math|<value|boxreduc>> on its own? Well, the reduction is defined
  <with|font-shape|italic|in terms of the closure>, so if we want a complete
  description of <math|<value|boxreduc>> we can't avoid having
  <math|<value|boxstar>> in our language.

  <section|The Logic of <math|<value|Lang><rsub|\<box\>,<value|boxstar>,<value|boxreduc>>>
  (reflexive-transitive reduction and closure)>

  Let <math|<value|Lang><rsub|\<box\>,<value|boxstar>,<value|boxreduc>>> be
  the language over

  <\equation*>
    \<varphi\>\<assign\>p\<mid\>\<neg\>\<varphi\>\<mid\>\<varphi\>\<wedge\>\<psi\>\<mid\>\<box\>\<varphi\>\<mid\><value|boxstar>\<varphi\>\<mid\><value|boxreduc>\<varphi\>
  </equation*>

  Models are the usual possible-worlds models
  <math|<value|Model>=\<langle\>W,R,V\<rangle\>>. As before, let
  <math|R<rsup|\<ast\>>> be the reflexive-transitive closure of <math|R>, and
  let <math|R<rsup|->> be its reflexive-transitive reduction. The semantics
  are what you would expect, but the important cases are:

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|<value|Model>,w\<Vdash\>\<box\>\<varphi\>>|<cell|<infix-iff>>|<cell|\<forall\>u,w<op|R>u\<longrightarrow\><value|Model>,u\<Vdash\>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|boxstar>\<varphi\>>|<cell|<infix-iff>>|<cell|\<forall\>u,w<op|R<rsup|\<ast\>>>u\<longrightarrow\><value|Model>,u\<Vdash\>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|boxreduc>\<varphi\>>|<cell|<infix-iff>>|<cell|\<forall\>u,w<op|R<rsup|->>u\<longrightarrow\><value|Model>,u\<Vdash\>\<varphi\>>>>>>
  </equation*>

  <\note*>
    I will prove completeness for this logic in a moment, building on (Moss,
    2007). But I want to first say what the intended use-case is for this
    logic. <with|font-shape|italic|Given> that you already have a complete
    logic for <math|\<box\>>, (Moss, 2007) shows how you can extend the
    model-building to get a complete logic for <math|<value|boxstar>>. I will
    then show how you can extend <with|font-shape|italic|this> model-building
    to get a complete logic for <math|<value|boxreduc>>.

    \;

    But another possible use-case is this: You
    <with|font-shape|italic|already have> a complete logic for some
    <math|<value|boxstar>>, maybe without the original <math|\<box\>>, but
    you would like to <with|font-shape|italic|recover> some step-wise
    <math|<value|boxreduc>> operator. For example, if <math|<value|boxstar>>
    represents what an agent learns after convergence,
    <math|<value|boxreduc>> would reflect what it learns after a single step.

    \;

    This case is just a special case of the logic above, and its completeness
    follows. If <math|R> is already reflexive and transitive, then it is its
    own closure, i.e. <math|R<rsup|\<ast\>>=R>. So <math|\<box\>> and
    <math|<value|boxstar>> have exactly the same semantics, and so they
    collapse into a single operator. And so our rules and model-building are
    exactly the same, so long as we substitute <math|\<box\>> for
    <math|<value|boxstar>> everywhere.
  </note*>

  <section|Model Building & Completeness>

  For our proof system, we first have the following axioms for
  <math|<value|boxstar>>. These come from PDL, but were ported to the simpler
  modal logic setting by (Moss, 2007). The first axiom (Mix) says that
  <math|<value|boxstar>> is reflexive and transitive, as well as pinning down
  the interaction between <math|\<box\>> and <math|<value|boxreduc>>. The
  second axiom (Induction) resembles mathematical induction, and reflects the
  fact that <math|<value|boxstar>> is the <with|font-shape|italic|smallest>
  extension of <math|\<box\>> that is reflexive and transitive.

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|<text|(Mix<math|<rsup|\<ast\>>>)>>|<cell|>|<cell|<value|boxstar>\<varphi\>\<rightarrow\><around*|(|\<varphi\>\<wedge\>\<box\><value|boxstar>\<varphi\>|)>>>|<row|<cell|<text|(Induction<math|<rsup|\<ast\>>>)>>|<cell|>|<cell|<around*|(|\<varphi\>\<wedge\><value|boxstar><around*|(|\<varphi\>\<rightarrow\>\<box\>\<varphi\>|)>|)>\<rightarrow\><value|boxstar>\<varphi\>>>>>>
  </equation*>

  Since <math|<value|boxreduc>> has the same closure <math|<value|boxstar>>
  as <math|\<box\>>, we similarly have the following sound axioms for
  <math|<value|boxreduc>>:

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|<text|(Mix<math|<rsup|->>)>>|<cell|>|<cell|<value|boxstar>\<varphi\>\<rightarrow\><around*|(|\<varphi\>\<wedge\>\<box\><rsup|-><value|boxstar>\<varphi\>|)>>>|<row|<cell|<text|(Induction<math|<rsup|->>)>>|<cell|>|<cell|<around*|(|\<varphi\>\<wedge\><value|boxstar><around*|(|\<varphi\>\<rightarrow\>\<box\><rsup|->\<varphi\>|)>|)>\<rightarrow\><value|boxstar>\<varphi\>>>>>>
  </equation*>

  [Note that none of this so far expresses the fact that
  <math|<value|boxreduc>> is the <with|font-shape|italic|smallest> such graph
  whose closure is <math|<value|boxstar>>. Can we express this in modal
  logic? How? Can we express irreflexivity & antitransitivity in modal
  logic?]

  <\definition*>
    We build the canonical model <math|<value|Model><rsup|c>=\<langle\>W<rsup|c>,<long-arrow|\<rubber-rightarrow\>|c>,V<rsup|c>\<rangle\>>
    as follows:

    <\itemize>
      <item><math|W<rsup|c>=> the set of consistent formulas of the form
      (built recursively)

      <\equation*>
        <around*|(|<big|wedge><rsub|\<psi\>\<in\>Q>\<diamond\>\<psi\>|)>\<wedge\><around*|(|\<box\><big|vee>Q|)>\<wedge\><around*|(|<big|wedge><rsub|\<psi\>\<in\>R><value|diastar>\<psi\>|)>\<wedge\><around*|(|<value|boxstar><big|vee>R|)>\<wedge\><around*|(|<big|wedge><rsub|\<psi\>\<in\>S><value|diareduc>\<psi\>|)>\<wedge\><around*|(|<value|boxreduc><big|vee>S|)>\<wedge\><around*|(|<big|wedge><rsub|\<psi\>\<in\>R>T|)>\<wedge\><around*|(|<big|wedge><rsub|p<rsub|i>\<nin\>T>p<rsub|i>|)>
      </equation*>

      where <math|Q,R,S> are recursively-built formulas, and
      <math|T\<in\><around*|{|p<rsub|1>,\<ldots\>,p<rsub|k>|}>>

      <item><math|u<op|<long-arrow|\<rubber-rightarrow\>|c>>v> iff
      <math|\<alpha\>\<wedge\>\<diamond\>\<beta\>> is consistent

      <item><math|V<rsup|c><around*|(|p<rsub|i>|)>=<around*|{|\<alpha\>\<mid\>\<alpha\>\<rightarrow\>p<rsub|i>|}>>
    </itemize>
  </definition*>

  From (Moss, 2007), we have the following lemmas about
  <math|<value|boxstar>>. I'm going to try to model this approach and prove
  similar lemmas for <math|<value|boxreduc>>.

  <\lemma>
    <label|lemma-closure-mix>If <math|\<alpha\><long-arrow|\<rubber-rightarrow\>|c>\<beta\>>
    and <math|<value|proves>\<beta\>\<rightarrow\><value|diastar>\<varphi\>>
    then <math|<value|proves>\<alpha\>\<rightarrow\><value|diastar>\<varphi\>>.
  </lemma>

  <\proof>
    <todo|Todo, uses Mix>
  </proof>

  <\lemma>
    <label|lemma-closure-induction>Let <math|X\<subseteq\>W<rsup|c>> be a set
    of formulas closed under <math|<long-arrow|\<rubber-rightarrow\>|c>>.
    Then

    <\equation*>
      <value|proves><big|vee>X<text| implies
      ><value|proves><value|boxstar><big|vee>X
    </equation*>

    Moreover, for all <math|\<alpha\>\<in\>X>, <math|<value|proves>\<alpha\>>
    implies <math|<value|proves><value|boxstar><big|vee>X>
  </lemma>

  <\proof>
    <todo|Todo, uses Induction>
  </proof>

  <\render-theorem|Truth Lemma for <math|<value|Lang><rsub|\<box\>,<value|boxstar>,<value|boxreduc>>>>
    For all <math|\<alpha\>\<in\>W<rsup|c>> and all formulas
    <math|\<psi\>\<in\><value|Lang><rsub|\<box\>,<value|boxstar>,<value|boxreduc>>>,

    <\equation*>
      <value|Model><rsup|c>,\<alpha\>\<Vdash\>\<psi\><infix-iff><value|proves>\<alpha\>\<rightarrow\>\<psi\>
    </equation*>
  </render-theorem>

  <\proof>
    By induction on <math|\<varphi\>>. The key cases are:

    <\description>
      <item*|<math|\<diamond\>\<varphi\>> case><todo|Todo>

      <item*|<math|<value|diastar>\<varphi\>> case><todo|Todo>

      <item*|<math|<value|diareduc>\<varphi\>> case><todo|Todo>
    </description>
  </proof>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <section*|Old Notes (I will re-work them into the notes later)>

  In order to make my life easier at this stage, <with|font-series|bold|I
  will assume <math|R> is antisymmetric> (which, along with transitivity,
  implies <math|R> is acyclic). Note that while antisymmetry is not
  expressible in modal logic for <math|\<box\>>, we
  <with|font-shape|italic|can> characterize reflexivity, transitivity, and
  antisymmetry together with the Grzegorczyk axiom:

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|<text|(Grz)>>|<cell|>|<cell|\<box\><around*|(|\<box\><around*|(|\<varphi\>\<rightarrow\>\<box\>\<varphi\>|)>\<rightarrow\>\<varphi\>|)>\<rightarrow\>\<varphi\>>>>>>
  </equation*>

  The axioms for <math|<value|Lang><rsub|\<box\>,<value|boxreduc>>> are
  exactly the axioms for <math|<value|Lang><rsub|\<box\>,<value|boxstar>>>,
  but again we substitute <math|<value|boxstar>\<rightsquigarrow\>\<box\>>
  and <math|\<box\>\<rightsquigarrow\><value|boxreduc>>.

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|<text|(Mix)>>|<cell|>|<cell|\<box\>\<varphi\>\<rightarrow\><around*|(|\<varphi\>\<wedge\><value|boxreduc>\<box\>\<varphi\>|)>>>|<row|<cell|<text|(Induction)>>|<cell|>|<cell|<around*|(|\<varphi\>\<wedge\><value|boxstar><around*|(|\<varphi\>\<rightarrow\>\<box\>\<varphi\>|)>|)>\<rightarrow\><value|boxstar>\<varphi\>>>>>>
  </equation*>

  \;
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
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|2|2>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<with|mode|<quote|math>|\<diamond\><rsup|->>\<varphi\>>
    case|3>>
    <associate|auto-5|<tuple|4|5>>
    <associate|lemma-closure-induction|<tuple|2.2|?>>
    <associate|lemma-closure-mix|<tuple|2.1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Notes:
      The reduction operator <with|mode|<quote|math>|\<box\><rsup|->>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>The
      Logic of <with|mode|<quote|math>|<with|font|<quote|cal>|L><rsub|\<box\>,<with|mode|<quote|math>|\<box\><rsup|\<ast\>>>,<with|mode|<quote|math>|\<box\><rsup|->>>>
      (reflexive-transitive reduction and closure)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Model
      Building & Completeness> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>The
      logic of <with|mode|<quote|math>|\<box\><rsup|->>, when \<box\> is
      reflexive and transitive (and antisymmetric)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>The
      logic of <with|mode|<quote|math>|\<box\><rsup|->>, when \<box\> is just
      transitive (and antisymmetric)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>