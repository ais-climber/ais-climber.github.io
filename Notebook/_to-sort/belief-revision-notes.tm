<TeXmacs|2.1.1>

<style|<tuple|Arxiv|termes-font>>

<\body>
  <\hide-preamble>
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

    <assign|Believe|<with|font-series|bold|<text|B>>>

    <assign|diaBelieve|\<langle\><value|Believe>\<rangle\>>

    <assign|best|<with|font-family|ss|best>>

    \;
  </hide-preamble>

  <doc-data|<doc-title|Conditionals & Belief Revision Notes>>

  <section|Taking conditionals out of conditional logic>

  I'll start with something that's been bothering me for a while. In the KLM
  tradition of conditional logic, we take models to be
  <math|<value|Model>=\<langle\>W,\<leqslant\>,V\<rangle\>>, where
  <math|\<leqslant\>> is a preference ordering on worlds <math|w\<in\>W>. For
  any subset <math|S\<subseteq\>W>, let <math|<value|best><rsub|\<leqslant\>><around*|(|S|)>=<around*|{|w\<in\>S
  \<mid\>\<forall\>u\<in\>S,u\<leqslant\>w|}>>, i.e., the most plausible
  worlds in <math|S>. We define a conditional
  <math|\<varphi\>\<Rightarrow\>\<psi\>> if

  <\equation*>
    <value|best><rsub|\<leqslant\>><around*|(|<semantics|\<varphi\>>|)>\<subseteq\><semantics|\<psi\>>
  </equation*>

  In words, \Pall the most plausible <math|\<varphi\>>-worlds are also
  <math|\<psi\>>-worlds.\Q We can swap <math|\<varphi\>\<Rightarrow\>\<psi\>>
  out with other suggestive operators, depending on the context: for
  <math|<value|Know><around*|(|\<varphi\>,\<psi\>|)>> the most plausible
  worlds are the worlds the agent is most committed to knowing; for
  <math|<value|Believe><around*|(|\<varphi\>,\<psi\>|)>> the most plausible
  worlds are the worlds the agent is most committed to believing.

  This makes intuitive sense: we can interpret
  <math|<value|Believe><around*|(|<text|Tweety>,<text|flies>|)>> as saying
  \Pin all the worlds with Tweety we are most committed to believing, Tweety
  flies\Q. In short, we believe that Tweety flies. (Note that belief is
  non-monotonic; we can revise it when we find out, e.g., that Tweety is a
  dodo rather than a canary.)

  What bothers me is that it seems like we can tell this same story, but
  without conditionals altogether. Instead, we can just use the ordinary
  modal operators <math|<value|Know>\<varphi\>> and
  <math|<value|Believe>\<varphi\>>. We can just directly assign for example

  <\equation*>
    <semantics|<value|Believe>\<varphi\>>=<value|best><rsub|\<leqslant\>><around*|(|<semantics|\<varphi\>>|)>
  </equation*>

  Why didn't Kraus, Lehmann, and Magidor do this to begin with? Why isn't
  this the standard move today? My only guess is that this \Palgebraic\Q
  interpretation of belief (as a set, rather than a truth value) would make
  people uncomfortable. But there is a clear way to interpret this in terms
  of truth:

  <\equation*>
    <value|Model>,w\<Vdash\>\<varphi\><space|1em><text|iff><space|1em>w\<in\><semantics|\<varphi\>><rsub|<value|Model>>
  </equation*>

  That is, we do the following. We build up our semantics algebraically,
  assigning each <math|\<varphi\>> to a set of worlds
  <math|<semantics|\<varphi\>><rsub|<value|Model>>> where <math|\<varphi\>>
  is true. We then say <math|w\<Vdash\>\<varphi\>> (<math|\<varphi\>> holds
  at world <math|w>) simply if <math|w> is one of these worlds. Naturally, we
  get that <math|w\<Vdash\><value|Believe>\<varphi\>> iff
  <math|w\<in\><semantics|<value|Believe>\<varphi\>>=<value|best><rsub|\<leqslant\>><around*|(|<semantics|\<varphi\>>|)>>.
  In words, we believe <math|\<varphi\>> iff <with|font-shape|italic|this>
  world is one of the most plausible <math|\<varphi\>>-worlds, i.e., one that
  we're most committed to believing.

  To boot, we can still express conditional belief this way. (This means that
  modal belief is slightly more expressive than conditional belief)

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|<value|Model>\<models\><value|Believe><around*|(|\<varphi\>,\<psi\>|)>>|<cell|<infix-iff>>|<cell|<value|best><rsub|\<leqslant\>><around*|(|<semantics|\<varphi\>>|)>\<subseteq\><semantics|\<psi\>>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|<semantics|<value|Believe>\<varphi\>>\<subseteq\><semantics|\<psi\>>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<forall\>w,w\<in\><semantics|<value|Believe>\<varphi\>><text|
    implies >w\<in\><semantics|\<psi\>>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|\<forall\>w,w\<Vdash\><value|Believe>\<varphi\>\<rightarrow\>\<psi\>>>|<row|<cell|>|<cell|<infix-iff>>|<cell|<value|Model>\<models\><value|Believe>\<varphi\>\<rightarrow\>\<psi\>>>>>>
  </equation*>

  Why should we make this change? The main reason, I realized, is it can
  clean up the proof system.

  <section|This makes the axioms cleaner!>

  The real motivation I had for doing this is that axioms for
  <with|font-shape|italic|conditional belief revision> are real gnarly. For
  example, Lexicographic upgrade <math|\<leqslant\><rsub|P><rsup|\<ast\>>>
  (\Pmake all <math|P>-worlds better than all non-<math|P>-worlds\Q) has the
  following reduction axioms in the <math|<value|Believe><around*|(|\<varphi\>,\<psi\>|)>>
  case [from \PDynamic Logic for Belief Revision,\Q though we swap
  <math|\<varphi\>> and <math|\<psi\>> in our interpretation]:

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|<around*|[|\<Uparrow\>P|]><value|Believe><around*|(|\<varphi\>,\<psi\>|)>>|<cell|\<leftrightarrow\>>|<cell|E<around*|(|P\<wedge\><around*|[|\<Uparrow\>P|]>\<varphi\>|)>\<wedge\><value|Believe><around*|(|<around*|[|P\<wedge\><around*|[|\<Uparrow\>P|]>\<varphi\>,<around*|[|\<Uparrow\>P|]>|\<nobracket\>>\<psi\>|)>>>|<row|<cell|>|<cell|>|<cell|\<neg\>E<around*|(|P\<wedge\><around*|[|\<Uparrow\>P|]>\<varphi\>|)>\<wedge\><value|Believe><around*|(|<around*|[|<around*|[|\<Uparrow\>P|]>\<varphi\>,<around*|[|\<Uparrow\>P|]>|\<nobracket\>>\<psi\>|)>>>>>>
  </equation*>

  But when we use the modal <math|<value|Believe>> we get the much simpler
  reduction

  <\equation*>
    <around*|[|\<Uparrow\>P|]><value|Believe>\<varphi\>\<leftrightarrow\><value|Believe><around*|(|P\<wedge\><around*|[|\<Uparrow\>P|]>\<varphi\>|)>
  </equation*>

  To make sure this is sound, we just need to check the following.

  <\proposition*>
    <math|<value|best><rsub|\<leqslant\><rsub|P><rsup|\<ast\>>><around*|(|<semantics|\<varphi\>>|)>=<value|best><rsub|\<leqslant\>><around*|(|<semantics|\<varphi\>>\<cap\><semantics|P>|)>>
  </proposition*>

  <\proof>
    <math|<around*|(|\<rightarrow\>|)>> If
    <math|w\<in\>><math|<value|best><rsub|\<leqslant\><rsub|P><rsup|\<ast\>>><around*|(|<semantics|\<varphi\>>|)>>
    then <math|w> is a best <math|\<varphi\>>-world after reordering. But the
    reorder doesn't affect worlds within <math|<semantics|\<varphi\>>>, so
    <math|w> is a best <math|\<varphi\>>-world before reordering. So in
    particular, <math|w> is better than all the <math|\<varphi\>>-worlds that
    are also <math|P>-worlds. So <math|w\<in\><value|best><rsub|\<leqslant\>><around*|(|<semantics|\<varphi\>>\<cap\><semantics|P>|)>>.

    <math|<around*|(|\<leftarrow\>|)>> If
    <math|w\<in\>><math|<value|best><rsub|\<leqslant\>><around*|(|<semantics|\<varphi\>>\<cap\><semantics|P>|)>>,
    then <math|w> is a best <around*|(|<math|\<varphi\>\<wedge\>P>|)>-world
    before reordering. But since the reorder puts <math|P>-worlds on top,
    <math|w> is still at least as good, after reordering, as all other
    <around*|(|<math|\<varphi\>\<wedge\>P>|)>-worlds. Suppose for
    contradiction that some other <math|\<varphi\>>-world <math|u> is better
    than <math|w>. Then it must have been bumped up in the reordering. But
    this would mean that <math|u> is a <math|P>-world, i.e. <math|u> is a
    <math|<around*|(|\<varphi\>\<wedge\>P|)>>-world. But this contradicts the
    fact that <math|w> is the best <math|<around*|(|\<varphi\>\<wedge\>P|)>>-world.
  </proof>

  We get a similar result for Elite Upgrade:
  <math|<value|best><rsub|\<leqslant\><rsub|P><rsup|\<ast\>>><around*|(|<semantics|\<varphi\>>|)>=<value|best><rsub|\<leqslant\>><around*|(|<semantics|\<varphi\>>\<cap\><value|best><rsub|\<leqslant\>><around*|(|<semantics|P>|)>|)>>,
  which immediately gives us a simpler reduction axiom than Van Benthem's:

  <\equation*>
    <around*|[|\<uparrow\>P|]><value|Believe>\<varphi\>\<leftrightarrow\><value|Believe><around*|(|<value|Believe>P\<wedge\><around*|[|\<uparrow\>P|]>\<varphi\>|)>
  </equation*>

  <section|Questions>

  <\itemize>
    <item>Can this already be done with neighborhood semantics? What is the
    relationship between the two semantics?

    <item>What other conditional logic/belief revision frameworks are out
    there? Has anybody already thought of something like this?

    <item>Email Van Benthem to ask if he's aware of the simplifications to
    these reduction axioms, or if this is already a known thing.
  </itemize>
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
    <associate|par-par-sep|0.3fn>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../Argyle/preference-upgrade-notes.tm>>
    <associate|auto-2|<tuple|2|?|../Argyle/preference-upgrade-notes.tm>>
    <associate|auto-3|<tuple|3|?|../Argyle/preference-upgrade-notes.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|4spc>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>