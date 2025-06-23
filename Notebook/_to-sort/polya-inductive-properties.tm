<TeXmacs|2.1.4>

<style|mgubi_webpage>

<\body>
  <my-page-header>

  <doc-data|<doc-title|Induction Constraints on Plausibility Upgrades>>

  <section*|Introduction>

  I've been reading Polya's two-volume series
  <with|font-shape|italic|Mathematics and Plausible Reasoning>, in which
  George Polya gives his attitudes, as a mathematician, educator, and
  philosopher, on the role of induction and plausible reasoning in
  mathematics. Interestingly, he attempts to formalize concrete rules for
  when we should consider a conjecture more plausible.

  Dynamic Epistemic Logic (specifically, Dynamic
  <with|font-shape|italic|Doxastic> Logic) also tries to formalize concrete
  rules for when we should make a conjecture more plausible. As far as I can
  tell, these ideas have not yet been <with|font-shape|italic|directly>
  influenced by Polya's work. (Although, the
  <with|font-shape|italic|indirect> impact of Polya's thinking has affected
  all of mathematics and logic.)

  In these notes, I will try to take Polya's ideas and formalize them even
  more concretely in the context of DEL. Here's what I mean by that:

  <\enumerate>
    <item> For each interesting property or rule that Polya says must hold
    for a plausibility update, I will track which well-known DEL belief
    revision updates actually have that property. (Basically, provide an
    example that serves as a model of that rule.)

    <item> If any of the properties have no models, I will try to come up
    with an update that works instead.

    <item> Finally, I will try to come up with an update that satisfies
    <with|font-shape|italic|all> of these conditions. This will serve as a
    model for Polya's complete vision (i.e. show that all of the constraints
    are mutually satisfiable), and will be proof that it's possible to make
    this kind of \Pideal inductive reasoner.\Q
  </enumerate>

  <section*|Plausibility Upgrade in DEL>

  <todo|List the common DEL plausibility upgrades here>

  <section*|Polya's Induction Constraints>

  <center|<tabular|<tformat|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|3|3|cell-tborder|0ln>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<cwith|1|-1|4|4|cell-lborder|0ln>|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|6|6|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<cwith|1|-1|6|6|cell-lborder|0ln>|<cwith|1|1|7|7|cell-tborder|0ln>|<cwith|6|6|7|7|cell-bborder|0ln>|<cwith|1|-1|7|7|cell-lborder|1ln>|<cwith|1|-1|6|6|cell-rborder|1ln>|<cwith|1|-1|7|7|cell-rborder|0ln>|<table|<row|<cell|<with|font-series|bold|Property
  Name>>|<cell|>|<cell|<with|font-series|bold|Reference>>|<cell|>|<cell|<with|font-series|bold|Polya's
  Description>>|<cell|>|<cell|<with|font-series|bold|DEL
  Formalization>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>>

  <section*|A Table of Upgrades and their Induction Properties>

  <center|<tabular|<tformat|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|2|2|cell-tborder|0ln>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|1|3|3|cell-tborder|0ln>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|6|6|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|>|<cell|<value|Cond>>|<cell|<value|Lex>>|<cell|<value|Consr>>>|<row|<cell|<todo|Property
  name>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>>>>>>

  <section*|Designing upgrades for the remaining properties>

  <section*|Polya's Ideal Inductive Reasoner>

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-height|auto>
    <associate|page-type|letter>
    <associate|page-width|auto>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?|../blog/my-experience-with-wysiwyg.tm>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|><shift|<with|font-size|<quote|0.595>|\<#25C6\>>||0.1em>|?|../blog/my-experience-with-wysiwyg.tm>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|><shift|<with|font-size|<quote|0.595>|\<#25C6\>>||0.1em>|?|../blog/my-experience-with-wysiwyg.tm>>
    <associate|auto-12|<tuple|Download additional packages from
    tm-forge|?|../blog/my-experience-with-wysiwyg.tm>>
    <associate|auto-2|<tuple|3|?|../blog/my-experience-with-wysiwyg.tm>>
    <associate|auto-3|<tuple|3|?|../blog/my-experience-with-wysiwyg.tm>>
    <associate|auto-4|<tuple|3|?|../blog/my-experience-with-wysiwyg.tm>>
    <associate|auto-5|<tuple|3|?|../blog/my-experience-with-wysiwyg.tm>>
    <associate|auto-6|<tuple|3|?|../blog/my-experience-with-wysiwyg.tm>>
    <associate|auto-7|<tuple||?|../blog/my-experience-with-wysiwyg.tm>>
    <associate|auto-8|<tuple|TeXmacs and Mogan|?|../blog/my-experience-with-wysiwyg.tm>>
    <associate|auto-9|<tuple|TeXmacs and Mogan|?|../blog/my-experience-with-wysiwyg.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|My
      Experience with WYSIWYG in Science Writing>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|This article is not for LaTeX superusers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|This article is for those who get
      frustrated with LaTeX <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|This article is for those who might prefer
      WYSIWYG or WYSIWYM <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|The pain points of LaTeX
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|In search of WYSIWYG science typesetting
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|The current best alternatives
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|My Experience with TeXmacs / Mogan
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|Points in favor of TeXmacs / Mogan
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|The pain points of TeXmacs / Mogan
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|My recommendations for using TeXmacs /
      Mogan <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|An invitation to write with TeXmacs / Mogan
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>
    </associate>
  </collection>
</auxiliary>