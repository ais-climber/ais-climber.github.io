<TeXmacs|2.1.4>

<style|<tuple|generic|my-macros|fontawesome>>

<\body>
  <\appendix>
    The Modal Logic of <math|<value|bestop>>
  </appendix>

  <section|Syntax and Semantics>

  <\itemize>
    <item>Actually the <with|font-shape|italic|most> relevant for my purposes
    will the the logic of <math|<value|bestop>>/<math|<value|diabestop>>. I
    should introduce this logic <with|font-shape|italic|here>.

    <item>State all of the theorems I will need for this logic

    <item>This logic happens to be <with|font-shape|italic|new>, and I seem
    to be the first to work out the details (soundness & completeness). This
    work comprises a good <math|<frac|1|4>>th of my thesis work, but I will
    put the proofs in the Appendix since they detract from the story here.

    <item>The details (soundness, model building, completeness, expressivity)
    for this logic of <math|<value|bestop>\<varphi\>> can be found in
    <todo|Appendix A>. <todo|And as far as I'm aware, my work on this logic
    of <math|<value|bestop>\<varphi\>> is new.>
  </itemize>

  <\definition>
    Let <math|<value|langBest>> be the language whose formulas are given by

    <\equation*>
      \<varphi\>,\<psi\>\<assign\>p<value|st>\<neg\>\<varphi\><value|st>\<varphi\>\<wedge\>\<psi\><value|st><value|All>\<varphi\><value|st>\<box\>\<varphi\><value|st><value|boxback>\<varphi\><value|st><value|bestop>\<varphi\>
    </equation*>

    <math|\<top\>,\<bot\>,\<vee\>,\<rightarrow\>,\<leftrightarrow\>> and the
    dual modal operators <math|<value|Exists>,<value|Diamond>,<value|Diamondback>,<value|diabestop>>
    are defined in the usual way. <todo|I haven't really said what \Pthe
    usual way\Q is yet<text-dots>>
  </definition>

  <\example>
    <todo|A nice example, after giving intended readings of each of these,
    would be to translate the sentences given at the beginning of this
    section! Be careful, <math|\<box\>> doesn't necessarily have an epistemic
    reading!>

    <\itemize>
      <item><math|<value|Model>,<text|Tweety>\<Vdash\><value|All><around*|(|<value|bestop><text|bird>\<rightarrow\><text|flies>|)>\<rightarrow\><text|flies>>:
      If birds typically fly, then Tweety does.

      <item>: The car normally drives, but the check engine light is always
      on.

      <item>: This wasn't done by your typical criminal.

      <item><math|\<neg\><value|bestop>\<top\>\<rightarrow\>\<neg\>\<box\><around*|(|<value|Exists><value|bestop>\<top\>|)>>:
      If this isn't normal, I don't know what is.
    </itemize>
  </example>

  <\definition>
    The full semantics for <math|<value|langBest>> is given as follows. For
    all <math|<value|Model>\<in\><value|Plaus>>, <math|w\<in\>W>,

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<value|Model>,w\<Vdash\>p>|<cell|<space|1em>iff<space|1em>>|<cell|w\<in\>V<around*|(|p|)>>>|<row|<cell|<value|Model>,w\<Vdash\>\<neg\>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<value|Model>,w<neg|\<Vdash\>>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\>\<varphi\>\<wedge\>\<psi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<value|Model>,w\<Vdash\>\<varphi\><infix-and><value|Model>,w\<Vdash\>\<psi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|All>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<text|For
      all >u\<in\>W<text| whatsoever>,<value|Model>,u\<Vdash\>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\>\<box\>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<text|For
      all >u<text| such that >w<op|R>u,<value|Model>,u\<Vdash\>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|boxback>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|<text|For
      all >u<text| such that >u<op|<op|R>>w,<value|Model>,u\<Vdash\>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|bestop>\<varphi\>>|<cell|<space|1em>iff<space|1em>>|<cell|w\<in\><value|best><rsub|\<prec\>><around*|(|<semantics|\<varphi\>><rsub|<value|Model>>|)>>>>>>
    </equation*>

    where <math|<semantics|\<varphi\>><rsub|<value|Model>>=<around*|{|u<value|st><value|Model>,u\<Vdash\>\<varphi\>|}>>.
  </definition>

  The semantics for <math|\<box\>> is the totally standard relational one,
  <todo|but using the reflexive extension of the plausibility order
  <math|\<preceq\>> as an accessibility relation.> <todo|Not anymore! I've
  separated the epistemic accessibility relation <math|R> from the
  plausibility order <math|\<prec\>>> <todo|What does this mean for the
  interpretation of <math|\<box\>>??> The semantics for
  <math|<value|boxback>> comes from temporal logic\V<math|<value|boxback>>
  looks in the \Ppast\Q, whereas <math|\<box\>> looks in the \Pfuture.\Q The
  semantics for <math|<value|bestop>> is just the modal version of our
  semantics for conditionals <math|\<alpha\>\<Rightarrow\>\<beta\>>.
  <todo|Define <math|\<models\><rsub|<value|Plaus>>>!!!>

  <section|Soundness>

  <todo|First, give Inclusion & Idempotence properties for
  <math|<value|best><rsub|\<prec\>>>! And of course we have the Smoothness
  Condition from before. (recall it)>

  <\definition>
    <\float|float|thb>
      <big-figure|<tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<twith|table-lborder|0.1em>|<twith|table-rborder|0.1em>|<twith|table-bborder|0.1em>|<twith|table-tborder|0.1em>|<cwith|4|4|2|2|cell-valign|t>|<cwith|4|4|1|1|cell-valign|t>|<cwith|2|2|1|1|cell-valign|t>|<cwith|2|2|2|2|cell-valign|t>|<cwith|1|-1|1|-1|cell-bsep|0.2fn>|<cwith|1|-1|1|-1|cell-tsep|0.2fn>|<cwith|1|1|1|-1|cell-tsep|0.5fn>|<cwith|4|4|1|-1|cell-bsep|0.5fn>|<cwith|1|-1|1|1|cell-lsep|0.5fn>|<cwith|1|-1|2|2|cell-rsep|0.5fn>|<cwith|3|3|1|-1|cell-tsep|0.75fn>|<cwith|5|5|1|-1|cell-tsep|0.75fn>|<table|<row|<cell|<with|font-series|bold|Axioms
      for <math|\<box\>>:>>|<cell|<with|font-series|bold|Axioms for
      <math|<value|boxback>>:>>>|<row|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.25fn>|<cwith|1|-1|1|-1|cell-rsep|0.25fn>|<cwith|1|-1|1|-1|cell-bsep|0.25fn>|<cwith|1|-1|1|-1|cell-tsep|0.25fn>|<table|<row|<cell|<with|font-series|bold|(Dual)>>|<cell|<math|<value|Diamond>\<varphi\>\<leftrightarrow\>\<neg\>\<box\>\<neg\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Distr)>>|<cell|<math|\<box\><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|\<box\>\<varphi\>\<rightarrow\>\<box\>\<psi\>|)>>>>|<row|<cell|<with|font-series|bold|(Refl)>>|<cell|<math|\<box\>\<varphi\>\<rightarrow\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Trans)>>|<cell|<math|\<box\>\<varphi\>\<rightarrow\>\<box\>\<box\>\<varphi\>>>>>>>>|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.25fn>|<cwith|1|-1|1|-1|cell-rsep|0.25fn>|<cwith|1|-1|1|-1|cell-bsep|0.25fn>|<cwith|1|-1|1|-1|cell-tsep|0.25fn>|<table|<row|<cell|<with|font-series|bold|(Dual)>>|<cell|<math|<value|Diamondback>\<varphi\>\<leftrightarrow\>\<neg\><value|boxback>\<neg\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Distr)>>|<cell|<math|<value|boxback><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|<value|boxback>\<varphi\>\<rightarrow\><value|boxback>\<psi\>|)>>>>|<row|<cell|<with|font-series|bold|(Back)>>|<cell|<math|\<varphi\>\<rightarrow\>\<box\><value|Diamondback>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Forth)>>|<cell|<math|\<varphi\>\<rightarrow\><value|boxback><value|Diamond>\<varphi\>>>>>>>>>|<row|<cell|<with|font-series|bold|Axioms
      for <value|bestop>:>>|<cell|<with|font-series|bold|Axioms for
      <value|All>:>>>|<row|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.25fn>|<cwith|1|-1|1|-1|cell-rsep|0.25fn>|<cwith|1|-1|1|-1|cell-bsep|0.25fn>|<cwith|1|-1|1|-1|cell-tsep|0.25fn>|<table|<row|<cell|<with|font-series|bold|(Dual)>>|<cell|<math|<value|diabestop>\<varphi\>\<leftrightarrow\>\<neg\><value|bestop>\<neg\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Refl)>>|<cell|<math|<value|bestop>\<varphi\>\<rightarrow\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Trans)>>|<cell|<math|<value|bestop>\<varphi\>\<rightarrow\><value|bestop><value|bestop>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Smooth)>>|<cell|<todo|<math|\<varphi\>\<wedge\>\<neg\><value|bestop>\<varphi\>\<rightarrow\><value|Diamondback><value|bestop>\<varphi\>>>>>|<row|<cell|<with|font-series|bold|(Up)>>|<cell|<todo|<math|<value|bestop>\<varphi\>\<wedge\>\<psi\>\<rightarrow\>\<box\><around*|(|<value|bestop>\<varphi\>\<rightarrow\>\<psi\>|)>>>>>|<row|<cell|<with|font-series|bold|(Down)>>|<cell|<todo|<math|<value|bestop>\<varphi\>\<wedge\>\<psi\>\<rightarrow\><value|boxback><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>>>>>|<row|<cell|>|<cell|<todo|Replace
      with CM, poss CC>>>>>>>|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.25fn>|<cwith|1|-1|1|-1|cell-rsep|0.25fn>|<cwith|1|-1|1|-1|cell-bsep|0.25fn>|<cwith|1|-1|1|-1|cell-tsep|0.25fn>|<table|<row|<cell|<with|font-series|bold|(Dual)>>|<cell|<math|<value|Exists>\<varphi\>\<leftrightarrow\>\<neg\><value|All>\<neg\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(Distr)>>|<cell|<math|<value|All><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|<value|All>\<varphi\>\<rightarrow\><value|All>\<psi\>|)>>>>|<row|<cell|<with|font-series|bold|(Refl)>>|<cell|<math|<value|All>\<varphi\>\<rightarrow\>\<varphi\>>>>|<row|<cell|<with|font-series|bold|(5)>>|<cell|<math|<value|Exists>\<varphi\>\<rightarrow\><value|All><around*|(|<value|Exists>\<varphi\>|)>>>>|<row|<cell|<with|font-series|bold|(Interact)>>|<cell|<math|<value|All>\<varphi\>\<rightarrow\>\<box\>\<varphi\>>>>>>>>>|<row|<cell|>|<cell|<with|font-series|bold|Rules
      of Inference:>>>|<row|<cell|>|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|0.25fn>|<cwith|1|-1|1|-1|cell-rsep|0.25fn>|<cwith|1|-1|1|-1|cell-bsep|0.25fn>|<cwith|1|-1|1|-1|cell-tsep|0.25fn>|<cwith|2|2|2|2|cell-hyphen|t>|<table|<row|<cell|<with|font-series|bold|(MP)>>|<cell|From
      <math|<proves>\<varphi\>\<rightarrow\>\<psi\>> and
      <math|<value|proves>\<varphi\>> we can infer
      <math|<value|proves>\<psi\>>>>|<row|<cell|<with|font-series|bold|(Nec)>>|<\cell>
        From <math|<proves>\<varphi\>> we can infer
        <math|<value|proves><aw|stop|0.6fn>\<varphi\>>
      </cell>>|<row|<cell|>|<cell|<space|2em>for each
      <math|<aw|stop|0.6fn>\<in\><around*|{|<value|All>,\<box\>,<value|boxback>|}>>>>>>>>>>>>|<label|figure-axioms-best>Axioms
      and rules of inference for <todo|todo>>
    </float>The proof system for the plausibility semantics
    <math|<value|modelsPlaus>> over <math|<value|langBest>> is given as
    follows: <math|<value|proves>\<varphi\>> iff either <math|\<varphi\>> is
    valid in propositional logic, or <math|\<varphi\>> is one of the axioms
    listed in Figure <reference|figure-axioms-best>, or <math|\<varphi\>>
    follows from some previously obtained formulas by one of the inference
    rules. Note that these axioms are the same as the axioms for neural
    network semantics listed in Figure <reference|figure-axioms-neural>, with
    the addition of <todo|which ones are not sound in neural network
    semantics??>
  </definition>

  The axioms for <math|\<box\>> and <math|<value|All>> form
  \P<with|font-shape|italic|MLU>\Q (modal logic with the universal
  quantifier), and this is the standard complete axiomatization of this logic
  <todo|Cite! Johan van Benthem mentions it in Modal Logic for Open Minds>.
  The logic of <math|\<box\>> is just <with|font-shape|italic|S4>, and
  <math|<value|All>> is just <with|font-shape|italic|S5> with an additional
  interaction axiom <math|<value|All>\<varphi\>\<rightarrow\>\<box\>\<varphi\>>
  stating that if <math|\<varphi\>> holds everywhere, then it holds
  everywhere above the current world.

  The axioms for <math|<value|boxback>> come from temporal logic\V<todo|talk
  about Future and Past modalities, our <with|font-series|bold|(Back)> and
  <with|font-series|bold|(Forth)> axioms are exactly the ones needed.> In
  fact, the proof of completeness for <math|<value|boxback>> will require
  some tricks from this temporal logic. <todo|cite the book on modal temporal
  logic<text-dots> it's been a while since I've read it>.

  The axioms for <math|<value|bestop>> are, to my knowledge, totally new!
  <math|<value|bestop>> is a non-normal modal operator, in the sense that it
  doesn't satisfy a <with|font-series|bold|(Distr)> axiom or have a valid
  <with|font-series|bold|(Nec)> rule. <todo|Instead, <math|<value|bestop>>
  satisfies the axioms <with|font-series|bold|(Smooth)>,
  <with|font-series|bold|(Up)>, and <with|font-series|bold|(Down)>.
  <with|font-series|bold|(Smooth)> is an explicit statement of the Smoothness
  Condition\Vthe fact that we can express it in our logic is an interesting
  feature of this defeasible logic (I will discuss this more later).
  <with|font-series|bold|(Up)> says that if the current state <math|w> is a
  best-<math|\<varphi\>> state, then every state above <math|w> that is a
  best-<math|\<varphi\>> state must in fact be <math|w> (so any
  <math|\<psi\>> that holds at <math|w> must hold at this new state as well).
  <with|font-series|bold|(Down)> says that if the current state <math|w> is a
  best-<math|\<varphi\>> state, then every state
  <with|font-shape|italic|below> <math|w> where <math|\<varphi\>> holds at
  all must in fact be <math|w> (so any <math|\<psi\>> that holds at <math|w>
  must hold at this new state as well).>

  <\definition>
    If <math|\<Gamma\>\<subseteq\><value|langBest>> is a set of formulas and
    <math|\<varphi\>\<in\><value|langBest>> a formula, then
    <math|\<Gamma\><value|proves>\<varphi\>> whenever there are finitely many
    <math|\<psi\><rsub|1>,\<ldots\>,\<psi\><rsub|k>\<in\>\<Gamma\>> such that
    <math|<value|proves>\<psi\><rsub|1>\<wedge\>\<ldots\>\<wedge\>\<psi\><rsub|k>\<rightarrow\>\<varphi\>>.
  </definition>

  <\definition>
    A set <math|\<Gamma\>\<subseteq\><value|langBest>> is
    <with|font-shape|italic|consistent> iff
    <math|\<Gamma\><neg|<value|proves>>\<bot\>>. <math|\<Gamma\>> is
    <with|font-shape|italic|maximally consistent> if <math|\<Gamma\>> is
    consistent and for all <math|\<varphi\>\<in\><value|langBest>> either
    <math|\<varphi\>\<in\>\<Gamma\>> or <math|\<varphi\><neg|\<in\>>\<Gamma\>>.
  </definition>

  <\theorem>
    <dueto|<aw|hand-point-right|1fn> Soundness for <math|<value|langBest>>
    over <math|\<models\><rsub|<value|Plaus>>>>These rules and axioms are
    sound for plausibility models; for all consistent
    <math|\<Gamma\>\<subseteq\><value|langBest>> and
    <math|\<varphi\>\<in\><value|langBest>>, if
    <math|\<Gamma\><value|proves>\<varphi\>> then
    <math|\<Gamma\>\<models\><rsub|<value|Plaus>>\<varphi\>>.
  </theorem>

  <\proof>
    Suppose <math|\<Gamma\><value|proves>\<varphi\>>. That is, there are
    finitely many <math|\<psi\><rsub|1>,\<ldots\>,\<psi\><rsub|k>\<in\>\<Gamma\>>
    such that <math|<value|proves>\<psi\><rsub|1>\<wedge\>\<ldots\>\<wedge\>\<psi\><rsub|k>\<rightarrow\>\<varphi\>>,
    which in turn means (by <with|font-series|bold|(MP)>) that if
    <math|<value|proves>\<psi\><rsub|1>,\<ldots\>,<value|proves>\<psi\><rsub|k>>,
    then <math|<value|proves>\<varphi\>>. Now let
    <math|<value|Model>\<models\>\<Gamma\>>. In particular, this means
    <math|<value|Model>\<models\>\<psi\><rsub|1>,\<ldots\>,\<psi\><rsub|k>>.
    I now need to show that <math|<value|Model>\<models\>\<varphi\>>. Since
    <math|<value|proves>\<varphi\>>, <math|\<varphi\>> is itself an axiom or
    follows from previously obtained formulas by the inference rules. In
    order to prove <math|<value|Model>\<models\>\<varphi\>>, it's enough to
    show that the axioms and rules of inference are valid (hold for all
    <math|<value|Model>\<in\><value|Plaus>> at all states <math|w\<in\>W>
    whatsoever). The propositional axioms, <math|\<box\>> axioms,
    <math|<value|boxback>> axioms, <math|<value|All>> axioms,
    <with|font-series|bold|(MP)> and <with|font-series|bold|(Nec)> are known
    to be sound <todo|cite multiple for each>, and our plausibility models
    don't change the semantics of <math|\<box\>,<value|boxback>,<value|All>>,
    so I can safely skip these. As for the <math|<value|bestop>> axioms, let
    <math|<value|Model>\<in\><value|Plaus>,w\<in\>W>.

    <\description>
      <item*|<with|font-series|bold|(Dual)> for <math|<value|bestop>>>This
      holds by definition of <math|<value|diabestop>\<varphi\>>.

      <item*|<with|font-series|bold|(Refl)> for <math|<value|bestop>>>Suppose
      <math|<value|Model>,w\<Vdash\><value|bestop>\<varphi\>>. So
      <math|w\<in\><value|best><rsub|\<prec\>><around*|(|<semantics|\<varphi\>><rsub|<value|Model>>|)>>.
      By Inclusion of <math|<value|best><rsub|\<prec\>>>,
      <math|w\<in\><semantics|\<varphi\>><rsub|<value|Model>>>. And so
      <math|<value|Model>,w\<Vdash\>\<varphi\>>.

      <item*|<with|font-series|bold|(Trans)> for
      <math|<value|bestop>>>Suppose <math|<value|Model>,w\<Vdash\><value|bestop>\<varphi\>>.
      So <math|w\<in\><value|best><rsub|\<prec\>><around*|(|<semantics|\<varphi\>><rsub|<value|Model>>|)>>.
      By Idempotence of <math|<value|best><rsub|\<prec\>>>,
      <math|w\<in\><value|best><rsub|\<prec\>><around*|(|<value|best><rsub|\<prec\>><around*|(|<semantics|\<varphi\>><rsub|<value|Model>>|)>|)>>.
      And so <math|<value|Model>,w\<Vdash\><value|bestop><value|bestop>\<varphi\>>.

      <todo|<item*|<with|font-series|bold|(Smooth)> for
      <math|<value|bestop>>>Suppose <math|<value|Model>,w\<Vdash\>\<varphi\>>
      and <math|<value|Model>,w\<Vdash\>\<neg\><value|bestop>\<varphi\>>. By
      the semantics, this means <math|w\<in\><semantics|\<varphi\>><rsub|<value|Model>>>,
      but <math|w<neg|\<in\>><value|best><rsub|\<prec\>><around*|(|<semantics|\<varphi\>><rsub|<value|Model>>|)>>.
      But then the Smoothness Condition says there must be some
      <math|v<op|\<prec\>>w> better than <math|w> that
      <with|font-shape|italic|is> the best, i.e.,
      <math|v\<in\><value|best><rsub|\<prec\>><around*|(|<semantics|\<varphi\>><rsub|<value|Model>>|)>>.
      By the semantics for <math|<value|bestop>>,
      <math|<value|Model>,v\<Vdash\><value|bestop>\<varphi\>>. But since
      <math|v> was picked arbitrarily, and <math|v\<preceq\>w>, we have
      <math|<value|Model>,w\<Vdash\><value|Diamondback><value|bestop>\<varphi\>>.>

      <todo|<item*|<with|font-series|bold|(Up)> for
      <math|<value|bestop>>>Suppose <math|<value|Model>,w\<Vdash\><value|bestop>\<varphi\>>
      and <math|<value|Model>,w\<Vdash\>\<psi\>>. By the semantics,
      <math|w\<in\><value|best><rsub|\<prec\>><around*|(|<semantics|\<varphi\>>|)>>
      (which also means <math|w\<in\><semantics|\<varphi\>>>). Now let
      <math|u\<in\>W> with <math|w\<preceq\>u>, and suppose
      <math|<value|Model>,u\<Vdash\><value|bestop>\<varphi\>>, i.e.,
      <math|u\<in\><value|best><rsub|\<prec\>><around*|(|<semantics|\<varphi\>>|)>>.
      Since <math|u\<in\><value|best><rsub|\<prec\>><around*|(|<semantics|\<varphi\>>|)>>
      and <math|w\<in\><semantics|\<varphi\>>>, definition of
      <math|<value|best><rsub|\<prec\>>> we have <math|\<neg\>w\<prec\>u>.
      Putting <math|w\<preceq\>u> and <math|\<neg\>w\<prec\>u> together gives
      us <math|w=u>, which implies <math|<value|Model>,u\<Vdash\>\<psi\>>.
      Since <math|u> was picked arbitrarily,
      <math|<value|Model>,w\<Vdash\>\<box\><around*|(|<value|bestop>\<varphi\>\<rightarrow\>\<psi\>|)>>.>

      <todo|<item*|<with|font-series|bold|(Down)> for
      <math|<value|bestop>>>Suppose <math|<value|Model>,w\<Vdash\><value|bestop>\<varphi\>>
      and <math|<value|Model>,w\<Vdash\>\<psi\>>. By the semantics,
      <math|w\<in\><value|best><rsub|\<prec\>><around*|(|<semantics|\<varphi\>>|)>>
      (which also means <math|w\<in\><semantics|\<varphi\>>>). Now let
      <math|u\<in\>W> with <math|u\<preceq\>w>, and suppose
      <math|<value|Model>,u\<Vdash\>\<varphi\>>. Since
      <math|w\<in\><value|best><rsub|\<prec\>><around*|(|<semantics|\<varphi\>>|)>>
      and <math|u\<in\><semantics|\<varphi\>>>, by definition of
      <math|<value|best><rsub|\<prec\>>> we have <math|\<neg\>u\<prec\>w>.
      Putting <math|u\<preceq\>w> and <math|\<neg\>u\<prec\>w> together gives
      us <math|u=w>, which implies <math|<value|Model>,u\<Vdash\>\<psi\>>.
      Since <math|u> was picked arbitrarily,
      <math|<value|Model>,w\<Vdash\><value|boxback><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>>.>
    </description>
  </proof>

  <hrule>

  <todo|TODO: Old stuff that was in the appendix! I moved it up, but it all
  needs a rewrite!>

  <todo|Emphasize that this appendix is all novel work!!! To me it's an
  annoying technical detail, but it deserves to be written up as a paper in
  its own right.>

  I will prove soundness and completeness for the language
  <math|<value|langBest>>:

  <\equation*>
    \<varphi\>,\<psi\>\<assign\>p<value|st>\<neg\>\<varphi\><value|st>\<varphi\>\<wedge\>\<psi\><value|st><value|All>\<varphi\><value|st>\<box\>\<varphi\><value|st><value|boxback>\<varphi\><value|st><value|bestop>\<varphi\>
  </equation*>

  Actually, the model construction I give works for the language without
  <math|<value|All>>; adding <math|<value|All>\<varphi\>> to the logic of
  <math|\<box\>> alone is a known result in modal logic. <todo|Cite this! Who
  proved this first?>

  <todo|I think it's okay to repeat syntax + semantics here, since otherwise
  the reader would have to flip to the beginning<text-dots>>

  <todo|Talk about the expressive power of this language: show how this logic
  of <math|<value|All>,\<box\>,<value|boxback>,<value|bestop>> can express
  many of the other ways of expressing defeasible reasoning\Vand mention
  which ones it cannot express.>

  <section|Model Building and Completeness>

  <\lemma>
    <dueto|Lindenbaum's Lemma <todo|cite!>>We can extend any consistent set
    <math|\<Gamma\>> to a maximally consistent set
    <math|\<Delta\>\<supseteq\>\<Gamma\>>.
  </lemma>

  <\proposition>
    <label|proposition-box-boxback><dueto|<todo|cite from temporal
    logic!>>Let <math|\<Sigma\>,\<Delta\>> be maximally consistent. The
    following are equivalent:

    <\enumerate>
      <item><math|\<box\>\<varphi\>\<in\>\<Sigma\>> implies
      <math|\<varphi\>\<in\>\<Delta\>>

      <item><math|<value|boxback>\<varphi\>\<in\>\<Delta\>> implies
      <math|\<varphi\>\<in\>\<Sigma\>>
    </enumerate>
  </proposition>

  <\proof>
    Suppose (1) holds, and let <math|<value|boxback>\<varphi\>\<in\>\<Delta\>>.
    For contradiction, suppose <math|\<varphi\><neg|\<in\>>\<Sigma\>>. Since
    <math|\<Sigma\>> is maximally consistent,
    <math|\<neg\>\<varphi\>\<in\>\<Sigma\>>. Applying the
    <with|font-series|bold|(Back)> axiom, we get
    <math|\<box\><value|Diamondback>\<neg\>\<varphi\>\<in\>\<Sigma\>>, i.e.
    <math|\<box\>\<neg\><value|boxback>\<varphi\>\<in\>\<Sigma\>>. By (1),
    <math|\<neg\><value|boxback>\<varphi\>\<in\>\<Delta\>>, i.e.
    <math|<value|boxback>\<varphi\><neg|\<in\>>\<Delta\>>. But this
    contradicts <math|<value|boxback>\<varphi\>\<in\>\<Delta\>>!

    Now suppose (2) holds, and suppose <math|\<box\>\<varphi\>\<in\>\<Sigma\>>.
    For contradiction, suppose <math|\<varphi\><neg|\<in\>>\<Delta\>>. Since
    <math|\<Delta\>> is maximally consistent,
    <math|\<neg\>\<varphi\>\<in\>\<Delta\>>. Applying the
    <with|font-series|bold|(Forth)> axiom, we get
    <math|<value|boxback><value|Diamond>\<neg\>\<varphi\>\<in\>\<Delta\>>,
    i.e. <math|<value|boxback>\<neg\>\<box\>\<varphi\>\<in\>\<Delta\>>. By
    (2), <math|\<neg\>\<box\>\<varphi\>\<in\>\<Sigma\>>, i.e.
    <math|\<box\>\<varphi\><neg|\<in\>>\<Sigma\>>. But this contradicts
    <math|\<box\>\<varphi\>\<in\>\<Sigma\>>!
  </proof>

  The canonical model for this logic is almost entirely standard\Vwe define
  <math|\<prec\><rsup|c>> in the usual way for an accessibility relation,
  except we make it irreflexive.

  <\definition>
    The <with|font-shape|italic|canonical model> for this logic over
    <math|<value|langBest>> is a plausibility model
    <math|<value|Model><rsup|c>=\<langle\>W<rsup|c>,R<rsup|c>,\<prec\><rsup|c>,V<rsup|c>\<rangle\>>,
    where

    <\itemize>
      <item><math|W<rsup|c>=<around*|{|\<Delta\><value|st>\<Delta\><text| is
      maximally consistent over <math|<value|langBest>>>|}>>

      <item><math|\<Delta\><rsub|1><op|\<prec\><rsup|c>>\<Delta\><rsub|2>>
      iff <math|\<Delta\><rsub|1>\<neq\>\<Delta\><rsub|2>> and for all
      <math|\<varphi\>\<in\><value|langBest>>, if
      <math|\<box\>\<varphi\>\<in\>\<Delta\><rsub|1>> then
      <math|\<varphi\>\<in\>\<Delta\><rsub|2>>.

      <item><math|\<Delta\>\<in\>V<rsup|c><around*|(|p|)>> iff
      <math|p\<in\>\<Delta\>>
    </itemize>
  </definition>

  Note that the <math|W<rsup|c>,\<prec\><rsup|c>,V<rsup|c>> lines are all
  part of the standard canonical model construction for modal logic\Vthe only
  new change is that we ensure the accessibility relation
  <math|\<prec\><rsup|c>> is irreflexive.

  <\proposition>
    <label|proposition-build-mcs><dueto|<aw|hand-point-right|1fn>>Let
    <math|\<Delta\>> be consistent, and suppose
    <math|<value|Diamondback><value|bestop>\<varphi\>\<in\>\<Delta\>>. Then
    we can extend <math|\<Delta\>> to a maximally consistent set
    <math|\<Delta\><rsup|<text|max>>\<in\>W<rsup|c>> such that
    <math|<value|bestop>\<varphi\>\<in\>\<Delta\><rsup|<text|max>>> and
    <math|\<Delta\><rsup|<text|max>>\<prec\><rsup|c>\<Delta\>>.
  </proposition>

  <\proof>
    Consider the set <math|\<Delta\><rprime|'>=<around*|{|\<psi\><value|st><value|boxback>\<psi\>\<in\>\<Delta\>|}>\<cup\><around*|{|<value|bestop>\<varphi\>|}>>.
    I first claim that <math|\<Delta\><rprime|'>> is consistent; suppose not.
    Then <math|\<Delta\><rprime|'><value|proves>\<neg\><value|bestop>\<varphi\>>.
    By definition of <math|<value|proves>>, there must be finitely many
    <math|\<psi\><rsub|1>,\<ldots\>,\<psi\><rsub|n>\<in\>\<Delta\><rprime|'>>
    such that <math|<value|proves><around*|(|\<psi\><rsub|1>\<wedge\>\<ldots\>\<wedge\>\<psi\><rsub|n>|)>\<rightarrow\>\<neg\><value|bestop>\<varphi\>>.
    By the <with|font-series|bold|(Nec)> rule for <math|<value|boxback>>,
    <math|<value|proves><value|boxback><around*|(|<around*|(|\<psi\><rsub|1>\<wedge\>\<ldots\>\<wedge\>\<psi\><rsub|n>|)>\<rightarrow\>\<neg\><value|bestop>\<varphi\>|)>>.
    Then by <with|font-series|bold|(Distr)> for <math|<value|boxback>>,
    <math|<value|proves><value|boxback><around*|(|\<psi\><rsub|1>\<wedge\>\<ldots\>\<wedge\>\<psi\><rsub|n>|)>\<rightarrow\><value|boxback>\<neg\><value|bestop>\<varphi\>>.
    Now, by construction of <math|\<Delta\><rprime|'>>,
    <math|<value|boxback>\<psi\><rsub|1>,\<ldots\>,<value|boxback>\<psi\><rsub|n>\<in\>\<Delta\>>.
    So <math|<value|boxback>\<psi\><rsub|1>\<wedge\>\<ldots\>\<wedge\><value|boxback>\<psi\><rsub|n>\<in\>\<Delta\>>.
    Now, with a bit of work with the <with|font-series|bold|(Distr)> axiom
    (see <todo|cite modal logic book or notes>), we have

    <\equation*>
      <value|proves><around*|(|\<psi\><rsub|1>\<wedge\>\<ldots\>\<wedge\>\<psi\><rsub|n>|)>\<rightarrow\>\<neg\><value|bestop>\<varphi\><text|
      implies ><value|proves><value|boxback>\<psi\><rsub|1>\<wedge\>\<ldots\>\<wedge\><value|boxback>\<psi\><rsub|n>\<rightarrow\><value|boxback>\<neg\><value|bestop>\<varphi\>
    </equation*>

    which gives us <math|<value|boxback>\<neg\><value|bestop>\<varphi\>\<in\>\<Delta\>>.
    By <with|font-series|bold|(Dual)>, we have
    <math|\<neg\><value|Diamondback><value|bestop>\<varphi\>\<in\>\<Delta\>>,
    which contradicts our hypothesis <math|<value|Diamondback><value|bestop>\<varphi\>\<in\>\<Delta\>>
    and the fact that <math|\<Delta\>> is consistent.

    So we can extend <math|\<Delta\><rprime|'>> to a maximally consistent set
    <math|\<Delta\><rsup|<text|max>>\<supseteq\>\<Delta\><rprime|'>>. Since
    <math|<value|bestop>\<in\>\<Delta\><rprime|'>>,
    <math|<value|bestop>\<in\>\<Delta\><rsup|<text|max>>>. Now observe that
    by construction, for all formulas <math|\<psi\>>,
    <math|<value|boxback>\<psi\>\<in\>\<Delta\>> implies
    <math|\<psi\>\<in\>\<Delta\><rsup|<text|max>>>. By Proposition
    <reference|proposition-box-boxback>, this means for all <math|\<psi\>>,
    <math|\<box\>\<psi\>\<in\>\<Delta\><rsup|<text|max>>> implies
    <math|\<psi\>\<in\>\<Delta\>>. But this is precisely the definition of
    <math|\<Delta\><rsup|<text|max>>\<preceq\><rsup|c>\<Delta\>> (and we are
    done).
  </proof>

  <\lemma>
    <dueto|<aw|hand-point-right|1fn> Truth Lemma for
    <math|<value|langBest>>>We have, for all <math|\<Delta\>\<in\>W<rsup|c>>,
    <math|\<varphi\>\<in\><value|langBest>>,

    <\equation*>
      <value|Model>,\<Delta\>\<Vdash\>\<varphi\><infix-iff>\<varphi\>\<in\>\<Delta\>
    </equation*>
  </lemma>

  <\proof>
    By induction on <math|\<varphi\>>. The propositional and boolean cases
    are straightforward. The <math|\<box\>\<varphi\>> case is the standard
    one from modal logic, and follows from the usual lemmas about maximally
    consistent sets (using the <with|font-series|bold|(Dual)> rule and
    <with|font-series|bold|(Distr)> axiom for <math|\<box\>>) <todo|cite>.
    Similarly, the <math|<value|All>\<varphi\>> and <math|<value|boxback>>
    cases are already known, and the introduction of
    <math|<value|bestop>\<varphi\>> do not affect them. I'll skip to the most
    relevant case:

    <\description>
      <item*|<math|<value|bestop>> Case>For the
      <math|<around*|(|\<rightarrow\>|)>> direction, suppose
      <math|<value|Model><rsup|c>,\<Delta\>\<Vdash\><value|bestop>\<varphi\>>
      but for contradiction <math|<value|bestop>\<varphi\><neg|\<in\>>\<Delta\>>.
      Observe:

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|<value|Model><rsup|c>,\<Delta\>\<Vdash\><value|bestop>\<varphi\>>|<cell|<space|0.5em>\<longrightarrow\><space|0.5em>>|<cell|\<Delta\>\<in\><value|best><rsub|\<prec\><rsup|c>><around*|(|<semantics|\<varphi\>><rsub|<value|Model><rsup|c>>|)>>|<cell|<text|(by
        the semantics)>>>|<row|<cell|>|<cell|<space|0.5em>\<longrightarrow\><space|0.5em>>|<cell|\<Delta\>\<in\><semantics|\<varphi\>><rsub|<value|Model><rsup|c>><text|
        and for all >\<Delta\><rprime|'>,>|<cell|<text|(by definition of
        <math|<value|best><rsub|\<prec\><rsup|c>>>)>>>|<row|<cell|>|<cell|>|<cell|<space|1em><text|
        if >\<Delta\><rprime|'>\<in\><semantics|\<varphi\>><rsub|<value|Model><rsup|c>><text|
        then >\<neg\>\<Delta\><rprime|'>\<prec\><rsup|c>\<Delta\>>|<cell|>>|<row|<cell|>|<cell|<space|0.5em>\<longrightarrow\><space|0.5em>>|<cell|\<varphi\>\<in\>\<Delta\><text|
        and for all >\<Delta\><rprime|'>,>|<cell|<text|(by inductive
        hypothesis)>>>|<row|<cell|>|<cell|>|<cell|<space|1em><text| if
        >\<varphi\>\<in\>\<Delta\><rprime|'><text| then
        >\<neg\>\<Delta\><rprime|'>\<prec\><rsup|c>\<Delta\>>|<cell|>>>>>
      </equation*>

      Now consider <math|\<Delta\><rprime|'>=<around*|{|\<psi\><value|st><value|boxback>\<psi\>\<in\>\<Delta\>|}>\<cup\><around*|{|<value|bestop>\<varphi\>|}>>.
      Since <math|\<Delta\>> is maximal, <math|\<neg\><value|bestop>\<varphi\>\<in\>\<Delta\>>.
      So we have <math|\<varphi\>\<wedge\>\<neg\><value|bestop>\<varphi\>\<in\>\<Delta\>>,
      and by <with|font-series|bold|(Smooth)>,
      <math|<value|Diamondback><value|bestop>\<varphi\>\<in\>\<Delta\>>. This
      fact allows us to apply Proposition <reference|proposition-build-mcs>,
      which gives us a maximally consistent
      <math|\<Delta\><rsup|<text|max>>\<in\>W<rsup|c>> with
      <math|\<Delta\><rsup|<text|max>>\<preceq\><rsup|c>\<Delta\>> and
      <math|<value|bestop>\<varphi\>\<in\>\<Delta\><rsup|<text|max>>>.

      Since <math|<value|bestop>\<varphi\>\<in\>\<Delta\><rsup|<text|max>>>,
      by <with|font-series|bold|(Refl)> for <math|<value|bestop>>,
      <math|\<varphi\>\<in\>\<Delta\><rsup|<text|max>>>. So by the last line
      of implications above, <math|\<neg\>\<Delta\><rsup|<text|max>>\<prec\><rsup|c>\<Delta\>>.
      Putting <math|\<neg\>\<Delta\><rsup|<text|max>>\<prec\><rsup|c>\<Delta\>>
      and <math|\<Delta\><rsup|<text|max>>\<preceq\><rsup|c>\<Delta\>>
      together, we must have <math|\<Delta\><rsup|<text|max>>=\<Delta\>>. But
      this gives us <math|<value|bestop>\<varphi\>\<in\>\<Delta\>>, which
      contradicts our hypothesis <math|<value|bestop>\<varphi\><neg|\<in\>>\<Delta\>>
      (so <math|<value|bestop>\<varphi\>\<in\>\<Delta\>> must be true).

      As for the <math|<around*|(|\<leftarrow\>|)>> direction, suppose
      <math|<value|bestop>\<varphi\>\<in\>\<Delta\>>. Applying
      <with|font-series|bold|(Refl)> gives us
      <math|\<varphi\>\<in\>\<Delta\>>, which by our inductive hypothesis
      means <math|\<Delta\>\<in\><semantics|\<varphi\>><rsub|<rsup| >>>. I
      will now show that <math|\<Delta\>> is a <with|font-shape|italic|best>
      such point in <math|<semantics|\<varphi\>>>. Suppose not, say there is
      some <math|\<Delta\><rprime|'>\<in\><semantics|\<varphi\>>> with
      <math|\<Delta\><rprime|'>\<prec\><rsup|c>\<Delta\>>. (Note by inductive
      hypothesis, <math|\<varphi\>\<in\>\<Delta\><rprime|'>>) By definition
      of <math|\<prec\><rsup|c>> we have:

      <\equation*>
        \<Delta\><rprime|'>\<neq\>\<Delta\><text| and for all
        >\<psi\>\<in\><value|langBest>,<text| if
        >\<box\>\<psi\>\<in\>\<Delta\><rprime|'><text| then
        >\<psi\>\<in\>\<Delta\>
      </equation*>

      Note that by Proposition <reference|proposition-box-boxback>, this also
      means that

      <\equation*>
        <around*|(|\<ast\>|)><space|1em><text|For all
        >\<psi\>\<in\><value|langBest>,<text| if
        ><value|boxback>\<psi\>\<in\>\<Delta\><text| then
        >\<psi\>\<in\>\<Delta\><rprime|'>
      </equation*>

      I will now show that <math|\<Delta\>=\<Delta\><rprime|'>>, which
      contradicts <math|\<Delta\><rprime|'>\<prec\><rsup|c>\<Delta\>>. For
      <math|<around*|(|\<subseteq\>|)>> let <math|\<psi\>\<in\>\<Delta\>>. We
      have

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|\<psi\>\<in\>\<Delta\>>|<cell|<text|
        implies >>|<cell|<value|bestop>\<varphi\>\<wedge\>\<psi\>\<in\>\<Delta\>>|<cell|<text|(since
        <math|<value|bestop>\<varphi\>\<in\>\<Delta\><rprime|'>>)>>>|<row|<cell|>|<cell|<text|
        implies >>|<cell|<value|boxback><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<in\>\<Delta\>>|<cell|<text|(by
        <with|font-series|bold|(Down)>)>>>|<row|<cell|>|<cell|<text| implies
        >>|<cell|\<varphi\>\<rightarrow\>\<psi\>\<in\>\<Delta\><rprime|'>>|<cell|<text|(by
        (\<ast\>) above)>>>|<row|<cell|>|<cell|<text| implies
        >>|<cell|\<psi\>\<in\>\<Delta\><rprime|'>>|<cell|<text|(since
        <math|\<varphi\>\<in\>\<Delta\><rprime|'>>)>>>>>>
      </equation*>

      As for <math|<around*|(|\<supseteq\>|)>>, let
      <math|\<psi\>\<in\>\<Delta\><rprime|'>>. Observe that
      <math|<value|bestop>\<varphi\>\<rightarrow\><value|bestop>\<varphi\>\<wedge\><value|bestop>\<varphi\>\<rightarrow\><value|boxback><around*|(|\<varphi\>\<rightarrow\><value|bestop>\<varphi\>|)>>
      (this is just <with|font-series|bold|(Down)>, but substituting
      <math|\<psi\>\<assign\><value|bestop>\<varphi\>>). Since
      <math|<value|bestop>\<varphi\>\<in\>\<Delta\>>,
      <math|<value|boxback><around*|(|\<varphi\>\<rightarrow\><value|bestop>\<varphi\>|)>\<in\>\<Delta\>>,
      and then by <math|<around*|(|\<ast\>|)>>
      <math|\<varphi\>\<rightarrow\><value|bestop>\<varphi\>\<in\>\<Delta\><rprime|'>>.
      From all this we get <math|<value|bestop>\<varphi\>\<in\>\<Delta\><rprime|'>>.
      From here we have:

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|\<psi\>\<in\>\<Delta\><rprime|'>>|<cell|<text|
        implies >>|<cell|<value|bestop>\<varphi\>\<wedge\>\<psi\>\<in\>\<Delta\><rprime|'>>|<cell|<text|(since
        <math|<value|bestop>\<varphi\>\<in\>\<Delta\><rprime|'>>)>>>|<row|<cell|>|<cell|<text|
        implies >>|<cell|\<box\><around*|(|<value|bestop>\<varphi\>\<rightarrow\>\<psi\>|)>\<in\>\<Delta\><rprime|'>>|<cell|<text|(by
        <with|font-series|bold|(Up)>)>>>|<row|<cell|>|<cell|<text| implies
        >>|<cell|<value|bestop>\<varphi\>\<rightarrow\>\<psi\>\<in\>\<Delta\>>|<cell|<text|(by
        definition of <math|\<prec\><rsup|c>>)>>>|<row|<cell|>|<cell|<text|
        implies >>|<cell|\<psi\>\<in\>\<Delta\>>|<cell|<text|(since
        <math|<value|bestop>\<varphi\>\<in\>\<Delta\>>)>>>>>>
      </equation*>

      From this contradiction, we conclude that <math|\<Delta\>>
      <with|font-shape|italic|is> a best <math|\<varphi\>>-world, and so by
      the semantics we have <math|<value|Model><rsup|c>,\<Delta\>\<Vdash\><value|bestop>\<varphi\>>.
    </description>
  </proof>

  <\proposition>
    <dueto|<aw|hand-point-right|1fn>>The canonical model
    <math|<value|Model><rsup|c>> is in fact a plausibility model, i.e.
    <math|<value|Model><rsup|c>\<in\><value|Plaus>>.
  </proposition>

  <\proof>
    I need to show is that <math|\<prec\><rsup|c>> is irreflexive,
    transitive, and smooth:

    <\description>
      <item*|<math|\<prec\><rsup|c>> is irreflexive>This is almost by
      definition; let <math|\<Delta\>\<in\>W<rsup|c>>, and suppose for
      contradiction that <math|\<Delta\>\<prec\><rsup|c>\<Delta\>>. So
      <math|\<Delta\>\<neq\>\<Delta\>>, which is a contradiction.

      <item*|<math|\<prec\><rsup|c>> is transitive>Suppose
      <math|\<Delta\><rsub|1>\<prec\><rsup|c>\<Delta\><rsub|2>> and
      <math|\<Delta\><rsub|2>\<prec\><rsup|c>\<Delta\><rsub|3>>. By
      definition, for all <math|\<varphi\>>,
      <math|\<box\>\<varphi\>\<in\>\<Delta\><rsub|1>> implies
      <math|\<varphi\>\<in\>\<Delta\><rsub|2>> and for all <math|\<varphi\>>,
      <math|\<box\>\<varphi\>\<in\>\<Delta\><rsub|2>> implies
      <math|\<varphi\>\<in\>\<Delta\><rsub|3>>. To show
      <math|\<Delta\><rsub|1>\<prec\><rsup|c>\<Delta\><rsub|3>>, let
      <math|\<varphi\>\<in\><value|langBest>> and suppose
      <math|\<box\>\<varphi\>\<in\>\<Delta\><rsub|1>>. By
      <with|font-series|bold|(Trans)> for <math|\<box\>>,
      <math|\<box\>\<box\>\<varphi\>\<in\>\<Delta\><rsub|1>>. By hypothesis,
      this means <math|\<box\>\<varphi\>\<in\>\<Delta\><rsub|2>>, and so
      <math|\<varphi\>\<in\>\<Delta\><rsub|3>> (and we are done).

      <item*|<math|\<prec\><rsup|c>> is smooth>Let
      <math|\<varphi\>\<in\><value|langBest>> be any formula,
      <math|\<Delta\>\<in\>W<rsup|c>>, and suppose
      <math|\<Delta\>\<in\><semantics|\<varphi\>>> but
      <math|\<Delta\><neg|\<in\>><value|best><rsub|\<prec\><rsup|c>><around*|(|<semantics|\<varphi\>>|)>>.
      I would like to show that there is some
      <math|\<Delta\><rprime|'>\<in\>W<rsup|c>> better than <math|\<Delta\>>
      that <with|font-shape|italic|is> a best <math|\<varphi\>>-state. Well,
      by the Truth Lemma, <math|\<varphi\>\<in\>\<Delta\>> and
      <math|<value|bestop>\<varphi\><neg|\<in\>>\<Delta\>>. So
      <math|\<varphi\>\<wedge\>\<neg\><value|bestop>\<varphi\>\<in\>\<Delta\>>.
      By <with|font-series|bold|(Smooth)>,
      <math|<value|Diamondback><value|bestop>\<varphi\>\<in\>\<Delta\>>. This
      means we can apply Proposition <reference|proposition-build-mcs>, which
      gives us a maximally consistent <math|\<Delta\><rsup|<text|max>>\<in\>W<rsup|c>>
      with <math|\<Delta\><rsup|<text|max>>\<in\>W<rsup|c>>,
      <math|\<Delta\><rsup|<text|max>>\<prec\><rsup|c>\<Delta\>>, and
      <math|<value|bestop>\<varphi\>\<in\>\<Delta\><rsup|<text|max>>>. By the
      Truth Lemma, <math|\<Delta\><rsup|<text|max>>\<in\><value|best><rsub|\<prec\><rsup|c>><around*|(|<semantics|\<varphi\>>|)>>
      (and we are done).
    </description>
  </proof>

  <\theorem>
    <label|theorem-model-building-classical><dueto|<aw|hand-point-right|1fn>
    Model Building for <math|<value|langBest>>>For all consistent
    <math|\<Gamma\>\<subseteq\><value|langBest>>, there is some
    <math|<value|Model>\<in\><value|Plaus>> and state <math|w\<in\>W> such
    that <math|<value|Model>,w<value|satisfiesPlaus>\<Gamma\>>. <todo|Update
    proof with <math|<value|satisfiesPlaus>>>
  </theorem>

  <\proof>
    This proof is standard for modal logics. Let <math|\<Gamma\>> be
    consistent. Take the model to be the canonical model
    <math|<value|Model><rsup|c>>, and extend <math|\<Gamma\>> to maximally
    consistent set <math|\<Delta\>\<supseteq\>\<Gamma\>>. Since
    <math|\<Delta\>> is maximally consistent,
    <math|\<Delta\>\<in\>W<rsup|c>>. Since every
    <math|\<varphi\>\<in\>\<Gamma\>> is in <math|\<Delta\>>, by our truth
    lemma for all <math|\<varphi\>\<in\>\<Gamma\>>,
    <math|<value|Model><rsup|c>,\<Delta\>\<Vdash\>\<varphi\>>. So
    <math|<value|Model><rsup|c>,\<Delta\>\<Vdash\>\<Gamma\>>, and we are
    done.
  </proof>

  <\corollary>
    <dueto|<aw|hand-point-right|1fn> Completeness for <math|<value|langBest>>
    over <math|\<models\><rsub|<value|Plaus>>>>For all consistent
    <math|\<Gamma\>\<subseteq\><value|langBest>> and all formulas
    <math|\<varphi\>\<in\><value|langBest>>, <todo|Update proof with
    <math|\<models\><rsub|<value|Plaus>>>>

    <\equation*>
      <text|if >\<Gamma\>\<models\><rsub|<value|Plaus>>\<varphi\><text| then
      >\<Gamma\><value|proves>\<varphi\>
    </equation*>
  </corollary>

  <\proof>
    Since the language <math|<value|langBest>> has negation, completeness
    follows from model building in the usual way; this proof is entirely
    standard. Suppose contrapositively that
    <math|\<Gamma\><neg|<value|proves>>\<varphi\>>. It follows that
    <math|\<Gamma\><value|proves>\<neg\>\<varphi\>>. So
    <math|\<Gamma\>\<cup\><around*|{|\<neg\>\<varphi\>|}>> is consistent, and
    by Theorem <reference|theorem-model-building-classical> we have
    <math|<value|Model>\<in\><value|Plaus>> and <math|w\<in\>W> such that
    <math|<value|Model>,w\<models\>\<Gamma\>\<cup\><around*|{|\<neg\>\<varphi\>|}>>.
    But then <math|<value|Model>,w\<models\>\<Gamma\>> yet
    <math|<value|Model>,w<neg|\<models\>>\<varphi\>>, which is what we wanted
    to show.
  </proof>

  <section|Building a Finite Model>

  The fact that we can build a model is not enough. The canonical model
  <math|<value|Model><rsup|c>> is huge\Vit has infinitely many elements, each
  of which are infinite sets of formulas! To turn this model into a neural
  network (which is the central point of my dissertation), I need to first
  make this model finite. <todo|Relate this to the finite model property:
  every formula <math|\<varphi\>> that has a model has a finite
  countermodel.> (Polynomial size would be nice, but I will leave this to
  future work. We probably won't be so lucky.)

  The logic of <math|<value|bestop>> and our canonical model construction are
  not strange or bizarre from a modal logic standpoint, so we can apply the
  standard technique of <with|font-shape|italic|filtration> to construct the
  finite model.

  <\definition>
    <todo|Define filtration!>
  </definition>

  <todo|For computer science reader: this is similar to the Myhill-Nerode
  theorem about finding a minimal DFA equivalent to a given DFA,>

  <\theorem>
    <todo|A filtration of <math|<value|Model>> preserves the formulas true in
    <math|<value|Model>>, at every world.>
  </theorem>

  <\proposition>
    <todo|A filtration of <math|<value|Model>\<in\><value|Plaus>> is still a
    plausibility model, i.e. <math|\<prec\>> is irreflexive, transitive, and
    smooth>
  </proposition>

  <\theorem>
    <todo|If <math|\<Gamma\>> is finite, then any filtration of a
    <math|<value|Model>\<in\><value|Plaus>> through <math|\<Gamma\>> is also
    finite.>
  </theorem>

  <\definition>
    <todo|Define the fine filtration (I need to pick a specific filtration to
    see that one exists. In order to pick one that may prove to be more
    useful as a neural network, I pick the fine filtration (the most densely
    connected filtration) over the coarse filtration (the least densely
    connected filtration))>
  </definition>

  <\proposition>
    <todo|The fine filtration is in fact a filtration>
  </proposition>

  <\corollary>
    <dueto|Finite Model Property><todo|State the finite model property,
    putting it all together. We can build a finite >
  </corollary>

  <\corollary>
    <dueto|Finite Model Building><todo|For any finite set of constraints
    <math|\<Gamma\>>, we can construct a finite
    <math|<value|Model>\<in\><value|Plaus>> satisfying <math|\<Gamma\>>>
  </corollary>

  <todo|Note that this doesn't actually give us a constructive
  <with|font-shape|italic|algorithm> for building the finite model, since we
  have to build the infinite canonical model <with|font-shape|italic|first>.
  Is there a known result in modal logic that gives us an algorithm? If so, I
  should include this in a separate Appendix section and point to it here.>
  <todo|After talking to Saul and Larry about this, I should just leave it as
  an open question and point to Larry's work on constructively building
  finite models from formulas. It is likely this trick will work here too.>

  <\question>
    For a given finite set of constraints
    <math|\<Gamma\>\<subseteq\><value|langBest>>, is there a constructive
    algorithm that produces a model <math|<value|Model>\<in\><value|Plaus>>
    and state <math|w\<in\>W> such that <math|<value|Model>,w\<models\>\<Gamma\>>?
  </question>

  <section|The Interpretation and Expressive Power of
  <math|<value|bestop>,\<box\>> and <math|<value|boxback>>>

  <\itemize>
    <item>Interpretation first! <math|<value|Model>,w\<Vdash\><value|bestop>\<varphi\>>
    is easy\Vit does not mean <with|font-shape|italic|typically>, like I have
    miswrote in previous papers (this is actually a correction!!). It means
    <with|font-shape|italic|the current state is the most normal> or
    <with|font-shape|italic|most typical state>. <todo|give some example
    sentences and express them using <math|<value|bestop>>>.

    <item>The interpretation of <math|\<box\>> and <math|<value|boxback>> is
    tricker. <todo|Is <math|<value|boxback>> the same as what Baltag & Smets
    call \Psafe belief\Q?? What does that make <math|\<box\>>?>

    <item>Go through each of the common alternatives that I listed before for
    defeasible logics. <math|<value|bestop>\<varphi\>> is actually exactly
    the same operator as <math|\<bullet\>\<varphi\>> in PTL (Propositional
    Typicality Logic). So we can see our result as: we can get completeness
    for PTL with modal semantics and proof setting if we simply add the
    ordinary modal operators <math|<value|All>,\<box\>,<value|boxback>> (and
    actually, <math|<value|All>> is not totally necessary)

    <item>Viewing <math|<value|boxback>> as safe belief, we can see this
    result as: reasoning about the most plausible states along with safe
    belief (the interaction between <math|<value|bestop>> and belief\Vsee the
    discussion in van Benthem).

    <item>The flag and flame modalities help us express \Ptypically
    <math|\<varphi\>>\Q. This work adds an epistemic accessibility relation
    <math|R>, and I <with|font-shape|italic|think> their flag is not
    expressible in my logic. Is my <math|<value|bestop>> operator expressible
    in theirs, though??

    <item>One nice feature of this logic is that we can express the
    Smoothness Condition explicitly as a formula in the logic! Recall the
    <with|font-series|bold|(Smooth)> axiom

    <\equation*>
      \<varphi\>\<wedge\>\<neg\><value|bestop>\<varphi\>\<rightarrow\><value|Diamondback><value|bestop>\<varphi\>
    </equation*>

    As far as I know, this is the first defeasible logic to do this (which
    makes it uniquely expressive, and appealing in a way).

    <todo|Can any other defeasible logics express Smoothness directly? I
    think KLM conditionals cannot, and to my knowledge all defeasible modal
    logics cannot express the \Plook downward\Q part of the condition.>
  </itemize>

  <section|Dynamic Updates on the Logic of <math|<value|bestop>>>

  <\itemize>
    <item>Another neat feature of this logic is that it cleans up reduction
    axioms for update operators such as <math|<value|Lex>> &
    <math|<value|Consr>>. I should first give the sound reduction axioms for
    <math|<value|Lex>> & <math|<value|Consr>> over conditionals
    <math|\<varphi\>\<Rightarrow\>\<psi\>>, and then show that the same
    reduction axioms over <math|<value|bestop>> are a bit nicer / more
    elegant.

    <item>But beyond that, certain upgrades that are
    <with|font-shape|italic|not> reducible over <math|\<Rightarrow\>> become
    reducible in the logic of <math|<value|bestop>>. I'm thinking in
    particular of the <with|font-series|bold|<around*|(|<math|<value|Hebbstar>>|)>>
    axiom! <todo|I need a negative result saying that
    <math|<value|Hebbstar>>, as an upgrade over Plausibility models, is not
    expressible / reducible in the conditional logic. I think I could do it
    if I could instead refer to some other plausibility upgrade that
    satisfies the same axiom<text-dots>>
  </itemize>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|11>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-screen-margin|false>
    <associate|page-type|letter>
    <associate|page-width|auto>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|A|1>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|2|2>>
    <associate|auto-4|<tuple|1|2>>
    <associate|auto-5|<tuple|3|4>>
    <associate|auto-6|<tuple|4|7>>
    <associate|auto-7|<tuple|5|8>>
    <associate|auto-8|<tuple|6|9>>
    <associate|figure-axioms-best|<tuple|1|2>>
    <associate|proposition-box-boxback|<tuple|9|4>>
    <associate|proposition-build-mcs|<tuple|11|5>>
    <associate|theorem-model-building-classical|<tuple|14|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Axioms and rules of
      inference for <with|color|<quote|#4c4b0d>|<datoms|<macro|x|<resize|<tabular|<tformat|<cwith|1|1|1|1|cell-background|#e0dfba>|<cwith|1|1|1|1|cell-lsep|0fn>|<cwith|1|1|1|1|cell-rsep|0fn>|<cwith|1|1|1|1|cell-bsep|0.2fn>|<cwith|1|1|1|1|cell-tsep|0.2fn>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<twith|table-width|>|<twith|table-hmode|auto>|<twith|table-block|no>|<table|<row|<cell|<arg|x>>>>>>|<plus|1l|0fn>|<plus|1b|0.2fn>|<minus|1r|0fn>|<minus|1t|0.2fn>>>|[todo]>>>|<pageref|auto-4>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      A<space|2spc>The Modal Logic of <with|mode|<quote|math>|[<with|mode|<quote|text>|best>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Syntax
      and Semantics> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Soundness>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Model
      Building and Completeness> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Building
      a Finite Model> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>The
      Interpretation and Expressive Power of
      <with|mode|<quote|math>|[<with|mode|<quote|text>|best>],\<box\>> and
      <with|mode|<quote|math>|\<box\><rsup|<with|font-series|<quote|bold>|\<downarrow\>>>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Dynamic
      Updates on the Logic of <with|mode|<quote|math>|[<with|mode|<quote|text>|best>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>