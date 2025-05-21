<TeXmacs|2.1.4>

<style|source>

<\body>
  <\active*>
    <\src-title>
      <src-style-file|notes|1.2>

      <src-purpose|Style file for blogging.>

      <src-copyright|2023|Massimiliano Gubinelli>

      <\src-license>
        This software falls under the <hlink|GNU general public license,
        version 3 or later|$TEXMACS_PATH/LICENSE>. It comes WITHOUT ANY
        WARRANTY WHATSOEVER. You should have received a copy of the license
        which the software. If not, see <hlink|http://www.gnu.org/licenses/gpl-3.0.html|http://www.gnu.org/licenses/gpl-3.0.html>.
      </src-license>
    </src-title>
  </active*>

  <use-package|cite-author-year|cite-sort|fontawesome|preview-ref|smart-ref>

  <use-package|generic|html-font-size|libertine-font>

  <\active*>
    <\src-comment>
      Fix for typewriter font
    </src-comment>
  </active*>

  <assign|font|typewriter=roman,Linux Libertine>\ 

  \;

  <\active*>
    <\src-comment>
      Some personal theme/color preferences of mine
    </src-comment>
  </active*>

  <assign|bg-color|#fffbeb>

  <assign|color|#000000>

  <assign|todo-bg-color|#e0dfba>

  <assign|todo-color|#4c4b0d>

  <assign|cursor-color|#8f3f71>

  <assign|math-cursor-color|#076678>

  <assign|selection-color|#4c4b0d>

  <assign|match-color|#4c4b0d>

  <\active*>
    <\src-comment>
      Style parameters.
    </src-comment>
  </active*>

  <assign|full-screen-mode|false>

  <assign|font-base-size|11>

  <assign|page-medium|papyrus>

  <assign|par-mode|left>

  \;

  <assign|html-title|Massimiliano<nbsp>Gubinelli>

  <assign|html-head-favicon|/resources/favicon-32x32.png>

  <assign|html-css|/resources/notes-base.css>

  <assign|html-extra-javascript-src|<tuple|/resources/highlight.pack.js|/resources/notes-base.js>>

  <\active*>
    <\src-comment>
      Itemize customization
    </src-comment>
  </active*>

  <assign|item-hsep|<macro|1.0fn>>

  <assign|item-vsep|<macro|0.0fn>>

  <assign|aligned-item|<macro|name|<style-with|src-compact|none|<vspace*|<item-vsep>><with|par-first|<minus|<item-hsep>>|<yes-indent>><resize|<arg|name>|<minus|1r|<minus|<item-hsep>|0.0fn>>||<plus|1r|0.0fn>|>>>>

  <assign|item-1|<macro|<active*|<math|>><shift|<tiny|\<#25C6\>>||0.1em>>>

  <assign|item-2|<macro|<active*|<with|mode|math|<rigid|\<circ\>>>>>>

  <assign|item-3|<macro|<active*|<with|mode|math|<rigid|->>>>>

  <assign|item-4|<macro|<active*|<with|mode|math|<rigid|.>>>>>

  <active*|<\src-comment>
    Framed sessions setup
  </src-comment>>

  <use-package|framed-session>

  <assign|input-border|0>

  <assign|input-color|#f0f0f0>

  <assign|ornament-corner|30%>

  <assign|scheme-input-color|#aaf>

  <assign|scheme-prompt-color|dark red>

  <assign|hl-code|<macro|body|<arg|body>>>

  Remove justify from session output formatting

  \ <assign|generic-output*|<macro|body|<with|par-mode|left|par-flexibility|2.0|par-hyphen|normal|math-display|true|math-frac-limit|<value|session-frac-limit>|math-table-limit|<value|session-table-limit>|<ornament-indent|<value|session-left-indent>|<value|session-right-indent>|<value|output-vpadding>|<value|output-vpadding>|<with|par-sep|<value|session-par-sep>|par-ver-sep|<value|session-par-ver-sep>|<arg|body>>>>>>

  \ <assign|generic-input|<\macro|prompt|body>
    <\with-input-deco>
      <\with|ornament-hpadding|<tuple|<value|session-left-indent>|<value|session-right-indent>>>
        <\ornament>
          <\ornament-render-body>
            <surround||<right-flush>|<tabbed*|<tformat|<table|<row|<cell|<id-function|<with|color|<value|generic-prompt-color>|<arg|prompt>>>>|<\cell>
              <\with|par-sep|<value|session-par-sep>|par-ver-sep|<value|session-par-ver-sep>|math-display|true>
                <hl-code|<arg|body>>
              </with>
            </cell>>>>>>
          </ornament-render-body>
        </ornament>
      </with>
    </with-input-deco>
  </macro>>

  \;

  <assign|tmhtml-hl-code|<macro|body|<html-div-class|tmweb-code|<arg|body>>>>

  \;

  <\active*>
    <\src-comment>
      Macro definitions.
    </src-comment>
  </active*>

  <assign|news-line|<\macro|body|date>
    <tabular|<tformat|<cwith|1|1|1|1|cell-rsep|>|<cwith|1|1|1|1|cell-lsep|0>|<cwith|1|1|2|2|cell-width|>|<cwith|1|1|2|2|cell-hmode|auto>|<cwith|1|1|1|1|cell-width|8fn>|<cwith|1|1|1|1|cell-hmode|exact>|<cwith|1|1|1|1|cell-halign|l>|<table|<row|<cell|<arg|date><space|1em>>|<cell|<arg|body>>>>>>
  </macro>>

  <assign|button|<\macro|body|destination>
    <assign|locus-color|black><assign|visited-color|black><hlink|<arg|body>|<arg|destination>><assign|locus-color|global><assign|visited-color|global>
  </macro>>

  <assign|hlink-tm|<macro|body|target|<hlink|<arg|body>|<merge|<arg|target>|.tm>>>>

  <assign|notes-link|<macro|body|target|<hlink|<arg|body>|<arg|target>>>>

  <assign|notes-store|<macro|body|target|<hlink|<arg|body>|<merge|<notes-main-dir>|/../store/|<arg|target>>>>>

  <assign|notes-header-name|mg\|pages>

  <assign|notes-header-image|<image|/resources/texmacs-blog-transparent.png|20pt|||>>

  <if|<provides|notes-main-dir>||<assign|notes-main-dir|.>>

  <assign|notes-header-links|<macro|[<hlink|main|<merge|<notes-main-dir>|/main.tm>>]>>

  <assign|notes-header-table|<\macro|body>
    <\wide-tabular>
      <tformat|<cwith|1|1|1|-1|cell-valign|c>|<cwith|1|1|2|2|cell-halign|r>|<table|<row|<cell|<space|0pt><arg|body>>|<cell|<em|<notes-header-name>>>>>>
    </wide-tabular>
  </macro>>

  <assign|notes-header|<macro|<notes-header-table|<notes-header-links>>>>

  <assign|tmhtml-notes-header-table|<\macro|body>
    <\html-div-class|notes-header>
      <arg|body><html-class|notes-header-name|<em|<notes-header-name>>>
    </html-div-class>
  </macro>>

  <assign|tmhtml-notes-header-xxx|<macro|<html-div-class|notes-header|<notes-header-image><space|2pt><notes-header-links><html-div-class|notes-header-name|<notes-header-name>>>>>

  <assign|notes-abstract|<macro|body|<small|<arg|body>>>>

  <assign|tmhtml-notes-abstract|<\macro|body>
    <style-with|src-compact|all|<html-div-class|notes-abstract|<arg|body>>>
  </macro>>

  <assign|notes-entry-date|<macro|date|<hflush><compound|very-small|[<arg|date>]>>>

  <assign|notes-entry-abstract|<\macro|abs>
    <\with|color|dark grey|par-left|2fn>
      <compound|tiny|<arg|abs>>
    </with>
  </macro>>

  <assign|notes-entry|<\macro|file|title|abs|date>
    <hlink|<arg|title>|<arg|file>><notes-entry-date|<arg|date>>

    <notes-entry-abstract|<arg|abs>>
  </macro>>

  \;

  <assign|tmhtml-notes-entry-date|<macro|date|<html-class|tmweb-entry-date|<arg|date>>>>

  <assign|tmhtml-notes-entry-abstract|<macro|abs|<compound|html-div-class|tmweb-entry-abstract|<arg|abs>>>>

  <\active*>
    <\src-comment>
      Framing of code (BEGIN)
    </src-comment>
  </active*>

  \;

  <use-package|framed-program>

  <\active*>
    <\src-comment>
      Additional style parameters.
    </src-comment>
  </active*>

  \;

  <assign|intro-color|pastel yellow>

  <assign|body-color|pastel blue>

  <assign|frame-color|dark grey>

  <\active*>
    <\src-comment>
      Framed fragments.
    </src-comment>
  </active*>

  <assign|framed-table|<macro|body|<with|color|<value|frame-color>|<tformat|<twith|table-width|1par>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-bsep|1spc>|<cwith|1|-1|1|-1|cell-tsep|1spc>|<cwith|1|-1|1|-1|cell-background|<value|body-color>>|<cwith|1|-1|1|-1|cell-lborder|0.5ln>|<cwith|1|-1|1|-1|cell-rborder|0.5ln>|<cwith|1|-1|1|-1|cell-bborder|0.5ln>|<cwith|1|-1|1|-1|cell-tborder|0.5ln>|<arg|body>>>>>

  <assign|framed-fragment|<macro|body|<surround||<no-indent*>|<framed-table|<tformat|<table|<row|<\cell>
    <with|color|black|<arg|body>>
  </cell>>>>>>>>

  <assign|framed-fragment*|<\macro|body>
    <framed-table|<tformat|<twith|table-width|0.45par>|<table|<row|<\cell>
      <with|color|black|<arg|body>>
    </cell>>>>>
  </macro>>

  <\active*>
    <\src-comment>
      Fragments of <TeXmacs> code.
    </src-comment>
  </active*>

  <assign|tm-fragment|<\macro|body>
    <pseudo-code|<arg|body>>
  </macro>>

  <\active*>
    <\src-comment>
      Fragments of scheme code.
    </src-comment>
  </active*>

  <assign|scm-verb|<macro|body|<with|prog-language|verbatim|<arg|body>>>>

  <assign|scm-arg|<macro|body|<with|prog-font-shape|italic|<scm|<scm-verb|<arg|body>>>>>>

  <assign|scm-args|<macro|body|<with|prog-font-shape|italic|<scm|<scm-verb|<arg|body>>>><rsup|*>>>

  <assign|scm-opt-arg|<macro|body|<with|color|dark
  grey|[<style-with|<scm-arg|<arg|body>>>]>>>

  <\active*>
    <\src-comment>
      Framing of code (END)
    </src-comment>
  </active*>

  <assign|pseudo-code|<\macro|body>
    <\small>
      <\surround||<no-indent*>>
        <\framed-quoted>
          <\with|par-first|0fn|par-par-sep|0fn|item-hsep|<macro|1.5fn>>
            <\framed-code>
              <arg|body>
            </framed-code>
          </with>
        </framed-quoted>
      </surround>
    </small>
  </macro>>

  <\active*>
    <\src-comment>
      Other customizations
    </src-comment>
  </active*>

  We want to force export of non-breaking spaces which otherwise would have
  been removed by exec_html

  <assign|tmhtml-nbsp|<specific|html|&nbsp;>>

  \;

  <assign|tmhtml-render-code|<macro|body|<html-div-class|tmweb-code|<arg|body>>>>

  <assign|tmhtml-pseudo-code|<macro|body|<html-div-class|tmweb-code|<arg|body>>>>

  <assign|tmhtml-framed-code|<macro|body|<html-div-class|tmweb-code|<arg|body>>>>

  <assign|tmhtml-framed-fragment|<macro|body|<html-div-class|tmweb-code|<arg|body>>>>

  <assign|tmhtml-render-key|<macro|key|<html-class|tmweb-key|<arg|key>>>>

  <assign|tmhtml-menu-item|<macro|body|<html-class|tmweb-menu|<with|font-family|ss|<localize|<arg|body>>>>>>

  <assign|tmhtml-menu-extra|<macro|body|\<rightarrow\><menu-item|<arg|body>>>>

  <assign|tmhtml-markup|<macro|body|<html-class|tmweb-markup|<arg|body>>>>

  <assign|tmhtml-hlink-tm|<macro|body|target|<hlink|<arg|body>|<merge|<arg|target>|.texmacs>>>>

  <assign|tmhtml-cpp|<macro|body|<html-class|cpp|<with|mode|prog|prog-language|cpp|font-family|rm|<arg|body>>>>>

  <assign|tmhtml-scm|<macro|body|<html-class|scheme|<with|mode|prog|prog-language|scheme|font-family|rm|<arg|body>>>>>

  <assign|tmhtml-bib-year-section|<\macro|year>
    <html-div-class|tmweb-bib-year|<arg|year>>
  </macro>>

  <assign|xx-tmhtml-render-bibitem|<macro|text|<item|<arg|text>>>>

  <assign|xx-tmhtml-render-bibliography|<\macro|name|body>
    <principal-section*|<arg|name>>

    <style-with|src-compact|all|<style-with|src-compact|all|<arg|body>>>
  </macro>>

  \;

  <\active*>
    <\src-comment>
      General logic and theoretical computer science macros
    </src-comment>
  </active*>

  <assign|Diamond|<space|0.3em><shift|<math|<small|<rotate|45|\<box\>>>>||-0.1em>>

  <assign|forall|<with|font-family|rm|\<forall\>>>

  <assign|subst|<around*|[|y<op|/>x|]>>

  <assign|substinto|<op|\<rightsquigarrow\><rsub|x,y>>>

  <assign|Model|<with|font|cal|M>>

  <assign|Class|<with|font|cal*|C>>

  <assign|Net|<with|font|cal|N>>

  <assign|State|<with|font-family|ss|State>>

  <assign|semantics|<macro|body|<around*|\<llbracket\>|<arg|body>|\<rrbracket\>>>>

  <assign|lang|<with|font|cal|L>>

  <assign|uplang|<with|font|cal|L><rsup|\<ast\>>>

  <assign|proves|\<vdash\>>

  <assign|orr|\<vee\>>

  <assign|land|\<wedge\>>

  <assign|bigchi|<larger|\<chi\>>>

  <assign|powerset|<with|font|cal|P>>

  <assign|precrefl|\<prec\><rsub|<text|refl>>>

  <assign|Observables|<with|font|cal|O>>

  <assign|Space|<with|font|Bbb|S>>

  \;

  <\active*>
    <\src-comment>
      Macro definitions.
    </src-comment>
  </active*>

  <assign|netforall|<with|color|#8f3f71|<with|font-series|bold|<with|font|Stix|\<forall\>>>>>

  <assign|netexists|<with|color|#8f3f71|<with|font-series|bold|<with|font|Stix|\<exists\>>>>>

  <assign|Closure|<with|font-family|ss|Clos>>

  <assign|Prop|<with|font-family|ss|Prop>>

  <assign|Reach|<with|font-family|ss|Reach>>

  <assign|Reaches|<with|font-family|ss|Reach<rsup|\<downarrow\>>>>

  <assign|Hebbstar|<with|font-family|ss|Hebb<rsup|\<ast\>>>>

  <assign|iter|<with|font-family|ss|iter>>

  <assign|Update|<with|font-family|ss|Update>>

  <assign|Cond|<with|font-family|ss|Cond>>

  <assign|Lex|<with|font-family|ss|Lex>>

  <assign|Consr|<with|font-family|ss|Consr>>

  <assign|AllNets|<with|font-family|ss|Net>>

  <assign|bias|<with|font-family|ss|bias>>

  <assign|axiom|<macro|x|<text|<name|(<arg|x>)>>>>

  <assign|Hebb|<with|font-family|ss|Hebb>>

  <assign|best|<with|font-family|ss|best>>

  <assign|Believe|<with|font-series|bold|<text|B>>>

  <assign|All|<with|font-series|bold|<text|A>>>

  <assign|Exists|<with|font-series|bold|<text|E>>>

  <assign|Know|<with|font-series|bold|<text|K>>>

  <assign|Knownby|<with|font-series|bold|<text|K><rsup|\<downarrow\>>>>

  <assign|closop|<with|font-series|bold|<text|C>>>

  <assign|diaclosop|\<langle\><value|closop>\<rangle\>>

  <assign|diaBelieve|\<langle\><value|Believe>\<rangle\>>

  <assign|diaKnow|\<langle\><value|Know>\<rangle\>>

  <assign|diaKnownby|\<langle\><value|Knownby>\<rangle\>>

  <assign|boxback|\<box\><rsup|<with|font-series|bold|\<downarrow\>>>>

  <assign|Diamondback|<value|Diamond><rsup|<with|font-series|bold|\<downarrow\>>>>

  <assign|Hebbop|<macro|formula|[<arg|formula>]<rsub|<value|Hebb>>>>

  <assign|diaHebbop|<macro|formula|\<langle\><arg|formula>\<rangle\><rsub|<value|Hebb>>>>

  <assign|Hebbstarop|<macro|formula|[<arg|formula>]<rsub|<value|Hebbstar>>>>

  <assign|diaHebbstarop|<macro|formula|\<langle\><arg|formula>\<rangle\><rsub|<value|Hebbstar>>>>

  <assign|transl|\<tau\>>

  <assign|freshindex|<with|font-family|ss|index>>

  <assign|maxindex|<with|font-family|ss|max_index>>

  \;

  <assign|precrefl|(\<prec\><rsub|<text|refl>>)>

  <assign|precrev|(\<prec\><rsub|<text|reverse>>)>

  \;

  <assign|Satisfy|<with|font-family|rm|Sat>>

  <assign|Theory|<with|font-family|rm|Th>>

  <assign|Definable|<with|font-family|rm|Def>>

  <assign|Rel|<with|font-family|rm|<with|font-series|bold|Rel>>>

  <assign|Relrefl|<with|font-family|rm|<with|font-series|bold|Rel>><rsub|<with|font-family|rm|S4>>>

  <assign|Nbhd|<with|font-family|rm|<with|font-series|bold|Nbhd>>>

  <assign|Nbhdrefl|<with|font-family|rm|<with|font-series|bold|Nbhd>><rsub|<with|font-family|rm|S4>>>

  <assign|Univ|<with|font-family|rm|<with|font-series|bold|Univ>>>

  <assign|Plaus|<with|font-family|rm|<with|font-series|bold|Plaus>>>

  <assign|NetModel|<with|font-family|rm|<with|font-series|bold|Net>>>

  <assign|PointedNetModel|<with|font-family|rm|<with|font-series|bold|Net>><rsup|\<ast\>>>

  <assign|SocialNet|<with|font-family|rm|<with|font-series|bold|SocialNet>><rsup|<text|MAJ>>>

  \;

  <assign|vars|<text|VAR>>

  <assign|langProp|<value|lang><rsub|<text|prop>>>

  <assign|langCond|<value|lang><rsub|\<Rightarrow\>>>

  <assign|langClos|<value|lang><rsub|<value|closop>>>

  <assign|langBox|<value|lang><rsub|\<box\>>>

  <assign|langHebb|<value|lang><rsub|<value|Hebb>>>

  <assign|langHebbstar|<value|lang><rsub|<value|Hebbstar>>>

  <assign|langUpdate|<value|lang><rsub|<value|Update>>>

  \;

  <assign|satisfiesCond|\<Vdash\><rsub|\<Rightarrow\>>>

  <assign|satisfiesPlaus|\<Vdash\><rsub|<Plaus>>>

  <assign|satisfiesNet|\<Vdash\><rsub|<NetModel>>>

  <assign|satisfiesHebb|\<Vdash\><rsub|<value|Hebb>>>

  <assign|satisfiesHebbstar|\<Vdash\><rsub|<value|Hebbstar>>>

  \;

  <assign|modelsCond|\<models\><rsub|\<Rightarrow\>>>

  <assign|modelsPlaus|\<models\><rsub|<Plaus>>>

  <assign|modelsNet|\<models\><rsub|<NetModel>>>

  <assign|modelsHebb|\<models\><rsub|<value|Hebb>>>

  <assign|modelsHebbstar|\<models\><rsub|<value|Hebbstar>>>

  \;

  <assign|provesProp|\<vdash\><rsub|<text|Prop>>>

  <assign|provesCond|\<vdash\><rsub|\<Rightarrow\>>>

  <assign|provesClos|\<vdash\><rsub|<value|closop>>>

  <assign|provesHebb|\<vdash\><rsub|<value|Hebb>>>

  <assign|provesHebbstar|\<vdash\><rsub|<value|Hebbstar>>>

  \;

  \;

  <assign|st|<hspace|0.25fn>\<mid\><hspace|0.25fn>>

  <assign|preds|<text|preds>>

  <assign|Modal|<with|font-family|rm|Modal>>

  <assign|Conditional|<with|font-family|rm|Conditional>>

  <assign|FO|<with|font-family|rm|Modal>>

  <assign|indices|<with|font-family|rm|<with|font-series|bold|I>>>
</body>

<initial|<\collection>
</collection>>