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

    <assign|subsection-toc|<macro|name|>>

    <assign|paragraph-toc|<macro|name|>>
  </hide-preamble>

  <doc-data|<\doc-title>
    Canonical neural net construction (reference sheet)
  </doc-title>|<with|doc-date|<macro|body|<vspace|0fn><inactive*|<doc-title-block|<with|font-shape|italic|<arg|body>>>>>|<doc-date|November
  4, 2024>>>

  <section|Neural network models>

  <\definition>
    A neural network model is <math|<value|Net>=\<langle\>N,E,W,A,V\<rangle\>>,
    where

    <\itemize>
      <item><math|N> is a finite nonempty set (the set of
      <with|font-shape|italic|neurons>)

      <item>Each <math|E\<subseteq\>N\<times\>N> (the
      <with|font-shape|italic|edge relation>)

      <item><math|W:E\<rightarrow\><with|font|Bbb|Q>> (the
      <with|font-shape|italic|edge weights>)

      <item><math|A:<with|font|Bbb|Q><with|font|Bbb|\<rightarrow\>><around*|{|0,1|}>>
      (the binary <with|font-shape|italic|activation function>)

      <item><math|V:<value|langProp>\<rightarrow\><value|powerset><around*|(|N|)>>
      (the <with|font-shape|italic|valuation function>)
    </itemize>
  </definition>

  <no-indent>Each choice of <math|E,W,A> specifies a transition function from
  state <math|S\<in\><value|State>> to the next state. Given an initial state
  <math|S<rsub|0>>, this transition function
  <math|F<rsub|S<rsub|0>>:<value|State><rsub|<value|Net>>\<rightarrow\><value|State><rsub|<value|Net>>>
  is given by

  <\equation*>
    F<rsub|S<rsub|0>><around*|(|S|)>=S<rsub|0>\<cup\><around*|{|n<value|st>A<around*|(|<big|sum><rsub|m\<in\><value|preds><around*|(|n|)>>W<around*|(|m,n|)>\<cdot\><value|bigchi><rsub|S><around*|(|m|)>|)>=1|}>
  </equation*>

  <\postulate>
    I assume that for all states <math|S<rsub|0>>, <math|F<rsub|S<rsub|0>>>
    applied repeatedly to <math|S<rsub|0>>, i.e.

    <\equation*>
      S<rsub|0>,F<rsub|S<rsub|0>><around*|(|S<rsub|0>|)>,F<rsub|S<rsub|0>><around*|(|F<rsub|S<rsub|0>><around*|(|S<rsub|0>|)>|)>,\<ldots\>,F<rsub|S<rsub|0>><rsup|k><around*|(|S<rsub|0>|)>,\<ldots\>
    </equation*>

    eventually reaches a finite fixed point, and moreover this state is the
    <with|font-shape|italic|only> fixed point under <math|S<rsub|0>>.
    Formally, this means that for all <math|S<rsub|0>\<in\><value|State><rsub|<value|Net>>>
    there is some <math|k\<in\><with|font|Bbb|N>> such that:

    <\enumerate>
      <item><math|F<rsub|S<rsub|0>><around*|(|F<rsup|k><rsub|S<rsub|0>><around*|(|S<rsub|0>|)>|)>=F<rsup|k><rsub|S<rsub|0>><around*|(|S<rsub|0>|)>>.
      That is, the activation pattern under <math|F<rsub|S<rsub|0>>> will
      eventually stabilize.

      <item><math|F<rsup|k><rsub|S<rsub|0>><around*|(|S<rsub|0>|)>> is the
      only state <math|S\<in\><value|State><rsub|<value|Net>>> such that
      <math|F<rsub|S<rsub|0>><around*|(|S|)>=S>. In other words, the final
      state is unique for each initial state <math|S<rsub|0>>.
    </enumerate>

    Let the closure <math|<value|Closure>:<value|State><rsub|<value|Net>>\<rightarrow\><value|State><rsub|<value|Net>>>
    be the function that produces that least fixed point:
    <math|<value|Closure><around*|(|S|)>=F<rsup|k><rsub|S<rsub|0>><around*|(|S<rsub|0>|)>>
    for that <math|k\<in\><with|font|Bbb|N>> above. Finally, let
    <math|<value|NetModel>> be the class of all binary neural network models
    that satisfy this postulate.
  </postulate>

  <\definition>
    <math|<value|Reach>:<value|State><rsub|<value|Net>>\<rightarrow\><value|State><rsub|<value|Net>>>,
    where <math|n\<in\><value|Reach><around*|(|S|)>> iff there exists
    <math|m\<in\>S> with an <math|E>-path from <math|m> to <math|n>.
  </definition>

  <new-page>

  <section|Basic definitions for the logic>

  <paragraph|Language.>The main underlying language is
  <math|<value|langClos>>: <math|\<varphi\>,\<psi\>\<assign\>p<value|st>\<neg\>\<varphi\><value|st>\<varphi\>\<wedge\>\<psi\><value|st><value|All>\<varphi\><value|st>\<box\>\<varphi\><value|st><value|closop>\<varphi\>>

  Definitions from <cite|moss2007finite>: The <with|font-shape|italic|height>
  of a formula tracks the maximum nesting level of modal operators. The
  <with|font-shape|italic|order> of a formula is the highest proposition
  <math|p<rsub|i>> occuring. Let <math|<value|lang><rsub|h,n>> be the set of
  formulas of max height <math|h> and max order <math|n>:
  <math|<value|lang><rsub|h,n>=<around*|{|\<varphi\>\<in\><value|langClos><value|st><text|height><around*|(|\<varphi\>|)>\<leq\>h<text|
  and ord><around*|(|\<varphi\>|)>\<leq\>n|}>>.

  <\render-theorem|Semantics>
    Let <math|<value|Net>\<in\><value|NetModel>>,
    <math|n\<in\>N>.<space|2em><with|font-series|bold|Note:>
    <math|<semantics|\<varphi\>>=<around*|{|n\<in\>N<value|st><value|Net>,n\<Vdash\>\<varphi\>|}>>

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<value|Net>,n\<Vdash\>p>|<cell|<space|1em>iff<space|1em>>|<cell|n\<in\>V<around*|(|p|)>>>|<row|<cell|<value|Net>,n\<Vdash\>\<neg\>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<value|Net>,n<neg|\<Vdash\>>\<varphi\>>>|<row|<cell|<value|Net>,n\<Vdash\>\<varphi\>\<wedge\>\<psi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<value|Net>,n\<Vdash\>\<varphi\><infix-and><value|Net>,n\<Vdash\>\<psi\>>>|<row|<cell|<value|Net>,n\<Vdash\><value|Exists>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<semantics|\<varphi\>>\<neq\>\<emptyset\>>>|<row|<cell|<value|Net>,n\<Vdash\><value|Diamond>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|n\<in\><value|Reach><around*|(|<semantics|\<varphi\>>|)>>>|<row|<cell|<value|Net>,n\<Vdash\><value|diaclosop>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|n\<in\><value|Closure><around*|(|<semantics|\<varphi\>>|)>>>>>>
    </equation*>
  </render-theorem>

  <big-figure|<tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<twith|table-lborder|0.1em>|<twith|table-rborder|0.1em>|<twith|table-bborder|0.1em>|<twith|table-tborder|0.1em>|<cwith|4|4|2|2|cell-valign|t>|<cwith|4|4|1|1|cell-valign|t>|<cwith|2|2|1|1|cell-valign|t>|<cwith|2|2|2|2|cell-valign|t>|<cwith|1|-1|1|-1|cell-bsep|0.2fn>|<cwith|1|-1|1|-1|cell-tsep|0.2fn>|<cwith|1|1|1|-1|cell-tsep|0.5fn>|<cwith|4|4|1|-1|cell-bsep|0.5fn>|<cwith|1|-1|1|1|cell-lsep|0.5fn>|<cwith|1|-1|2|2|cell-rsep|0.5fn>|<cwith|3|3|1|-1|cell-tsep|0.75fn>|<table|<row|<cell|<with|font-series|bold|Axioms
  for <math|\<box\>>:>>|<cell|<with|font-series|bold|Axioms for
  <value|All>:>>>|<row|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.25fn>|<cwith|1|-1|1|-1|cell-rsep|0.25fn>|<cwith|1|-1|1|-1|cell-bsep|0.25fn>|<cwith|1|-1|1|-1|cell-tsep|0.25fn>|<table|<row|<cell|<with|font-series|bold|(Dual)>>|<cell|<math|<value|Diamond>\<varphi\>\<leftrightarrow\>\<neg\>\<box\>\<neg\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Distr)>>|<cell|<math|\<box\><around*|(|\<varphi\>\<wedge\>\<psi\>|)>\<leftrightarrow\><around*|(|\<box\>\<varphi\>\<wedge\>\<box\>\<psi\>|)>>>>|<row|<cell|<with|font-series|bold|(Refl)>>|<cell|<math|\<box\>\<varphi\>\<rightarrow\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Trans)>>|<cell|<math|\<box\>\<varphi\>\<rightarrow\>\<box\>\<box\>\<varphi\>>>>>>>>|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.25fn>|<cwith|1|-1|1|-1|cell-rsep|0.25fn>|<cwith|1|-1|1|-1|cell-bsep|0.25fn>|<cwith|1|-1|1|-1|cell-tsep|0.25fn>|<table|<row|<cell|<with|font-series|bold|(Dual)>>|<cell|<math|<value|Exists>\<varphi\>\<leftrightarrow\>\<neg\><value|All>\<neg\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Distr)>>|<cell|<math|<value|All><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|<value|All>\<varphi\>\<rightarrow\><value|All>\<psi\>|)>>>>|<row|<cell|<with|font-series|bold|(Refl)>>|<cell|<math|<value|All>\<varphi\>\<rightarrow\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(5)>>|<cell|<math|<value|Exists>\<varphi\>\<rightarrow\><value|All><around*|(|<value|Exists>\<varphi\>|)>>>>|<row|<cell|<with|font-series|bold|(Interact)>>|<cell|<math|<value|All>\<varphi\>\<rightarrow\>\<box\>\<varphi\>>>>>>>>>|<row|<cell|<with|font-series|bold|Axioms
  for <value|closop>:>>|<cell|<with|font-series|bold|Rules of
  Inference:>>>|<row|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.25fn>|<cwith|1|-1|1|-1|cell-rsep|0.25fn>|<cwith|1|-1|1|-1|cell-bsep|0.25fn>|<cwith|1|-1|1|-1|cell-tsep|0.25fn>|<cwith|4|4|2|2|cell-hyphen|t>|<cwith|2|2|2|2|cell-rsep|0fn>|<table|<row|<cell|<with|font-series|bold|(Dual)>>|<cell|<math|<value|diaclosop>\<varphi\>\<leftrightarrow\>\<neg\><value|closop>\<neg\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Refl)>>|<cell|<math|<value|closop>\<varphi\>\<rightarrow\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Trans)>>|<cell|<math|<value|closop>\<varphi\>\<rightarrow\><value|closop><value|closop>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(CM)>>|<\cell>
    <math|<value|All><around*|(|<value|closop>\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\>>
  </cell>>|<row|<cell|>|<cell|<space|2em><math|<around*|(|<value|closop><around*|(|\<varphi\>\<wedge\>\<psi\>|)>\<rightarrow\><value|closop>\<varphi\>|)>>>>|<row|<cell|<with|font-series|bold|(Interact)>>|<cell|<math|\<box\>\<varphi\>\<rightarrow\><value|closop>\<varphi\>>>>>>>>|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.25fn>|<cwith|1|-1|1|-1|cell-rsep|0.25fn>|<cwith|1|-1|1|-1|cell-bsep|0.25fn>|<cwith|1|-1|1|-1|cell-tsep|0.25fn>|<cwith|4|4|2|2|cell-hyphen|t>|<cwith|4|5|2|2|cell-lsep|0.25fn>|<cwith|4|5|2|2|cell-rsep|0.25fn>|<cwith|4|5|2|2|cell-bsep|0.25fn>|<cwith|4|5|2|2|cell-tsep|0.25fn>|<cwith|6|7|2|2|cell-lsep|0.25fn>|<cwith|6|7|2|2|cell-rsep|0.25fn>|<cwith|6|7|2|2|cell-bsep|0.25fn>|<cwith|6|7|2|2|cell-tsep|0.25fn>|<table|<row|<cell|<with|font-series|bold|(MP)>>|<cell|From
  <math|<proves>\<varphi\>\<rightarrow\>\<psi\>> and
  <math|<value|proves>\<varphi\>>>>|<row|<cell|>|<cell|<space|2em>we can
  infer <math|<value|proves>\<psi\>>>>|<row|<cell|<with|font-series|bold|(<math|<value|All>>-Nec)>>|<cell|From
  <math|<proves>\<varphi\>>, we can infer
  <math|<value|proves><value|All>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(<math|\<box\>>-Rep)>>|<\cell>
    From <math|<value|proves>\<varphi\>\<leftrightarrow\>\<psi\>>, infer
  </cell>>|<row|<cell|>|<cell|<space|2em><math|<value|proves>\<box\>\<varphi\>\<leftrightarrow\>\<box\>\<psi\>>>>|<row|<cell|<with|font-series|bold|(<value|closop>-Rep)>>|<cell|From
  <math|<value|proves>\<varphi\>\<leftrightarrow\>\<psi\>>,
  infer>>|<row|<cell|>|<cell|<space|2em><math|<value|proves><value|closop>\<varphi\>\<leftrightarrow\><value|closop>\<psi\>>>>>>>>>>>>|Sound
  axioms and rules of inference>

  <\definition>
    The proof system <math|<value|proves>> is as follows:
    <math|<value|proves>\<varphi\>> iff either <math|\<varphi\>> is valid in
    propositional logic, or <math|\<varphi\>> is one of the axioms listed
    above, or <math|\<varphi\>> follows from some previous formulas by one of
    the inference rules.
  </definition>

  <\definition>
    <math|\<varphi\>\<in\><value|langClos>> is
    <with|font-shape|italic|consistent> iff
    <math|<neg|<value|proves>>\<neg\>\<varphi\>> (alternatively, iff
    <math|<value|proves>\<varphi\>\<rightarrow\>\<bot\>>)
  </definition>

  <new-page>

  <section|The canonical neural net construction>

  <paragraph|Canonical formulas.>The set of canonical formulas
  <math|<with|font|cal|C><rsub|h,n>> is from <cite|moss2007finite>, though we
  might have to make modifications to this definition.

  <\definition>
    Let the canonical neural network model (of formulas of height <math|h>
    and order <math|n>) be

    <\equation*>
      <value|Net><rsub|h,n><rsup|c>=\<langle\>N<rsub|h,n><rsup|c>,E<rsup|c>,W<rsup|c>,A<rsup|c>,V<rsup|c>\<rangle\>
    </equation*>

    <\itemize>
      <item><math|N<rsub|h,n><rsup|c>=<around*|{|\<alpha\>\<in\><with|font|cal|C><rsub|h,n><value|st>\<alpha\><text|
      is consistent>|}>>. Let's fix an order on these nodes:
      <math|\<alpha\><rsub|1>,\<alpha\><rsub|2>,\<alpha\><rsub|3>,\<ldots\>>

      <item><math|\<beta\><op|E<rsup|c>>\<alpha\>> iff
      <math|\<alpha\>\<wedge\><value|Diamond>\<beta\>> is consistent.

      <item>Suppose <math|\<alpha\><rsub|i>\<in\>N<rsub|h,n><rsup|c>> has
      predecessors <math|\<beta\><rsub|i1>,\<beta\><rsub|i2>,\<ldots\>,\<beta\><rsub|i<op|k>>>.
      For each <math|\<beta\><rsub|i<op|j>><op|E<rsup|c>>\<alpha\><rsub|i>>,
      let

      <\equation*>
        W<rsup|c><around*|(|\<beta\><rsub|i<op|j>>,\<alpha\><rsub|i>|)>=<around*|(|p<rsub|i>|)><rsup|j>
      </equation*>

      where <math|p<rsub|i>> is the <math|i<rsup|<text|th>>> prime number.
      <with|font-series|bold|Intuition:> Each prime <math|p<rsub|i>> uniquely
      codes for the node <math|\<alpha\><rsub|i>>, and the weight between
      <math|\<alpha\><rsub|i>> and its predecessor
      <math|\<beta\><rsub|i<op|j>>> is a power of <math|p<rsub|i>> that
      uniquely codes for <math|\<beta\><rsub|i<op|j>>>. So any activation
      value <math|x> we care about is going to be a sum of powers of
      <math|p<rsub|i>>, from which we can reconstruct precisely the
      <math|\<alpha\><rsub|i>> being activated and the predecessors
      <math|\<beta\><rsub|i<op|j>>> that were used to activate it.

      <item>Let <math|x\<in\><with|font|Bbb|Q>>, and suppose <math|x>
      uniquely identifies the subset of predecessors
      <math|<around*|{|\<beta\><rsub|i<op|j>><value|st>\<beta\><rsub|i<op|j>><op|E<rsup|c>>\<alpha\><rsub|i><text|
      and >j\<in\>X|}>>, for some <math|X\<subseteq\><around*|{|1,\<ldots\>,k|}>>.
      I.e., <math|x=<big|sum><rsub|j\<in\>X><around*|(|p<rsub|i>|)><rsup|j>>
      for some choice of <math|i>. Let the activation function
      <math|A<rsup|c><around*|(|x|)>> be defined as follows:

      <\equation*>
        A<rsup|c><around*|(|x|)>=1<infix-iff><todo|<with|font-series|bold|<text|This
        is what I need help with!>>>
      </equation*>

      (If <math|x> does not code for any valid subset <math|X>, then simply
      set <math|A<rsup|c><around*|(|x|)>=0>.)

      <item><math|\<alpha\>\<in\>V<rsup|c><around*|(|p|)>> iff
      <math|<value|proves>\<alpha\>\<rightarrow\>p>
    </itemize>
  </definition>

  <paragraph|Some ideas:><math|A<rsup|c><around*|(|x|)>=1> should be true
  exactly when the model <with|font-shape|italic|says> the
  <math|\<beta\><rsub|i<op|j>>>'s activate <math|\<alpha\><rsub|i>>. We have
  access to <math|a<rsub|i>> and the <math|\<beta\><rsub|i<op|j>>>'s, as well
  as the set <math|X>. So we can state conditions such as:

  <\equation*>
    A<rsup|c><around*|(|x|)>=1<infix-iff>\<alpha\><rsub|i>\<wedge\><value|diaclosop><around*|(|<big|wedge><rsub|\<beta\><rsub|i<op|j>><op|E<rsup|c>>\<alpha\><rsub|i><text|
    and >j\<in\>X>\<beta\><rsub|i<op|j>>|)><text| is consistent>
  </equation*>

  <\render-theorem|Check that <math|<value|Net><rsub|h,n><rsup|c>> is in
  <math|<value|AllNets>>>
    There is some <math|k\<in\><with|font|Bbb|N>> such that
    <math|F<rsub|S<rsub|0>><around*|(|F<rsup|k><rsub|S<rsub|0>><around*|(|S<rsub|0>|)>|)>=F<rsup|k><rsub|S<rsub|0>><around*|(|S<rsub|0>|)>>,
    and for all other states <math|S>, if
    <math|F<rsub|S<rsub|0>><around*|(|S|)>=S>, then
    <math|S=><math|F<rsup|k><rsub|S<rsub|0>><around*|(|S<rsub|0>|)>>.
  </render-theorem>

  <\proof>
    <todo|<with|font-series|bold|I'm having a lot of trouble starting, but I
    think a proof should use the <with|font-series|bold|(CM)>
    rule<text-dots>>>
  </proof>

  <\render-theorem|The Truth Lemma I need, <math|<value|diaclosop>> case>
    <math|<value|Net><rsup|c><rsub|h,n>,\<alpha\>\<Vdash\><value|diaclosop>\<varphi\>>
    iff <math|<value|proves>\<alpha\>\<rightarrow\><value|diaclosop>\<varphi\>>
  </render-theorem>

  <\proof-sketch>
    Observe that the claim is equivalent to:

    <\equation*>
      <value|Closure><rsub|<value|Net><rsup|c><rsub|h,n>><around*|(|<semantics|\<varphi\>>|)>=<around*|{|\<alpha\><value|st><value|proves>\<alpha\>\<rightarrow\><value|diaclosop>\<varphi\>|}>
    </equation*>

    By definition, <math|<value|Closure><rsub|<value|Net><rsup|c><rsub|h,n>><around*|(|<semantics|\<varphi\>>|)>>
    is the unique fixed point of the transition function
    <math|F<rsub|<semantics|\<varphi\>>>> under
    <math|<semantics|\<varphi\>>>. I will show here that the set
    <math|<around*|{|\<alpha\><value|st><value|proves>\<alpha\>\<rightarrow\><value|diaclosop>\<varphi\>|}>>
    is <with|font-shape|italic|also> such a fixed point.

    <\equation*>
      <text|<todo|<with|font-series|bold|GOAL:>>>
      F<rsub|<semantics|\<varphi\>>><around*|(|<around*|{|\<alpha\><value|st><value|proves>\<alpha\>\<rightarrow\><value|diaclosop>\<varphi\>|}>|)>=<around*|{|\<alpha\><value|st><value|proves>\<alpha\>\<rightarrow\><value|diaclosop>\<varphi\>|}>
    </equation*>

    Since <math|<value|Closure><rsub|<value|Net><rsup|c><rsub|h,n>><around*|(|<semantics|\<varphi\>>|)>>
    is the <with|font-shape|italic|unique> fixed point under
    <math|<semantics|\<varphi\>>>, it will follow that these two states are
    the same.
  </proof-sketch>

  <\bibliography|bib|tm-plain|references.bib>
    <\bib-list|1>
      <bibitem*|1><label|bib-moss2007finite>Lawrence<nbsp>S Moss.
      <newblock>Finite models constructed from canonical formulas.
      <newblock><with|font-shape|italic|Journal of Philosophical Logic>,
      36:605\U640, 2007.<newblock>
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|bg-color|#ffffff>
    <associate|color|#000000>
    <associate|eqn-short-above|<macro|0.3fn>>
    <associate|eqn-short-below|<macro|0.3fn>>
    <associate|font-base-size|12>
    <associate|info-flag|minimal>
    <associate|item-vsep|<macro|0.3fn>>
    <associate|large-padding-above|0.5fn>
    <associate|large-padding-below|0.5fn>
    <associate|math-font|math-termes>
    <associate|padding-above|0.5fn>
    <associate|padding-below|0.5fn>
    <associate|page-bot|0.75in>
    <associate|page-even|0.75in>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-odd|0.75in>
    <associate|page-right|0.75in>
    <associate|page-screen-margin|false>
    <associate|page-top|0.75in>
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
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|1|2>>
    <associate|auto-4|<tuple|3|3>>
    <associate|auto-5|<tuple|2|3>>
    <associate|bib-moss2007finite|<tuple|1|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      moss2007finite

      moss2007finite
    </associate>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Sound axioms and
      rules of inference>|<pageref|auto-3>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|1fn>Neural
      network models> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|1fn>Basic
      definitions for the logic> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|1fn>The
      canonical neural net construction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>