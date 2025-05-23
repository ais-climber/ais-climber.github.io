<TeXmacs|2.1.4>

<style|<tuple|generic|fontawesome|my-macros>>

<\body>
  <doc-data|<doc-title|Dissertation Expressivity Chapter Backup>>

  <\chapter>
    Expressivity: The Power and Limitations of Neural Network Representations
  </chapter>

  <section|Introduction>

  <todo|TODO: rewrite to emphasize these main things: (1) what can neural
  networks represent? what can they not represent? (Basically, my neural
  networks are more powerful models than <math|<value|Plaus>> and less
  powerful than <math|<value|Nbhd>> (i.e. neural nets as hypergraphs)) (2)
  what can the language <math|<value|langBest>> express? (My results here
  are: <math|<value|langBest>> can express Smoothness (cool), inference in
  neural networks (given input <math|\<varphi\>>, what is the output
  <math|\<psi\>>), certain properties of neural networks that correspond to
  the <math|<value|bestop>> axioms, and also!! neural network updates such as
  <math|<value|Hebbstar>>. Yet I prove that the axioms that separate
  <math|<value|Plaus>> from <math|<value|Nbhd>> are not expressible in
  <math|<value|langBest>>.)>

  <section|A Potpourri of Model Classes>

  <\itemize>
    <item>In this section, I will introduce a number of models in the
    literature that I will compare neural networks against.

    <item>To make the comparison fair, I need to generalize the language
    here. All semantics will be over the multi-modal language. You can think
    of the <math|\<box\><rsub|i>>'s as different modalities for different
    accessibility relations / transition functions (e.g. knowledge vs belief,
    also done in FOL), or alternately as different per agent in a multi-agent
    setting.

    <item>Give this language. As an example, mention that our language above
    of <math|<value|box>>,<math|<value|boxback>> and <math|<value|bestop>> is
    an instance of this language, where the operators
    <math|<value|box>>,<math|<value|boxback>> and <math|<value|bestop>> have
    additional interaction axioms.

    <item><math|<value|indices>> is some fixed set of indices.
  </itemize>

  <subsection|Relational Models>

  A relational model is <math|<Model>=<around|\<langle\>|W,<around*|{|R|}><rsub|i\<in\><value|indices>>,V|\<rangle\>>>,
  where

  <\itemize>
    <item><math|W> is some finite set of worlds (or states)

    <item>Each <math|R<rsub|i>\<subseteq\>W\<times\>W> (the accessibility
    relations)

    <item><math|V:<math-up|Proposition>\<to\>\<cal-P\><around|(|W|)>> (the
    valuation function)
  </itemize>

  Define <math|<Rel>> to be the class of all such models, and define
  <math|<Relrefl>> to be the class of all such models where <math|R> is
  additionally reflexive and transitive. The semantics for both classes is
  given by: <todo|Todo, extend to the full language of
  <math|<value|langBest>>!>

  <\equation*>
    <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|3|3|cell-rborder|0ln>|<table|<row|<cell|<Model>,w\<Vdash\>p>|<cell|<text|iff
    >>|<cell|w\<in\>V<around|(|p|)>>>|<row|<cell|<Model>,w\<Vdash\>\<neg\>\<varphi\>>|<cell|<text|iff
    >>|<cell|<Model>,w<neg|\<Vdash\>>\<varphi\>>>|<row|<cell|<Model>,w\<Vdash\>\<varphi\>\<wedge\>\<psi\>>|<cell|<text|iff
    >>|<cell|<Model>,w\<Vdash\>\<varphi\><text| and
    ><Model>,w\<Vdash\>\<psi\>>>|<row|<cell|<Model>,w\<Vdash\>\<Box\><rsub|i>\<varphi\>>|<cell|<text|iff
    >>|<cell|<text|for all >u*<text|with >w<op|<op|R<rsub|i>>>u,<Model>,u\<Vdash\>\<varphi\>>>>>>
  </equation*>

  <todo|Mention axioms, soundness, completeness (refer to the appendix!)>

  <subsection|Plausibility Models>

  A plausibility model, first introduced in <cite|kraus1990nonmonotonic>, is
  <math|<Model>=<around|\<langle\>|W,<around*|{|R|}><rsub|i\<in\><text|<with|font-series|bold|I>>>,V|\<rangle\>>>,
  i.e. the models themselves are just relational models. As before, I assume
  that <math|W> is finite, and as with <math|<Relrefl>>, each
  <math|R<rsub|i>> is reflexive and transitive. The key difference is that we
  interpret <math|\<Box\><rsub|i>\<varphi\>> to hold in the best (or most
  plausible) states satisfying <math|\<varphi\>>. Formally, let
  <math|<best><rsub|R<rsub|i>><around|(|S|)>=<around*|{|w\<in\>S<value|st><text|for
  all >u\<in\>S,\<neg\>u<op|R<rsub|i>>w|}>> (the <math|R<rsub|i>>-minimal
  states over <math|S>). We additionally impose the following \Psmoothness
  condition\Q <cite|kraus1990nonmonotonic> on <math|<best><rsub|R<rsub|i>>>:\ 

  <\postulate>
    For all models <math|<Model>>, <math|i\<in\><value|indices>>, sets
    <math|S>, and all <math|w\<in\>W>, if <math|w\<in\>S> then either
    <math|w\<in\><best><rsub|R<rsub|i>><around|(|S|)>>, or there is some
    <math|v<op|R<rsub|i>>w> better than <math|w> that <em|is> the best, i.e.
    <math|v\<in\><best><rsub|R<rsub|i>><around|(|S|)>>.
  </postulate>

  The new semantics for <math|\<Box\><rsub|i>> is

  <\equation*>
    <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|3|3|cell-rborder|0ln>|<table|<row|<cell|<Model>,w\<Vdash\>\<Box\><rsub|i>*\<varphi\>>|<cell|<text|iff
    >>|<cell|w\<in\><best><rsub|R<rsub|i>><around|(|<semantics|\<varphi\>>|)>>>>>>
  </equation*>

  where <math|<semantics|\<varphi\>>=<around*|{|u<value|st><value|Model>,u\<Vdash\>\<varphi\>|}>>.
  In practice, plausibility semantics coexist alongside relational semantics,
  so I allow some <math|\<Box\><rsub|i>\<varphi\>> to be given relational
  semantics instead. Let <math|<Plaus>> be the class of all such models.
  Since we include relational operators, note that
  <math|<Relrefl>\<subseteq\><Plaus>>.

  Any plausibility operator <math|\<Box\><rsub|i>> picks out a corresponding
  conditional: <math|\<Box\><rsub|i>\<varphi\>\<to\>\<psi\>> reads \Pthe best
  <math|\<varphi\>> are <math|\<psi\>>,\Q which in the KLM tradition is the
  semantics for the conditional <math|\<varphi\>\<Rightarrow\>\<psi\>>.

  <todo|Mention axioms, soundness, completeness (refer to the appendix!)>

  <subsection|Social Network Models>

  <\itemize>
    <item>Introduce social network models, an example with a <todo|DIAGRAM>
    would be nice!

    <item>In these social network logics <cite|Christoff:2015aa|baltag2019socialnetworks|baccini2024dynamic>,
    nodes in the graph represent individual agents, and each formula is
    mapped to the set of agents that adopt a certain social attitude. Agents
    influence each other, and the spread of their attitudes is modeled much
    in the same way as forward propagation of a signal in a neural network.

    <item>Give a concrete social network logic: Social majority. Make sure to
    emphasize that social majority is one of many (!) choices, and is a
    relatively simple choice to model.

    <item>Both kinds of models use fundamentally the same approach (\PThis
    work shares essentially the same premise and techniques as neural network
    semantics\Q): distributed information over several connected nodes, modal
    operator interpreted as the fixed-point of some diffusion

    <item>But the two approaches still differ in interesting ways. First, in
    some sense the two semantics are operating on different \Plevels\Q:
    social networks model interactions between multiple agents, whereas
    neural networks model interactions between components of the same
    (single) agent. Second, the two differ in subject matter. Social network
    semantics focuses on different social links between agents, and how these
    links change <cite|baccini2024dynamic>. Neural network semantics, my own
    work included, instead focuses on inferences and updates inspired by
    artificial and natural neural networks.
  </itemize>

  <subsection|Neighborhood Models>

  A neighborhood model is <math|<Model>=<around|\<langle\>|W,<around*|{|N|}><rsub|i\<in\><text|<with|font-series|bold|I>>>,V|\<rangle\>>>,
  where <math|W> and <math|V> are as before and each
  <math|N<rsub|i>:W\<to\>\<cal-P\><around|(|\<cal-P\><around|(|W|)>|)>> is an
  accessibility <em|function>. The intuition is that <math|N<rsub|i>> maps
  each state <math|w> to the \Pformulas\Q (sets of states) that hold at
  <math|w>. Define <math|<Nbhd>> to be the class of all neighborhood models.

  Moreover, the <em|core> of <math|N> is <math|\<cap\>N<around|(|x|)>=<big|cap><rsub|X\<in\>N<around|(|w|)>>X>.
  As with <math|<Rel>>, let <math|<Nbhdrefl>> be the class of all
  neighborhood models that are additionally reflexive
  (<math|\<forall\>w,w\<in\>\<cap\>N<around|(|w|)>>) and transitive
  (<math|\<forall\>w>, if <math|X\<in\>N<around|(|w|)>> then
  <math|<around*|{|v<value|st>X\<in\>N<around*|(|v|)>|}>\<in\>N<around|(|w|)>>).

  The semantics for both classes is the same as the previous classes, except
  the <math|\<Box\><rsub|i>> case is now:

  <\equation*>
    <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|3|3|cell-rborder|0ln>|<table|<row|<cell|<Model>,w\<Vdash\>\<Box\><rsub|i>\<varphi\>>|<cell|<text|iff
    >>|<cell|<semantics|\<varphi\>>\<in\>N<rsub|i><around|(|w|)>>>>>>
  </equation*>

  where again <math|<semantics|\<varphi\>>=<around*|{|u<value|st><value|Model>,u\<Vdash\>\<varphi\>|}>>.

  <section|Measuring Expressive Power through Translation>

  <\itemize>
    <item>To compare the modeling power of neural networks with other logic
    models, I need to pick a measure of expressivity.

    <item>I will consider logics as languages paired with a class of models
    <math|<around*|(|<value|lang>,<value|Class>|)>> (also known as
    <with|font-shape|italic|institutions> in Institution Theory <todo|Cite
    Institution theory, elaborate a bit more!>). I'll use this to compare the
    expressive power of neural networks (using both Modal and Conditional
    logics) against other models over those languages

    <item>I will measure expressivity through
    <with|font-shape|italic|translations> between two logics. Definition:
    There is a translation (aka <with|font-shape|italic|infomorphism>) from
    <math|<around*|(|<value|lang><rsub|1>,<value|Class><rsub|1>|)>> into
    <math|<around*|(|<value|lang><rsub|2>,<value|Class><rsub|2>|)>> if there
    exist <math|f:<value|Class><rsub|2>\<rightarrow\><value|Class><rsub|1>>,
    <math|<value|transl>:<value|lang><rsub|1>\<rightarrow\><value|lang><rsub|2>>
    such that for all <math|\<varphi\>\<in\><value|lang><rsub|1>,<value|Model>\<in\><value|Class><rsub|2>>

    <\equation*>
      f<around*|(|<value|Model>|)>\<models\>\<varphi\><infix-iff><value|Model>\<models\><value|transl><around*|(|\<varphi\>|)>
    </equation*>

    <item>I need translations to also fix the valuation <math|V>! (Only
    translate the <with|font-shape|italic|frames>)

    <item>Call the translation <with|font-shape|italic|strict> if there is
    not a translation in the converse direction.

    <item><todo|Cite infomorphism, either from the book \PInformation Flow:
    The Logic of Distributed Systems\Q or alternatively the book
    \PCategories, Allegories\Q>

    <item><todo|DIAGRAM>

    <item>\Pflipped/contravariant\Q, notice that we construct the model
    backwards from <math|<value|Class><rsub|2>> to
    <math|<value|Class><rsub|1>>.

    <item>Proposition: If there is a translation from
    <math|<around*|(|<value|lang><rsub|1>,<value|Class><rsub|1>|)>> to
    <math|<around*|(|<value|lang><rsub|2>,<value|Class><rsub|2>|)>>, this
    means that <math|<around*|(|<value|lang><rsub|1>,<value|Class><rsub|1>|)>>
    is at least as <with|font-shape|italic|general> (i.e. requires fewer
    axioms, i.e. <math|<value|Theory><around*|(|<value|lang><rsub|1>,<value|Class><rsub|1>|)>\<subseteq\><value|Theory><around*|(|<value|lang><rsub|2>,<value|Class><rsub|2>|)>>)

    <item>This also means, in order to show that there is
    <with|font-shape|italic|no> translation, all we need to do is show
    <math|<value|Theory><around*|(|<value|lang><rsub|1>,<value|Class><rsub|1>|)><neg|\<subseteq\>><value|Theory><around*|(|<value|lang><rsub|2>,<value|Class><rsub|2>|)>>,
    i.e. find an axiom <math|\<varphi\>\<in\><value|Theory><around*|(|<value|lang><rsub|1>,<value|Class><rsub|1>|)>>
    such that <math|\<varphi\><neg|\<in\>><value|Theory><around*|(|<value|lang><rsub|2>,<value|Class><rsub|2>|)>>.

    <item>Give an example that's a sort of tutorial for comparing the
    modeling power of classes of modal logic: <math|<value|Relrefl>> and
    <math|<value|Nbhdrefl>>. Show that there is a translation from
    <math|<around*|(|<value|Modal>,<value|Relrefl>|)>> into
    <math|<around*|(|<value|Modal>,<value|Nbhdrefl>|)>>, but also show that
    there is <with|font-shape|italic|not> one the other way around. (This
    example teaches us how to give a translation, but also how to show one
    doesn't exist!)
  </itemize>

  <section|Expressive Power of the Base Neural Network Semantics>

  <\itemize>
    <item>Let's now do model translations to get at the expressivity of
    neural networks (over Modal and Conditional logic). Here's a hierarchy of
    the models above, to start:

    <item>To make the comparison with neural networks fair, I will only
    consider the reflexive and transitive variants <math|<value|Relrefl>>,
    <math|<value|Nbhdrefl>> of relational and neighborhood models.

    <item><todo|DIAGRAM>

    <item>The translations from <value|Nbhdrefl> to <math|<value|Plaus>> and
    from <math|<value|Plaus>> to <math|<value|Relrefl>> are folklore. Instead
    of giving these translations, I will instead translate from
    <math|<value|NetModel>> to <math|<value|Relrefl>> and from
    <math|<value|Nbhdrefl>> to <math|<value|NetModel>> in order to explicilty
    show how to translations involving neural networks (neural network model
    constructions). The equivalence between <math|<value|Plaus>> and
    <math|<value|NetModel>> is already known, but the backwards direction has
    never been proven with an explicit model construction. So although the
    results in this section are already known, the proofs I give here are
    totally new.

    <item>First, show translation from <math|<value|NetModel>> to
    <math|<value|Relrefl>>, and show there is no translation the other way
    around (axiom in <math|<value|Relrefl>> that is not an axiom in
    <math|<value|NetModel>>)

    <item>Next, show translation from <math|<value|Nbhdrefl>> to
    <math|<value|NetModel>>, and show there is no translation the other way
    around (axiom in <math|<value|NetModel>> that is not an axiom in
    <math|<value|Nbhdrefl>>)

    <item>Next, from the model-building construction in the completeness
    chapter, we have a translation from <math|<value|NetModel>> to
    <math|<value|Plaus>>.

    <item>Explain that completeness implies that <with|font-shape|italic|in
    principle> we have a translation the other way (<math|<value|Plaus>> to
    <math|<value|NetModel>>), but it doesn't actually give the explicit model
    building procedure! Here is where I will give my own.

    <item>Make a note here about the social majority logic above: There is a
    strict translation from <math|<value|NetModel>> to the social majority
    logic (<math|<value|NetModel>> is more general, in the sense that it
    requires fewer axioms).

    <item>Give a brief note here on the expressive power of the conditional
    logic <math|<value|NetModel>> vs the modal logic <math|<value|NetModel>>.
  </itemize>

  <\proposition>
    <dueto|<aw|hand-point-right|1fn>>There is a strict translation from
    <math|<around*|(|<value|Modal>,<value|NetModel>|)>> to
    <math|<around*|(|<value|Modal>,<value|Relrefl>|)>>.
  </proposition>

  <\proof>
    <todo|>
  </proof>

  <\proposition>
    <dueto|<aw|hand-point-right|1fn>>There is a strict translation from
    <math|<around*|(|<value|Modal>,<value|Nbhdrefl>|)>> to
    <math|<around*|(|<value|Modal>,<value|NetModel>|)>>.
  </proposition>

  <\proof>
    <todo|>
  </proof>

  <\proposition>
    There is a translation from <math|<around*|(|<value|langBest>,<value|NetModel>|)>>
    to <math|<around*|(|<value|langBest>,<value|Plaus>|)>>.
  </proposition>

  <\proof>
    <todo|This is just a corollary of completeness: Mention that we just use
    the NAND construction from the Completeness proof.>
  </proof>

  An easy corollary of completeness is that exactly the same axioms hold over
  <math|<value|Plaus>> and <math|<value|NetModel>>, i.e.

  <\corollary>
    <label|corollary-theory-plaus-net><math|<value|Theory><around*|(|<value|Plaus>|)>=<value|Theory><around*|(|<value|NetModel>|)>>.
  </corollary>

  <\proof>
    We have:

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|\<varphi\>\<in\><value|Theory><around*|(|<value|Plaus>|)>>|<cell|<infix-iff>>|<cell|<value|modelsPlaus>\<varphi\>>|<cell|<text|(By
      definition)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|<value|provesBest>\<varphi\>>|<cell|<text|(By
      weak completeness for <value|Plaus>)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|<value|modelsNet>\<varphi\>>|<cell|<text|(By
      weak completeness for <math|<value|NetModel>>)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<varphi\>\<in\><value|Theory><around*|(|<value|Plaus>|)>>|<cell|<text|(By
      definition)>>>>>>
    </equation*>

    \;
  </proof>

  Based on this, and the completeness result, we might naturally expect that
  there is a translation from <math|<around*|(|<value|langBest>,<value|Plaus>|)>>
  to <math|<around*|(|<value|langBest>,<value|NetModel>|)>>. But
  surprisingly, there is <with|font-shape|italic|no> such translation!

  <\theorem>
    <dueto|<aw|hand-point-right|1fn>>There is no translation from
    <math|<around*|(|<value|langBest>,<value|Plaus>|)>> to
    <math|<around*|(|<value|langBest>,<value|NetModel>|)>>.
  </theorem>

  <\proof>
    <todo|First, I can prove it if <math|<value|transl><around*|(|\<varphi\>|)>=\<varphi\>>!
    I should try to generalize this for any <math|<value|transl>>!> For
    <math|<value|transl><around*|(|\<varphi\>|)>=\<varphi\>>, let
    <math|f:<value|NetModel>\<rightarrow\><value|Plaus>> be any arbitrary way
    to transform a neural net into a plausibility model. I need to show that
    there is some net <math|<value|Net>\<in\><value|NetModel>> and some
    formula <math|\<varphi\>\<in\><value|langBest>> such that one of
    <math|f<around*|(|<value|Net>|)>\<models\>\<varphi\>> or
    <math|<value|Net>\<models\>\<varphi\>> holds and the other does not. Let
    <math|\<varphi\>=<value|bestop>p> for some proposition <math|p>, and let
    <math|<value|Net>> be the net in Figure <todo|DIAGRAM> (a). Since
    <math|<semantics|<value|bestop>p><rsub|<value|Model>>=<value|best><rsub|\<prec\><rsub|f<around*|(|<value|Net>|)>>><around*|(|<semantics|p>|)>>
    and <math|<semantics|<value|bestop>p><rsub|<value|Net>>=<around*|(|<value|Closure><rsub|<value|Net>><around*|(|<semantics|p><rsup|\<complement\>>|)>|)><rsup|\<complement\>>>,
    it's enough to show that

    <\equation*>
      <text|There is some ><semantics|p>\<in\><value|State><rsub|<value|Net>><text|
      such that ><value|best><rsub|\<prec\><rsub|f<around*|(|<value|Net>|)>>><around*|(|<semantics|p>|)>\<neq\><around*|(|<value|Closure><rsub|<value|Net>><around*|(|<semantics|p><rsup|\<complement\>>|)>|)><rsup|\<complement\>>
    </equation*>

    Well, for this particular net we have
    <math|<value|State><rsub|<value|Net>>=<around*|{|<around*|{|<value|bias>|}>,<around*|{|<value|bias>,a|}>,<around*|{|<value|bias>,b|}>,<around*|{|<value|bias>,a,b|}>|}>>
    (all subsets of the nodes that contain the <math|<value|bias>> node). Any
    <math|<semantics|p>\<in\><value|State><rsub|<value|Net>>> must be one of
    these four sets.

    Suppose for contradiction that for all such <math|<semantics|p>>,
    <math|<value|best><rsub|\<prec\><rsub|f<around*|(|<value|Net>|)>>><around*|(|<semantics|p>|)>=<around*|(|<value|Closure><rsub|<value|Net>><around*|(|<semantics|p><rsup|\<complement\>>|)>|)><rsup|\<complement\>>>.
    In particular, <math|<value|best><rsub|\<prec\><rsub|f<around*|(|<value|Net>|)>>><around*|(|<around*|{|<value|bias>,a,b|}>|)>=<around*|(|<value|Closure><rsub|<value|Net>><around*|(|<around*|{|<value|bias>,a,b|}><rsup|\<complement\>>|)>|)><rsup|\<complement\>>=<around*|{|<value|bias>,a,b|}>>.
    (See the calculation in Figure <todo|DIAGRAM> (b).) But this implies that
    <math|<value|bias>>, <math|a>, and <math|b> must all be mutually
    incomparable via <math|\<prec\><rsub|f<around*|(|<value|Net>|)>>>. But
    then

    <\equation*>
      <value|best><rsub|\<prec\><rsub|f<around*|(|<value|Net>|)>>><around*|(|<around*|{|<value|bias>,b|}>|)>=<around*|{|<value|bias>,b|}>\<neq\><around*|{|<value|bias>|}>=<around*|(|<value|Closure><rsub|<value|Net>><around*|(|<around*|{|<value|bias>,b|}><rsup|\<complement\>>|)>|)><rsup|\<complement\>>
    </equation*>

    (The first equality comes from <math|<value|bias>,a,b> incomparable; the
    second follows from the calculation in Figure <todo|DIAGRAM> (b).)
  </proof>

  In particular, the neural network used in the proof <todo|refer to it>
  cannot be transformed into an equivalent plausibility model. Moreover, this
  net isn't a particularly strange one\Vit's just an ordinary feed-forward
  weighted net! So we have an intuition that neural networks are more general
  in some sense. But Corollary <reference|corollary-theory-plaus-net> says
  that no axiom <math|\<varphi\>\<in\><value|langBest>> witnesses this
  difference. This means that there <with|font-shape|italic|is> some
  difference between them, but <math|<value|langBest>> is not expressive
  enough to point to it. <todo|the interesting conclusion of this
  reasoning\Vwhat axiom can give us the difference??>

  <\theorem>
    <dueto|<aw|hand-point-right|1fn>>There is a strict translation from
    <math|<around*|(|<value|Modal>,<value|NetModel>|)>> to the social
    majority logic <todo|give it a name>
  </theorem>

  <\proof>
    <todo|>
  </proof>

  <\theorem>
    <dueto|<aw|hand-point-right|1fn>>There is a strict translation from
    <math|<around*|(|<value|Modal>,<value|NetModel>|)>> to
    <math|<around*|(|<value|Conditional>,<value|NetModel>|)>>. <todo|does it
    go this way, or the other way??>
  </theorem>

  <\proof>
    <todo|>
  </proof>

  <section|Expressive Power of Neural Network Update>

  <\itemize>
    <item>Reference all work in dynamic logic where some operator is shown to
    be not translatable into another! (Read these, they may help with the
    proof.) List so far: <cite|baccini2024dynamic>

    <item><todo|My thinking here is a mess. I need to sort out exactly what
    questions about update I would like to answer (very general? very
    specific? what do translations even look like in this context? what's
    helpful to ask? what's even answerable?)>
  </itemize>

  <\definition>
    Let <math|<value|lang><rsub|1>,<value|lang><rsub|2>> be languages with a
    single dynamic operator and <math|<value|Class><rsub|1>,<value|Class><rsub|2>>
    be model classes. There is a <with|font-shape|italic|dynamic translation>
    from <math|<around*|(|<value|lang><rsub|1>,<value|Class><rsub|1>|)>> into
    <math|<around*|(|<value|lang><rsub|2>,<value|Class><rsub|2>|)>> if there
    exist <math|f:<value|Class><rsub|2>\<rightarrow\><value|Class><rsub|1>>,
    <math|<value|transl>:<value|lang><rsub|1>\<rightarrow\><value|lang><rsub|2>>,
    and

    <\equation*>
      F:<around*|(|<value|Class><rsub|2>\<rightarrow\><value|lang><rsub|2>\<rightarrow\><value|Class><rsub|2>|)>\<rightarrow\><around*|(|<value|Class><rsub|1>\<rightarrow\><value|lang><rsub|1>\<rightarrow\><value|Class><rsub|1>|)>
    </equation*>

    i.e. \Pupdate to update\Q, such that for all
    <math|\<varphi\>\<in\><value|lang><rsub|1>,<value|Model>\<in\><value|Class><rsub|2>>,
    and <math|\<heartsuit\>:<value|Class><rsub|2>\<rightarrow\><value|lang><rsub|2>\<rightarrow\><value|Class><rsub|2>>,

    <\equation*>
      f<around*|(|<value|Model>|)>,F<around*|(|\<heartsuit\>|)>\<models\>\<varphi\><infix-iff><value|Model>,\<heartsuit\>\<models\><value|transl><around*|(|\<varphi\>|)>
    </equation*>

    As before, we call the translation <with|font-shape|italic|strict> if
    there is not a translation in the converse direction.
  </definition>

  The following theorem says that any update over neural networks corresponds
  to an update over plausibility models (and conversely). Actually, this is
  just a straightforward consequence of the translations between
  <math|<around*|(|<value|langClosure>,<value|Plaus>|)>> and
  <math|<around*|(|<value|langClosure>,<value|NetModel>|)>>.

  <\theorem>
    There is a dynamic translation from <math|<around*|(|<value|langUpdate>,<value|Plaus>|)>>
    into <math|<around*|(|<value|langUpdate>,<value|NetModel>|)>>, and
    conversely.
  </theorem>

  <\proof>
    I will show the <math|<around*|(|\<rightarrow\>|)>> direction, since the
    converse is similar. Let <math|<value|transl>:<value|langUpdate>\<rightarrow\><value|langUpdate>>
    just be the identity <math|<value|transl><around*|(|\<varphi\>|)>=\<varphi\>>.
    Since we have a translation from <math|<around*|(|<value|langClosure>,<value|Plaus>|)>>
    into <math|<around*|(|<value|langClosure>,<value|NetModel>|)>> and
    conversely, by <todo|CBS\Vtodo, I need to prove this> this gives us a
    <math|<value|langClosure>>-truth-preserving bijection
    <math|f:<value|NetModel>\<rightarrow\><value|Plaus>>. Since <math|f> is
    bijective, it has an inverse <math|f<rsup|-1>:<value|Plaus>\<rightarrow\><value|NetModel>>.
    We now need a function

    <\equation*>
      F:<around*|(|<value|NetModel>\<rightarrow\><value|langUpdate>\<rightarrow\><value|NetModel>|)>\<rightarrow\><around*|(|<value|Plaus>\<rightarrow\><value|langUpdate>\<rightarrow\><value|Plaus>|)>
    </equation*>

    In other words, <math|F> takes as input an arbitrary neural network
    update <math|\<heartsuit\>:<value|NetModel>\<rightarrow\><value|langUpdate>\<rightarrow\><value|NetModel>>
    and simulates it as an update over plausibility models. We define
    <math|F> as follows: <math|F<around*|(|\<heartsuit\>,<value|Model>,\<varphi\>|)>=\<clubsuit\>>,
    where <math|\<clubsuit\>:<value|Plaus>\<rightarrow\><value|langUpdate>\<rightarrow\><value|Plaus>>
    is given by

    <\equation*>
      \<clubsuit\><around*|(|<value|Model>,\<varphi\>|)>=f<around*|(|\<heartsuit\><around*|(|f<rsup|-1><around*|(|<value|Model>|)>,\<varphi\>|)>|)>
    </equation*>

    <math|\<clubsuit\>> simulates <math|\<heartsuit\>> by first converting
    <math|<value|Model>> to a neural network, then it applies the update
    <math|\<heartsuit\>> with <math|\<varphi\>>, and then converts the result
    back into an equivalent plausibility model. Visually:

    <center|<todo|Draw diagram!!!>>

    Now we just need to check that this is a dynamic translation, i.e.

    <\equation*>
      f<around*|(|<value|Model>|)>,\<clubsuit\>\<models\>\<varphi\><infix-iff><value|Model>,\<heartsuit\>\<models\>\<varphi\>
    </equation*>

    Let's proceed by induction on <math|\<varphi\>\<in\><value|langUpdate>>.
    The propositional and boolean cases are easy. The
    <math|<value|All>,<value|box>,<value|boxback>>, and <math|<value|bestop>>
    cases are all similar: None of these cases depend on the choice of
    update, so we just apply our inductive hypothesis along with the fact
    that <math|<around*|(|<value|transl>,f|)>> is a translation from
    <math|<around*|(|<value|langClosure>,<value|Plaus>|)>> into
    <math|<around*|(|<value|langClosure>,<value|NetModel>|)>>. Finally,
    consider the update case:

    <\description>
      <item*|<math|<around*|[|P|]>> Case>We have

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|f<around*|(|<value|Model>|)>,\<clubsuit\>\<models\><around*|[|P|]>\<varphi\>>|<cell|<infix-iff>>|<cell|\<clubsuit\><around*|(|f<around*|(|<value|Model>|)>,P|)>,\<clubsuit\>\<models\>\<varphi\>>|<cell|<text|(by
        the semantics for <math|<around*|[|P|]>>)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|f<around*|(|\<heartsuit\><around*|(|f<rsup|-1><around*|(|f<around*|(|<value|Model>|)>|)>,\<varphi\>|)>|)>,\<clubsuit\>\<models\>\<varphi\>>|<cell|<text|(by
        definition of \<clubsuit\>)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|f<around*|(|\<heartsuit\><around*|(|<value|Model>,\<varphi\>|)>|)>,\<clubsuit\>\<models\>\<varphi\>>|<cell|<text|(since
        <math|f<rsup|-1>> is the inverse of
        <math|f>)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<heartsuit\><around*|(|<value|Model>,\<varphi\>|)>,\<heartsuit\>\<models\>\<varphi\>>|<cell|<text|(by
        inductive hypothesis)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|<value|Model>,\<heartsuit\>\<models\><around*|[|P|]>\<varphi\>>|<cell|<text|(by
        the semantics for <math|<around*|[|P|]>>)>>>>>>
      </equation*>
    </description>

    This concludes the proof.
  </proof>

  My original goal was to explore what \Pclassical\Q updates correspond to
  neural network updates such as <math|<value|Hebbstar>>, and conversely what
  neural updates correspond to plausibility updates such as
  <math|<value|Cond>>, <math|<value|Lex>>, and <math|<value|Consr>>. This
  theorem doesn't seem to clarify that; it's constructive (we
  <with|font-shape|italic|do> in fact build the corresponding updates), but
  by translating back and forth at the static level we don't define the
  update in the original updates \Pnative environment.\Q
  <todo|Elaborate/clarify this point>. For the remainder of this section, I
  will put in the extra work to see what <math|<value|Hebbstar>>,
  <math|<value|Cond>>, <math|<value|Lex>>, and <math|<value|Consr>> \Plook
  like\Q on the other side.

  <\definition>
    <todo|Define the plausibility update that simulates
    <math|<value|Hebbstar>>>
  </definition>

  <\definition>
    <todo|Define the neural update that simulates <math|<value|Cond>>>
  </definition>

  <\definition>
    <todo|Define the plausibility update that simulates <math|<value|Lex>>>
  </definition>

  <\definition>
    <todo|Define the plausibility update that simulates <math|<value|Consr>>>
  </definition>

  <section|Neural Networks and Descriptive Complexity>

  <\itemize>
    <item>References: <cite|immerman1998descriptive>,
    <cite|libkin2004elements>, <cite|sep-computational-complexity>,
    <text-dots> (find more, including other Finite Model Theory books,
    Fagin's original result, and more recent results that may be relevant in
    descriptive complexity theory)

    <item>Introduction to descriptive complexity, Fagin/Immerman style (base
    it on the book Elements of Finite Model Theory by Libkin, since I
    personally find this the easiest to follow.)

    <item>Descriptive complexity largely takes the shared class of models for
    granted, translations are largely syntactic (translations from one
    language to another)

    <item>The way to measuring expressive power is through definability.
    Define problems (boolean queries where inputs are models over a certain
    class. Then give definition of definability in this setting (we have no
    free variables, so we don't have to worry about tuples of satisfying
    elements, etc.):

    <\equation*>
      <value|Definable><around*|(|<value|lang>,<Class>|)>=<around*|{|P\<subseteq\><value|Class><value|st><text|There
      is some> \<varphi\>\<in\><value|lang><text| such that
      ><value|Model>\<in\><value|Class>,<value|Model>\<in\>P<infix-iff><value|Model>\<models\>\<varphi\>|}>
    </equation*>

    <item>Give a standard example: First-order logic can define strictly more
    than Modal logic.

    <item>Note that problems <math|P> are defined over a
    <with|font-shape|italic|specific> class of models! If we want to compare
    different model classes, we need a notion of
    <with|font-shape|italic|translating> <math|P> to the other class. If
    <math|P\<in\><value|Class><rsub|1>> and we want to translate it to
    <math|<value|Class><rsub|2>>:

    <\equation*>
      f<rsup|-1><around*|(|P|)>=<around*|{|<value|Model>\<in\><value|Class><rsub|2><value|st>f<around*|(|<value|Model>|)>\<in\>P|}>
    </equation*>

    <item><todo|DIAGRAM> A picture showing how <math|f<rsup|-1>> maps back to
    <math|<value|Class><rsub|2>> would be nice here!

    <item>How do we connect the ideas of translation-expressivity and
    definability-expressivity? The key result is this:

    <\theorem>
      Suppose there is a translation <math|f,<value|transl>> from
      <math|<around*|(|<value|lang><rsub|1>,<value|Class><rsub|1>|)>> to
      <math|<around*|(|<value|lang><rsub|2>,<value|Class><rsub|2>|)>>. For
      all problems <math|P\<subseteq\><value|Class><rsub|1>>, if
      <math|P\<in\><value|Definable><around*|(|<value|lang><rsub|1>,<value|Class><rsub|1>|)>>
      then <math|f<rsup|-1><around*|(|P|)>\<in\><value|Definable><around*|(|<value|lang><rsub|2>,<value|Class><rsub|2>|)>>.
    </theorem>

    <\proof>
      Suppose <math|P> is defined by <math|\<varphi\>\<in\><value|lang><rsub|1>>.
      I will show that <math|f<rsup|-1><around*|(|P|)>> (that is, <math|P>
      translated over to <math|<value|Class><rsub|2>>) is defined by
      <math|<value|transl><around*|(|\<varphi\>|)>> (that is,
      <math|\<varphi\>> translated over to <math|<value|lang><rsub|2>>).

      Let <math|<value|Model>\<in\><value|Class><rsub|2>> be any model. Our
      goal is to show that <math|<value|Model>\<in\>f<rsup|-1><around*|(|P|)>>
      iff <math|<value|Model>\<models\><value|transl><around*|(|\<varphi\>|)>>.
      Well,

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|<value|Model>\<in\>f<rsup|-1><around*|(|P|)>>|<cell|<infix-iff>>|<cell|f<around*|(|<value|Model>|)>\<in\>P>|<cell|<around*|(|<text|by
        definition of >f<rsup|-1>|)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|f<around*|(|<value|Model>|)>\<models\>\<varphi\>>|<cell|<around*|(|<text|since
        >\<varphi\><text| defines >P<text|, and
        >f<around*|(|<value|Model>|)>\<in\><value|Class><rsub|1>|)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|<value|Model>\<models\><value|transl><around*|(|\<varphi\>|)>>|<cell|<around*|(|<text|by
        translation >f,<value|transl>|)>>>>>>
      </equation*>

      \;
    </proof>

    <item>I may also need the converse fact, which says that if there is
    <with|font-shape|italic|not> a translation, the definability sets cannot
    be equal.

    <item>Revisit our example from before: Show that
    <math|<value|Definable><around*|(|<value|Modal>,<value|Nbhd>|)>\<subset\><value|Definable><around*|(|<value|Modal>,<value|Rel>|)>>.
    But also walk through what this means: What property is definable in
    <math|<around*|(|<value|Modal>,<value|Rel>|)>> but not
    <math|<around*|(|<value|Modal>,<value|Nbhd>|)>>?? (This has me a bit
    stumped and confused<text-dots>)

    <item>As a consequence of this connection, we can embed the neural
    network translations above into the descriptive complexity hierarchy

    <item>Corollaries for each of the inclusions, this time stated for
    <math|<value|Definable><around*|(|<value|Modal>,<value|NetModel>|)>>
    (using strict subset).

    <item><todo|BIG DIAGRAM>, situating the results above into the
    descriptive complexity hierarchy (these are all Modal or Conditional,
    sub-FOL. It is currently an open problem to find sound and complete
    neural network semantics for FOL, but once we have this it is possible to
    do this for the classes above Modal.)
  </itemize>

  <section|Reflections on the Complexity Hierarchy>

  [This is where I give \Pthe chart\Q, and make higher-level connections to
  descriptive complexity of neural networks, neural nets as automata, FLaNN
  work, and give my own personal long-term vision for complexity theory. (I
  can also discuss <with|font-shape|italic|dynamic> complexity here, which is
  imo underrated in complexity work)]

  \;

  \;

  \;

  \;

  <hrule>

  <todo|Integrate the following into this chapter!>

  <paragraph|The Graph-Reachability Construction.>I will show here how the
  more general <math|<value|Closure>> operator can be used to simulate
  <math|<value|Reach>> and <math|<value|Reaches>>. Suppose we are given a
  graph <math|<around|\<langle\>|N,E|\<rangle\>>> and a valuation function
  <math|V>. How can we build a neural network whose closure
  <math|<value|Closure>> is graph-reachability <math|<value|Reach>>? We want
  to build a net:

  <\equation*>
    <Net>=\<langle\>N,<value|bias>,E,W,A,\<eta\>,V\<rangle\>
  </equation*>

  <todo|what to do about <math|<value|bias>> and <math|\<eta\>>?> For the
  weights, pick

  <\equation*>
    W<around|(|m,n|)>=<choice|<tformat|<table|<row|<cell|1>|<cell|<text|if
    >m<op|E>n>>|<row|<cell|0>|<cell|<text|otherwise>>>>>>
  </equation*>

  Then pick the activation function <math|A<around|(|x|)>=1> iff
  <math|x\<gtr\>0>. Recall that <math|n\<in\>F<rsub|S<rsub|0>><around|(|S|)>>
  iff <math|n\<in\>S<rsub|0>> or is activated by its predecessors in
  <math|S>. In this case, <math|n\<in\>F<rsub|S<rsub|0>><around|(|S|)>>
  whenever <math|n\<in\>S<rsub|0>> or at least one <math|E>-predecessor
  <math|m> of <math|n> is in <math|S>. I call this the
  <with|font-shape|italic|graph-reachability construction> because the
  closure <math|<Closure><around|(|S|)>> produces exactly those nodes
  graph-reachable from <math|S>:

  <\proposition>
    For all states <math|S\<in\><value|State>>,
    <math|<value|Closure><around*|(|S|)>=<value|Reach><around*|(|S|)>>.
  </proposition>

  <\proof>
    First, the <math|(\<subseteq\>)> direction. Let
    <math|n\<in\><Closure><around|(|S|)>=F<rsup|k><rsub|S><around|(|S|)>> for
    some <math|k\<in\>\<bbb-N\>>. By induction on <math|k>.

    <\description>
      <item*|Base Step><math|n\<in\>F<rsup|0><rsub|S><around|(|S|)>=S>. So
      there is a trivial <math|E<rsub|i>>-path (length<math|=0>) from
      <math|n\<in\>S> to itself.

      <item*|Inductive Step>Let <math|k\<geq\>0>. We have
      <math|n\<in\>F<rsup|k><rsub|S><around|(|S|)>=F<rsub|S><around|(|F<rsup|k-1><rsub|S><around|(|S|)>|)>>.
      By construction of <math|F<rsub|S>>, we have two cases: Either
      <math|n\<in\>F<rsup|k-1><rsub|S><around|(|S|)>> or at least one
      <math|E>-predecessor <math|x> of <math|n> is in
      <math|F<rsup|k-1><rsub|S><around|(|S|)>>. In the first case, our
      inductive hypothesis gives a path from some <math|m\<in\>S> to
      <math|n>. In the second case, our inductive hypothesis gives a path
      from some <math|m\<in\>S> to <math|x>. But since <math|x<op|E> n>, we
      can extend this path to be from <math|m> to <math|n>.
    </description>

    As for the <math|(\<supseteq\>)> direction, suppose there is an
    <math|E>-path from some <math|m\<in\>S> to <math|n>. We proceed by
    induction on the length of that path.

    <\description>
      <item*|Base Step>The path is trivial, i.e. has length <math|0>. So
      <math|n\<in\>S>. But <math|S=F<rsup|0><rsub|i><around|(|S|)>\<subseteq\><Closure><rsub|i><around|(|S|)>>,
      and so <math|n\<in\><Closure><rsub|i><around|(|S|)>>.

      <item*|Inductive Step>Say the path is of length <math|l\<geq\>0>. Let
      <math|x> be some immediate <math|E<rsub|i>>-predecessor of <math|n>. By
      the inductive hypothesis, <math|x\<in\><Closure><rsub|i><around|(|S|)>>,
      and so <math|x\<in\>F<rsup|k><rsub|i><around|(|S|)>> for some natural
      <math|k>. But since <math|x> is an <math|E<rsub|i>>-predecessor of
      <math|n>, by construction of <math|F<rsub|i>>,
      <math|n\<in\>F<rsub|i><around|(|F<rsup|k><rsub|i><around|(|S|)>|)>=F<rsup|k+1><rsub|i><around|(|S|)>>.
      Since <math|<Closure><rsub|i><around|(|S|)>> is a closure, it includes
      <math|F<rsup|k+1><rsub|i><around|(|S|)>>. So
      <math|n\<in\><Closure><rsub|i><around|(|S|)>>.
    </description>
  </proof>

  As for <math|<value|Reaches>>, we first <with|font-shape|italic|reverse>
  the edges <math|E>, and then do the graph-reachability construction. In
  other words, let <math|m<op|E<rprime|'>>n> iff <math|n<op|E>m>,

  <\equation*>
    W<around|(|m,n|)>=<choice|<tformat|<table|<row|<cell|1>|<cell|<text|if
    >m<op|E<rprime|'>>n>>|<row|<cell|0>|<cell|<text|otherwise>>>>>>
  </equation*>

  and pick <math|A,\<eta\>,V> the same as above. For this construction, the
  closure <math|<value|Closure><around*|(|S|)>> produces exactly those nodes
  which reach some node in <math|S>. The proof is similar to the proof for
  <math|<value|Reach>>. <todo|Check that that's actually true!!>

  <\proposition>
    For all states <math|S\<in\><value|State>>,
    <math|<value|Closure><around*|(|S|)>=<value|Reaches><around*|(|S|)>>.
  </proposition>

  <paragraph|The Social Majority Construction.>[Introduce the idea of social
  networks here if I haven't already, and mention the \Psocial majority\Q
  propagation/diffusion (tell it slowly, like a story). I will show that our
  neural networks can simulate this simple social majority operator (make the
  social majority operator a bit more formal).]

  As before, we want to build a neural network <math|<Net>> where the graph
  <math|<around|\<langle\>|N,E<rsub|i>|\<rangle\>>>, <math|<bias>>, and
  evaluation <math|V> are given. This time, pick
  <math|W<rsub|i><around|(|m,n|)>=<frac|1|<around|\||<preds|n><around*|(|n|)>|\|>>>,
  and then pick <math|A<rsub|i><around|(|x|)>=1> iff
  <math|x\<geq\><frac|1|2>>. Visually, for each node <math|n> and its
  predecessors <math|m<rsub|1>,\<ldots\>,m<rsub|r>> we have

  <todo|DIAGRAM!>

  This gives us <math|n\<in\>F<rsub|S<rsub|0>><around|(|S|)>> if
  <math|n\<in\>S<rsub|0>> or if the majority (more than half) of
  <math|E>-predecessors are in <math|S>. In this case, the closure
  <math|<Closure>> can be interpreted as the diffusion of an opinion or
  attitude through a social network. This is one of the choices that
  <cite|baltag2019socialnetworks> consider for modelling influence in social
  networks. <todo|this paragraph is a bit terse now that I'm writing a longer
  version of this.>
</body>

<\initial>
  <\collection>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-screen-margin|false>
    <associate|page-type|letter>
    <associate|page-width|auto>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|5|5>>
    <associate|auto-11|<tuple|6|7>>
    <associate|auto-12|<tuple|7|8>>
    <associate|auto-13|<tuple|1|8>>
    <associate|auto-14|<tuple|2|9>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|2|1>>
    <associate|auto-4|<tuple|2.1|1>>
    <associate|auto-5|<tuple|2.2|2>>
    <associate|auto-6|<tuple|2.3|2>>
    <associate|auto-7|<tuple|2.4|2>>
    <associate|auto-8|<tuple|3|3>>
    <associate|auto-9|<tuple|4|3>>
    <associate|corollary-theory-plaus-net|<tuple|5|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      kraus1990nonmonotonic

      kraus1990nonmonotonic

      baccini2024dynamic

      baltag2019socialnetworks

      Christoff:2015aa

      baccini2024dynamic

      baccini2024dynamic

      immerman1998descriptive

      libkin2004elements

      sep-computational-complexity

      baltag2019socialnetworks
    </associate>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Expressivity:
      The Power and Limitations of Neural Network Representations>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>A
      Potpourri of Model Classes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Relational Models
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Plausibility Models
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Social Network Models
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Neighborhood Models
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Measuring
      Expressive Power through Translation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Expressive
      Power of the Base Neural Network Semantics>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Expressive
      Power of Neural Network Update> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Neural
      Networks and Descriptive Complexity>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Reflections
      on the Complexity Hierarchy> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|3tab>|The Graph-Reachability Construction.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|3tab>|The Social Majority Construction.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>
    </associate>
  </collection>
</auxiliary>