<TeXmacs|2.1.1>

<style|<tuple|tmconf|smart-ref|preview-ref|number-long-article>>

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

    <assign|Activ|<with|font-family|ss|Activates>>

    <assign|Inc|<with|font-family|ss|Inc>>

    <assign|AllNets|<with|font-family|ss|Net>>

    <assign|AllModels|<with|font-family|ss|Model>>

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
  </hide-preamble>

  <doc-data|<\doc-title>
    Notes on the Completeness of Neural Net Models

    in a Modal Language
  </doc-title>>

  <\quote-env>
    <with|font-series|bold|Step 0. Find a paper I enjoy, and read it. Try to
    understand its ideas, with an eye towards extending it/altering it.>
  </quote-env>

  This paper is inspired by Hannes Leitgeb's <hlink|Nonmonotonic Reasoning by
  Inhibition Nets|https://pdf.sciencedirectassets.com/271585/1-s2.0-S0004370200X00768/1-s2.0-S000437020100073X/main.pdf?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEBUaCXVzLWVhc3QtMSJIMEYCIQCYhHMlIPhIq3vO4rnf4y1swIkWc00HT6vtGY5twAuAygIhALXtW5sZJGGEIevyH%2B%2BXjijmgXy2ShEjSWoS6hA4ztVkKswECF0QBRoMMDU5MDAzNTQ2ODY1IgykI5CgK9WVME8ZMBoqqQSpliScdX5JGooz6vazOYjdbL08lgSWnU5bZfWtvxkwOvS%2BWi7FEeFc6OlKllF8GyahFm6htvFFreqTmdsfk2x3ffNWukRYgJEtp9xsxREbCyTdZs2p1zzHybDyrzqtqfOA0E6pShx5olx1jp%2BJl7hIG1Zvf%2FvfVISL44d4NVzpJJvBiGMzVl2UYdk%2BYW%2FVO7axQWxAoS28Vy1EEySDihEOHJYRyexTqt82XAZxAoRizFoCGScG1FMe5d5BWcmxfnPT5WrPT4zVRe6HhMHlF8X8wuw5IfMJ9F74ZJd2aS1kv09b8dJ4VZXvLTGOqx22WSxRBS%2FiG%2BFUp%2Fms89HO0WkUCguddmdyE%2BsQDVSx%2FfPLntqCa2fD%2FbWQzdIuhGBHP6K4AAWWUABK8UVU1Z%2Fu40Z8htWwqEloqV7S55QIDH%2BJI6N9JHaS6P5BnIaHvLzlYrJnJ%2FR8AyhJ%2FHp0g2sb%2FYyAL13xVEjYZGetubAD1P9TXrnlXsEiJpFeH5P4rUy%2F%2FXLerG2z69r250Pbhh8JoPH6uusYtzyha0fZalhu%2BA1pP3GfEVrikEDpxvx6tgExgNZHDE9UAfWF1NH%2F7X%2Fz46gAuT%2FnjvRZ9KcfpkOX6zzQtkkGyUiNdm3CBZ4Z6pSssQu8sTdv0w7htnFOWNwZnH8zSkcC9MjDMvfT%2FZNV3HN2XTVjLy9n4VWmTKO7m0zjZqVqn6B8CsaPRosze2qr3om4hxpCpSG6YpQPMPSGtp0GOqgB8IETl9v2KqQGOJQJO3CRaT1rkgXy%2BuWRY6WTp8ROr0I23070icKEf4ssWAwxSXneXGKkU6HQh7mvdLhjD0fOqjOebZmAg2Vvojm87UBddPvAC9s01O2byEjQ0xH3MMq2BvLfB%2FGlT%2BOnk4o0Aj7K%2BkA20dnf2h9ekSRmpr6QyuQ7GUPxYteMtRPntOwOwxshishUGWXynnZWGcbtUOJ%2BTU7AgDcdZrcX&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221229T131449Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIAQ3PHCVTYTRHAT5NH%2F20221229%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=6883ba7f9b34aebf025254e28f320fadb7efb3b1f4abd990fd3198cf2308a56e&hash=df607e446c88459bfb2a3e3b7078f82cd7eef5c00ba4d6a84ba2732a687200ef&host=68042c943591013ac2b2430a89b270f6af2c76d8dfd086a07176afe7c76c2c61&pii=S000437020100073X&tid=spdf-ffe2d701-58e9-4ee8-8716-53020a0b2676&sid=61edbba4786fd54fdd6949c8028454f460e6gxrqa&type=client&ua=515a52510501565e0007&rr=7812cd08cdd7e127>,
  which proves completeness for the neuro-symbolic interface suggested by
  Balkenius and Gärdenfors'<hlink||https://scholar.google.com/citations?user=ZW8RWdAAAAAJ&hl=en&oi=sra>
  <hlink|Nonmonotonic Inferences in Neural
  Networks|https://books.google.com/books?hl=en&lr=&id=1wwZAQAAIAAJ&oi=fnd&pg=PA32&dq=Nonmonotonic+inferences+in+neural+networks&ots=VsdxiIdpzf&sig=wC9oAbA8HUcIPI5gqmLNTDcc8tM>.

  <with|font-series|bold|<\quote-env>
    Step 1. Look for an extension/open problem that makes me think \PWhat the
    fuck? That's still open? No way, this shit is low-hanging fruit, free
    paper here I come.\Q i.e. something <with|font-shape|italic|easy> and
    <with|font-shape|italic|straightforward>, <with|font-shape|italic|without
    complications>.
  </quote-env>>

  Hannes Leitgeb showed that feed-forward neural networks are complete with
  respect to certain conditional laws of <math|\<Rightarrow\>>. But
  <math|\<varphi\>\<Rightarrow\>\<psi\>> just reads
  \P<math|\<psi\>\<subseteq\><value|Prop><around*|(|\<varphi\>|)>>\Q (i.e.
  <math|\<psi\>> is in the propagation of the signal <math|\<varphi\>>),
  which we can re-write in modal language as
  <math|<value|Typ>\<varphi\>\<rightarrow\>\<psi\>>. In the same way that
  Hannes shows that feed-forward nets and preferential-conditional models are
  equivalent, it shouldn't be too hard at all to show that feed-forwards nets
  and neighborhood models are equivalent. (Note that it is well-known that
  neighborhood models are a generalization of preferential models.)

  I also think I should be able to throw in a <math|<value|Know>> modality
  (graph-reachability) in there, almost for free.

  <\with|font-series|bold>
    <\quote-env>
      Step 2. Follow-up question (only answer after Step 1): Is the extension
      <with|font-shape|italic|interesting> or
      <with|font-shape|italic|surprising>? What do we learn by extending the
      result?
    </quote-env>
  </with>

  <\render-remark|Why bother with completeness?>
    In formal specifications (of AI agents, or otherwise), we're often
    content with just listing some sound rules or behaviors that the agent
    will always follow. And it's definitely cool to see that neural networks
    satisfy some sound logical axioms. But if we want to fundamentally bridge
    the gap between logic and neural networks, we should set our aim higher:
    Towards <with|font-shape|italic|complete> logical characterizations of
    neural networks.

    A more practical reason: Completeness gives us model-building, i.e. given
    a specification <math|\<Gamma\>>, we can <with|font-shape|italic|build> a
    neural network <math|<value|Net>> satisfying <math|\<Gamma\>>.
  </render-remark>

  <\render-remark|Why bother with this modal language?>
    Almost all of the previous work bridging logic and neural networks has
    focused on neural net models of <with|font-shape|italic|conditionals>. In
    some sense, doing this in modal language is just a re-write of this old
    work. But this previous work hasn't addressed how
    <with|font-shape|italic|learning> or <with|font-shape|italic|update> in
    neural networks can be cast in logical terms. This is not merely due to
    circumstance \V integrating conditionals with update is a long-standing
    controversial issue. So instead, we believe that it is more natural to
    work with modalities (instead of conditionals), because

    <center|<with|font-shape|italic|Modal language natively supports
    update.>>

    In other words, our modal setting sets us up to easily cast update
    operators (e.g. neural network learning) as modal operators in our logic.
  </render-remark>

  Also this gives me an excuse to title a paper
  <with|font-shape|italic|Neural Network Models à la Mode> :-) (This is a
  play on both modal logic and also bringing some old work back in style!)

  And LOL I can name a section \PLearning: The Cherry on Top\Q

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

  <\description>
    <item*|Neural Network Semantics / Semantic Encodings>

    <\description>
      <item*|Classic Papers><cite|mcculloch1943logical>

      <item*|Conditional Logic (Feedforward
      Net)><cite|balkenius1991nonmonotonic>, <cite|leitgeb2001nonmonotonic>,
      <cite|leitgeb2003nonmonotonic>, <cite|garcez2001symbolic> (soundness),
      <cite|garcez2008neural> (model-building) <todo|Any other relevant work
      by the Garcez lab?>

      <item*|Description Logic w. Typicality><cite|giordano2021>,
      <cite|giordano2022conditional> <todo|Any other relevant work by the
      Giordano lab?>

      <item*|Modal Logic w. Typicality><cite|kisby2022logic>

      <todo|Any other big trends I'm missing? See the new survey by Odense +
      Garcez!>

      <item*|Miscellaneous><cite|blutner2004nonmonotonic>,
      <cite|browne2001connectionist>

      <item*|Surveys><cite|odense2022semantic> <cite|bader2005dimensions>,
      <cite|sarker2021neuro>, <cite|kautz-2020future>,
      <cite|leitgeb2018neural>, <cite|belle2021logic>, <cite|yu2021survey>
      (the first few sections are a great introduction to Neural Network
      Semantics)
    </description>

    <item*|Help with Technical Details>

    <\description>
      <item*|Neighborhood Models><cite|pacuit2017neighborhood>

      <item*|Temporal Logic Rules><cite|gabbay1994temporal>

      <item*|Nominals (Hybrid Logic)><cite|blackburn2001modal>
    </description>
  </description>

  <\quote-env>
    <with|font-series|bold|Step 4. Write up my new definitions & proof in the
    Texmacs file. Again, should be a <with|font-shape|italic|very>
    straightforward extension, and the proof (proofs are just unit-tests for
    definitions) shouldn't take up too much room at all (1-2 pages, including
    defs)>
  </quote-env>

  <section|Interpreted Neural Nets>

  <subsection|Basic Definitions>

  <\definition>
    \ An <key|interpreted ANN> (Artificial Neural Network) is a pointed
    directed graph <math|<value|Net>=\<langle\>N,E,W,T,A,V\<rangle\>>, where

    <\itemize>
      <item><math|N> is a finite nonempty set (the set of <key|neurons>)

      <item><math|E\<subseteq\> N\<times\> N> (the set of <key|excitatory
      neurons>)

      <item><math|W:E\<rightarrow\><with|font|Bbb|R>> (the <key|weight> of a
      given connection)

      <item><math|A> is a function which maps each <math|n\<in\> N> to
      <math|A<rsup|<around*|(|n|)>>:<with|font|Bbb|R<rsup|k>\<times\>
      R<rsup|k>\<rightarrow\>R<rsup|>>> (the <key|activation function> for
      <math|n>, where <math|k> is the indegree of <math|n>)

      <item><math|O> is a function which maps each <math|n\<in\> N> to
      <math|O<rsup|<around*|(|n|)>>:<with|font|Bbb|R>\<rightarrow\><around*|{|0,1|}>>
      (the <key|output function> for <math|n>)

      <item><math|V:propositions\<cup\>nominals\<rightarrow\><value|powerset><around*|(|N|)>>
      is an assignment of nominals to individual neurons (the <key|valuation
      function>). If <math|i> is a nominal, we require
      <math|<around*|\||V<around*|(|i|)>|\|>=1>, i.e. a singleton.
    </itemize>
  </definition>

  <\definition>
    \ A <key|BFNN> (Binary Feedforward Neural Network) is an interpreted ANN
    <math|<value|Net>=\<langle\>N,E,W,T,A,V\<rangle\>> that is

    <\itemize>
      <item><key|Feed-forward>, i.e. <math|E> does not contain any cycles

      <item><key|Binary>, i.e. the output of each neuron is in {0, 1}

      <item><math|O<rsup|<around*|(|n|)>>\<circ\> A<rsup|<around*|(|n|)>>> is
      <key|zero at zero> in the first parameter, i.e.

      <\equation*>
        O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|0|\<vect\>>,<wide|w|\<vect\>>|)>|)>=0
      </equation*>

      <item><math|O<rsup|<around*|(|n|)>>\<circ\> A<rsup|<around*|(|n|)>>> is
      <key|strictly monotonically increasing> in the second parameter, i.e.
      for all <math|<wide|x|\<vect\>>,<wide|w<rsub|>|\<vect\>><rsub|1>,<wide|w|\<vect\>><rsub|2>\<in\>
      <with|font|Bbb|R><rsup|k>>, if <math|<wide|w<rsub|>|\<vect\>><rsub|1>\<less\><wide|w|\<vect\>><rsub|2>>
      then <math|O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|x|\<vect\>>,<wide|w|\<vect\>><rsub|1>|)>|)>\<less\>O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|x|\<vect\>>,<wide|w|\<vect\>><rsub|2>|)>|)>>.
      We will more often refer to the equivalent condition:

      <\equation*>
        <wide|w<rsub|>|\<vect\>><rsub|1>\<leqslant\><wide|w|\<vect\>><rsub|2><infix-iff>O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|x|\<vect\>>,<wide|w|\<vect\>><rsub|1>|)>|)>\<leqslant\>O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<wide|x|\<vect\>>,<wide|w|\<vect\>><rsub|2>|)>|)>
      </equation*>
    </itemize>
  </definition>

  <\definition>
    Given a BFNN <value|Net>, <math|<value|Set>=<value|powerset><around*|(|N|)>=<around*|{|S\<mid\>S\<subseteq\>N|}>>
  </definition>

  <\definition>
    For <math|S\<in\><value|Set>>, let <math|<value|bigchi><rsub|S>:N\<rightarrow\><around*|{|0,1|}>>
    be given by <math|<value|bigchi><rsub|S>=1> iff <math|n\<in\> S>
  </definition>

  We write <math|W<rsub|ij>> to mean <math|W<around|(|i,j|)>> for
  <math|<around|(|i,j|)>\<in\>E>. To keep the notation from getting really
  messy, I'll define:

  <\definition>
    Let <math|S\<in\><value|Set>>, <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
    be a sequence where each <math|m<rsub|i>\<in\>N>, and let
    <math|n\<in\>N>. Then:

    <\equation*>
      <value|Activ><rsub|S><around*|(|<wide|m|\<vect\>>,n|)>=O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<around*|(|<value|bigchi><rsub|S><around*|(|m<rsub|1>|)>,\<ldots\>,<value|bigchi><rsub|S><around*|(|m<rsub|k>|)>|)>;<around*|(|W<around*|(|m<rsub|1>,n|)>,\<ldots\>,W<around*|(|m<rsub|k>,n|)>|)>|)>|)>
    </equation*>
  </definition>

  i.e. the <math|m<rsub|i>\<in\>S> subsequently \Pactivate\Q <math|n>.

  <\proposition>
    <label|activation-agrees>Let <math|S<rsub|1>,S<rsub|2>\<in\><value|Set>>,
    <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>> be a sequence
    where each <math|m<rsub|i>\<in\>N>, and let <math|n\<in\>N>. Suppose that
    <math|S<rsub|1>> and <math|S<rsub|2>> agree on all <math|m<rsub|i>>, i.e.
    for all <math|1\<leq\>i\<leq\>k>, <math|m<rsub|i>\<in\>S<rsub|1>> iff
    <math|m<rsub|i>\<in\>S<rsub|2>>. Then

    <\equation*>
      <value|Activ><rsub|S<rsub|1>><around*|(|<wide|m|\<vect\>>,n|)>=<value|Activ><rsub|S<rsub|2>><around*|(|<wide|m|\<vect\>>,n|)>
    </equation*>
  </proposition>

  <\proof>
    We have:

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<value|Activ><rsub|S<rsub|1>><around*|(|<wide|m|\<vect\>>,n|)>>|<cell|=>|<cell|O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<around*|(|<value|bigchi><rsub|S<rsub|1>><around*|(|m<rsub|1>|)>,\<ldots\>,<value|bigchi><rsub|S<rsub|1>><around*|(|m<rsub|k>|)>|)>;<around*|(|W<around*|(|m<rsub|1>,n|)>,\<ldots\>,W<around*|(|m<rsub|k>,n|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<around*|(|<value|bigchi><rsub|S<rsub|2>><around*|(|m<rsub|1>|)>,\<ldots\>,<value|bigchi><rsub|S<rsub|2>><around*|(|m<rsub|k>|)>|)>;<around*|(|W<around*|(|m<rsub|1>,n|)>,\<ldots\>,W<around*|(|m<rsub|k>,n|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<value|Activ><rsub|S<rsub|2>><around*|(|<wide|m|\<vect\>>,n|)>>>>>>
    </equation*>

    \;
  </proof>

  <subsection|<math|<value|Prop>> and <math|<value|Reach>>>

  <\definition>
    (Adapted from <cite|leitgeb2001nonmonotonic>) Let
    <math|<value|Prop>:<value|Set>\<rightarrow\><value|Set>> be defined
    recursively as follows: <math|n\<in\><value|Prop><around*|(|S|)>> iff
    either

    <\description>
      <item*|Base Case><math|n\<in\>S>, or

      <item*|Constructor>For those <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
      such that <math|<around*|(|m<rsub|i>,n|)>\<in\>E>,
      <math|<value|Activ><rsub|<value|Prop><around*|(|S|)>><around*|(|<wide|m|\<vect\>>,n|)>=1>.
    </description>
  </definition>

  <\proposition>
    <cite|leitgeb2001nonmonotonic> <label|thm:prop-props>Let
    <math|<Net>\<in\><AllNets>>. For all <math|S,S<rsub|1>,S<rsub|2>\<in\><Set>>,
    <math|<value|Prop>> satisfies

    <\description>
      <item*|<key|(Inclusion)>><math|S\<subseteq\><Prop><around|(|S|)>>

      <item*|<key|(Idempotence)>><math|<Prop><around|(|S|)>=<Prop><around|(|<Prop><around|(|S|)>|)>>

      <item*|<key|(Cumulative)>>If <math|S<rsub|1>\<subseteq\>S<rsub|2>\<subseteq\><Prop><around|(|S<rsub|1>|)>>
      then <math|<Prop><around|(|S<rsub|1>|)>\<subseteq\><Prop><around|(|S<rsub|2>|)>>

      <item*|<key|(Loop)>>If <math|S<rsub|1>\<subseteq\><Prop><around|(|S<rsub|0>|)>,\<ldots\>,S<rsub|n>\<subseteq\><Prop><around|(|S<rsub|n-1>|)>>
      and <math|S<rsub|0>\<subseteq\><Prop><around|(|S<rsub|n>|)>>,

      then <math|<Prop><around|(|S<rsub|i>|)>=<Prop><around|(|S<rsub|j>|)>>
      for all <math|i,j\<in\><around*|{|0,\<ldots\>,n|}>>
    </description>
  </proposition>

  <\definition>
    Let <math|<value|Reach>:<value|Set>\<rightarrow\><value|Set>> be defined
    recursively as follows: <math|n\<in\><value|Reach><around*|(|S|)>> iff
    either

    <\description>
      <item*|Base Case><math|n\<in\>S>, or

      <item*|Constructor>There is an <math|m\<in\><value|Reach><around*|(|S|)>>
      such that <math|<around*|(|m,n|)>\<in\>E>.
    </description>
  </definition>

  <\proposition>
    <label|thm:reach-props>Let <math|<Net>\<in\><AllNets>>. For all
    <math|S,S<rsub|1>,S<rsub|2>\<in\><Set>>, <math|n,m\<in\>N>,
    <math|<value|Reach>> satisfies

    <\description>
      <item*|<key|(Inclusion)>><math|S\<subseteq\><Reach><around|(|S|)>>

      <item*|<key|(Idempotence)>><math|<Reach><around|(|S|)>=<Reach><around|(|<Reach><around|(|S|)>|)>>

      <item*|<key|(Monotonicity)>>If <math|S<rsub|1>\<subseteq\>S<rsub|2>>
      then <math|<Reach><around|(|S<rsub|1>|)>\<subseteq\><Reach><around|(|S<rsub|2>|)>>
    </description>
  </proposition>

  <\definition>
    For all <math|S\<in\><value|Set>>, <math|<value|Reachedby><around*|(|S|)>=><math|<big|cup><rsub|n\<in\>S><rsub|><big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>
  </definition>

  <\proposition>
    <label|prop-reach-inverse>For all <math|S\<in\><value|Set>>,
    <math|<value|Reachedby><around*|(|S|)>=<around*|{|m\<mid\><text|there is
    some> n\<in\>S <text|with> E<math-up|->path from n to m|}>>
  </proposition>

  <todo|Todo: Double-check this proof! It's gone through a lot of revisions.>

  <\proof>
    <math|<around*|(|\<rightarrow\>|)>> Suppose
    <math|u\<in\><value|Reachedby><around*|(|S|)>>. Let <math|n\<in\>S> be
    such that for all <math|X>, if <math|n<neg|\<in\>><value|Reach><around*|(|X|)>>
    then <math|u\<in\>X<rsup|\<complement\>>>. Consider in particular

    <\equation*>
      X=<around*|{|m\<mid\>there is an E<math-up|->path from n to
      m|}><rsup|\<complement\>>
    </equation*>

    Notice that <math|n<neg|\<in\>><value|Reach><around*|(|X|)>>. And so
    <math|u\<in\>X<rsup|\<complement\>>>, i.e. there
    <with|font-shape|italic|is> an <math|E>-path from <math|n> to <math|u>.

    <math|<around*|(|\<leftarrow\>|)>> Suppose there is an <math|n\<in\>S>
    with <math|E>-path from <math|n> to <math|u>, and let <math|X> be such
    that <math|n<neg|\<in\>><value|Reach><around*|(|X|)>>. By definition of
    <math|<value|Reach>>, there is no <math|m\<in\>X> with an <math|E>-path
    from <math|n> to <math|m>. So in particular, <math|u<neg|\<in\>>X>, i.e.
    <math|u\<in\>X<rsup|\<complement\>>>. Since <math|X> was arbitrary,
    <math|u\<in\><big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>.
    So <math|u\<in\><big|cup><rsub|n\<in\>S><big|cap><rsub|n<neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>.
  </proof>

  <\proposition>
    <label|prop-reach-acyclic><math|<value|Reachedby>> is acyclic in the
    following sense: For <math|n<rsub|1>,\<ldots\>,n<rsub|k>\<in\>N>, if

    <\equation*>
      n<rsub|1>\<in\><value|Reachedby><around*|(|<around*|{|n<rsub|2>|}>|)>,\<ldots\>,n<rsub|k-1>\<in\><value|Reachedby><around*|(|<around*|{|n<rsub|k>|}>|)>,n<rsub|k>\<in\><value|Reachedby><around*|(|<around*|{|n<rsub|1>|}>|)>
    </equation*>

    Then each <math|n<rsub|i>=n<rsub|j>>.
  </proposition>

  <\proof>
    Suppose <math|n<rsub|1>\<in\><value|Reachedby><around*|(|<around*|{|n<rsub|2>|}>|)>,\<ldots\>,n<rsub|k-1>\<in\><value|Reachedby><around*|(|<around*|{|n<rsub|k>|}>|)>,n<rsub|k>\<in\><value|Reachedby><around*|(|<around*|{|n<rsub|1>|}>|)>>.
    Note what Proposition <reference|prop-reach-inverse> says about singleton
    sets:

    <\equation*>
      <value|Reachedby><around*|(|<around*|{|n<rsub|i>|}>|)>=<around*|{|m\<mid\>there
      is an E<math-up|->path from m to n<rsub|i>|}>
    </equation*>

    So we have an <math|E>-path from each <math|n<rsub|i>> to
    <math|n<rsub|i+1>>, and an <math|E>-path from <math|n<rsub|k>> to
    <math|n<rsub|1>>. But since <math|E> is acyclic, each
    <math|n<rsub|i>=n<rsub|j>>.
  </proof>

  <\proposition>
    <label|minimal-cause><key|(Minimal Cause)> For all
    <math|<rsub|>S,T\<in\><value|Set>>,\ 

    <\equation*>
      <value|Reachedby><around*|(|T|)>\<subseteq\><value|Prop><around*|(|S|)><infix-iff><value|Reachedby><around*|(|T|)>\<subseteq\><value|Prop><around*|(|S\<cap\><value|Reachedby><around*|(|T|)>|)>
    </equation*>
  </proposition>

  <\proof>
    Instead, we'll prove something stronger: For all <math|n\<in\>N>, if
    <math|n\<in\><value|Reachedby><around*|(|T|)>> then the following are
    equivalent:

    <\enumerate>
      <item><math|n\<in\><value|Prop><around*|(|S|)>>

      <item><math|n\<in\><value|Prop><around*|(|S\<cap\><value|Reachedby><around*|(|T|)>|)>>
    </enumerate>

    \ Notice that this implies <with|font-series|bold|(Minimal Cause)>. So
    let's prove it. Suppose <math|n\<in\><value|Reachedby><around*|(|T|)>>.
    To show <math|<around*|(|1\<rightarrow\>2|)>>, let
    <math|n\<in\><value|Prop><around*|(|S|)>> and proceed by induction on
    <math|<value|Prop>>.

    <\description>
      <item*|Base Step><math|n\<in\>S>. But we also have
      <math|n\<in\><value|Reachedby><around*|(|T|)>>, and so
      <math|n\<in\>S\<cap\><value|Reachedby><around*|(|T|)>>. By the base
      step of <math|<value|Prop>>, <math|n\<in\><value|Prop><around*|(|S\<cap\><value|Reachedby><around*|(|T|)>|)>>.

      <item*|Inductive Step>For that <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
      such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

      <\equation*>
        <value|Activ><rsub|<value|Prop><around*|(|S|)>><around*|(|<wide|m|\<vect\>>,n|)>=1
      </equation*>

      Since each <math|<around*|(|m<rsub|i>,n|)>\<in\>E>, and
      <math|n\<in\><value|Reachedby><around*|(|T|)>>, by Proposition
      <reference|prop-reach-inverse> each
      <math|m<rsub|i>\<in\><value|Reachedby><around*|(|T|)>>. So we can apply
      our inductive hypothesis to each <math|m<rsub|i>>:
      <math|m<rsub|i>\<in\><value|Prop><around*|(|S|)>> iff
      <math|m<rsub|i>\<in\><value|Prop><around*|(|S\<cap\><value|Reachedby><around*|(|T|)>|)>>.
      By Proposition <reference|activation-agrees>,
      <math|<value|Activ><rsub|<value|Prop><around*|(|S\<cap\><value|Reachedby><around*|(|T|)>|)>><around*|(|<wide|m|\<vect\>>,n|)>=1>,
      and so <math|n\<in\><value|Prop><around*|(|S\<cap\><value|Reachedby><around*|(|T|)>|)>>.
    </description>

    As for <math|<around*|(|2\<rightarrow\>1|)>>, let
    <math|n\<in\><value|Prop><around*|(|S\<cap\><value|Reachedby><around*|(|T|)>|)>>,
    and proceed by induction on <math|<value|Prop>>.

    <\description>
      <item*|Base Step><math|n\<in\>S\<cap\><value|Reachedby><around*|(|T|)>>.
      So <math|n\<in\>S>, and so <math|n\<in\><value|Prop><around*|(|S|)>> by
      the base case of <math|<value|Prop>>.

      <item*|Inductive Step>For that <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
      such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

      <\equation*>
        <value|Activ><rsub|<value|Prop><around*|(|S\<cap\><value|Reachedby><around*|(|T|)>|)>><around*|(|<wide|m|\<vect\>>,n|)>=1
      </equation*>

      Since each <math|<around*|(|m<rsub|i>,n|)>\<in\>E>, and
      <math|n\<in\><value|Reachedby><around*|(|T|)>>, by Proposition
      <reference|prop-reach-inverse> each
      <math|m<rsub|i>\<in\><value|Reachedby><around*|(|T|)>>. So we can apply
      our inductive hypothesis to each <math|m<rsub|i>>:
      <math|m<rsub|i>\<in\><value|Prop><around*|(|S\<cap\><value|Reachedby><around*|(|T|)>|)>>
      iff <math|m<rsub|i>\<in\><value|Prop><around*|(|S|)>>. By Proposition
      <reference|activation-agrees>, <math|<value|Activ><rsub|<value|Prop><around*|(|S|)>><around*|(|<wide|m|\<vect\>>,n|)>=1>,
      and so <math|n\<in\><value|Prop><around*|(|S|)>>.
    </description>
  </proof>

  <subsection|Neural Network Semantics>

  <\definition>
    Formulas of our language <math|<value|Lang>> are given by\ 

    <\equation*>
      \<varphi\>\<colons\>=p\<mid\>\<neg\>\<varphi\>\<mid\>\<varphi\>\<wedge\>\<varphi\>\<mid\><value|Know>\<varphi\>\<mid\><value|Knownby>i\<mid\><value|Typ>\<varphi\>
    </equation*>

    where <math|p> is any propositional variable, and <math|i> is any nominal
    (denoting a neuron). Material implication
    <math|\<varphi\>\<rightarrow\>\<psi\>> is defined as
    <math|\<neg\>\<varphi\>\<vee\>\<psi\>>. We define
    <math|\<bot\>,\<vee\>,\<leftrightarrow\>,\<Leftrightarrow\>,>and the dual
    operators <math|<value|diaKnow>,<value|diaKnownby>,<value|diaTyp>> in the
    usual way.
  </definition>

  <\definition>
    Let <math|<value|Net>\<in\><value|AllNets>>. The semantics
    <math|<semantics|\<cdot\>>:<value|Lang>\<rightarrow\><value|Set>> for
    <math|<value|Lang>> are defined recursively as follows:

    <\equation*>
      <tabular|<tformat|<twith|table-lborder|0em>|<twith|table-rborder|0em>|<twith|table-bborder|0em>|<twith|table-tborder|0em>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|4|4|1|-1|cell-bborder|0ln>|<cwith|5|5|1|1|cell-lborder|1ln>|<cwith|5|5|3|3|cell-rborder|1ln>|<cwith|5|5|1|3|cell-tborder|0ln>|<cwith|5|5|1|1|cell-lborder|1ln>|<cwith|5|5|3|3|cell-rborder|1ln>|<cwith|6|6|1|-1|cell-tborder|0ln>|<cwith|5|5|1|-1|cell-bborder|0ln>|<cwith|6|6|1|-1|cell-bborder|1ln>|<cwith|6|6|1|1|cell-lborder|1ln>|<cwith|6|6|3|3|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|0ln>|<cwith|2|2|1|-1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<table|<row|<cell|<semantics|p>>|<cell|=>|<cell|V<around*|(|p|)>\<in\><value|Set>>>|<row|<cell|<semantics|\<neg\>\<varphi\>>>|<cell|=>|<semantics|\<varphi\>><rsup|\<complement\>>>|<row|<cell|<semantics|\<varphi\>\<wedge\>\<psi\>>>|<cell|=>|<cell|<semantics|\<varphi\>>\<cap\><semantics|\<psi\>>>>|<row|<cell|<semantics|<value|diaKnow>\<varphi\>>>|<cell|=>|<cell|<value|Reach><around*|(|<semantics|\<varphi\>>|)>>>|<row|<cell|<semantics|<value|diaKnownby>\<varphi\>>>|<cell|=>|<cell|<value|Reachedby><around*|(|*<semantics|\<varphi\>>|)>>>|<row|<cell|<semantics|<value|diaTyp>\<varphi\>>>|<cell|=>|<cell|<value|Prop><around*|(|<semantics|\<varphi\>>|)>>>>>>
    </equation*>
  </definition>

  <\definition>
    <with|font-series|medium|<key|(Truth at a neuron)>>
    <math|<value|Net>,n\<Vdash\>\<varphi\>> iff
    <math|n\<in\><semantics|\<varphi\>><rsub|<value|Net>>>.
  </definition>

  <\definition>
    <key|(Truth in a net)> <math|<value|Net>\<models\>\<varphi\>> iff
    <math|<value|Net>,n\<Vdash\>\<varphi\>> for all <math|n\<in\>N>.
  </definition>

  <\definition>
    <key|(Entailment)> <math|\<Gamma\>\<models\><rsub|<text|BFNN>>\<varphi\>>
    if for all BFNNs <math|<value|Net>> for all neurons <math|n\<in\>N>, if
    <math|<value|Net>,n\<models\>\<Gamma\>> then
    <math|<value|Net>,n\<models\>\<varphi\>>.
  </definition>

  <section|Neighborhood Models>

  <subsection|Basic Definitions>

  <\definition>
    <cite|pacuit2017neighborhood> A <key|neighborhood frame> is a pair
    <math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>>, where
    <math|W> is a non-empty set of <key|worlds> and
    <math|f:W\<to\><value|powerset><around|(|<value|powerset><around|(|W|)>|)>>
    is a <key|neighborhood function>. A <key|multi-frame> may have more than
    one neighborhood function, but to keep things simple I won't distinguish
    between frames and multi-frames.
  </definition>

  <\definition>
    <cite|pacuit2017neighborhood> Let <math|<with|font|Euler|<with|font|cal|F>>=<around|\<langle\>|W,f|\<rangle\>>>
    be a neighborhood frame, and let <math|w\<in\>W>. The set
    <math|<big|cap><rsub|X\<in\>f<around|(|w|)>>X> is called the <key|core of
    <math|f<around*|(|w|)>>>, abbreviated <math|\<cap\>f<around|(|w|)>>.

    If <math|X\<subseteq\>W>, the set <math|<big|cup><rsub|w\<in\>X>\<cap\>f<around*|(|w|)>>
    is called the <key|core of <math|f<around*|(|X|)>>>, abbreviated
    <math|\<cap\>f<around*|(|X|)>>.
  </definition>

  <\definition>
    <cite|pacuit2017neighborhood> Let <math|<with|font|cal|F>=\<langle\>W,f\<rangle\>>
    be a frame. <math|<with|font|cal|F>> is a <key|proper filter> iff:\ 

    <\itemize>
      <item><math|f> is <key|closed under finite intersections>: for all
      <math|w\<in\>W>, if <math|X<rsub|1>,\<ldots\>,X<rsub|n>\<in\>f<around|(|w|)>>
      then their intersection <math|<big|cap><rsup|k><rsub|i=1>X<rsub|i>\<in\>f<around|(|w|)>>

      <item><math|f> is <key|closed under supersets>: for all
      <math|w\<in\>W>, if <math|X\<in\>f<around|(|w|)>> and
      <math|X\<subseteq\>Y\<subseteq\>W>, then <math|Y\<in\>f<around|(|w|)>>

      <item><math|f> <key|contains the unit>: iff
      <math|W\<in\>f<around|(|w|)>>
    </itemize>
  </definition>

  <\proposition>
    <cite|pacuit2017neighborhood> <label|filter-contains-core>If
    <math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>> is a filter,
    and <math|W> is finite, then <math|<with|font|cal|F>> contains its core.
  </proposition>

  <\proposition>
    <cite|pacuit2017neighborhood> <label|prop-filter-consistency>If
    <math|<with|font|cal|F>=<around|\<langle\>|W,f|\<rangle\>>> is a proper
    filter, then for all <math|w\<in\>W>,
    <math|Y<rsup|\<complement\>>\<in\>f<around*|(|w|)>> iff
    <math|Y<neg|\<in\>>f<around*|(|w|)>>.
  </proposition>

  <\definition>
    Let <math|<with|font|cal|F>=\<langle\>W,f,g\<rangle\>> be a frame.
    <math|<with|font|cal|F>> is a <key|preferential filter> iff:

    <\itemize>
      <item>W is finite

      <item><math|\<langle\>W,f\<rangle\>> forms a proper filter, and
      <math|g> contains the unit

      <item><math|f> is <key|acyclic>: for all
      <math|u<rsub|1>,\<ldots\>,u<rsub|n>\<in\>W>, if
      <math|u<rsub|1>\<in\>\<cap\>f<around*|(|u<rsub|2>|)>,\<ldots\>,u<rsub|n-1>\<in\>\<cap\>f<around*|(|u<rsub|n>|)>,u<rsub|n>\<in\>\<cap\>f<around*|(|u<rsub|1>|)>>
      then all <math|u<rsub|i>=u<rsub|j>>.

      <item><math|f,g> are <key|reflexive>: for all <math|w\<in\>W>,
      <math|w\<in\>\<cap\>f<around|(|w|)>> (similarly for <math|g>)

      <item><math|f,g> are <key|transitive>: for all <math|w\<in\>W>, if
      <math|X\<in\>f<around|(|w|)>> then <math|<around*|{|u
      \<mid\>X\<in\>f<around*|(|u|)>|}>\<in\>f<around|(|w|)>> (similarly for
      <math|g>)

      <item><math|f> is the <key|skeleton> of <math|g>: for all
      <math|w\<in\>W> and <math|Y\<subseteq\>W> such that
      <math|w\<in\>\<cap\>f<around*|(|Y|)>>,

      <\equation*>
        X\<in\>g<around*|(|w|)><infix-iff>X\<cup\><around*|(|\<cap\>f<around*|(|Y|)>|)><rsup|\<complement\>>\<in\>g<around*|(|w|)>
      </equation*>
    </itemize>
  </definition>

  <\proposition>
    <label|asymmetric-implies-acyclic>Let
    <math|<with|font|cal|F>=\<langle\>W,f\<rangle\>> be a frame. Suppose
    <math|f> is reflexive, transitive, and <key|asymmetric>, i.e.
    <math|u<rsub|1>\<in\>\<cap\>f<around*|(|u<rsub|2>|)>> and
    <math|u<rsub|2>\<in\>\<cap\>f<around*|(|u<rsub|1>|)>> implies
    <math|u<rsub|1>=u<rsub|2>>. Then <math|f> is acyclic.
  </proposition>

  <\proof>
    Let <math|u<rsub|1>,\<ldots\>,u<rsub|n>\<in\>W>, and suppose
    <math|u<rsub|1>\<in\>\<cap\>f<around*|(|u<rsub|2>|)>,\<ldots\>,u<rsub|n-1>\<in\>\<cap\>f<around*|(|u<rsub|n>|)>,u<rsub|n>\<in\>\<cap\>f<around*|(|u<rsub|1>|)>>.
    WLOG we will show that <math|u<rsub|1>=u<rsub|n>>. <todo|Todo>
  </proof>

  <\proposition>
    <label|instance-of-skeleton>Let <math|<with|font|cal|F>=\<langle\>W,f,g\<rangle\>>
    be a preferential filter. For all <math|w\<in\>W>, we have in particular:

    <\equation*>
      X\<in\>g<around*|(|w|)><infix-iff>X\<cup\><around*|(|\<cap\>f<around*|(|w|)>|)><rsup|\<complement\>>\<in\>g<around*|(|w|)>
    </equation*>
  </proposition>

  <\proof>
    This is just the <math|Y=<around*|{|w|}>> instance of the
    \<#2018\>skeleton\<#2019\> property. Note that for
    <math|Y=<around*|{|w|}>>,

    <\equation*>
      \<cap\>f<around*|(|Y|)>=<big|cup><rsub|u\<in\><around*|{|w|}>>f<around*|(|u|)>=\<cap\>f<around*|(|w|)>
    </equation*>

    Since <math|f> is reflexive, <math|w\<in\>\<cap\>f<around*|(|w|)>>. Since
    <math|f> is the skeleton of <math|g>, we have our conclusion.
  </proof>

  <subsection|Neighborhood Semantics>

  <\definition>
    <cite|pacuit2017neighborhood> Let <math|<with|font|cal|F>=<around|\<langle\>|W,f,g|\<rangle\>>>
    be a neighborhood frame. A <key|neighborhood model> based on
    <math|<with|font|cal|F>> is <math|<Model>=<around|\<langle\>|W,f,g,V|\<rangle\>>>,
    where <math|V :<value|Lang>\<to\><value|powerset><around|(|W|)>> is a
    valuation function.
  </definition>

  <\definition>
    <cite|pacuit2017neighborhood> Let <math|<Model>=<around|\<langle\>|W,f,g,V|\<rangle\>>>
    be a model based on <math|<with|font|cal|F>=<around|\<langle\>|W,f,g|\<rangle\>>>
    The (neighborhood) semantics for <math|<value|Lang>> are defined
    recursively as follows:

    <\equation*>
      <tabular|<tformat|<cwith|1|6|1|1|cell-lborder|1ln>|<cwith|1|6|3|3|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lsep|1em>|<cwith|1|-1|2|2|cell-rsep|1em>|<cwith|1|1|2|2|cell-lsep|1em>|<cwith|1|1|2|2|cell-rsep|1em>|<cwith|5|5|2|2|cell-lsep|1em>|<cwith|5|5|2|2|cell-rsep|1em>|<cwith|5|5|1|3|cell-tborder|0ln>|<cwith|5|5|1|1|cell-lborder|1ln>|<cwith|5|5|3|3|cell-rborder|1ln>|<cwith|6|6|1|-1|cell-tborder|0ln>|<cwith|5|5|1|-1|cell-bborder|0ln>|<cwith|6|6|1|-1|cell-bborder|1ln>|<cwith|6|6|1|1|cell-lborder|1ln>|<cwith|6|6|3|3|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|0ln>|<cwith|2|2|1|-1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<table|<row|<cell|<value|Model>,w\<Vdash\>p>|<cell|iff>|<cell|w\<in\>V<around*|(|p|)>>>|<row|<cell|<value|Model>,w\<Vdash\>\<neg\>\<varphi\>>|<cell|iff>|<value|Model>,w<neg|\<Vdash\>>\<varphi\>>|<row|<cell|<value|Model>,w\<Vdash\>\<varphi\>\<wedge\>\<psi\>>|<cell|iff>|<cell|<value|Model>,w\<Vdash\>\<varphi\><infix-and><value|Model>,w\<Vdash\>\<psi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|Know>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
      \<mid\><value|Model>,u\<Vdash\>\<varphi\>|}>\<in\>f<around*|(|w|)>>>|<row|<cell|<value|Model>,w\<Vdash\><value|Knownby>\<varphi\>>|<cell|iff>|<cell|\<forall\>u\<in\>W,<text|
      if >w\<in\>\<cap\>f<around*|(|u|)><text| then
      ><value|Model>,u\<Vdash\>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|Typ>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
      \<mid\><value|Model>,u\<Vdash\>\<varphi\>|}>\<in\>g<around*|(|w|)>>>>>>
    </equation*>
  </definition>

  In neighborhood semantics, the operators <math|<value|Know>>,
  <math|<value|Knownby>>, and <math|<value|Typ>> are more natural to
  interpret. But when we gave our neural semantics, we instead interpreted
  the <with|font-shape|italic|duals> <math|<value|diaKnow>>,
  <math|<value|diaKnownby>>, and <math|<value|diaTyp>>. Since we need to
  relate the two, I'll write the explicit neighborhood semantics for the
  duals here:

  <\equation*>
    <tabular|<tformat|<cwith|1|3|2|2|cell-lsep|1em>|<cwith|1|3|2|2|cell-rsep|1em>|<cwith|2|2|2|2|cell-lsep|1em>|<cwith|2|2|2|2|cell-rsep|1em>|<cwith|2|2|1|3|cell-tborder|0ln>|<cwith|3|3|1|3|cell-tborder|0ln>|<cwith|2|2|1|3|cell-bborder|0ln>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<table|<row|<cell|<value|Model>,w\<Vdash\><value|diaKnow>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
    \<mid\><value|Model>,u<neg|\<Vdash\>>\<varphi\>|}><neg|\<in\>>f<around*|(|w|)>>>|<row|<cell|<value|Model>,w\<Vdash\><value|diaKnownby>\<varphi\>>|<cell|iff>|<cell|\<exists\>u\<in\>W<text|
    such that >w\<in\>\<cap\>f<around*|(|u|)><text| and
    ><value|Model>,u\<Vdash\>\<varphi\>>>|<row|<cell|<value|Model>,w\<Vdash\><value|diaTyp>\<varphi\>>|<cell|iff>|<cell|<around*|{|u
    \<mid\><value|Model>,u<neg|\<Vdash\>>\<varphi\>|}><neg|\<in\>>g<around*|(|w|)>>>>>>
  </equation*>

  <\definition>
    <cite|pacuit2017neighborhood> <with|font-series|medium|<key|(Truth in a
    model)>> <math|<value|Model>\<models\>\<varphi\>> iff
    <math|<value|Model>,w\<Vdash\>\<varphi\>> for all <math|w\<in\>W>.
  </definition>

  <\definition>
    <cite|pacuit2017neighborhood> <key|(Entailment)> Let
    <math|<with|font-family|ss|F>> be a collection of neighborhood frames.
    <math|\<Gamma\>\<models\><rsub|<with|font-family|ss|F>>\<varphi\>> if for
    all models <math|<value|Model>> based on a frame
    <math|<with|font|cal|F>\<in\><with|font-family|ss|F>> and for all worlds
    <math|w\<in\>W>, if <math|<value|Model>,w\<models\>\<Gamma\>> then
    <math|<value|Model>,w\<models\>\<varphi\>>.
  </definition>

  <\note*>
    This is the <with|font-shape|italic|local> consequence relation in modal
    logic.
  </note*>

  <section|From Nets to Frames>

  <with|font-series|bold|<center|This is the easy (\Psoundness\Q)
  direction!>>

  <\definition>
    Given a BFNN <math|<Net>>, its <key|simulation frame>
    <math|<with|font|cal|F><rsup|\<bullet\>>=<around|\<langle\>|W,f,g|\<rangle\>>>
    is given by:

    <\itemize>
      <item><math|W=N>

      <item><math|f<around|(|w|)>=<around*|{|S\<subseteq\>W
      \<mid\>w<neg|\<in\>><value|Reach><around*|(|S<rsup|\<complement\>>|)>|}>>

      <item><math|g<around|(|w|)>=><math|<around*|{|S\<subseteq\>W
      \<mid\>w<neg|\<in\>><value|Prop><around*|(|S<rsup|\<complement\>>|)>|}>>
    </itemize>

    Moreover, the <key|simulation model> <math|<Model><rsup|\<bullet\>>=<around|\<langle\>|W,f,g,V|\<rangle\>>>
    based on <math|<with|font|cal|F><rsup|\<bullet\>>> has:

    <\itemize>
      <item><math|V<rsub|<value|Model><rsup|\<bullet\>>><around|(|p|)>=V<rsub|<value|Net>><around*|(|p|)>>;\ 

      <item><math|V<rsub|<value|Model><rsup|\<bullet\>>><around|(|i|)>=V<rsub|<value|Net>><around*|(|i|)>>
    </itemize>
  </definition>

  <\theorem>
    <label|thm-net-to-frame>Let <math|<Net>> be a BFNN, and let
    <math|<value|Model><rsup|\<bullet\>>> be the simulation model based on
    <math|<with|font|cal|F><rsup|\<bullet\>>>. Then for all <math|w\<in\>W>,

    <\equation*>
      <value|Model><rsup|\<bullet\>>,w\<Vdash\>\<varphi\>*<infix-iff><value|Net>,w\<Vdash\>\<varphi\>
    </equation*>
  </theorem>

  <\proof>
    By induction on <math|\<varphi\>>. The propositional,
    <math|\<neg\>\<varphi\>>, and <math|\<varphi\>\<wedge\>\<psi\>> cases are
    trivial.

    <\description>
      <with|font-series|bold|<math|<math|<diaKnow>\<varphi\>>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model><rsup|\<bullet\>>,w\<Vdash\><diaKnow>\<varphi\>>|<cell|<text|iff
        >>|<cell|<around*|{|u \<mid\><value|Model><rsup|\<bullet\>>,w<neg|\<Vdash\>>\<varphi\>|}>\<nin\>f<around|(|w|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<text|iff >>|<cell|<around*|{|u
        \<mid\>u <neg|\<in\>><semantics|\<varphi\>>|}>\<nin\>f<around|(|w|)>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<semantics|\<varphi\>><rsup|\<complement\>>\<nin\>f<around|(|w|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Reach><around|(|<semantics|<around|(|\<varphi\><rsup|\<complement\>>|)><rsup|\<complement\>>>|)>>|<cell|<text|(by
        choice of >f)>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Reach><around|(|<semantics|\<varphi\>>|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaKnow>\<varphi\>>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|<value|Net>,w\<Vdash\><value|diaKnow>\<varphi\>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>

      <with|font-series|bold|<math|<value|diaKnownby>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model><rsup|\<bullet\>>,w\<Vdash\><value|diaKnownby>\<varphi\>>|<cell|<text|iff
        >>|<cell|\<exists\>u<text| such that
        >w\<in\>\<cap\>f<around*|(|u|)><text| and
        ><value|Model><rsup|\<bullet\>>,u\<Vdash\>\<varphi\>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|\<exists\>u<text| such
        that >w\<in\>\<cap\>f<around*|(|u|)><text| and
        >u\<in\><semantics|\<varphi\>>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|\<exists\>u\<in\><semantics|\<varphi\>><text| such that
        >w\<in\><big|cap><rsub|X\<in\>f<around*|(|u|)>>X>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|\<exists\>u\<in\><semantics|\<varphi\>><text| such that
        >w\<in\><big|cap><rsub|u<neg|\<in\>><value|Reach><around*|(|X<rsup|\<complement\>>|)>>X>|<cell|<text|(by
        choice of <math|f>)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><value|Reachedby><around*|(|<semantics|\<varphi\>>|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|<value|Net>,w\<Vdash\><value|diaKnownby>\<varphi\>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>

      <with|font-series|bold|<math|<diaTyp>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model><rsup|\<bullet\>>,w\<Vdash\><diaTyp>\<varphi\>>|<cell|<text|iff
        >>|<cell|<around*|{|u \<mid\><value|Model><rsup|\<bullet\>>,w<neg|\<Vdash\>>\<varphi\>|}>\<nin\>g<around|(|w|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<text|iff >>|<cell|<around*|{|u
        \<mid\>u <neg|\<in\>><semantics|\<varphi\>>|}>\<nin\>g<around|(|w|)>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<semantics|\<varphi\>><rsup|\<complement\>>\<nin\>g<around|(|w|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Prop><around|(|<semantics|<around|(|\<varphi\><rsup|\<complement\>>|)><rsup|\<complement\>>>|)>>|<cell|<text|(by
        choice of >g)>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Prop><around|(|<semantics|\<varphi\>>|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaTyp>\<varphi\>>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|<value|Net>,w\<Vdash\><value|diaTyp>\<varphi\>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>
    </description>

    \;
  </proof>

  <\corollary>
    <math|<Model><rsup|\<bullet\>>\<models\>\<varphi\>> iff
    <math|<Net>\<models\>\<varphi\>>.
  </corollary>

  <\theorem>
    <label|simulation-is-preferential><math|<with|font|cal|F><rsup|\<bullet\>>>
    is a preferential filter.
  </theorem>

  <\proof>
    We show each in turn:

    <\description>
      <item*|<math|W> is finite>This holds because our BFNN is finite.

      <item*|<math|f> is closed under finite intersection>Suppose
      <math|X<rsub|1>,\<ldots\>,X<rsub|n>\<in\>f<around|(|w|)>>. By
      definition of <math|f>, <math|w\<nin\><big|cup><rsub|i><Reach><around|(|X<rsub|i><rsup|\<complement\>>|)>>
      for all <math|i>. Since <math|<Reach>> is monotonic, <todo|Make this a
      lemma!> we have <math|<big|cup><rsub|i><Reach><around|(|X<rsub|i><rsup|\<complement\>>|)>=<Reach><around|(|<big|cup><rsub|i>X<rsub|i><rsup|\<complement\>>|)>=<Reach><around|(|<around|(|<big|cap><rsub|i>X<rsub|i>|)><rsup|\<complement\>>|)>>.
      So <math|w<neg|\<in\>><Reach><around|(|<around|(|<big|cap><rsub|i>X<rsub|i>|)><rsup|\<complement\>>|)>>.
      But this means that <math|<big|cap><rsub|i>X<rsub|i>\<in\>f<around|(|w|)>>.

      <item*|<math|f> is closed under superset>Suppose
      <math|X\<in\>f<around|(|w|)>,X\<subseteq\>Y>. By definition of
      <math|f>, <math|w\<nin\><Reach><around|(|X<rsup|\<complement\>>|)>>.
      Note that <math|Y<rsup|\<complement\>>\<subseteq\>X<rsup|\<complement\>>>,
      and so by monotonicity of <math|<Reach>> we have
      <math|w\<nin\><Reach><around|(|Y<rsup|\<complement\>>|)>>. But this
      means <math|Y\<in\>f<around|(|w|)>>, so we are done.

      <item*|<math|f> contains the unit>Note that for all <math|w\<in\>W>,
      <math|w\<nin\><Reach><around|(|\<emptyset\>|)>=<Reach><around|(|W<rsup|\<complement\>>|)>>.
      So <math|W\<in\>f<around|(|w|)>>.

      <item*|<math|g> contains the unit>Same as the proof for <math|f>,
      except that we use the fact that for all <math|w>,
      <math|w<neg|\<in\>><value|Prop><around*|(|\<emptyset\>|)>>

      <item*|<math|f> is acyclic>Suppose <math|u<rsub|1>,\<ldots\>,u<rsub|n>\<in\>W>,
      with <math|u<rsub|1>\<in\>\<cap\>f<around*|(|u<rsub|2>|)>,\<ldots\>,u<rsub|n-1>\<in\>\<cap\>f<around*|(|u<rsub|n>|)>,u<rsub|n>\<in\>\<cap\>f<around*|(|u<rsub|1>|)>>.
      That is, each <math|u<rsub|i>\<in\><big|cap><rsub|X\<in\>f<around*|(|u<rsub|i+1>|)>>X>.
      By choice of <math|f>, each <math|u<rsub|i>\<in\><big|cap><rsub|u<rsub|i+1><neg|\<in\>><value|Reach><around*|(|X<rsup|\<complement\>>|)>>X>.
      Substituting <math|X<rsup|\<complement\>>> for <math|X> we get
      <math|u<rsub|i>\<in\><big|cap><rsub|u<rsub|i+1><neg|\<in\>><value|Reach><around*|(|X|)>>X<rsup|\<complement\>>>.
      In other words, <math|u<rsub|1>\<in\><value|Reach><rsup|-1><around*|(|u<rsub|2>|)>,\<ldots\>,u<rsub|n-1>\<in\><value|Reach><rsup|-1><around*|(|n|)>,u<rsub|n>\<in\><value|Reach><rsup|-1><around*|(|u<rsub|1>|)>>.
      <todo|Update!> By Proposition <reference|prop-reach-acyclic>, each
      <math|u<rsub|i>=u<rsub|j>>.

      <item*|<math|f> is reflexive>We want to show that
      <math|w\<in\>\<cap\>f<around|(|w|)>>. Well, suppose
      <math|X\<in\>f<around|(|w|)>>, i.e.
      <math|w\<nin\><Reach><around|(|X<rsup|\<complement\>>|)>> (by
      definition of <math|f>). Since for all <math|S>,
      <math|S\<subseteq\><Reach><around|(|S|)>>, we have
      <math|w\<nin\>X<rsup|\<complement\>>>. But this means <math|w\<in\>X>,
      and we are done.

      <item*|<math|g> is reflexive>Same as the proof for <math|f>, except we
      use the fact that for all <math|S>,
      <math|S\<subseteq\><value|Prop><around*|(|S|)>>.

      <item*|<math|f> is transitive>Suppose <math|X\<in\>f<around|(|w|)>>,
      i.e. <math|w\<nin\><Reach><around|(|X<rsup|\<complement\>>|)>>. Well,

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Reach><around|(|X<rsup|\<complement\>>|)>>|<cell|=>|<cell|<Reach><around|(|<Reach><around|(|X<rsup|\<complement\>>|)>|)>>|<cell|<with|font-family|rm|<text|(by
        Idempotence of >><Reach>)>>|<row|<cell|>|<cell|=>|<cell|<Reach><around|(|<around*|{|u\<mid\>u\<in\><value|Reach><around*|(|X<rsup|\<complement\>>|)>|}>|)>>|<cell|>>|<row|<cell|>|<cell|=>|<cell|<Reach><around|(|<around*|{|u\<mid\>u<neg|\<in\>><value|Reach><around*|(|X<rsup|\<complement\>>|)>|}><rsup|\<complement\>>|)>>|<cell|>>|<row|<cell|>|<cell|=>|<cell|<Reach><around|(|<around*|{|u\<mid\>X\<in\>f<around*|(|u|)>|}><rsup|\<complement\>>|)>>|<cell|<with|font-family|rm|<text|(by
        definition of >>f)>>>>>
      </equation*>

      So by definition of <math|f>, <math|<around*|{|u\<mid\>X\<in\>f<around*|(|u|)>|}>\<in\>f<around|(|w|)>>.

      <item*|<math|g> is transitive>Same as the proof for <math|f>, except we
      use the fact that <math|<value|Prop>> is idempotent.

      <item*|<math|f> is the skeleton of <math|g>>Suppose
      <math|w\<in\>\<cap\>f<around*|(|Y|)>>. We will show the
      <math|<around*|(|\<leftarrow\>|)>> direction; the other direction is
      similar. Suppose <math|X\<cup\><around*|(|\<cap\>f<around*|(|Y|)>|)><rsup|\<complement\>>\<in\>g<around*|(|w|)>>.
      By choice of <math|g>, <math|w<neg|\<in\>><value|Prop><around*|(|<around*|[|X\<cup\><around*|(|\<cap\>f<around*|(|Y|)>|)><rsup|\<complement\>>|]><rsup|\<complement\>>|)>>.
      Distributing the outer complement, we have
      <math|w<neg|\<in\>><value|Prop><around*|(|X<rsup|\<complement\>>\<cap\><around*|(|\<cap\>f<around*|(|Y|)>|)>|)>>.
      By choice of <math|f>, <math|w<neg|\<in\>><value|Prop><around*|(|X<rsup|\<complement\>>\<cap\><big|cup><rsub|w\<in\>Y><around*|(|<big|cap><rsub|w<neg|\<in\>><value|Reach><around*|(|Y<rsup|\<complement\>>|)>>Y|)>|)>>.
      Substituting <math|Y<rsup|\<complement\>>> for <math|Y>, we get
      <math|w<neg|\<in\>><value|Prop><around*|(|X<rsup|\<complement\>>\<cap\><big|cup><rsub|w\<in\>Y<rsup|\<complement\>>><around*|(|<big|cap><rsub|w<neg|\<in\>><value|Reach><around*|(|Y|)>>Y<rsup|\<complement\>>|)>|)>>.
      By definition of <math|<value|Reachedby>>,
      <math|w<neg|\<in\>><value|Prop><around*|(|X<rsup|\<complement\>>\<cap\><value|Reachedby><around*|(|Y<rsup|\<complement\>>|)>|)>>.

      Similarly, <math|w\<in\>\<cap\>f<around*|(|Y|)>> gives us
      <math|w\<in\><value|Reachedby><around*|(|Y<rsup|\<complement\>>|)>>,
      the precondition of Minimal Cause (Proposition
      <reference|minimal-cause>). By Minimal Cause, we conclude that
      <math|w<neg|\<in\>><value|Prop><around*|(|X<rsup|\<complement\>>|)>>,
      i.e. <math|X\<in\>g<around*|(|w|)>>.
    </description>

    \;
  </proof>

  <section|From Frames to Nets>

  <with|font-series|bold|<center|This is the harder (\Pcompleteness\Q)
  direction!>>

  <\definition>
    Suppose we have net <math|<Net>> and node <math|n\<in\>N> with incoming
    nodes <math|m<rsub|1>,\<ldots\>,m<rsub|k>,<around|(|m<rsub|i>,n|)>\<in\>E>.
    Let <math|<hash>:<value|powerset><around|(|<around*|{|m<rsub|1>,\<ldots\>,m<rsub|k>|}>|)>\<times\><with|font|Bbb|\<bbb-N\>><rsup|k>\<to\><with|font|Bbb|\<bbb-N\>>>
    be defined by

    <\equation*>
      <hash><around|(|S,<wide|w|\<vect\>>|)>=<big|prod><rsub|m<rsub|i>\<in\>S>w<rsub|i>
    </equation*>
  </definition>

  <\proposition>
    <label|hash-well-defined><math|<hash><around|(|S,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|m<rsub|i>,n|)>|)>:<value|powerset><around|(|<around*|{|m<rsub|1>,\<ldots\>,m<rsub|k>|}>|)>\<to\><Primes><rsub|k>>,
    where

    <\equation*>
      <Primes><rsub|k>=<around*|{|n\<in\><with|font|Bbb|N >\<mid\>n is the
      product of some subset of primes <around*|{|p<rsub|1>,\<ldots\>,p<rsub|k>|}>|}>
    </equation*>

    is bijective (and so has a well-defined inverse <math|<hash><rsup|-1>>).
  </proposition>

  <\definition>
    Let <math|<value|Model>> be a model based on preferential filter
    <math|<with|font|cal|F>=<around|\<langle\>|W,f,g|\<rangle\>>>. Its
    <key|simulation net> <math|<Net><rsup|\<bullet\>>=<around|\<langle\>|N,E,W,A,O,V|\<rangle\>>>
    is the BFNN given by:

    <\itemize>
      <item><math|N=W>

      <item><math|<around*|(|u,v|)>\<in\>E> iff
      <math|u\<in\>\<cap\>f<around*|(|v|)>>
    </itemize>

    Now let <math|m<rsub|1>,\<ldots\>,m<rsub|k>> list those nodes such that
    <math|<around*|(|m<rsub|i>,n|)>\<in\>E>.

    <\itemize>
      <item><math|W<around|(|m<rsub|i>,n|)>=p<rsub|i>>, the <math|i>th prime
      number.

      <item><math|A<rsup|<around|(|n|)>><around|(|<wide|x|\<vect\>>,<wide|w|\<vect\>>|)>=<hash><around|(|<around*|{|m<rsub|i>\<mid\>x<rsub|i>=1|}>,<wide|w|\<vect\>>|)>>

      <item><math|O<rsup|<around|(|w|)>><around|(|x|)>=1> iff
      <math|<around*|(|<hash><rsup|-1><around|(|x|)><around|[|0|]>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>>

      <item><math|V<rsub|<value|Net><rsup|\<bullet\>>><around*|(|p|)>=V<rsub|<value|Model>><around*|(|p|)>>
    </itemize>
  </definition>

  <\lemma>
    <label|activates-to-g>Let <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
    be those nodes such that <math|<around*|(|m<rsub|i>,n|)>\<in\>E>. Then

    <\equation*>
      <value|Activ><rsub|S><around*|(|<wide|m|\<vect\>>,n|)>=1<infix-iff><around*|(|S\<cap\><around*|{|m<rsub|1>,\<ldots\>,m<rsub|k>|}>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>
    </equation*>
  </lemma>

  <\proof>
    <math|<value|Activ><rsub|S><around*|(|<wide|m|\<vect\>>,n|)>=1> iff:

    <\equation*>
      <tabular|<tformat|<cwith|1|-1|1|-1|cell-hyphen|n>|<table|<row|<cell|>|<cell|O<rsup|<around*|(|n|)>><around*|(|A<rsup|<around*|(|n|)>><around*|(|<around*|(|<value|bigchi><rsub|S><around*|(|m<rsub|1>|)>,\<ldots\>,<value|bigchi><rsub|S><around*|(|m<rsub|k>|)>|)>;<around*|(|W<around*|(|m<rsub|1>,n|)>,\<ldots\>,W<around*|(|m<rsub|k>,n|)>|)>|)>|)>=1>>|<row|<cell|<infix-iff>>|<cell|<around*|\<nobracket\>|<hash><rsup|-1><around|(|<hash><around|(|<around*|{|m<rsub|i>\<mid\>m<rsub|i>\<in\>S|}>;<around*|(|W<around*|(|m<rsub|1>,n|)>,\<ldots\>,W<around*|(|m<rsub|k>,n|)>|)>|)>|\<nobracket\>><around|[|0|]>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>>>|<row|<cell|<infix-iff>>|<cell|<around*|{|m<rsub|i>\<mid\>m<rsub|i>\<in\>S|}><rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>>>|<row|<cell|<infix-iff>>|<cell|<around*|(|S\<cap\><around*|{|m<rsub|1>,\<ldots\>,m<rsub|k>|}>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>>>>>>
    </equation*>

    \;
  </proof>

  <\claim>
    <label|simulation-is-a-BFNN><math|<value|Net><rsup|\<bullet\>>> is a
    BFNN.
  </claim>

  <\proof>
    Clearly <math|<value|Net><rsup|\<bullet\>>> is a binary ANN. We check the
    rest of the conditions:

    <\description>
      <item*|<math|<value|Net><rsup|\<bullet\>>> is feed-forward>Suppose for
      contradiction that <math|E> contains a cycle, i.e. distinct
      <math|u<rsub|1>,\<ldots\>,u<rsub|n>\<in\>N> such that
      <math|u<rsub|1><op|E>u<rsub|2>,\<ldots\>,u<rsub|n-1><op|E>u<rsub|n>,u<rsub|n><op|E>u<rsub|1>>.
      Then we have <math|u<rsub|1>\<in\>\<cap\>f<around*|(|u<rsub|2>|)>,\<ldots\>,u<rsub|n-1>\<in\>\<cap\>f<around*|(|u<rsub|n-1>|)>,u<rsub|n>\<in\>\<cap\>f<around*|(|u<rsub|1>|)>>,
      which contradicts the fact that <math|f> is acyclic.

      <item*|<math|O<rsup|<around|(|n|)>>\<circ\>A<rsup|<around|(|n|)>>> is
      zero at zero>Suppose for contradiction that
      <math|O<rsup|<around|(|v|)>><around|(|A<rsup|<around|(|v|)>><around|(|<wide|0|\<vect\>>,<wide|w|\<vect\>>|)>|)>=1>.
      Then <math|<around*|(|<hash><rsup|-1><around|(|<hash><around|(|\<emptyset\>|)>|)>|)><rsup|\<complement\>>=\<emptyset\><rsup|\<complement\>>=W<neg|\<in\>>g<around*|(|v|)>>,
      which contradicts the fact that <math|f> contains the unit.

      <item*|<math|O<rsup|<around|(|n|)>>\<circ\>A<rsup|<around|(|n|)>>> is
      monotonically increasing>Let <math|<wide|w|\<vect\>><rsub|1>,<wide|w|\<vect\>><rsub|2>>
      be such that <math|<value|hash>> is well-defined (i.e. are vectors of
      prime numbers), and suppose <math|<wide|w|\<vect\>><rsub|1>\<less\><wide|w|\<vect\>><rsub|2>>.
      If <math|O<rsup|<around|(|v|)>><around|(|A<rsup|<around|(|v|)>><around|(|<wide|x|\<vect\>>,<wide|w<rsub|1>|\<vect\>>|)>|)>=1>,
      then <math|<around*|(|<hash><rsup|-1><around|(|<hash><around|(|<wide|x|\<vect\>>,<wide|w<rsub|1>|\<vect\>>|)>|)><around|[|0|]>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>.
      But this just means <math|<around*|{|m<rsub|i>\<mid\>x<rsub|i>=1|}><rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>.
      And so <math|<around*|(|<hash><rsup|-1><around|(|<hash><around|(|<wide|x|\<vect\>>,<wide|w<rsub|2>|\<vect\>>|)>|)><around|[|0|]>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>.
      But then <math|O<rsup|<around|(|n|)>><around|(|A<rsup|<around|(|n|)>><around|(|<wide|x|\<vect\>>,<wide|w<rsub|2>|\<vect\>>|)>|)>=1>.

      The main point here is just that <math|<wide|w<rsub|1>|\<vect\>>> and
      <math|<wide|w<rsub|2>|\<vect\>>> are just indexing the set in question,
      and their actual values don't affect the final output (we don't need
      the <math|<wide|w|\<vect\>><rsub|1>\<less\><wide|w|\<vect\>><rsub|2>>
      hypothesis!). The real work happens within <math|g<around*|(|v|)>>.
    </description>
  </proof>

  <\lemma>
    <label|lemma-Reach-and-R*><math|<Reach><rsub|<Net><rsup|\<bullet\>>><around|(|S|)>=<around*|{|n\<mid\>S<rsup|\<complement\>><neg|\<in\>>f<around*|(|n|)>|}>>
  </lemma>

  <\proof>
    For the <math|(\<supseteq\>)> direction, let <math|n> be such that
    <math|S<rsup|\<complement\>><neg|\<in\>>f<around*|(|n|)>>. By Proposition
    <reference|prop-filter-consistency> and the fact that
    <math|\<langle\>W,f\<rangle\>> forms a proper filter,
    <math|S\<in\>f<around*|(|n|)>>. By definition of core,
    <math|\<cap\>f<around*|(|n|)>\<subseteq\>S>. <math|f> is reflexive, which
    means in particular that <math|n\<in\>\<cap\>f<around*|(|n|)>\<subseteq\>S>.
    By the base case of <math|<value|Reach>>, we have
    <math|n\<in\><value|Reach><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>>.

    Now for the <math|(\<subseteq\>)> direction. Suppose
    <math|n\<in\><Reach><around|(|S|)>>, and proceed by induction on
    <math|<Reach>>.

    <\description>
      <item*|Base step><math|n\<in\>S>. Suppose for contradiction that
      <math|S<rsup|\<complement\>>\<in\>f<around*|(|n|)>>. By definition of
      core, <math|\<cap\>f<around*|(|n|)>\<subseteq\>S<rsup|\<complement\>>>.
      But since <math|<with|font|cal|F>> is reflexive,
      <math|n\<in\>\<cap\>f<around*|(|n|)>>. So
      <math|n\<in\>S<rsup|\<complement\>>>, which contradicts
      <math|n\<in\>S>.

      <item*|Inductive step>There is <math|m\<in\><value|Reach><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>>
      such that <math|<around|(|m,n|)>\<in\>E> (and so
      <math|m\<in\>\<cap\>f<around*|(|n|)>>). By inductive hypothesis,
      <math|S<rsup|\<complement\>><neg|\<in\>>f<around*|(|m|)>>. Now suppose
      for contradiction that <math|S<rsup|\<complement\>>\<in\>f<around*|(|n|)>>.
      Since <math|f> is transitive, <math|<around*|{|t\<mid\>S<rsup|\<complement\>>\<in\>f<around*|(|t|)>|}>\<in\>f<around*|(|n|)>>.
      By definition of core, <math|\<cap\>f<around*|(|n|)>\<subseteq\><around*|{|t\<mid\>S<rsup|\<complement\>>\<in\>f<around*|(|t|)>|}>>.
      Since <math|m\<in\>\<cap\>f<around*|(|n|)>>,
      <math|S<rsup|\<complement\>>\<in\>f<around*|(|m|)>>. But this
      contradicts <math|S<rsup|\<complement\>><neg|\<in\>>f<around*|(|m|)>>!
    </description>
  </proof>

  <\lemma>
    <label|lemma-Prop-and-H*><math|<Prop><rsub|<Net><rsup|\<bullet\>>><around|(|S|)>=<around*|{|n\<mid\>S<rsup|\<complement\>>
    <neg|\<in\>>g<around*|(|n|)>|}>>
  </lemma>

  <\proof>
    For the <math|(\<supseteq\>)> direction, suppose
    <math|S<rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>>. Since <math|f>
    is the skeleton of <math|g>, by Proposition
    <reference|instance-of-skeleton> we have
    <math|S<rsup|\<complement\>>\<cup\><around*|(|\<cap\>f<around*|(|n|)>|)><rsup|\<complement\>><rsup|><neg|\<in\>>g<around*|(|n|)>>,
    i.e. <math|<around*|[|S\<cap\><around*|(|\<cap\>f<around*|(|n|)>|)>|]><rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>>.
    But <math|S\<cap\><around*|(|\<cap\>f<around*|(|n|)>|)>=<around*|{|m<rsub|i>\<mid\>m<rsub|i>\<in\>S<infix-and><around*|(|m<rsub|i><rsub|>,n|)>\<in\>E|}>=<hash><rsup|-1><around|(|<value|hash><around*|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<value|Prop><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>><around|(|u|)>,<smash|<wide|W|\<vect\>>><around|(|u,v|)>|)>|)><around|[|0|]>>,
    and so

    <\equation*>
      <around*|(|<hash><rsup|-1><around|(|<hash><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<value|Prop><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>><around|(|u|)>,<smash|<wide|W|\<vect\>>><around|(|u,v|)>|)>|)><around|[|0|]>|)><rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>
    </equation*>

    i.e. <math|O<rsup|<around|(|v|)>><around|(|A<rsup|<around|(|v|)>><around|(|<smash|<wide|<bigchi>|\<wide-varrightarrow\>>><rsub|<Prop><rsub|<value|Net><rsup|\<bullet\>>><around|(|S|)>><around|(|u|)>,<smash|<wide|W|\<wide-varrightarrow\>>><around|(|u,v|)>|)>|)>=1>,
    and we conclude that <math|v\<in\><value|Prop><rsub|<value|Net><rsup|\<bullet\>>><around*|(|S|)>>.

    As for the <math|(\<subseteq\>)> direction, suppose
    <math|n\<in\><Prop><rsub|<value|Net><rsup|\<bullet\>>><around|(|S|)>>,
    and proceed by induction on <math|<Prop>>.

    <\description>
      <item*|Base step><math|n\<in\>S>. Suppose for contradiction that
      <math|S<rsup|\<complement\>>\<in\>g<around*|(|n|)>>. Since
      <math|<with|font|cal|G>> is reflexive,
      <math|n\<in\>\<cap\>g<around*|(|n|)>>. By definition of core, we have
      <math|\<cap\>g<around*|(|n|)>\<subseteq\>S<rsup|\<complement\>>>. But
      then <math|n\<in\>\<cap\>g<around*|(|n|)>\<subseteq\>S<rsup|\<complement\>>>,
      i.e. <math|n\<in\>S<rsup|\<complement\>>>, which contradicts
      <math|n\<in\>S>.

      <item*|Inductive step>Let <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
      list those nodes such that <math|<around|(|u<rsub|i>,v|)>\<in\>E>. We
      have

      <\equation*>
        <value|Activ><rsub|<value|Prop><around*|(|S|)>><around*|(|<wide|m|\<vect\>>,n|)>=1
      </equation*>

      By Lemma <reference|activates-to-g>, this means that
      <math|<around*|{|m<rsub|i>\<mid\>m<rsub|i>\<in\><value|Prop><around*|(|S|)>|}><rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>>.
      But by our inductive hypothesis, <math|<around*|{|m<rsub|i>\<mid\>m<rsub|i>\<in\><value|Prop><around*|(|S|)>|}>=<around*|{|m<rsub|i>\<mid\>S<rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>|}>>.
      For convenience, let <math|T> be this latter set, i.e.
      <math|T=<around*|{|m<rsub|i>\<mid\>S<rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>|}>>.
      So we have <math|T<rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>>.

      We would like to show that <math|S<rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>>.
      Suppose for contradiction that <math|S<rsup|\<complement\>>\<in\>g<around*|(|n|)>>.
      Notice that, by definition of <math|T>,
      <math|T<rsup|\<complement\>>=<around*|{|u<rsub|i>\<mid\>S<rsup|\<complement\>>\<in\>g<around*|(|u<rsub|i>|)>|}>>.
      Since <math|S<rsup|\<complement\>>\<in\>g<around*|(|v|)>> and
      <math|<with|font|cal|G>> is transitive,
      <math|T<rsup|\<complement\>>\<in\>g<around*|(|v|)>>, which contradicts
      <math|T<rsup|\<complement\>><neg|\<in\>>g<around*|(|v|)>>.
    </description>

    \;
  </proof>

  <todo|RE-CONSTRUCT MY STEPS>

  <\lemma>
    <label|lemma-Prop-and-H*><math|<Prop><rsub|<Net><rsup|\<bullet\>>><around|(|S|)>=<around*|{|n\<mid\>S<rsup|\<complement\>>
    <neg|\<in\>>g<around*|(|n|)>|}>>
  </lemma>

  <\proof>
    For the <math|(\<supseteq\>)> direction, suppose
    <math|S<rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>>, and let
    <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>> be those
    <math|m<rsub|i>> such that <math|<around*|(|m<rsub|i>,n|)>\<in\>E> (i.e.
    <math|m<rsub|i>\<in\>\<cap\>f<around*|(|n|)>>). Since <math|f> is the
    skeleton of <math|g>, by Proposition <reference|instance-of-skeleton> we
    have <math|S<rsup|\<complement\>>\<cup\><around*|(|\<cap\>f<around*|(|n|)>|)><rsup|\<complement\>><rsup|><neg|\<in\>>g<around*|(|n|)>>,
    i.e. <math|<around*|[|S\<cap\><around*|(|\<cap\>f<around*|(|n|)>|)>|]><rsup|\<complement\>><neg|\<in\>>g<around*|(|n|)>>.
    But <math|S\<cap\><around*|(|\<cap\>f<around*|(|n|)>|)>=S\<cap\><around*|{|m<rsub|1>,\<ldots\>,m<rsub|k>|}>>,
    and so by Lemma <reference|activates-to-g>, for\ 

    <\equation*>
      <value|Activ><rsub|S><around*|(|<wide|m|\<vect\>>,n|)>=1
    </equation*>

    \;
  </proof>

  <todo|END CONSTRUCTION>

  <\theorem>
    <label|frame-to-net>Let <math|<value|Model>> be a model based on a
    preferential filter <math|<with|font|cal|F>>, and let
    <math|<Net><rsup|\<bullet\>>> be the corresponding simulation net. We
    have, for all <math|w\<in\>W>,

    <\equation*>
      <value|Model>,w\<Vdash\>\<varphi\>*<infix-iff><value|Net><rsup|\<bullet\>>,w\<Vdash\>\<varphi\>
    </equation*>
  </theorem>

  <\proof>
    By induction on <math|\<varphi\>>. Again, the propositional,
    <math|\<neg\>\<varphi\>>, and <math|\<varphi\>\<wedge\>\<psi\>> cases are
    trivial.

    <\description>
      <with|font-series|bold|><with|font-series|bold|<math|<diaKnow>\<varphi\>>
      case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model>,w\<Vdash\><diaKnow>\<varphi\>>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\><value|Model>,w<neg|\<Vdash\>>\<varphi\>|}>\<nin\>f<around|(|w|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\>u<neg|\<in\>><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>>|}><rsub|>\<nin\>f<around|(|w|)>>|<cell|<text|(Inductive
        Hypothesis)>>>|<row|<cell|>|<cell|iff>|<cell|<semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>><rsup|\<complement\>>\<nin\>g<around|(|w|)>>|<cell|>>|<row|<cell|>|<cell|iff>|<cell|w\<in\><Reach><rsub|<Net><rsup|\<bullet\>>><around|(|<semantics|\<varphi\>>|)>>|<cell|<text|(by
        Lemma <reference|lemma-Reach-and-R*>)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaKnow>\<varphi\>><rsub|<Net><rsup|\<bullet\>>>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|<value|Net><rsup|\<bullet\>>,w\<Vdash\><value|diaKnow>\<varphi\>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>

      <with|font-series|bold|<math|<value|diaKnownby>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model>,w\<Vdash\><value|diaKnownby>\<varphi\>>|<cell|<text|iff
        >>|<cell|\<exists\>u<text| such that
        >w\<in\>\<cap\>f<around*|(|u|)><text| and
        ><value|Model>,u\<Vdash\>\<varphi\>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|\<exists\>u<text| such
        that >w\<in\>\<cap\>f<around*|(|u|)><text| and
        >u\<in\><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>>>|<cell|<text|(IH)>>>|<row|<cell|>|<cell|iff>|<cell|\<exists\>u\<in\><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>><text|
        such that >w\<in\><big|cap><rsub|X\<in\>f<around*|(|u|)>>X>|<cell|>>|<row|<cell|>|<cell|>|<cell|\<exists\>u\<in\><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>><text|
        such that >w\<in\><big|cap><rsub|u<neg|\<in\>><value|Reach><rsub|<value|Net><rsup|\<bullet\>>><around*|(|X<rsup|\<complement\>>|)>>X>|<cell|<text|(by
        Lemma <reference|lemma-Reach-and-R*>)>>>|<row|<cell|>|<cell|>|<cell|w\<in\><value|Reachedby><around*|(|<semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>>|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|<value|Net><rsup|\<bullet\>>,w\<Vdash\><value|diaKnownby>\<varphi\>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>

      <with|font-series|bold|<math|<diaTyp>\<varphi\>> case:>

      <\equation*>
        <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|4|4|cell-halign|l>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|<Model>,w\<Vdash\><diaTyp>\<varphi\>>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\><value|Model>,u<neg|\<Vdash\>>\<varphi\>|}>\<nin\>g<around|(|w|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<around*|{|u\<mid\>u<neg|\<in\>><semantics|\<varphi\>><rsub|<value|Net><rsup|\<bullet\>>>|}>\<nin\>g<around|(|w|)>>|<cell|<text|(Inductive
        Hypothesis)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|<semantics|\<varphi\>><rsub|<Net><rsup|\<bullet\>>><rsup|\<complement\>>\<nin\>g<around|(|w|)>>|<cell|>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><Prop><rsub|<Net><rsup|\<bullet\>>><around|(|<semantics|\<varphi\>>|)>>|<cell|<text|(by
        Lemma <reference|lemma-Prop-and-H*>)>>>|<row|<cell|>|<cell|<text|iff
        >>|<cell|w\<in\><semantics|<diaTyp>\<varphi\>><rsub|<Net><rsup|\<bullet\>>>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|iff>|<cell|<value|Net><rsup|\<bullet\>>,w\<Vdash\><value|diaTyp>\<varphi\>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>
    </description>

    \;
  </proof>

  <\corollary>
    <value|Model><math|\<models\>\<varphi\>> iff
    <math|<Net><rsup|\<bullet\>>\<models\>\<varphi\>>.
  </corollary>

  <section|Completeness>

  <subsection|The Base Modal Logic>

  <\definition>
    Our logic <value|Logic> is the smallest set of formulas in
    <math|<value|Lang>> containing the axioms

    <\description>
      <item*|<name|>(K)><math|<value|Know><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|<value|Know>\<varphi\>\<rightarrow\><value|Know>\<psi\>|)>>

      <item*|(K<math|\<leftarrow\>>)><math|<value|Knownby><around*|(|\<varphi\>\<rightarrow\>\<psi\>|)>\<rightarrow\><around*|(|<value|Knownby>\<varphi\>\<rightarrow\><value|Knownby>\<psi\>|)>>

      <item*|(T<math|<rsub|<value|Know>>>)><math|<value|Know>\<varphi\>\<rightarrow\>\<varphi\>>

      <item*|(4<math|<rsub|<value|Know>>>)><math|<value|Know>\<varphi\>\<rightarrow\><value|Know><value|Know>\<varphi\>>

      <item*|(Grz)><todo|Update! \U try to use Grz with Refl + Trans to get
      acyclic!>

      \;

      <item*|(Back)><math|\<varphi\>\<rightarrow\><value|Know><value|diaKnownby>\<varphi\>>

      <item*|(Forth)><math|\<varphi\>\<rightarrow\><value|Knownby><value|diaKnow>\<varphi\>>

      \;

      <item*|(T<math|<rsub|<value|Typ>>>)><math|<value|Typ>\<varphi\>\<rightarrow\>\<varphi\>>

      <item*|(4<math|<rsub|<value|Typ>>>)><math|<value|Typ>\<varphi\>\<rightarrow\><value|Typ><value|Typ>\<varphi\>>

      <item*|(Skel)><math|<around*|(|<value|Typ>\<varphi\>\<rightarrow\><value|Knownby>\<psi\>|)>\<leftrightarrow\><around*|(|<value|Typ><around*|(|\<varphi\>\<vee\><value|Knownby>\<psi\>|)>\<rightarrow\><value|Knownby>\<psi\>|)>>
    </description>

    that is closed under:

    <\description>
      <item*|(Necessitation)>If <math|\<varphi\>\<in\><value|Logic>> then
      <math|\<box\>\<varphi\>\<in\><value|Logic>> for
      <math|\<box\>\<in\><around*|{|<value|Know>,<value|Knownby>,<value|Typ>|}>>
    </description>
  </definition>

  The first group of axioms say that <math|<value|Know>> characterizes a
  monotonic, reflexive, transitive, acyclic graph. The second group are
  axioms relating <math|<value|Know>> and <math|<value|Knownby>> \V these are
  from the minimal Tense Logic in temporal logic (<math|<value|Know>> is
  \Plooking into the future\Q, <math|<value|Knownby>> is \Plooking into the
  past\Q). See the <hlink|SEoP page|https://plato.stanford.edu/entries/logic-temporal/>
  for more details.

  The third group characterizes <math|<value|Typ>> as a non-monotonic
  preference relation in terms of <math|<value|Know>> and
  <math|<value|Knownby>>.

  <\definition>
    <cite|pacuit2017neighborhood> <key|(Deduction for <math|<value|Logic>>)>
    <math|<value|proves>\<varphi\>> iff either <math|\<varphi\>> is an axiom,
    or <math|\<varphi\>> follows from some previously obtained formula by one
    of the inference rules. If <math|\<Gamma\>\<subseteq\><value|Lang>> is a
    set of formulas, <math|\<Gamma\><value|proves>\<varphi\>> whenever there
    are finitely many <math|\<psi\><rsub|1>,\<ldots\>,\<psi\><rsub|k>\<in\>\<Gamma\>>
    such that <math|<value|proves>\<psi\><rsub|1>\<wedge\>\<ldots\>\<wedge\>\<psi\><rsub|k>\<rightarrow\>\<varphi\>>.
  </definition>

  <\definition>
    <cite|pacuit2017neighborhood> <math|\<Gamma\>> is <key|consistent> iff
    <math|\<Gamma\><neg|<value|proves>>\<bot\>>. <math|\<Gamma\>> is
    <key|maximally consistent> if <math|\<Gamma\>> is consistent and for all
    <math|\<varphi\>\<in\><value|Lang>> either
    <math|\<varphi\>\<in\>\<Gamma\>> or <math|\<varphi\><neg|\<in\>>\<Gamma\>>.
  </definition>

  <\lemma>
    <label|lindenbaum><cite|pacuit2017neighborhood> (\PLindenbaum's Lemma\Q)
    We can extend any set <math|\<Gamma\>> to a maximally consistent set
    <math|\<Delta\>\<supseteq\>\<Gamma\>>.
  </lemma>

  <\definition>
    <cite|pacuit2017neighborhood> <key|(Proof Set)>
    <math|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>=<around*|{|\<Delta\>\<mid\>\<Delta\><text|
    is maximally consistent and >\<varphi\>\<in\>\<Delta\>|}>>
  </definition>

  <\proposition>
    <label|max-consistent-fact>Let <math|\<Delta\>> be maximally consistent,
    and let <math|\<box\>\<in\><around*|{|<value|Know>,<value|Knownby>,<value|Typ>|}>>.
    We have <math|\<box\>\<varphi\>\<in\>\<Delta\>> iff

    <\equation*>
      \<forall\>\<Sigma\><text| maximally consistent>,<text|if
      >\<forall\>\<psi\>,\<box\>\<psi\>\<in\>\<Delta\><text| implies
      >\<psi\>\<in\>\<Sigma\>,<text| then >\<varphi\>\<in\>\<Sigma\>
    </equation*>
  </proposition>

  <\proof>
    The <math|<around*|(|\<rightarrow\>|)>> direction is straightforward. As
    for the <math|<around*|(|\<leftarrow\>|)>> direction, suppose
    contrapositively that <math|\<box\>\<varphi\><neg|\<in\>>\<Delta\>>, and
    let <math|\<Sigma\>=<around*|{|\<psi\>\<mid\>\<box\>\<psi\>\<in\>\<Delta\>|}>>
    <todo|why is <math|\<Sigma\>> maximally consistent?>. Then by
    construction, for all <math|\<psi\>> <math|\<box\>\<psi\>\<in\>\<Delta\>>
    implies <math|\<psi\>\<in\>\<Sigma\>>, but
    <math|\<varphi\><neg|\<in\>>\<Sigma\>> (since
    <math|\<box\>\<varphi\><neg|\<in\>>\<Delta\>>).
  </proof>

  <\lemma>
    <label|canonical-knownby>Let <math|\<Sigma\>,\<Delta\>> be maximally
    consistent. The following are equivalent:

    <\enumerate>
      <item><math|<value|Know>\<varphi\>\<in\>\<Sigma\>> implies
      <math|\<varphi\>\<in\>\<Delta\>>

      <item><math|<value|Knownby>\<varphi\>\<in\>\<Delta\>> implies
      <math|\<varphi\>\<in\>\<Sigma\>>
    </enumerate>
  </lemma>

  <\proof>
    Suppose (1) holds, and suppose <math|<value|Knownby>\<varphi\>\<in\>\<Delta\>>.
    For contradiction, suppose <math|\<varphi\><neg|\<in\>>\<Sigma\>>. Since
    <math|\<Sigma\>> is maximally consistent,
    <math|\<neg\>\<varphi\>\<in\>\<Sigma\>>. Applying the (Back) axiom, we
    get <math|<value|Know><value|diaKnownby>\<neg\>\<varphi\>\<in\>\<Sigma\>>,
    i.e. <math|<value|Know>\<neg\><value|Knownby>\<varphi\>\<in\>\<Sigma\>>.
    By (1), <math|\<neg\><value|Knownby>\<varphi\>\<in\>\<Delta\>>, i.e.
    <math|<value|Knownby>\<varphi\><neg|\<in\>>\<Delta\>>. But this
    contradicts <math|<value|Knownby>\<varphi\>\<in\>\<Delta\>>!

    Now suppose (2) holds, and suppose <math|<value|Know>\<varphi\>\<in\>\<Sigma\>>.
    For contradiction, suppose <math|\<varphi\><neg|\<in\>>\<Delta\>>. Since
    <math|\<Delta\>> is maximally consistent,
    <math|\<neg\>\<varphi\>\<in\>\<Delta\>>. Applying the (Forth) axiom, we
    get <math|<value|Knownby><value|diaKnow>\<neg\>\<varphi\>\<in\>\<Delta\>>,
    i.e. <math|<value|Knownby>\<neg\><value|Know>\<varphi\>\<in\>\<Delta\>>.
    By (2), <math|\<neg\><value|Know>\<varphi\>\<in\>\<Sigma\>>, i.e.
    <math|<value|Know>\<varphi\><neg|\<in\>>\<Sigma\>>. But this contradicts
    <math|<value|Know>\<varphi\>\<in\>\<Sigma\>>!
  </proof>

  <subsection|Soundness>

  <\theorem>
    <with|font-series|bold|(Soundness)> If
    <math|\<Gamma\><value|proves>\<varphi\>> then
    <math|\<Gamma\>\<models\><rsub|<text|BFNN>>\<varphi\>>
  </theorem>

  <\proof>
    Suppose <math|\<Gamma\><value|proves>\<varphi\>>, and let
    <math|<value|Net>,n\<models\>\<Gamma\>> We just need to check that each
    of the axioms and rules of inference are sound, from which we can
    conclude that <math|<value|Net>,n\<models\>\<varphi\>>. We can do this
    either by the semantics of BFNNs, or instead by checking them in an
    equivalent preferential frame <math|<value|Model><rsup|\<bullet\>>=\<langle\>W,f,g,V\<rangle\>>:

    <\equation*>
      <tabular|<tformat|<cwith|1|1|1|-1|font-series|bold>|<table|<row|<cell|<text|To
      show soundness of:>>|<cell|<text|Use:>>|<cell|<text|Alternative:>>>|<row|<cell|<around*|(|<text|K>|)>>|<cell|<text|Monotonicity
      of ><value|Reach>>|<cell|\<langle\>W,f\<rangle\><text| forms a
      filter>>>|<row|<cell|<around*|(|<text|K>\<leftarrow\>|)>>|<cell|<text|Definition
      of ><value|Reach><rsup|-1>>|<cell|<text|Definition of
      ><value|Knownby>>>|<row|<cell|<around*|(|<text|T><rsub|<value|Know>>|)>>|<cell|<text|Inclusion
      of ><value|Reach>>|<cell|<text|Reflexivity of
      >f>>|<row|<cell|<around*|(|<text|4><rsub|<value|Know>>|)>>|<cell|<text|Idempotence
      of ><value|Reach>>|<cell|<text|Transitivity of
      >f>>|<row|<cell|<text|<around*|(|Grz|)>>>|<cell|<text|Proposition
      <reference|prop-reach-acyclic><todo|Check! \U and update, since the def
      changed>>>|<cell|f <text| is acyclic>
      <text|<todo|Check!>>>>|<row|<cell|<around*|(|<text|T><rsub|<value|Typ>>|)>>|<cell|<text|Inclusion
      of ><value|Prop>>|<cell|<text|Reflexivity of
      >g>>|<row|<cell|<around*|(|<text|4><rsub|<value|Typ>>|)>>|<cell|<text|Idempotence
      of ><value|Prop>>|<cell|<text|Transitivity of
      >g>>|<row|<cell|<around*|(|<text|Back>|)>>|<cell|<text|Monotonicity of
      ><value|Reach>>|<cell|\<langle\>W,f\<rangle\><text| forms a
      filter>>>|<row|<cell|<around*|(|<text|Forth>|)>>|<cell|<text|Monotonicity
      of ><value|Reach>>|<cell|\<langle\>W,f\<rangle\><text| forms a
      filter>>>|<row|<cell|<around*|(|<text|Skel>|)>>|<cell|<text|Minimal
      Cause>>|<cell|f<text| is the skeleton of
      >g>>|<row|<cell|<text|(Necessitation)>>|<cell|\<forall\>w,w<neg|\<in\>><value|Reach><around*|(|\<emptyset\>|)>,<value|Prop><around*|(|\<emptyset\>|)>>|<cell|f,g<text|
      contain the unit>>>>>>
    </equation*>
  </proof>

  <subsection|Model Building>

  Given a set <math|\<Gamma\>\<subseteq\><value|Lang>>, I will show that we
  can build a net <math|<value|Net>> that models <math|\<Gamma\>>. Since
  preferential filters are equivalent to BFNNs (over <math|<value|Lang>>), I
  will focus instead on building a preferential filter
  <math|<with|font|cal|F>>. This is the same strategy taken by
  <cite|leitgeb2001nonmonotonic>, who constructs KLM cumulative-ordered
  models in order to build a neural net.

  The following are the standard canonical construction and facts for
  neighborhood models (see Eric Pacuit's book). Adapting these to our logic
  of <math|<value|Know>,<value|Knownby>,<value|Typ>> is a straightforward
  exercise in modal logic.

  <\lemma>
    <cite|pacuit2017neighborhood> <label|canonical-model>We can build a
    <key|canonical> neighborhood model for <math|<value|Logic>>, i.e. a model
    <math|<value|Model><rsup|C>=\<langle\>W<rsup|C>,f<rsup|C>,g<rsup|C>,V<rsup|C>\<rangle\>>
    such that:

    <\itemize>
      <item><math|W<rsup|C>=><math|<around*|{|\<Delta\>\<mid\>\<Delta\><text|
      is maximally consistent>|}>>

      <item>For each <math|\<Delta\>\<in\>W<rsup|C>> and each
      <math|\<varphi\>\<in\><value|Lang>>,
      <math|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>
      iff <math|<value|Know>\<varphi\>\<in\>\<Delta\>>

      <item>For each <math|\<Delta\>\<in\>W<rsup|C>> and each
      <math|\<varphi\>\<in\><value|Lang>>,
      <math|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<in\>g<rsup|C><around*|(|\<Delta\>|)>>
      iff <math|<value|Typ>\<varphi\>\<in\>\<Delta\>>

      <item><math|V<rsup|C><around*|(|p|)>=<around*|\||p|\|><rsub|<value|Logic>>>
    </itemize>
  </lemma>

  <\note*>
    This is where the Necessitation rules come into play \V we need them in
    order to guarantee that we can actually build this model!
  </note*>

  <\lemma>
    <cite|pacuit2017neighborhood> <label|truth-lemma>
    <with|font-series|bold|(Truth Lemma)> We have, for canonical model
    <math|<value|Model><rsup|C>>,

    <\equation*>
      <around*|{|\<Delta\>\<mid\><value|Model><rsup|C>,\<Delta\>\<Vdash\>\<varphi\>|}>=<around*|\||\<varphi\>|\|><rsub|<value|Logic>>
    </equation*>
  </lemma>

  <\proof>
    By induction on <math|\<varphi\>>. The propositional, and boolean cases
    are straightforward.

    <\description>
      <item*|<math|<value|Know>> case>

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|<value|Model><rsup|C>,\<Delta\>\<Vdash\><value|Know>\<varphi\>>|<cell|<infix-iff>>|<cell|<around*|{|u\<mid\><value|Model><rsup|C>,\<Sigma\>\<Vdash\>\<varphi\>|}>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>|<cell|<text|(by
        IH)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|<value|Know>\<varphi\>\<in\>\<Delta\>>|<cell|<text|(since
        <math|<value|Model><rsup|C>> is canonical)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<Delta\>\<in\><around*|\||<value|Know>\<varphi\>|\|><rsub|<value|Logic>>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>

      <item*|<math|<value|Knownby>> case>

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|<value|Model><rsup|C>,\<Delta\>\<Vdash\><value|Knownby>\<varphi\>>|<cell|<infix-iff>>|<cell|\<forall\>\<Sigma\>\<in\>W<rsup|C>,<text|
        if >\<Delta\>\<in\>\<cap\>f<rsup|C><around*|(|\<Sigma\>|)><text| then
        ><value|Model>,\<Sigma\>\<Vdash\>\<varphi\>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<forall\>\<Sigma\>\<in\>W<rsup|C>,<text|
        if >\<Delta\>\<in\>\<cap\>f<rsup|C><around*|(|\<Sigma\>|)><text| then
        >\<Sigma\>\<in\><around*|\||\<varphi\>|\|><rsub|<value|Logic>>>|<cell|<text|(by
        IH)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<forall\>\<Sigma\>\<in\>W<rsup|C>,<text|
        if >\<Delta\>\<in\>\<cap\>f<rsup|C><around*|(|\<Sigma\>|)><text| then
        >\<varphi\>\<in\>\<Sigma\>>|<cell|>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<forall\>\<Sigma\>\<in\>W<rsup|C>,<text|
        if ><around*|(|<around*|\||\<psi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Sigma\>|)><text|
        implies >\<Delta\>\<in\><around*|\||\<psi\>|\|><rsub|<value|Logic>>|)><text|
        then >\<varphi\>\<in\>\<Sigma\>>|<cell|<text|(by definition of
        core)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<forall\>\<Sigma\>\<in\>W<rsup|C>,<text|
        if ><around*|(|\<forall\>\<psi\>,<value|Know>\<psi\>\<in\>\<Sigma\><text|
        implies >\<psi\>\<in\>\<Delta\>|)><text| then
        >\<varphi\>\<in\>\<Sigma\>>|<cell|<text|(since
        <math|<value|Model><rsup|C>> is canonical)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<forall\>\<Sigma\>\<in\>W<rsup|C>,<text|
        if ><around*|(|\<forall\>\<psi\>,<value|Knownby>\<psi\>\<in\>\<Delta\><text|
        implies >\<psi\>\<in\>\<Sigma\>|)><text| then
        >\<varphi\>\<in\>\<Sigma\>>|<cell|<text|(by Lemma
        <reference|canonical-knownby>)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|<value|Knownby>\<varphi\>\<in\>\<Delta\>>|<cell|<text|(by
        Proposition <reference|max-consistent-fact>)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<Delta\>\<in\><around*|\||<value|Knownby>\<varphi\>|\|><rsub|<value|Logic>>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>

      <item*|<value|Typ> case>

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|<value|Model><rsup|C>,\<Delta\>\<Vdash\><value|Typ>\<varphi\>>|<cell|<infix-iff>>|<cell|<around*|{|u\<mid\><value|Model><rsup|C>,\<Sigma\>\<Vdash\>\<varphi\>|}>\<in\>g<rsup|C><around*|(|\<Delta\>|)>>|<cell|<text|(by
        definition)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<in\>g<rsup|C><around*|(|\<Delta\>|)>>|<cell|<text|(by
        IH)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|<value|Typ>\<varphi\>\<in\>\<Delta\>>|<cell|<text|(since
        <math|<value|Model><rsup|C>> is canonical)>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<Delta\>\<in\><around*|\||<value|Typ>\<varphi\>|\|><rsub|<value|Logic>>>|<cell|<text|(by
        definition)>>>>>>
      </equation*>
    </description>

    \;
  </proof>

  <\theorem>
    <label|finite-model-property><todo|State that our logic has the finite
    model property>
  </theorem>

  <\proof>
    <todo|Prove it by the usual filtration construction \V the fact that the
    filtration is closed under <math|\<cap\>,\<subseteq\>>, reflexive, and
    transitive are all shown in Pacuit's book. So I just need to show that
    the same is true of the acyclic & skeleton properties.>
  </proof>

  <\proposition>
    <label|canonical-model-is-preferential-filter>If <math|<value|Model>> is
    finite and satisfies the Truth Lemma, then <math|<value|Model>> is a
    preferential filter.
  </proposition>

  <\proof>
    <math|W<rsup|C>> is finite by assumption. Since <math|<value|Logic>>
    contains all instances of <with|font-series|bold|(K)>,
    <with|font-series|bold|(T)>, <with|font-series|bold|(4)>,
    <with|font-series|bold|(T)>, <with|font-series|bold|(4)> it follows that
    <math|f<rsup|C>> is a reflexive, transitive, proper filter, and
    <math|g<rsup|C>> is reflexive and transitive (this is another classical
    result, see Pacuit's book). The only things left to show are that
    <math|f<rsup|C>> is acyclic and <math|f<rsup|C><rsup|>> is the skeleton
    of <math|g<rsup|C>>.

    <\description>
      <item*|<math|W<rsup|C>> is finite>Holds by assumption.

      <item*|<math|f<rsup|C>> is closed under finite intersection>It's enough
      to show that <math|f<rsup|C>> is closed under binary intersections.
      <math|<value|Logic>> contains all instances of
      <with|font-series|bold|(K)>, from which we can derive all instances of:

      <\equation*>
        <with|font-series|bold|<text|<around*|(|C|)>>><space|1em><value|Know>\<varphi\>\<wedge\><value|Know>\<psi\>\<rightarrow\><value|Know><around*|(|\<varphi\>\<wedge\>\<psi\>|)>
      </equation*>

      Suppose <math|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>,<around*|\||\<psi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>.
      By definition of <math|f<rsup|C>>, <math|<value|Know>\<varphi\>\<in\>\<Delta\>>
      and <math|<value|Know>\<psi\>\<in\>\<Delta\>>. So
      <math|<value|Know>\<varphi\>\<wedge\><value|Know>\<psi\>\<in\>\<Delta\>>.
      Applying <with|font-series|bold|(C)>,
      <math|<value|Know><around*|(|\<varphi\>\<wedge\>\<psi\>|)>\<in\>\<Delta\>>.
      So <math|<around*|\||\<varphi\>\<wedge\>\<psi\>|\|><rsub|<value|Logic>>=<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<cap\><around*|\||\<psi\>|\|><rsub|<value|Logic>>\<in\>\<Delta\>>.

      <item*|<math|f<rsup|C>> is closed under superset><math|<value|Logic>>
      contains all instances of <with|font-series|bold|(K)> and the
      necessitation rule, from which we can derive:

      <\equation*>
        <text|<with|font-series|bold|(RM)>><space|1em><text|If
        >\<varphi\>\<rightarrow\>\<psi\>\<in\><value|Logic><text| then
        ><value|Know>\<varphi\>\<rightarrow\><value|Know>\<psi\>\<in\><value|Logic>
      </equation*>

      Suppose <math|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>,
      and <math|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<subseteq\><around*|\||\<psi\>|\|><rsub|<value|Logic>>>.
      The former fact gives us <math|<value|Know>\<varphi\>\<in\>\<Delta\>>.
      The latter gives us, for all maximally consistent <math|\<Delta\>>, if
      <math|\<varphi\>\<in\>\<Delta\>> then <math|\<psi\>\<in\>\<Delta\>>,
      i.e. <math|\<varphi\>\<rightarrow\>\<psi\>\<in\><value|Logic>> <todo|Is
      this correct? Probably not; we need to close the canonical model under
      superset>. By <with|font-series|bold|(RM)>, we have
      <math|<value|Know>\<psi\>\<in\>\<Delta\>>, i.e.
      <math|<around*|\||\<psi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>.

      <item*|<math|f<rsup|C>> contains the unit><math|<value|Logic>> is
      closed under necessitation for <math|<value|Know>>, from which we can
      derive:

      <\equation*>
        <text|<with|font-series|bold|(N)>><space|1em><value|Know>\<top\>
      </equation*>

      That is, <math|<value|Know>\<top\>\<in\>\<Delta\>> for all maximally
      consistent <math|\<Delta\>>. So <math|<around*|\||\<top\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>,
      i.e. <math|W<rsup|C>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>.

      <item*|<math|f<rsup|C>> is reflexive>First, let
      <math|\<Delta\>\<in\>W<rsup|C>>, and suppose
      <math|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>.
      By definition of <math|f<rsup|C>>, <math|<value|Know>\<varphi\>\<in\>\<Delta\>>.
      By <with|font-series|bold|(T<math|<rsub|<value|Know>>>)>,
      <math|\<varphi\>\<in\>\<Delta\>>. Since <math|\<varphi\>> was chosen
      arbitrarily, we have for all <math|\<varphi\>>, if
      <math|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>
      then <math|\<varphi\>\<in\>\<Delta\>>. In other words,
      <math|\<Delta\>\<in\><big|cap><rsub|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\>|)>><around*|\||\<varphi\>|\|><rsub|<value|Logic>>=\<cap\>f<rsup|C><around*|(|\<Delta\>|)>>.

      <item*|<math|f<rsup|C>> is transitive>Suppose
      <math|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>.
      By definition of <math|f<rsup|C>>, <math|<value|Know>\<varphi\>\<in\>\<Delta\>>.
      By the <with|font-series|bold|(4<math|<rsub|<value|Know>>>)> axiom,
      <math|<value|Know><value|Know>\<varphi\>\<in\>\<Delta\>>. But this
      means that <math|<around*|\||<value|Know>\<varphi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>.
      By definition of proof set, we have
      <math|<around*|{|\<Sigma\>\<mid\><value|Know>\<varphi\>\<in\>\<Sigma\>|}>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>.
      That is, <math|<around*|{|\<Sigma\>\<mid\><around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Sigma\>|)>|}>\<in\>f<rsup|C><around*|(|\<Delta\>|)>>,
      and we are done.

      <item*|<math|f<rsup|C>> is acyclic><todo|Update! \U no more nominals,
      acyclic rule has changed to Grz!> Since <math|f<rsup|C>> is reflexive
      and transitive, by Proposition <reference|asymmetric-implies-acyclic>
      it's enough to show that <math|f<rsup|C>> is asymmetric. Suppose
      <math|\<Delta\><rsub|1>\<in\>\<cap\>f<rsup|C><around*|(|\<Delta\><rsub|2>|)>>
      and <math|\<Delta\><rsub|2>\<in\>\<cap\>f<rsup|C><around*|(|\<Delta\><rsub|1>|)>>.
      By definition of core, <math|\<Delta\><rsub|1>\<in\><big|cap><rsub|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\><rsub|2>|)>><around*|\||\<varphi\>|\|><rsub|<value|Logic>>>
      and <math|\<Delta\><rsub|2>\<in\><big|cap><rsub|<around*|\||\<varphi\>|\|><rsub|<value|Logic>>\<in\>f<rsup|C><around*|(|\<Delta\><rsub|1>|)>><around*|\||\<varphi\>|\|><rsub|<value|Logic>>>,
      i.e. we have both of the following:

      <\enumerate>
        <item><math|\<forall\>\<varphi\>>, if
        <math|<value|Know>\<varphi\>\<in\>\<Delta\><rsub|2>> then
        <math|\<varphi\>\<in\>\<Delta\><rsub|1>>

        <item><math|\<forall\>\<varphi\>>, if
        <math|<value|Know>\<varphi\>\<in\>\<Delta\><rsub|1>> then
        <math|\<varphi\>\<in\>\<Delta\><rsub|2>>
      </enumerate>

      We want to show that <math|\<Delta\><rsub|1>=\<Delta\><rsub|2>>. I'll
      show the <math|<around*|(|\<subseteq\>|)>> direction (the other
      direction is similar). Suppose for contradiction that
      <math|\<varphi\>\<in\>\<Delta\><rsub|1>>, but
      <math|\<varphi\><neg|\<in\>>\<Delta\><rsub|2>> (i.e.
      <math|\<neg\>\<varphi\>\<in\>\<Delta\><rsub|2>>).\ 

      Since <math|\<Delta\><rsub|1>> is named, some
      <math|i\<in\>\<Delta\><rsub|1>>. By <with|font-series|bold|(Antisym)>,
      <math|<value|Know><around*|(|<value|diaKnow>i\<rightarrow\>i|)>\<in\>\<Delta\><rsub|1>>.
      By (2), <math|<value|diaKnow>i\<rightarrow\>i\<in\>\<Delta\><rsub|2>>.
      Rewriting, we get <math|\<neg\>i\<rightarrow\><value|Know>\<neg\>i\<in\>\<Delta\><rsub|2>>.
      <todo|What next?>

      <item*|<math|g<rsup|C>> contains the unit>Similar to the proof for
      <math|f<rsup|C>>, but apply necessitation for <math|<value|Typ>>
      instead of <math|<value|Know>>.

      <item*|<math|g<rsup|C>> is reflexive>Similar to the proof for
      <math|f<rsup|C>>, but apply <with|font-series|bold|(T<math|<rsub|<value|Typ>>>)>
      instead of <with|font-series|bold|(T<math|<rsub|<value|Know>>>)>.

      <item*|<math|g<rsup|C>> is transitive>Similar to the proof for
      <math|f<rsup|C>>, but apply <with|font-series|bold|(4<math|<rsub|<value|Typ>>>)>
      instead of <with|font-series|bold|(4<math|<rsub|<value|Know>>>)>.

      <item*|<math|f<rsup|C>> is the skeleton of
      <math|g<rsup|C>>><todo|Check>
    </description>

    \;
  </proof>

  <\theorem>
    <label|model-building><with|font-series|bold|(Model Building)> Given any
    consistent <math|\<Gamma\>\<subseteq\><value|Lang>>, we can construct a
    BFNN <math|<value|Net>> and neuron <math|n\<in\>N> such that
    <math|<value|Net>,n\<models\>\<Gamma\>>.
  </theorem>

  <\proof>
    Extend <math|\<Gamma\>> to maximally consistent <math|\<Delta\>> using
    Lemma <reference|lindenbaum>. Let <math|<value|Model><rsup|C>> be a
    canonical model for <math|<value|Logic>> guaranteed by Lemma
    <reference|canonical-model>. By the Truth Lemma (Lemma
    <reference|truth-lemma>), <math|<value|Model><rsup|C>,\<Delta\>\<models\>\<Delta\>>.
    So in particular, <math|<value|Model><rsup|C>,\<Delta\>\<models\>\<Gamma\>>.

    By the Finite Model Property (Lemma <reference|finite-model-property>),
    we can construct a finite model <math|<value|Model><rprime|'>> satisfying
    exactly the same formulas at all worlds. By Proposition
    <reference|canonical-model-is-preferential-filter>,
    <math|<value|Model><rprime|'>> is a preferential filter.

    From here, we can build our net <math|<value|Net><rsup|\<bullet\>>> as
    before, satisfying exactly the same formulas as <math|<value|Model>> at
    all neurons (by Theorem <reference|frame-to-net>). And so
    <math|<value|Net><rsup|\<bullet\>>,\<Delta\>\<models\>\<Gamma\>>.
  </proof>

  <\theorem>
    <with|font-series|bold|(Completeness)> For all consistent
    <math|\<Gamma\>\<subseteq\><value|Lang>>, if
    <math|\<Gamma\>\<models\><rsub|<text|BFNN>>\<varphi\>> then
    <math|\<Gamma\><value|proves>\<varphi\>>
  </theorem>

  <\proof>
    Suppose contrapositively that <math|\<Gamma\><neg|<value|proves>>\<varphi\>>.
    This means that <math|\<Gamma\>\<cup\><around*|{|\<neg\>\<varphi\>|}>> is
    consistent, i.e. by Theorem <reference|model-building> we can build a
    BFNN <math|<value|Net>> and neuron <math|n> such that
    <math|<value|Net>,n\<models\>\<Gamma\>\<cup\><around*|{|\<neg\>\<varphi\>|}>>.
    In particular, <math|<value|Net>,n<neg|\<models\>>\<varphi\>>. But then
    we must have <math|\<Gamma\><neg|\<models\>>\<varphi\>>.
  </proof>

  <section*|TODO:>

  <\itemize>
    <item>Double-check properties for canonical model & completeness

    <item>Do filtration/finite model property

    <item>Get bound on the size of the finite model.

    <item>Think about complexity of decidability of the logic (but only if it
    seems easy)

    <item>Copy-paste flipping <math|<value|land>,\<vee\>,\<neg\>>
    considerations

    <item>Write up fuzzy network considerations (in a crisp (non-fuzzy)
    language) \V fuzzy nets satisfy <with|font-shape|italic|exactly> the same
    crisp formulas as binary nets

    <item>Make drawings in Tikz

    <item>Make corrections Saul gave

    <item>Close the canonical model under superset

    <item>Put the page number/theorem number for each result

    <item>Rename the axioms to something more readable
    ((<with|font-series|bold|T><math|<rsub|<value|Typ>>>) is confusing as
    hell)
  </itemize>

  <\bibliography|bib|tm-plain|neurosymbolic>
    <\bib-list|21>
      <bibitem*|1><label|bib-bader2005dimensions>Sebastian Bader<localize|
      and >Pascal Hitzler. <newblock>Dimensions of neural-symbolic
      integration-a structured survey. <newblock><with|font-shape|italic|ArXiv
      preprint cs/0511042>, 2005.<newblock>

      <bibitem*|2><label|bib-balkenius1991nonmonotonic>Christian
      Balkenius<localize| and >Peter Gärdenfors. <newblock>Nonmonotonic
      Inferences in Neural Networks. <newblock><localize|In
      ><with|font-shape|italic|KR>, <localize|pages >32\U39. 1991.<newblock>

      <bibitem*|3><label|bib-belle2021logic>Vaishak Belle. <newblock>Logic
      Meets Learning: From Aristotle to Neural Networks.
      <newblock><localize|In ><with|font-shape|italic|Neuro-Symbolic
      Artificial Intelligence: The State of the Art>, <localize|pages
      >78\U102. IOS Press, 2021.<newblock>

      <bibitem*|4><label|bib-blackburn2001modal>Patrick Blackburn, Maarten De
      Rijke<localize|, and >Yde Venema. <newblock><with|font-shape|italic|Modal
      logic: graph. Darst>, <localize|volume><nbsp>53. <newblock>Cambridge
      University Press, 2001.<newblock>

      <bibitem*|5><label|bib-blutner2004nonmonotonic>Reinhard Blutner.
      <newblock>Nonmonotonic inferences and neural networks.
      <newblock><localize|In ><with|font-shape|italic|Information,
      Interaction and Agency>, <localize|pages >203\U234. Springer,
      2004.<newblock>

      <bibitem*|6><label|bib-browne2001connectionist>Antony Browne<localize|
      and >Ron Sun. <newblock>Connectionist inference models.
      <newblock><with|font-shape|italic|Neural Networks>, 14(10):1331\U1355,
      2001.<newblock>

      <bibitem*|7><label|bib-gabbay1994temporal>Dov<nbsp>M Gabbay, Ian
      Hodkinson<localize|, and >Mark<nbsp>A Reynolds. <newblock>Temporal
      logic: mathematical foundations and computational aspects.
      <newblock>1994.<newblock>

      <bibitem*|8><label|bib-garcez2001symbolic>Artur<nbsp>S<nbsp>d'Avila
      Garcez, Krysia Broda<localize|, and >Dov<nbsp>M Gabbay.
      <newblock>Symbolic knowledge extraction from trained neural networks: a
      sound approach. <newblock><with|font-shape|italic|Artificial
      Intelligence>, 125(1-2):155\U207, 2001.<newblock>

      <bibitem*|9><label|bib-garcez2008neural>Artur<nbsp>S<nbsp>d'Avila
      Garcez, Luis<nbsp>C Lamb<localize|, and >Dov<nbsp>M Gabbay.
      <newblock><with|font-shape|italic|Neural-symbolic cognitive reasoning>.
      <newblock><tformat|<table|<row|<cell|Springer Science>|<cell|Business
      Media>>>>, 2008.<newblock>

      <bibitem*|10><label|bib-giordano2021>Laura Giordano, Valentina
      Gliozzi<localize|, and >Daniele<nbsp>Theseider Dupré. <newblock>From
      common sense reasoning to neural network models through multiple
      preferences: An overview. <newblock><with|font-shape|italic|CoRR>,
      abs/2107.04870, 2021.<newblock>

      <bibitem*|11><label|bib-giordano2022conditional>Laura Giordano,
      Valentina Gliozzi<localize|, and >Daniele Theseider DuprÉ. <newblock>A
      conditional, a fuzzy and a probabilistic interpretation of
      self-organizing maps. <newblock><with|font-shape|italic|Journal of
      Logic and Computation>, 32(2):178\U205, 2022.<newblock>

      <bibitem*|12><label|bib-kautz-2020future>The Third AI Summer, AAAI
      Robert S. Engelmore Memorial Award Lecture. <newblock>AAAI,
      2020.<newblock>

      <bibitem*|13><label|bib-kisby2022logic>Caleb Kisby, Saúl
      Blanco<localize|, and >Lawrence Moss. <newblock>The logic of hebbian
      learning. <newblock><localize|In ><with|font-shape|italic|The
      International FLAIRS Conference Proceedings>,
      <localize|volume><nbsp>35. 2022.<newblock>

      <bibitem*|14><label|bib-leitgeb2001nonmonotonic>Hannes Leitgeb.
      <newblock>Nonmonotonic reasoning by inhibition nets.
      <newblock><with|font-shape|italic|Artificial Intelligence>,
      128(1-2):161\U201, 2001.<newblock>

      <bibitem*|15><label|bib-leitgeb2003nonmonotonic>Hannes Leitgeb.
      <newblock>Nonmonotonic reasoning by inhibition nets II.
      <newblock><with|font-shape|italic|International Journal of Uncertainty,
      Fuzziness and Knowledge-Based Systems>, 11(supp02):105\U135,
      2003.<newblock>

      <bibitem*|16><label|bib-leitgeb2018neural>Hannes Leitgeb.
      <newblock>Neural Network Models of Conditionals. <newblock><localize|In
      ><with|font-shape|italic|Introduction to Formal Philosophy>,
      <localize|pages >147\U176. Springer, 2018.<newblock>

      <bibitem*|17><label|bib-mcculloch1943logical>Warren<nbsp>S
      McCulloch<localize| and >Walter Pitts. <newblock>A logical calculus of
      the ideas immanent in nervous activity.
      <newblock><with|font-shape|italic|The bulletin of mathematical
      biophysics>, 5(4):115\U133, 1943.<newblock>

      <bibitem*|18><label|bib-odense2022semantic>Simon Odense<localize| and
      >Artur<nbsp>d'Avila Garcez. <newblock>A semantic framework for
      neural-symbolic computing. <newblock><with|font-shape|italic|ArXiv
      preprint arXiv:2212.12050>, 2022.<newblock>

      <bibitem*|19><label|bib-pacuit2017neighborhood>Eric Pacuit.
      <newblock><with|font-shape|italic|Neighborhood semantics for modal
      logic>. <newblock>Springer, 2017.<newblock>

      <bibitem*|20><label|bib-sarker2021neuro>Md<nbsp>Kamruzzaman Sarker, Lu
      Zhou, Aaron Eberhart<localize|, and >Pascal Hitzler.
      <newblock>Neuro-symbolic artificial intelligence: current trends.
      <newblock><with|font-shape|italic|ArXiv preprint arXiv:2105.05330>,
      2021.<newblock>

      <bibitem*|21><label|bib-yu2021survey>Dongran Yu, Bo Yang, Dayou
      Liu<localize|, and >Hui Wang. <newblock>A survey on neural-symbolic
      systems. <newblock><with|font-shape|italic|ArXiv preprint
      arXiv:2111.08164>, 2021.<newblock>
    </bib-list>
  </bibliography>

  <appendix|Helper Proofs>

  <\proof>
    <with|font-series|bold|(of Proposition <reference|thm:prop-props>)> We
    prove each in turn:

    <\description>
      <item*|(Inclusion)>If <math|n\<in\>S>, then
      <math|n\<in\><Prop><around|(|S|)>> by the base case of <math|<Prop>>.

      <item*|(Idempotence)>The (<math|\<subseteq\>>) direction is just
      Inclusion. As for (<math|\<supseteq\>>), let
      <math|n\<in\><Prop><around|(|<Prop><around|(|S|)>|)>>, and proceed by
      induction on <math|<Prop><around|(|<Prop><around|(|S|)>|)>>.

      <\description>
        <item*|Base Step><math|n\<in\><Prop><around|(|S|)>>, and so we are
        done.

        <item*|Inductive Step>For those <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
        such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

        <\equation*>
          <value|Activ><rsub|<value|Prop><around*|(|<value|Prop><around*|(|S|)>|)>><around*|(|<wide|m|\<vect\>>,n|)>=1
        </equation*>

        By inductive hypothesis, <math|m<rsub|i>\<in\><value|Prop><around*|(|<value|Prop><around*|(|S|)>|)>>
        iff <math|m<rsub|i>\<in\><value|Prop><around*|(|S|)>>. By Proposition
        <reference|activation-agrees>, <math|<value|Activ><rsub|<value|Prop><around*|(|S|)>><around*|(|<wide|m|\<vect\>>,n|)>=1>,
        and so <math|n\<in\><Prop><around|(|S|)>>.
      </description>

      <item*|(Cumulative)>For the (<math|\<subseteq\>>) direction, let
      <math|n\<in\><Prop><around|(|S<rsub|1>|)>>. We proceed by induction on
      <math|<Prop><around|(|S<rsub|1>|)>>.

      <\description>
        <item*|Base Step>Suppose <math|n\<in\>S<rsub|1>>. Well,
        <math|S<rsub|1>\<subseteq\>S<rsub|2>\<subseteq\><Prop><around|(|S<rsub|2>|)>>,
        so <math|n\<in\><Prop><around|(|S<rsub|2>|)>>.

        <item*|Inductive Step>For those <math|<wide|m|\<vect\>>=m<rsub|1>,\<ldots\>,m<rsub|k>>
        such that <math|<around|(|m<rsub|i>,n|)>\<in\>E>,

        <\equation*>
          <value|Activ><rsub|<value|Prop><around*|(|S<rsub|1>|)>><around*|(|<wide|m|\<vect\>>,n|)>=1
        </equation*>

        By inductive hypothesis, <math|m<rsub|i>\<in\><value|Prop><around*|(|S<rsub|1>|)>>
        iff <math|m<rsub|i>\<in\><value|Prop><around*|(|S<rsub|2>|)>>. By
        Proposition <reference|activation-agrees>,
        <math|<value|Activ><rsub|<value|Prop><around*|(|S<rsub|2>|)>><around*|(|<wide|m|\<vect\>>,n|)>>,
        and so <math|n\<in\><Prop><around|(|S<rsub|2>|)>>.
      </description>

      Now consider the (<math|\<supseteq\>>) direction. The Inductive Step
      holds similarly (just swap <math|S<rsub|1>> and <math|S<rsub|2>>). As
      for the Base Step, if <math|n\<in\>S<rsub|2>> then since
      <math|S<rsub|2>\<subseteq\><Prop><around|(|S<rsub|1>|)>>,
      <math|n\<in\>S<rsub|1>>.

      <item*|(Loop)>Let <math|n\<geq\>0> and suppose the hypothesis. Our goal
      is to show that for each <math|i>, <math|<Prop><around|(|S<rsub|i>|)>\<subseteq\><Prop><around|(|S<rsub|i-1>|)>>,
      and additionally <math|<Prop><around|(|S<rsub|0>|)>\<subseteq\><Prop><around|(|S<rsub|n>|)>>.
      This will show that all <math|<Prop><around|(|S<rsub|i>|)>> contain
      each other, and so are equal. Let <math|i\<in\><around*|{|0,\<ldots\>,n|}>>
      (if <math|i=0> then <math|i-1> refers to <math|n>), and let
      <math|e\<in\><Prop><around|(|S<rsub|i>|)>>. We proceed by induction on
      <math|<Prop><around|(|S<rsub|i>|)>>.

      <\description>
        <item*|Base Step><math|e\<in\>S<rsub|i>>, and since
        <math|S<rsub|i>\<subseteq\><Prop><around|(|S<rsub|i-1>|)>> by
        assumption, <math|e\<in\><Prop><around|(|S<rsub|i-1>|)>>.

        <item*|Inductive Step>For those <math|m<rsub|1>,\<ldots\>,m<rsub|k>>
        such that <math|<around|(|m<rsub|i>,e|)>\<in\>E>,

        <\equation*>
          <value|Activ><rsub|<value|Prop><around*|(|S<rsub|i>|)>><around*|(|<wide|m|\<vect\>>,e|)>=1
        </equation*>

        By inductive hypothesis, <math|m<rsub|j>\<in\><value|Prop><around*|(|S<rsub|i>|)>>
        iff <math|m<rsub|j>\<in\><value|Prop><around*|(|S<rsub|i-1>|)>>. By
        Proposition <reference|activation-agrees>,
        <math|<value|Activ><rsub|<value|Prop><around*|(|S<rsub|i-1>|)>><around*|(|<wide|m|\<vect\>>,e|)>=1>,
        and so <math|e\<in\><Prop><around|(|S<rsub|i-1>|)>>.
      </description>
    </description>
  </proof>

  <\proof>
    <with|font-series|bold|(of Proposition <reference|thm:reach-props>)> We
    check each in turn:

    <\description>
      <item*|(Inclusion)>Similar to the proof of Inclusion for
      <math|<value|Prop>>.

      <item*|(Idempotence)>Similar to the proof of Idempotence for
      <math|<Prop>>.

      <item*|(Monotonicity)>Let <math|n\<in\><Reach><around|(|S<rsub|1>|)>>.
      We proceed by induction on <math|<Reach><around|(|S<rsub|1>|)>>.

      <\description>
        <item*|Base Step><math|n\<in\>S<rsub|1>>. So
        <math|n\<in\>S<rsub|2>\<subseteq\><Reach><around|(|S<rsub|2>|)>>.

        <item*|Inductive Step>There is an
        <math|m\<in\><Reach><around|(|S<rsub|1>|)>> such that
        <math|<around|(|m,n|)>\<in\>E>. By inductive hypothesis,
        <math|m\<in\><Reach><around|(|S<rsub|2>|)>>. And so by definition,
        <math|n\<in\><Reach><around|(|S<rsub|2>|)>>.
      </description>
    </description>
  </proof>

  <\proof>
    <with|font-series|bold|(of Proposition <reference|filter-contains-core>)>
    <todo|Todo>
  </proof>

  <\proof>
    <with|font-series|bold|(of Proposition
    <reference|prop-filter-consistency>)> <math|<around*|(|\<rightarrow\>|)>>
    Suppose for contradiction that <math|Y<rsup|\<complement\>>\<in\>f<around*|(|w|)>>
    and <math|Y\<in\>f<around*|(|w|)>>. Since <math|<with|font|cal|F>> is
    closed under intersection, <math|Y<rsup|\<complement\>>\<cap\>Y=\<emptyset\>\<in\>f<around*|(|w|)>>,
    which contradicts the fact that <math|<with|font|cal|F>> is proper.

    <math|<around*|(|\<leftarrow\>|)>> Suppose for contradiction that
    <math|Y<neg|\<in\>>f<around*|(|w|)>>, yet
    <math|Y<rsup|\<complement\>><neg|\<in\>>f<around*|(|w|)>>. Since
    <math|<with|font|cal|F>> is closed under intersection,
    <math|\<cap\>f<around*|(|w|)>\<in\>f<around*|(|w|)>>. Moreover, since
    <math|<with|font|cal|F>> is closed under superset we must have
    <math|\<cap\>f<around*|(|w|)><neg|\<subseteq\>>Y> and
    <math|\<cap\>f<around*|(|w|)><neg|\<subseteq\>>Y<rsup|\<complement\>>>.
    But this means <math|\<cap\>f<around*|(|w|)><neg|\<subseteq\>>Y\<cap\>Y<rsup|\<complement\>>=\<emptyset\>>,
    i.e. there is some <math|x\<in\>\<cap\>f<around*|(|w|)>> such that
    <math|x\<in\>\<emptyset\>>. This contradicts the definition of the empty
    set.
  </proof>

  <\proof>
    <with|font-series|bold|(of Proposition <reference|hash-well-defined>)> To
    show that <math|<hash>> is injective, suppose
    <math|<hash><around|(|S<rsub|1>|)>=<hash><around|(|S<rsub|2>|)>>. So
    <math|<big|prod><rsub|m<rsub|i>\<in\>S<rsub|1>>p<rsub|i>=<big|prod><rsub|m<rsub|i>\<in\>S<rsub|2>>p<rsub|i>>,
    and since products of primes are unique,
    <math|<around*|{|p<rsub|i>\<mid\>m<rsub|i>\<in\>S<rsub|1>|}>=<around*|{|p<rsub|i>\<mid\>m<rsub|i>\<in\>S<rsub|2>|}>>.
    And so <math|S<rsub|1>=S<rsub|2>>.

    To show that <math|<hash>> is surjective, let
    <math|x\<in\><Primes><rsub|k>>. Now let
    <math|S=<around*|{|m<rsub|i>\<mid\>p<rsub|i><text| divides >x|}>>. Then
    <math|<hash><around|(|S|)>=<big|prod><rsub|m<rsub|i>\<in\>S>p<rsub|i>=<big|prod><rsub|(p<rsub|i><text|
    divides > x<with|font-size|0.84|<text|>)>>p<rsub|i>=x>.
  </proof>

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
    <with|font-series|bold|Step 10. Move on to the write-up stage. But
    otherwise, step away from the problem \V there are too many other
    interesting things to spend all of your time on this one. Trust that one
    day a different solution will come to you.>
  </quote-env>
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
    <associate|activates-to-g|<tuple|4.4|9>>
    <associate|activation-agrees|<tuple|1.6|3>>
    <associate|asymmetric-implies-acyclic|<tuple|2.7|6>>
    <associate|auto-1|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-10|<tuple|4|8>>
    <associate|auto-11|<tuple|5|11>>
    <associate|auto-12|<tuple|5.1|11>>
    <associate|auto-13|<tuple|5.2|12>>
    <associate|auto-14|<tuple|5.3|13>>
    <associate|auto-15|<tuple|5.14|15>>
    <associate|auto-16|<tuple|<with|mode|<quote|math>|\<bullet\>>|16>>
    <associate|auto-17|<tuple|A|16>>
    <associate|auto-2|<tuple|1|2>>
    <associate|auto-3|<tuple|1.1|2>>
    <associate|auto-4|<tuple|1.2|3>>
    <associate|auto-5|<tuple|1.3|5>>
    <associate|auto-6|<tuple|2|5>>
    <associate|auto-7|<tuple|2.1|5>>
    <associate|auto-8|<tuple|2.2|6>>
    <associate|auto-9|<tuple|3|7>>
    <associate|bib-bader2005dimensions|<tuple|1|16>>
    <associate|bib-balkenius1991nonmonotonic|<tuple|2|16>>
    <associate|bib-belle2021logic|<tuple|3|16>>
    <associate|bib-blackburn2001modal|<tuple|4|16>>
    <associate|bib-blutner2004nonmonotonic|<tuple|5|16>>
    <associate|bib-browne2001connectionist|<tuple|6|16>>
    <associate|bib-gabbay1994temporal|<tuple|7|16>>
    <associate|bib-garcez2001symbolic|<tuple|8|16>>
    <associate|bib-garcez2008neural|<tuple|9|16>>
    <associate|bib-giordano2021|<tuple|10|16>>
    <associate|bib-giordano2022conditional|<tuple|11|16>>
    <associate|bib-kautz-2020future|<tuple|12|16>>
    <associate|bib-kisby2022logic|<tuple|13|16>>
    <associate|bib-leitgeb2001nonmonotonic|<tuple|14|16>>
    <associate|bib-leitgeb2003nonmonotonic|<tuple|15|16>>
    <associate|bib-leitgeb2018neural|<tuple|16|16>>
    <associate|bib-mcculloch1943logical|<tuple|17|16>>
    <associate|bib-odense2022semantic|<tuple|18|16>>
    <associate|bib-pacuit2017neighborhood|<tuple|19|16>>
    <associate|bib-sarker2021neuro|<tuple|20|16>>
    <associate|bib-yu2021survey|<tuple|21|16>>
    <associate|canonical-knownby|<tuple|5.7|12>>
    <associate|canonical-model|<tuple|5.9|13>>
    <associate|canonical-model-is-preferential-filter|<tuple|5.12|14>>
    <associate|filter-contains-core|<tuple|2.4|6>>
    <associate|finite-model-property|<tuple|5.11|14>>
    <associate|frame-to-net|<tuple|4.9|11>>
    <associate|hash-well-defined|<tuple|4.2|9>>
    <associate|instance-of-skeleton|<tuple|2.8|6>>
    <associate|lemma-Prop-and-H*|<tuple|4.8|10>>
    <associate|lemma-Reach-and-R*|<tuple|4.6|10>>
    <associate|lindenbaum|<tuple|5.4|12>>
    <associate|max-consistent-fact|<tuple|5.6|12>>
    <associate|minimal-cause|<tuple|1.14|4>>
    <associate|model-building|<tuple|5.13|15>>
    <associate|prop-filter-consistency|<tuple|2.5|6>>
    <associate|prop-reach-acyclic|<tuple|1.13|4>>
    <associate|prop-reach-inverse|<tuple|1.12|4>>
    <associate|simulation-is-a-BFNN|<tuple|4.5|9>>
    <associate|simulation-is-preferential|<tuple|3.4|8>>
    <associate|thm-net-to-frame|<tuple|3.2|7>>
    <associate|thm:prop-props|<tuple|1.8|3>>
    <associate|thm:reach-props|<tuple|1.10|4>>
    <associate|truth-lemma|<tuple|5.10|13>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      mcculloch1943logical

      balkenius1991nonmonotonic

      leitgeb2001nonmonotonic

      leitgeb2003nonmonotonic

      garcez2001symbolic

      garcez2008neural

      giordano2021

      giordano2022conditional

      kisby2022logic

      blutner2004nonmonotonic

      browne2001connectionist

      odense2022semantic

      bader2005dimensions

      sarker2021neuro

      kautz-2020future

      leitgeb2018neural

      belle2021logic

      yu2021survey

      pacuit2017neighborhood

      gabbay1994temporal

      blackburn2001modal

      leitgeb2001nonmonotonic

      leitgeb2001nonmonotonic

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      pacuit2017neighborhood

      leitgeb2001nonmonotonic

      pacuit2017neighborhood

      pacuit2017neighborhood
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Related
      Papers:> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|1<space|2spc>Interpreted
      Neural Nets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Basic Definitions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.2<space|2spc><with|mode|<quote|math>|<with|font-family|<quote|ss>|Prop>>
      and <with|mode|<quote|math>|<with|font-family|<quote|ss>|Reach>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Neural Network Semantics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|2<space|2spc>Neighborhood
      Models> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Basic Definitions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Neighborhood Semantics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|3<space|2spc>From
      Nets to Frames> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|4<space|2spc>From
      Frames to Nets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|5<space|2spc>Completeness>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-11><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>The Base Modal Logic
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>Soundness
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|5.3<space|2spc>Model Building
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|TODO:>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|<with|color|<quote|#0749ac>|References>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Appendix
      A<space|2spc>Helper Proofs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-17><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>