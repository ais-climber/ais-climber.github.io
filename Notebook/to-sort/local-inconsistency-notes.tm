<TeXmacs|2.1.1>

<style|<tuple|Arxiv|termes-font>>

<\body>
  <doc-data|<doc-title|Local Inconsistency Notes>>

  \;

  <section|Global vs Local Inconsistencies>

  We usually define a set of sentences <math|\<Gamma\>> to be inconsistent if
  <math|\<Gamma\>\<vdash\>\<bot\>>. In classical logic an inconsistency is
  disastrous, because of the axiom <with|font-shape|italic|ex falso
  quodlibet>, i.e., <math|\<bot\>\<rightarrow\>\<varphi\>>. If we have any
  inconsistency whatsoever in a set <math|\<Gamma\>>, then we can prove
  anything. For example, if we can find even one inconsistency in all of
  mathematics, then the whole of mathematics is suspect.

  Now consider formally verified proofs (e.g., in Agda or Lean). In theory,
  verified proofs must depend on axioms and definitions that could never give
  rise to a disasterous inconsistency. But in practice, inconsistent
  assumptions are often used as hacks. For example, consider floating point
  numbers in Lean. Lean's base and math libraries contain almost no lemmas
  about <with|font-family|tt|Float>, since the gnarly floating-point
  specification means that they do not have the usual algebraic properties.
  In Lean we prefer to prove things about <with|font-family|tt|Rat>, and
  <with|font-family|tt|Real>. But when <with|font-shape|italic|evaluating>,
  we prefer <with|font-family|tt|Float>; <with|font-family|tt|#eval (x :
  Rat)> returns a fraction that is difficult to convert to a decimal, and
  <with|font-family|tt|#eval (x : Real)> returns an entirely unhelpful Cauchy
  sequence. The current hack is to define

  <\code>
    <code|<\code*>
      structure MyReal : Type where

      \ \ \ \ val : Float
    </code*>>
  </code>

  and then just assume the laws of real numbers are true for
  <with|font-family|tt|MyReal>. This allows us to reason about floating-point
  numbers (as real numbers), and then evaluate them when we need to. But of
  course this results in an inconsistency:

  <\code>
    <code|<\code*>
      example : (1.0 : MyReal) + (-1.0 + 0.000001 : MyReal) \<leq\> 0.0 :=
      \ \ \ \ by native_decide

      \;

      example : (1.0 : MyReal) + (-1.0 + 0.000001 : MyReal) \<gtr\> 0.0 :=
      \ \ \ \ by rw[\<leftarrow\> add_assoc]; native_decide
    </code*>>
  </code>

  But this kind of inconsistency isn't as disastrous as it seems. We know
  that we will never run into problems, so long as we don't
  <with|font-shape|italic|use evaluation>
  (<with|font-family|tt|native_decide>) to prove facts about
  <with|font-family|tt|MyReal> \V we need to keep proofs and evaluation
  separate.

  I'll call this kind of inconsistency a <with|font-shape|italic|local
  inconsistency>. By way of analogy, this is similar to what people do when
  we reason in different situations. In our head, we have several hundred
  inconsistencies bouncing around. But when we actually form an argument, in
  a particular context, we just avoid using facts that would make our
  argument inconsistent.

  <section|Questions>

  <\itemize>
    <item>Does there already exist a good-enough theory of local
    inconsistencies? e.g., a logic that doesn't admit the principle of
    explosion

    <item>How do local inconsistencies relate to
    <with|font-shape|italic|scope>?

    <item>Can we decidably detect a local inconsistency? (Probably not, but
    maybe the scope would help us)

    <item>Is the theory of local inconsistencies just the theory of global
    ones, but restricted to a smaller set? (this would make the whole thing
    really trivial)

    <item>When people use proof assistants, they don't want to have to figure
    out if code is using a safe local inconsistency. What conventions would
    allow us to use these safely?
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
    <associate|auto-2|<tuple|2|1|../Argyle/preference-upgrade-notes.tm>>
    <associate|auto-3|<tuple|1|2|../Argyle/preference-upgrade-notes.tm>>
    <associate|auto-4|<tuple|2|2|../Argyle/preference-upgrade-notes.tm>>
    <associate|auto-5|<tuple|3|3|../Argyle/preference-upgrade-notes.tm>>
    <associate|auto-6|<tuple|2|3|../Argyle/preference-upgrade-notes.tm>>
    <associate|auto-7|<tuple|3|4|../Argyle/preference-upgrade-notes.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|4spc>Neural
      Network Semantics for Preference Upgrade>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|4spc>Polya's
      Rule of Plausible Inference> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|4tab>|Formalizing Polya's Rule.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Other Rules.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|The Plan.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.15fn>>

      <with|par-left|<quote|1tab>|Update:
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|4spc>Supervised
      Preference Upgrade> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>