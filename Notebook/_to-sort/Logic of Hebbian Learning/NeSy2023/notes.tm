<TeXmacs|2.1.1>

<style|<tuple|tmconf|compact-list|number-long-article|termes-font>>

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

    <assign|FuzzySet|<with|font-family|ss|FuzzySet>>

    <assign|Primes|<with|font-family|ss|P>>

    <assign|semantics|<macro|body|<around*|\<llbracket\>|<arg|body>|\<rrbracket\>>>>

    <assign|fuzzysemantics|<macro|body|\<#2985\><arg|body>\<#2986\>>>

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

    <assign|Know|<with|font-series|bold|<text|K>>>

    <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

    <assign|Typ|<with|font-series|bold|<text|T>>>

    <assign|diaTyp|\<langle\><value|Typ>\<rangle\>>

    <assign|Reach|<with|font-family|ss|Reach>>

    <assign|Prop|<with|font-family|ss|Prop>>

    <assign|Inc|<with|font-family|ss|Inc>>

    <assign|AllNets|<with|font-family|ss|Net>>

    <assign|BinaryModels|<with|font-family|ss|BinaryModel>>

    <assign|FuzzyModels|<with|font-family|ss|FuzzyModel>>

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

  <doc-data|<\doc-title>
    Fuzzy Neural Semantics
  </doc-title>>

  <section|Introduction>

  At FLAIRS, anonymous reviewer #3 said about our neural semantics work that:

  <\quote-env>
    \PThe outputs for the neurons in this model are binary which from the
    deep learning algorithm point of view is completely wrong.\Q
  </quote-env>

  The point of these notes is to finally address this criticism. I'll show
  that if our underlying language is crisp (i.e. consists of terms such as
  booleans, modalities, and conditionals), fuzzy feedforward nets satisfy
  <with|font-shape|italic|exactly> the same logical properties as their
  binary counterparts. This means we can lift the soundness and completeness
  (i.e. verification and model-building) of a binary neural network to the
  fuzzy setting. So what we learn in the simpler binary setting is not at all
  irrelevant to neural networks used in practice.

  However, the same isn't true if our underlying language is
  <with|font-shape|italic|fuzzy> or <with|font-shape|italic|probabilistic>.
  So I'll also consider what kinds of properties we can express that are
  unique to fuzzy neural networks.

  <section|Some Background>

  The idea of neural semantics is that we can interpret logical symbols in
  terms of the behavior of a neural network <todo|Balkenius & Gardenfors>.
  [Symbolic arises from the neural] [There are many different proposals]
  [these are only superficially different, they share common choices] [I'm
  going to try to present this in a ]

  \;

  \;

  We define neural networks in the usual way:

  <\definition>
    An <key|ANN> (Artificial Neural Network) is a pointed directed graph
    <math|<value|Net>=\<langle\>N,E,W,A,O\<rangle\>>, where

    <\itemize>
      <item><math|N> is a finite nonempty set (the set of <key|neurons>)

      <item><math|E\<subseteq\> N\<times\> N> (the set of <key|excitatory
      neurons>)

      <item><math|W:E\<rightarrow\><with|font|Bbb|R>> (the <key|weight> of a
      given connection)

      <item><math|A> is a function which maps each <math|n\<in\> N> to
      <math|A<rsup|n>:<with|font|Bbb|R<rsup|k>\<times\>
      R<rsup|k>\<rightarrow\>R<rsup|>>> (the <key|activation function> for
      <math|n>, where <math|k> is the indegree of <math|n>)

      <item><math|O> is a function which maps each <math|n\<in\> N> to
      <math|O<rsup|n>:<with|font|Bbb|R>\<rightarrow\><around*|[|0,1|]>> (the
      <key|output function> for <math|n>)
    </itemize>
  </definition>

  I'll also assume that the ANN is <key|feed-forward>, i.e. the graph
  <math|\<langle\>N,E\<rangle\>> is acyclic, <math|O\<circ\>A> is <key|zero
  at zero>, i.e. <math|O<rsup|n><around*|(|A<rsup|n><around*|(|<wide|0|\<vect\>>,<wide|w|\<vect\>>|)>|)>=0>,
  as well as <key|nondecreasing>, i.e. for all
  <math|<wide|x|\<vect\>>,<wide|w|\<vect\>><rsub|1>,<wide|w|\<vect\>><rsub|2>\<in\>
  <with|font|Bbb|R><rsup|k>>, if <math|<wide|w|\<vect\>><rsub|1>\<leqslant\><wide|w|\<vect\>><rsub|2>>
  iff <math|O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|x|\<vect\>>,<wide|w|\<vect\>><rsub|1>|)>|)>\<leqslant\>O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|x|\<vect\>>,<wide|w|\<vect\>><rsub|2>|)>|)>>.

  An ANN is <key|binary> if <math|O<rsup|n>:<with|font|Bbb|R>\<rightarrow\><around*|{|0,1|}>>,
  and <key|fuzzy> if <math|O<rsup|n>:<with|font|Bbb|R>\<rightarrow\><around*|[|0,1|]>>.

  <\definition>
    Formulas of our language <math|<value|Lang>> are given by\ 

    <\equation*>
      \<varphi\>\<colons\>=p\<mid\>\<neg\>\<varphi\>\<mid\>\<varphi\>\<wedge\>\<varphi\>\<mid\><value|Know><around*|(|\<varphi\>|)>\<mid\><value|Typ><around*|(|\<varphi\>|)>
    </equation*>

    where <math|p> is any propositional variable. Material implication
    <math|\<varphi\>\<rightarrow\>\<psi\>> is defined as
    <math|\<neg\>\<varphi\>\<vee\>\<psi\>>. We define
    <math|\<bot\>,\<vee\>,\<leftrightarrow\>,\<Leftrightarrow\>,>and the dual
    operators <math|<value|diaKnow>,<value|diaTyp>> in the usual way.
  </definition>

  <\definition>
    Let <math|P=<around*|{|p<rsub|1>,\<ldots\>,p<rsub|m>|}>> list finitely
    many propositional variables. A <key|binary neural model> is just an ANN
    <math|<value|Net>> paired with a binary valuation function
    <math|V<rsub|bin>:P\<rightarrow\><value|Set>>. Similarly, a <key|fuzzy
    neural model> is an ANN paired with a fuzzy valuation function
    <math|V<rsub|fuz>:P\<rightarrow\><value|FuzzySet>>.
  </definition>

  <\definition>
    Let <math|\<langle\><value|Net>,V<rsub|bin>\<rangle\>> be a binary neural
    model. We interpret formulas as sets of neurons as follows:

    <\equation*>
      <tabular|<tformat|<twith|table-lborder|0em>|<twith|table-rborder|0em>|<twith|table-bborder|0em>|<twith|table-tborder|0em>|<cwith|1|1|3|3|cell-bborder|0ln>|<cwith|2|2|1|-1|cell-tborder|0ln>|<cwith|1|1|3|3|cell-lborder|0ln>|<cwith|1|1|2|2|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|5|5|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<table|<row|<cell|<semantics|p>>|<cell|=>|<cell|V<rsub|bin><around*|(|p|)>>>|<row|<cell|<semantics|\<neg\>\<varphi\>>>|<cell|=>|<semantics|\<varphi\>><rsup|\<complement\>>>|<row|<cell|<semantics|\<varphi\>\<wedge\>\<psi\>>>|<cell|=>|<cell|<semantics|\<varphi\>>\<cap\><semantics|\<psi\>>>>|<row|<cell|<semantics|<value|diaKnow><around*|(|\<varphi\>|)>>>|<cell|=>|<cell|<value|Reach><around*|(|<semantics|\<varphi\>>|)>>>|<row|<cell|<semantics|<value|diaTyp><around*|(|\<varphi\>|)>>>|<cell|=>|<cell|<value|Prop><around*|(|<semantics|\<varphi\>>|)>>>>>>
    </equation*>

    The modal operators <math|<value|Know>> and <math|<value|Typ>> are
    defined as the duals of <math|<value|diaKnow>> and <math|<value|diaTyp>>,
    i.e. <math|\<neg\><value|diaKnow>\<neg\>> and
    <math|\<neg\><value|diaTyp>\<neg\>>, respectively.
  </definition>

  \;

  <\definition>
    Let <math|\<langle\><value|Net>,V<rsub|fuz>\<rangle\>> be a fuzzy neural
    model. Fuzzy semantics:

    <\equation*>
      <tabular|<tformat|<twith|table-lborder|0em>|<twith|table-rborder|0em>|<twith|table-bborder|0em>|<twith|table-tborder|0em>|<cwith|1|1|3|3|cell-bborder|0ln>|<cwith|2|2|1|-1|cell-tborder|0ln>|<cwith|1|1|3|3|cell-lborder|0ln>|<cwith|1|1|2|2|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|5|5|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<table|<row|<cell|<fuzzysemantics|p><around*|(|n|)>>|<cell|=>|<cell|V<rsub|fuz><around*|(|p|)><around*|(|n|)>>>|<row|<cell|<fuzzysemantics|\<neg\>\<varphi\>><around*|(|n|)>>|<cell|=>|1-<fuzzysemantics|\<varphi\>><around*|(|n|)>>|<row|<cell|<fuzzysemantics|\<varphi\>\<wedge\>\<psi\>>>|<cell|=>|<cell|<fuzzysemantics|\<varphi\>><todo|?><fuzzysemantics|\<psi\>>>>|<row|<cell|<fuzzysemantics|<value|diaKnow><around*|(|\<varphi\>|)>>>|<cell|=>|<cell|<todo|?><fuzzysemantics|\<varphi\>>>>|<row|<cell|<fuzzysemantics|<value|diaTyp><around*|(|\<varphi\>|)>>>|<cell|=>|<cell|<todo|?><fuzzysemantics|\<varphi\>>>>>>>
    </equation*>

    The modal operators <math|<value|Know>> and <math|<value|Typ>> are
    defined as the duals of <math|<value|diaKnow>> and <math|<value|diaTyp>>,
    i.e. <math|\<neg\><value|diaKnow>\<neg\>> and
    <math|\<neg\><value|diaTyp>\<neg\>>, respectively.
  </definition>

  <todo|We actually have two different interpretations: A
  <with|font-shape|italic|binary> one and a <with|font-shape|italic|fuzzy>
  one! In the binary one we evaluate to <math|<value|Set>>, but in the fuzzy
  one we evaluate to <math|<value|FuzzySet>>>

  <section|From Binary to Fuzzy Nets (and Back)>

  <subsection*|Binary <math|\<longrightarrow\>> Fuzzy>

  It's easy to see that every binary ANN <math|<value|Net>> can also be
  viewed as a fuzzy ANN by just extending the codomain of the output function
  from <math|<around*|{|0,1|}>> to <math|<around*|[|0,1|]>>. In more detail,
  we have an injection <math|to:<value|BinaryModels>\<rightarrow\><value|FuzzyModels>>
  via:

  <\equation*>
    to<around*|(|\<langle\>N,E,W,A,O\<rangle\>,V|)>=\<langle\>N,E,W,A,O<rsub|fuz>,V<rsub|fuz>\<rangle\>
  </equation*>

  where, for all <math|n\<in\>N>, <math|O<rsup|n><rsub|fuz>:<with|font|Bbb|R>\<rightarrow\><around*|[|0,1|]>>
  is

  <\equation*>
    O<rsup|n><rsub|fuz><around*|(|x|)>=O<rsup|n><around*|(|x|)>
  </equation*>

  \ and for all propositions <math|p>, and all <math|n\<in\>N>,
  <math|V<rsub|fuz>:P\<rightarrow\><value|FuzzySet>> is

  <\equation*>
    V<rsub|fuz><around*|(|p|)><around*|(|n|)>=<todo|???>
  </equation*>

  Over a crisp language <math|<value|Lang>>, this mapping preserves our
  interpretation of formulas:

  <\proposition>
    For all binary ANNs <math|<value|Net>> and all formulas <math|\<varphi\>>
    over <math|<value|Lang>>,\ 
  </proposition>

  <math|<value|Net>,V\<models\>\<varphi\>> iff
  <math|<value|Net><rsub|fuz>,V<rsub|fuz>\<models\>\<varphi\>>

  <subsection*|Fuzzy <math|\<longrightarrow\>> Binary>

  The other way around, every fuzzy ANN <math|<value|Net>> can be
  \Pflattened\Q into a binary ANN via the surjection
  <math|from:<value|FuzzyModels>\<rightarrow\><value|BinaryModels>> defined
  by

  <\equation*>
    from<around*|(|\<langle\>N,E,W,A,O<rsub|bin>\<rangle\>|)>
  </equation*>

  where for all <math|n\<in\>N>, <math|O<rsup|n><rsub|bin>:<with|font|Bbb|R>\<rightarrow\><around*|{|0,1|}>>
  is

  <\equation*>
    O<rsup|n><rsub|bin><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|1>|<cell|if
    x\<gtr\>0>>|<row|<cell|0>|<cell|otherwise>>>>>
  </equation*>

  What's maybe surprising is that both of these mappings preserve truth (over
  a crisp language <math|<value|Lang>>):

  <\proposition>
    For all binary ANNs <math|<value|Net>> and all formulas <math|\<varphi\>>
    over <math|<value|Lang>>, <math|<semantics|\<varphi\>><rsub|<value|Net>>=<semantics|\<varphi\>><rsub|to<around*|(|<value|Net>|)>>>

    <todo|What does <math|<semantics|\<varphi\>>> even mean when interpreted
    in a fuzzy net???>
  </proposition>

  <\proposition>
    For all fuzzy ANNs <math|<value|Net>> and all formulas <math|\<varphi\>>
    over <math|<value|Lang>>,\ 
  </proposition>

  <section|Probabilistic Properties of ANNs>

  <todo|TODO>

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|11>
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
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|3|2>>
    <associate|auto-5|<tuple|3.1|2>>
    <associate|auto-6|<tuple|4|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|2<space|2spc>Some
      Background> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|3<space|2spc>From
      Binary to Fuzzy Nets (and Back)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Binary <with|mode|<quote|math>|\<longrightarrow\>>
      Fuzzy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Fuzzy <with|mode|<quote|math>|\<longrightarrow\>>
      Binary <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|4<space|2spc>Probabilistic
      Properties of ANNs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>