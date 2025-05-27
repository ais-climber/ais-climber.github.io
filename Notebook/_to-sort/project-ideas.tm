<TeXmacs|2.1.1>

<style|<tuple|tmarticle|pagella-font>>

<\body>
  <doc-data|<\doc-title>
    Project Ideas
  </doc-title>>

  <section*|Inspiration>

  User <hlink|IAmVeryStupid|https://www.reddit.com/r/math/comments/3cieod/comment/csw1f8h/>
  writes that their (maths) research process goes:

  <\small>
    <\enumerate>
      <item>What the fuck? That's still open? No way, this shit is
      low-hanging fruit, free paper here I come.

      <item>Begin to write paper, title: Blahblah's conjecture is trivial.

      <item>Finish first page. Find idiotic error in proof. Suddenly have no
      idea how to proceed.

      <item>Make 800 definitions. Include in paper in no particular order.

      <item>Run simulations to get statistics.<nbsp><em|How unusual><nbsp>is
      it for a group of order less than 2000 to have a wigwob depth greater
      than the index of its jamble core? Am I looking for a weird exception
      here or is it real common?

      <item>Ok fuck. Does it work for p-groups? Yeah that's obvious.
      Nilpotent groups? Of course it does, nilpotent groups are basically
      just big ass p-groups anyway. Solvable? Can't prove it here, maybe not.
      Use GAP to find a counterexample.

      <item>OK, nilpotent works, solvable doesn't, so some kind of weird shit
      is happening in a Fitting quotient. Look at Fitting quotients of GAP
      counterexample, hoping to find some kind of pathological structure that
      will give me insight as to why the proof is failing, like some weird
      automorphism or a wreath product of Q8s. End up finding a single Z2,
      because the group is too small. Learn nothing. God damn it.

      <item>Maybe......representation theory?!

      <item>Define Jamble-Free Groups, which satisfy exactly the condition
      that my original proof doesn't fuck up at that one step. Prove the
      theorem for Jamble-Free Groups.

      <item>Rename paper, A New Class of Groups Exhibiting Optimal Jamble
      Core Behavior. Prove some propositions exploring the fascinating
      properties of Jamble-Free Groups. Pad with interesting exposition about
      how this type of Jambling affects other group properties. Submit to
      Journal of Mathematical Shitposting. Collect high five from the
      department head.

      <item>Go back to earlier statistics and see where the counterexample
      fits in. Try to guess where I might find a bigger counterexample. Write
      bad search code. (Have fun with N=1024 there, GAP!) Go on vacation
      while it runs. Know I am just<nbsp><em|one tiny detail><nbsp>from
      solving that general conjecture when I get home.
    </enumerate>
  </small>

  This is a brilliant expression of the excitement and frustration of doing
  math. But it's also a clear <with|font-shape|italic|prescription> for how
  to do math \V at least in a way that resonates with me. These steps
  emphasize some points that I keep forgetting when I get stuck on a project:

  <\small>
    <\enumerate>
      <item><with|font-series|bold|A project should
      <with|font-shape|italic|seem easy to me> first, and be
      <with|font-shape|italic|interesting to me> second.> The
      <with|font-shape|italic|very first step> is to identify low-hanging
      fruit. I have a habit of underestimating how hard something will be,
      and so if something seems difficult upfront, it usually is. Things that
      seem <with|font-shape|italic|stupidly easy> to me will tend to be
      difficult, but actually doable.

      <item><with|font-series|bold|Minimize the resistance to start the
      project.> The <with|font-shape|italic|very second step> is to just
      start writing up the proof, in the most naive way possible. This is
      important, since it forces me to get stuck as soon as possible, and
      only then will I see the heart of the problem. When beginning to write,
      try thinking of it as writing an email.

      <item><with|font-series|bold|When I get stuck, collect statistics and
      visualize.> I tend to just bash my head at a proof until I figure it
      out, but it is much more insightful (and faster!) to run computational
      models to get a sense of how rare the proof failure is. I need to
      remember to do this more.
    </enumerate>
  </small>

  In these notes, I'll write up my own version of these steps. I'll be able
  to quickly get started on new projects by copying-and-pasting these steps.
  And to keep my own brain organized, I'll also include all the different
  ideas I have at their different stages.

  <section*|My Research Methodology>

  Copy-and-paste these simple steps into a file when starting a new project:

  <\small>
    <\description>
      <item*|Step 0>Find a paper I enjoy, and read it. Try to understand its
      ideas, with an eye towards extending it/altering it.

      <item*|Step 1>Look for an extension/open problem that makes me think\ 

      \PWhat the fuck? That's still open? No way, this shit is low-hanging
      fruit, free paper here I come.\Q

      i.e. something <with|font-shape|italic|easy> and
      <with|font-shape|italic|straightforward>,
      <with|font-shape|italic|without complications>.

      <item*|Step 2>Follow-up question (only answer
      <with|font-series|bold|after> Step 1):\ 

      Is the extension <with|font-shape|italic|interesting> or
      <with|font-shape|italic|surprising>? What do we learn by extending the
      result?

      <item*|Step 3>Two things to do at this point:

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

      <item*|Step 4>Write up my new definitions & proof in the Texmacs file.
      Again, should be a <with|font-shape|italic|very> straightforward
      extension, and the proof (proofs are just unit-tests for definitions)
      shouldn't take up too much room at all (1-2 pages, including defs)

      <item*|Step 5>Step away (for a few days). Come back and check the proof
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
      that condition the proof doesn't fuck up at that step. Use the
      generated examples for help. Prove the claim for models satisfying
      Condition.

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

      None of the above? <math|\<longrightarrow\>> It's okay to not publish
      for now, and wait until you see the whole proof.

      <item*|Step 10>Move on to the write-up stage. But otherwise, step away
      from the problem \V there are too many other interesting things to
      spend all of your time on this one. Trust that one day a different
      solution will come to you.
    </description>
  </small>

  <section*|Stage V: Papers that Are Now Published>

  <\small>
    <\itemize>
      <item>
    </itemize>
  </small>

  <\section*>
    Stage V: Clean Up and Present on Arxiv+Github
  </section*>

  After I've written a draft that I'm happy with, it's time to clean it up
  and post it to Arxiv. I should also clean up the implementation and
  document it on Github. Both of these help other people find the project,
  and encourage others to build off of it.

  <\small>
    <\itemize>
      <item>
    </itemize>
  </small>

  <section*|Stage IV: Projects that are In Write-Up Phase>

  This is where projects go after Step 10, i.e. when results are in and I'm
  ready to write up a draft.

  <\small>
    <\itemize>
      <item>
    </itemize>
  </small>

  <section*|Stage III: Projects I've Started>

  This is where projects to after Step 4, i.e. when I've started a new Notes
  file for the project, and have filled in the first few steps.

  <\small>
    <\itemize>
      <item>
    </itemize>
  </small>

  <section*|Stage II: Easy Things I Can Try>

  Step 0 is to find a paper that inspires me, and look for an open problem
  that makes me think \P\PWhat the fuck? That's still open? No way, this shit
  is low-hanging fruit, free paper here I come.\Q This is where I'll put
  ideas where I have an <with|font-shape|italic|easy approach>.

  <\small>
    <\itemize>
      <item><hlink|[Inspiration]|https://arxiv.org/pdf/2012.13635.pdf> Logic
      Tensor Networks attempt to map first-order quantifiers onto neural
      network dynamics. But Artur d'Avila Garcez mentioned in a recent talk
      at the IBM Neuro-Symbolic Workshop that there is no soundness proof for
      this mapping (unlike conditional logics and feed-forward nets). It
      shouldn't be too hard to prove some sound axioms (or tweak the
      semantics so that some natural rules are sound).

      <item><hlink|[Inspiration]|https://journals.flvc.org/FLAIRS/article/download/130735/133901>
      It turns out that we can characterize Hebbian learning
      <with|font-shape|italic|in the limit> as a sort of fixed point operator
      <math|<around*|[|\<varphi\>|]>:N\<times\>S\<rightarrow\>N>. But this
      paper only deals with <with|font-shape|italic|unstable> Hebbian
      learning. It shouldn't be too hard to characterize
      <with|font-shape|italic|stable> Hebbian learning \V and this would be
      much more interesting, since the axiom would say
      <with|font-shape|italic|what knowledge the net actually converges on>!

      <item><hlink|[Inspritation 1]|https://github.com/agda/agda2hs><hlink|[Inspiration
      2]|https://isabelle.in.tum.de/doc/sugar.pdf> It's possible to convert
      Isabelle code to (somewhat stifled, but readable) LaTeX! This saves a
      ton of work when writing up a formalized proof! In general (e.g. for
      Agda, Lean), it shouldn't be too hard to use the same approach to
      convert to some intermediate format (e.g. almost-English Agda,
      almost-English Lean, and then to some almost-English structure), and
      then to LaTeX (maybe with some file specifying which terms map to which
      macros, etc).

      As a bonus, this almost-English representation would be perfect for
      teaching CS students (structured) proofs.

      <item>
    </itemize>
  </small>

  <section*|Stage I: Papers that Inspire Me>

  This is where I'll dump papers that inspire me, even if I haven't found the
  low-hanging fruit in them yet. These are more likely to turn into projects
  than Stage \<emptyset\> ideas because I have an
  <with|font-shape|italic|entryway into an approach>.

  <\small>
    <\itemize>
      <item>Joseph Becker, <hlink|The Phrasal
      Lexicon|https://aclanthology.org/T75-2013.pdf>

      <item>\<ast\>\<ast\>Hannes Leitgeb, Nonmonotonic Reasoning by
      Inhibition Nets I & II

      <item>\<ast\>\<ast\>Baddredine, Garcez, et al, <hlink|Logic Tensor
      Networks|https://arxiv.org/pdf/2012.13635.pdf>

      <item>Manhaeve, Dumancic, et al, <hlink|DeepProbLog: Neural
      Probabilistic Logic Programming|https://arxiv.org/abs/1805.10872>

      <item>Giordano, Gliozzi, et al, <hlink|A conditional, a fuzzy and a
      probabilistic interpretation of self-organising
      maps|https://arxiv.org/pdf/2103.06854.pdf>

      <item>Google Brain Team, <hlink|Attention Is All You
      Need|https://proceedings.neurips.cc/paper/2017/file/3f5ee243547dee91fbd053c1c4a845aa-Paper.pdf>

      <item>Thomas Petricek, <hlink|What we talk about when we talk about
      monads|https://tomasp.net/academic/papers/monads/monads-programming.pdf>

      <item>Jeremie Cabessa and Hava Siegelmann, <hlink|The Super-Turing
      Computational Power of Plastic Recurrent Neural
      Networks|https://www.researchgate.net/profile/Jeremie-Cabessa/publication/267741256_The_super-Turing_computational_power_of_plastic_recurrent_neural_networks/links/548f25f60cf214269f2636f9/The-super-Turing-computational-power-of-plastic-recurrent-neural-networks.pdf>

      <item>William Merrill, <hlink|Sequential Neural Networks as
      Automata|https://arxiv.org/pdf/1906.01615.pdf>
    </itemize>
  </small>

  <section*|Stage \<emptyset\>: Ideas in Infancy / Brain Dump>

  This is where I will just brain-dump ideas are exciting/inspiring to me.
  Most of these I can't really get started on because I don't have an
  <with|font-shape|italic|easy approach> \V and the first step to that is to
  find a paper that leaves one of these ideas as low-hanging fruit (rare, but
  there's a chance!). Without an <with|font-shape|italic|easy approach>,
  these are just pie-in-the-sky, and won't find their way to concrete
  results.\ 

  <\small>
    <\itemize>
      <item>Axiomatize <with|font-shape|italic|backpropagation> in the same
      way I did Hebbian learning. This sounds great, but it isn't apparent
      how easy or hard this will be.

      <item>Axiomatize recurrent nets (e.g. LSTMs, Gated Recurrent nets,
      etc., see <hlink|this paper|https://arxiv.org/pdf/1906.01615.pdf>) the
      same way as feed-forward neural networks. This seems like it would just
      be a matter of relaxing the acyclic condition, except for two things:
      1) we don't even know if we get a stable state for forward propagation,
      and 2) recurrent nets reason about <with|font-shape|italic|time> in
      some way I'd like to make clear.

      I won't know how to get started on this until I make it clear
      <with|font-shape|italic|what exactly the relevant closure operators
      are> in this situation. (It would be nice to have a theorem saying that
      forward propagation converges in certain situations, but that's not
      guaranteed).

      <item>How should we assign propositions to sets/fuzzy sets in a net in
      the first place? (Look at <hlink|this classic (2001)
      paper|https://core.ac.uk/download/pdf/81952714.pdf> for ideas, since
      they straight-up do knowledge extraction.)

      <item>The main roadblock in using TeXMacs is that its style files are
      incompatible with LaTeX style files. But there should be a way to
      convert between the two in general (at least practically). How can I do
      this?

      <item>Is there a way to extend TeXMacs with a LiveShare feature (like
      VSCode or Overleaf)? Way more people would use it if it allowed for
      this, and it doesn't seem any <with|font-shape|italic|harder> than the
      same feature in other editors.
    </itemize>
  </small>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|math-font|math-pagella>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-screen-margin|true>
    <associate|page-type|letter>
    <associate|page-width|auto>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|3|2>>
    <associate|auto-3|<tuple|Step 10|3>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<bullet\>>|3>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<bullet\>>|3>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<bullet\>>|3>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<bullet\>>|3>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|\<bullet\>>|4>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<bullet\>>|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Inspiration>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|My
      Research Methodology> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Stage
      V: Papers that Are Now Published> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><\with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>>
        Stage V: Clean Up and Present on Arxiv+Github
      </with> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Stage
      IV: Projects that are In Write-Up Phase>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Stage
      III: Projects I've Started> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Stage
      II: Easy Things I Can Try> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Stage
      I: Papers that Inspire Me> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-shape|<quote|small-caps>|Stage
      \<emptyset\>: Ideas in Infancy / Brain Dump>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>