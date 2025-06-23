<TeXmacs|2.1.4>

<style|mgubi_webpage>

<\body>
  <my-page-header>

  <section*|My Experience with WYSIWYG in Science Writing>

  <subsection*|This article is not for LaTeX superusers>

  <\idea>
    I don't intend to reach or change the mind of people who use the heavily

    programmatic features of LaTeX, or who swear by the various
    idiosynchracies

    and details of LaTeX typesetting
  </idea|>

  <\idea>
    My audience here is those many, many ordinary scientists and technical
    writers who\ 

    need to write papers with heavy mathematics, diagrams, tables, who don't
    want to\ 

    worry about things like inconsistent styling, bad whitespace, or tracking
    references,\ 

    etc. These\ 
  </idea|>

  <subsection*|This article is for those who get frustrated with LaTeX>

  <\idea>
    I don't intend to reach or change the mind of people who are very happy
    with their

    LaTeX setup. This article is for people who, like me, get frustrated
    sometimes\ 

    debugging cryptic LaTeX errors that globally break their document, the
    write-\<gtr\>

    recompile-\<gtr\>verify cycle, etc.
  </idea|>

  <\idea>
    Those of you who have gotten frustrated with LaTeX may have tried other

    alternatives, and decided that the friction of the alternatives outweighs
    the friction

    of LaTeX. I hope to show you that there <with|font-shape|italic|is> a
    very nice, crisp, fully-featured

    typesetter and editor out there that has very little user friction or
    frustration.
  </idea|>

  <\idea>
    This article is for people who understand the ways in which LaTeX is
    infinitely

    better than Word, but who sometimes wish Word was a little bit more like
    LaTeX.
  </idea|>

  <subsection*|This article is for those who might prefer WYSIWYG or WYSIWYM>

  <\idea>
    A thought that I don't hear expressed in discussions about WYSIWYG: I
    notice that

    when using Word or Obsidian or writing something on a whiteboard,
    chalkboard,

    or notebook, I feel more <with|font-shape|italic|connected> with my
    writing. It's easier to glance at some text

    and realize that the word choice is not quite right, or to be able to
    click on something

    in the text I'm reading and be able to edit it on the spot.
  </idea|>

  <subsection*|The pain points of LaTeX>

  <\description>
    <item*|The write-\<gtr\>recompile-\<gtr\>verify cycle>

    <item*|The disconnect between source code and pdf>

    <item*|Unhelpful error messages>

    <item*|Errors that break the document globally>

    <item*|Spending too much time formatting things>Despite LaTeX's promise
    that the user shouldn't have to worry about the formatting or whitespace,
    I find myself spending quite a lot of time tweaking LaTeX's defaults, and
    getting frustrated that I have to recompile to see the effects of those
    changes.

    <item*|>
  </description>

  <subsection*|In search of WYSIWYG science typesetting>

  <\idea>
    In this part, talk about my journey searching online & asking in-person
    for typesetters

    and editors that do better than LaTeX. Show screenshots of people online
    dismissing

    the question, talk about how people in-person told me I was asking too
    much, etc.

    There is an intense social resistance to suggesting anything other than
    LaTeX, and

    for more than grandfathered-in reasons<text-dots>
  </idea|>

  <\idea>
    Mention my experience with Obsidian and Typora. I consider these the gold
    standard

    user experience for WYSIWYG writing\Vbut I want these to support
    mathematics,

    vector graphics / figure drawing, fully-featured macros, user packages,
    and styles.
  </idea|>

  <idea|List my criteria for My Ideal Typesetting Editor|>

  <subsection*|The current best alternatives>

  <idea|Mention AuxTeX, Lyx, Scientific Workplace, and TeXmacs|>

  <\description>
    <item*|Lyx>

    <item*|Scientific Workplace>

    <item*|AuxTex>

    <item*|TeXmacs and Mogan>
  </description>

  <subsection*|My Experience with TeXmacs / Mogan>

  <\idea>
    it's important in this section to show just how easy the transition is
    from LaTeX to

    TeXmacs for non-super-user scientists and technical writers
  </idea|>

  <subsection*|Points in favor of TeXmacs / Mogan>

  Mention wherever relevant what LaTeX packages are equivalent, and what
  TeXmacs features are totally not done in LaTeX.

  <\itemize>
    <item>Mention that both are free and open-source, in perpetuity

    <item>Fully extensible, either via macros or using scheme code

    <item>Like LaTeX, much love and care was put into design and typesetting
    choices by the developers

    <item>Fully-featured LaTeX-like macro system

    <item>A macro editor which allows you to
    <with|font-shape|italic|visualize> macro outputs interactively as you
    code them!

    <item>Most commands are the same as their LaTeX counterparts, easier to
    pick up if you come from LaTeX. e.g. <verbatim|$> to enter math mode,
    <verbatim|\\section>, <verbatim|\\theorem>, <verbatim|\\mathcal>,
    <verbatim|\\frac>, <verbatim|\\circ> <text-dots> Many math symbols have
    \Puser-friendly\Q shortcuts, e.g. <verbatim|-\<gtr\>> for
    <math|\<rightarrow\>>, <verbatim|/\\> for <math|\<wedge\>>, etc.

    <item>Macros are also very similar to LaTeX macros\Vshow a side-by-side
    example

    <item>LaTeX-like style files and packages

    <item>.bib file imported bibliographies and reference management, again
    done similar to LaTeX

    <item>what you see on your screen as you type is literally what is
    printed out by the printer.

    <item>math font support for additional typefaces

    <item>Bold math! <with|font-series|bold|<math|f\<circ\>g>>

    <item>Interactive shell sessions, e.g. with Python, Scheme, or Tikz
  </itemize>

  <subsection*|The pain points of TeXmacs / Mogan>

  <\idea>
    mention that TeXmacs used to have many, many more pain points, but the

    developers address issues people have! At this point, I am very happy
    writing

    academic papers, personal notes, webpages, books, slides and posters
    fully in

    TeXmacs\VI should give examples that I've done in each.
  </idea|>

  <subsection*|My recommendations for using TeXmacs / Mogan>

  <\description>
    <item*|Download additional packages from tm-forge>Mention my favorites:
    post-modern icons, fontawesome, gruvbox. Post-modern icons makes TeXmacs
    feel more modern (I find the default icons to feel a bit like Windows 95
    :-) )
  </description>

  <subsection*|An invitation to write with TeXmacs / Mogan>

  <\idea>
    One thing I'd like to say in this invitation: I would be very excited to
    collaborate

    with somebody in TeXmacs, and test out the new (somewhat experimental)

    LiveShare feature! (I should test it on my own computer to make sure it
    somewhat

    works before recommending it.)
  </idea|>

  <idea|This website and blog post were written in TeXmacs!|>
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
    <associate|auto-1|<tuple|?|?>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|><shift|<with|font-size|<quote|0.595>|\<#25C6\>>||0.1em>|?>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|><shift|<with|font-size|<quote|0.595>|\<#25C6\>>||0.1em>|?>>
    <associate|auto-12|<tuple|Download additional packages from tm-forge|?>>
    <associate|auto-2|<tuple|?|?>>
    <associate|auto-3|<tuple|?|?>>
    <associate|auto-4|<tuple|?|?>>
    <associate|auto-5|<tuple|?|?>>
    <associate|auto-6|<tuple||?>>
    <associate|auto-7|<tuple||?>>
    <associate|auto-8|<tuple|TeXmacs and Mogan|?>>
    <associate|auto-9|<tuple|TeXmacs and Mogan|?>>
  </collection>
</references>