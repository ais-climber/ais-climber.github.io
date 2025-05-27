<TeXmacs|2.1.1>

<style|tmconf>

<\body>
  <section*|How to do research:>

  <with|font-series|bold|My personal research methodology (for theoretical
  research):>

  <\description>
    <item*|Step 0>Find a paper I enjoy, and read it. Try to understand its
    ideas, with an eye towards extending it/altering it.

    <item*|Step 1>Look for an extension/open problem that makes me think\ 

    \PWhat the fuck? That's still open? No way, this shit is low-hanging
    fruit, free paper here I come.\Q

    i.e. something <with|font-shape|italic|easy> and
    <with|font-shape|italic|straightforward>, <with|font-shape|italic|without
    complications>.

    <item*|Step 2>Follow-up question (only answer
    <with|font-series|bold|after> Step 1):\ 

    Is the extension <with|font-shape|italic|interesting> or
    <with|font-shape|italic|surprising>? What do we learn by extending the
    result?

    <item*|Step 3>Two things to do at this point:

    <\itemize>
      <item>Make a new Texmacs file named \PPAPERNAME-master-notes.tm\Q.
      Transcribe the key definitions, examples, lemmas, and results from the
      paper. This makes it easier to later copy-paste parts of proofs, and
      also ensures that I don't reinvent the wheel later (it's tempting to
      redefine everything yourself!)

      <item>Go to <slink|https://www.connectedpapers.com/> and download any
      major nearby papers. Upload the papers to
      <with|font-series|bold|paperless-ngx> and make a point to read them
      (understanding context helps a lot!).
    </itemize>

    <item*|Step 4>Write up my new definitions & proof in the Texmacs file.
    Again, should be a <with|font-shape|italic|very> straightforward
    extension, and the proof (proofs are just unit-tests for definitions)
    shouldn't take up too much room at all (1-2 pages, including defs)

    <item*|Step 5>Step away (for a few days). Come back and check the proof
    <with|font-shape|italic|slowly> to make sure there aren't any missing
    edge cases or conditions.

    <\itemize>
      <item>If it's all good \V <with|font-series|bold|congratulations>, you
      got a free paper!

      <item>Usually there will be some idiotic mistake in the proof. It may
      seem like <with|font-shape|italic|you're> the idiot for trying it \V
      but in fact, it's now your job to figure out
      <with|font-shape|italic|what conditions will make this naive proof
      work>!
    </itemize>

    <item*|Step 6>Write a computer program/simulation to collect statistics
    on the objects/models. Ask: <with|font-shape|italic|How unusual> is it
    for the models to fail the proof scenario? What about this lemma? This
    other lemma? Am I looking for a weird exception here, or is it very
    common? Make the simulation as <with|font-shape|italic|visual> as
    possible so that I can <with|font-shape|italic|picture> the
    condition/failure.

    <item*|Step 7>If the condition is rare, try to modify the proof to
    account for the exceptions (they may satisfy the theorem but fail just
    this proof). Think: \Pis there a simple thing I can add to the system
    that will help the proof go through?\Q

    Otherwise, sit down and try to define <with|font-shape|italic|exactly>
    that condition the proof doesn't fuck up at that step. Use the generated
    examples for help. Prove the claim for models satisfying Condition.

    <item*|Step 8>Prove (i.e. unit-test/sanity-check) general properties of
    models satisfying Condition. Build up a theory of how Condition behaves
    \V what is it like? What algebra does it follow? What is it similar to?
    What does it mean?

    <item*|Step 9>Consider whether this <with|font-series|bold|partial>
    result is still <with|font-shape|italic|interesting> enough to be
    published.

    Is it meaningful to everyone in the field? <math|\<longrightarrow\>>
    Submit it to a top-tier conference

    Is it meaningful to this niche sub-field? <math|\<longrightarrow\>>
    Submit it to the main conference for the sub-field

    Is it meaningful as a technical lemma? <math|\<longrightarrow\>> Submit
    it to a conference specifically for technical results

    None of the above? <math|\<longrightarrow\>> It's okay to not publish for
    now, and wait until you see the whole proof.

    <item*|Step 10>Move on to the write-up stage. But otherwise, step away
    from the problem \V there are too many other interesting things to spend
    all of your time on this one. Trust that one day a different solution
    will come to you.
  </description>

  \;

  Examples of <with|font-series|bold|Step 1> (i.e. \Pthis shit is low-hanging
  fruit, free paper here I come\Q):

  <\itemize>
    <item>I'm stuck on this dumb little lemma about hypergraphs and the
    underlying graph \V but it's so obviously true! And once I have it, I
    have this giant completeness result for neural networks!

    <with|font-series|bold|Inspiration:> I already have a WIP paper to test
    things out!

    <item>If we have a modalities <math|\<box\>> and
    <math|\<box\><rsup|\<ast\>>>, we know that completeness for
    <math|\<box\><rsup|\<ast\>>> follows from completeness for
    <math|\<box\>>. (There are two well-known rules that do the trick.) But
    we should easily have the other way round \V i.e. we should be able to
    describe the <with|font-shape|italic|transitive-reduction> of the state
    graph (maybe by adding something to the language!) Try it with
    <with|font-series|bold|K>+<math|\<box\><rsup|\<ast\>>>!

    <with|font-series|bold|Inspiration:> <hlink|Larry Moss' paper that
    discusses <with|font-series|bold|K>+<math|\<box\><rsup|\<ast\>>>|https://link.springer.com/content/pdf/10.1007/s10992-007-9052-4.pdf>,
    <hlink|Original Source on Segerberg axioms|https://www.cs.cornell.edu/~kozen/Papers/ElemPDL.pdf>

    <item>We obviously have completeness for fuzzy neural networks (given
    binary nets) \V any non-fuzzy property of a binary net should be true of
    a corresponding fuzzy net, and vice-versa!

    <with|font-series|bold|Inspiration:> Leitgeb Inhibition Nets I, my paper
    on Hebbian Learning (includes <with|font-series|bold|K>), Giordano's
    paper on fuzzy nets

    <item>Completeness for recurrent neural networks shouldn't be that hard
    \V it's just a matter of making the preference relation intransitive
    (i.e. either make it so that <with|font-series|bold|K> can be cyclic, or
    weaken <with|font-series|bold|T>/<math|<math|\<Rightarrow\>>>'s Loop
    rule.)

    <with|font-series|bold|Inspiration:> <slink|http://mikael.cozic.free.fr/papers/anand93.pdf>
    or some modern textbook on intransitive preferences \V look around! Look
    for a completeness result!

    <item><with|font-series|bold|Experimental example:> In a domain where 1)
    we have really good symbolic/case-adaptation rules, and 2) neural
    networks don't perform as well: Of <with|font-shape|italic|course> we can
    improve the neural network by incorporating adaptation rules! Just modify
    the attributes of the problem case <math|X>, give neural network
    predictions for these, and any whose <with|font-shape|italic|confidence/error>
    is <with|font-shape|italic|higher(/lower)> than the original prediction
    for <math|X> can be adapted (using adaptation rules) to get the solution
    instead!

    Sanity checks:

    <\itemize>
      <item>Compare KNN, KNN+adaptation, NN, NN+adaptation. Make sure:

      KNN+adaptation \<gtr\> KNN by a large margin

      NN by itself has \<less\>70% accuracy, even when optimized, etc.

      <item>Data is normalized, etc.

      <item>It's not uncommon to have nearby ghost cases with high confidence
      when the original prediction has low confidence.
    </itemize>

    <with|font-series|bold|Inspiration:> We already have code and a WIP paper
    to test things out!
  </itemize>

  \;

  Inspired by:

  <with|font-series|bold|IAmVeryStupid on reddit:>

  <\enumerate>
    <item>What the fuck? That's still open? No way, this shit is low-hanging
    fruit, free paper here I come.

    <item>Begin to write paper, title: Blahblah's conjecture is trivial.

    <item>Finish first page. Find idiotic error in proof. Suddenly have no
    idea how to proceed.

    <item>Make 800 definitions. Include in paper in no particular order.

    <item>Run simulations to get statistics.<nbsp><em|How unusual><nbsp>is it
    for a group of order less than 2000 to have a wigwob depth greater than
    the index of its jamble core? Am I looking for a weird exception here or
    is it real common?

    <item>Ok fuck. Does it work for p-groups? Yeah that's obvious. Nilpotent
    groups? Of course it does, nilpotent groups are basically just big ass
    p-groups anyway. Solvable? Can't prove it here, maybe not. Use GAP to
    find a counterexample.

    <item>OK, nilpotent works, solvable doesn't, so some kind of weird shit
    is happening in a Fitting quotient. Look at Fitting quotients of GAP
    counterexample, hoping to find some kind of pathological structure that
    will give me insight as to why the proof is failing, like some weird
    automorphism or a wreath product of Q8s. End up finding a single Z2,
    because the group is too small. Learn nothing. God damn it.

    <item>Maybe......representation theory?!

    <item>Define Jamble-Free Groups, which satisfy exactly the condition that
    my original proof doesn't fuck up at that one step. Prove the theorem for
    Jamble-Free Groups.

    <item>Rename paper, A New Class of Groups Exhibiting Optimal Jamble Core
    Behavior. Prove some propositions exploring the fascinating properties of
    Jamble-Free Groups. Pad with interesting exposition about how this type
    of Jambling affects other group properties. Submit to Journal of
    Mathematical Shitposting. Collect high five from the department head.

    <item>Go back to earlier statistics and see where the counterexample fits
    in. Try to guess where I might find a bigger counterexample. Write bad
    search code. (Have fun with N=1024 there, GAP!) Go on vacation while it
    runs. Know I am just<nbsp><em|one tiny detail><nbsp>from solving that
    general conjecture when I get home.
  </enumerate>

  <slink|https://www.reddit.com/r/math/comments/3cieod/comment/csw1f8h/>

  \;

  Notice that Step 1 is to <with|font-shape|italic|identify something easy
  that I could actually prove/show/demonstrate>. I'll often instead try to
  prove something interesting to me, and forget about whether or not I can
  actually do it. I should make an effort to only try and show things that,
  to me, <with|font-series|bold|seem straightforward>.

  The other thing to notice is that Step 2 is to
  <with|font-shape|italic|immediately> try and write up the result! If the
  thing is easy enough to try and show, I should be able to write it up in
  max 1/2 pages \U to take the pressure off, think of this like an email.

  If I'm completeley at a loss for ideas in the first place, I should
  discover new open problems/directions by reading stuff I'm interested in \V
  think about directions they mention, and think about what I could do about
  it.

  \;

  <with|font-series|bold|chestnutman> adds:

  <\quotation>
    \PRead related literature. Try to adapt some of the techniques. If it
    doesn't work, read a lot of unrelated literature. Then drink lots of
    coffee. Eventually you will figure something out. Usually, if you want to
    attack new problem, you have a good feeling if it is doable and you just
    have to find the right approach or if it is way too difficult.\Q
  </quotation>

  \;

  Humor by <with|font-series|bold|lemma_not_needed:>\ 

  <slink|https://www.reddit.com/r/math/comments/gsio4r/how_does_a_mathematician_pick_a_problem_for/>

  <\quotation>
    \PFirst, the Researcher chooses a topic. Then they find a place that they
    find intellectually and spiritually compelling, such as a clearing in a
    forest, an old and empty library, or whathaveyou. Then they draw a circle
    around themselves, connected via line to three smaller circles drawn
    outside the circle. The three circles must be equidistant from one
    another, as if they were vertexes of an equilateral triangle in which the
    circle is inscribed. One circle for the philosophers, one for the
    logicians, one for the mathematicians. In a large bowl, the Researcher
    then burns a copy of some important text that is relevant to their topic,
    such as Algebraic Topology by Allen Hatcher. Then, the Researcher mixes
    coffee, honey, and clay with the ashes, until the mixture reaches a
    viscous consistency. At this point, the Researcher must take off their
    clothes and use the mixture as paint to cover their body in commutative
    diagrams. Then they chant: For all, there exists. For all, there exists.
    For all, there exists.

    At this point, the ritual is complete. When the Researcher returns to
    their office, they will find a sheet of paper on their desk with an
    interesting question related to their topic of choice.\Q
  </quotation>

  \;

  Always relevant is this thread:

  <\slink>
    https://academia.stackexchange.com/questions/2219/how-should-i-deal-with-becoming-discouraged-as-a-graduate-student
  </slink>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|font|termes>
    <associate|font-base-size|11>
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
    <associate|auto-1|<tuple|?|1|../../.TeXmacs/texts/scratch/no_name_7.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|How
      to do research:> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>