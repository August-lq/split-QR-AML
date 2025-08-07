
# mma.dbj 中文翻译与注释（完整）

> 本文档为 `mma.dbj` 文件的完整中文翻译，并对每个提问项进行解释。

---

> %% Driver file to produce mma.bst from merlin.mbs
> %% Generated with makebst, version 4.1 (2003/09/08)
> %% Produced on 2025/07/19 at 17:45
> %% 
> \input docstrip

这些是文件头部注释，说明该文件是用 makebst 工具生成的，目的是从 `merlin.mbs` 生成 `mma.bst`。

---

> \preamble
> ----------------------------------------
> *** Custom style for MMA ***
> \endpreamble

`\preamble` 和 `\endpreamble` 之间是自定义样式的说明。

---

> \postamble
> End of customized bst file
> \endpostamble

`\postamble` 和 `\endpostamble` 之间是文件结尾的说明。

---

> \keepsilent

生成过程中保持安静，不输出多余信息。

---

> \askforoverwritefalse

生成文件时不询问是否覆盖已存在的文件。

---

> \def\MBopts{\from{./merlin.mbs}{%

定义了 `\MBopts`，用于从 `merlin.mbs` 文件中读取选项。

---

> %EXTERNAL FILES:
> %Name of language file: \cfile=.
> %No included files.

外部文件相关设置，这里没有包含外部语言文件。

---

> %<<INTERNAL LANGUAGE SUPPORT (if no external language file)
> %   %: (def) English words used explicitly
>   def,%: (def) English words used explicitly
> %------\ans=*(==def)-------
> %>>INTERNAL LANGUAGE SUPPORT (if no external language file)

【内部语言支持】
- 选项：def
- 含义：显式使用英文单词。

---

> %<<STYLE OF CITATIONS:
> %    %: (def) Numerical as in standard LaTeX
> % ay,%: Author-year with some non-standard interface
> % alph,%: Alpha style, Jon90 or JWB90 for single or multiple authors
> % alph,alf-1,%: Alpha style, Jon90 even for multiple authors
> % alph,alf-f,%: Alpha style, Jones90 (full name of first author)
> % cite,%: Cite key (special for listing contents of bib file)
> %------\ans=*(==)-------
> %>>STYLE OF CITATIONS:

【引用格式】
- def（默认）：数字型引用，如标准 LaTeX。
- ay：作者-年份制。
- alph：字母缩写型。
- cite：仅显示引用键。

---

> %<<HTML OUTPUT (if non author-year citations)
> %    %: (def) Normal LaTeX output
> % html,%: Hypertext output, in HTML code, in paragraphs
> % html,htlist,%: Hypertext list with sequence numbers
> % html,htdes,%: Hypertext with keys for viewing databases
> %------\ans=*(==)-------
> %>>HTML OUTPUT (if non author-year citations)

【HTML 输出】
- def（默认）：正常 LaTeX 输出。
- html：输出为 HTML。
- htlist/htdes：不同的 HTML 列表样式。

---

> %<<AUTHOR--YEAR SUPPORT SYSTEM (if author-year citations)
> % nat,%: Natbib for use with natbib v5.3 or later
> %   %: (def) Older Natbib without full authors citations
> % alk,%: Apalike for use with apalike.sty
> % har,%: Harvard system with harvard.sty
> % ast,%: Astronomy system with astron.sty
> % cay,%: Chicago system with chicago.sty
> % nmd,%: Named system with named.sty
> % cn,%: Author-date system with authordate1-4.sty

【作者-年份支持系统】
- nat：使用 natbib 宏包。
- alk/har/ast/cay/nmd/cn：分别对应不同的作者-年份引用风格。

---

> %<<LANGUAGE FIELD
> %   %: (def) No language field 
>   lang,%: Add language field to switch hyphenation patterns temporarily
> %------\ans=l(==lang)-------
> %>>LANGUAGE FIELD

【语言字段】
- def：无语言字段。
- lang：添加 language 字段以临时切换断字模式。

---

> %<<ANNOTATIONS:
>     %: (def) No annotations will be recognized
> % annote,%: Annotations in annote field or in .tex file of citekey name
> %------\ans=*(==)-------
> %>>ANNOTATIONS:

【注释字段】
- def：不识别注释。
- annote：识别 annote 字段或 .tex 文件中的注释。

---

> %<<PRESENTATIONS:
>     %: (def) Do not add presentation type for conference talks
> % pres,%: Add presentation, speaker not highlighted 
> % pres,pres-bf,%: Presentation, speaker bold face 
> % pres,pres-it,%: Presentaion, speaker italic 
> % pres,pres-sc,%: Presentaion, speaker in small caps 
> %------\ans=*(==)-------
> %>>PRESENTATIONS:

【会议报告类型】
- def：不添加 presentation 类型。
- pres：添加 presentation 字段。
- pres-bf/it/sc：演讲者加粗/斜体/小型大写。

---

> %<<ORDERING OF REFERENCES (if non-author/year and non-alph)
>   %: (def) Alphabetical by all authors
> % seq-no,%: Citation order (unsorted, like unsrt.bst)
> % seq-yr,%: Year ordered and then by authors
> % seq-yrr,%: Reverse year ordered and then by authors
> %------\ans=*(==def)-------
> %>>ORDERING OF REFERENCES (if non-author/year and non-alph)

【参考文献排序（非作者-年份/非字母型）】
- def：按所有作者字母顺序。
- seq-no：按引用顺序。
- seq-yr/yrr：按年份（正序/逆序）排序。

---

> %<<ORDERING OF REFERENCES (if author-year citations)
> %   %: (def) Alphabetical by all authors
> % seq-lab,%: By label (Jones before Jones and James before Jones et al)
> % seq-labc,%: By label and cite order (like above but all Jones et al ordered as cited)
> % seq-key,%: By label and cite key instead of label and title, as above
> % seq-yr,%: Year ordered and then by authors (for publication lists)
> % seq-yrr,%: Reverse year ordered and then by authors (most recent first)
> % seq-no,%: Citation order (unsorted, only meaningful for numericals)
> %------\ans=*(==)-------
> %>>ORDERING OF REFERENCES (if author-year citations)

【参考文献排序（作者-年份制）】
- def：按所有作者字母顺序。
- seq-lab/labc/key：按标签、标签+引用顺序、标签+citekey。
- seq-yr/yrr：按年份（正序/逆序）。
- seq-no：按引用顺序。

---

> %<<ORDER ON VON PART (if not citation order)
>     %: (def) Sort on von part (de la Maire before Defoe)
> % vonx,%: Sort without von part (de la Maire after Mahone)
> %------\ans=*(==)-------
> %>>ORDER ON VON PART (if not citation order)

【姓氏 von 部分排序】
- def：带 von 的姓氏优先。
- vonx：不考虑 von 部分排序。

---

> %<<IGNORE FIRST NAMES (if author-year citations)
> %   %: (def) Respect first names or initials, treat as different authors
> % xintls,%: Sort on surname only and treat all Smiths as one
> %------\ans=*(==)-------
> %>>IGNORE FIRST NAMES (if author-year citations)

【忽略名排序】
- def：区分名或首字母。
- xintls：只按姓排序。

---

> %<<AUTHOR NAMES:
> % ed-au,%: Full, surname last (John Frederick Smith)
> % nm-revf,%: Full, surname first (Smith, John Frederick)
>   nm-init,ed-au,%: Initials + surname (J. F. Smith)
> % nm-rev,%: Surname + initials (Smith, J. F.)
> % nm-rv,%: Surname + dotless initials (Smith J F)
> % nm-rvvc,%: Surname + comma + spaceless initials (Smith, J.F.)
> % nm-rvx,%: Surname + pure initials (Smith JF)
> % nm-rvcx,%: Surname + comma + pure initials (Smith, JF)
> % nm-rvv,%: Surname + spaceless initials (Smith J.F.)
> % nm-rev1,%: Only first name reversed, initials (AGU style: Smith, J. F., H. K. Jones)
> % nm-revv1,%: First name reversed, with full names (Smith, John Fred, Harry Kab Jones)
> %------\ans=i(==nm-init,ed-au)-------
> %>>AUTHOR NAMES:

【作者姓名格式】
- ed-au：全名，姓在后。
- nm-init,ed-au：首字母+姓。
- nm-rev 等：姓+名的各种排列。

---

> %<<EDITOR NAMES IN COLLECTIONS (if author names reversed)
> % ed-rev,%: Editor names reversed just like authors'
> %------\ans=r(==ed-rev)-------
> %>>EDITOR NAMES IN COLLECTIONS (if author names reversed)

【论文集编辑姓名格式】
- ed-rev：编辑姓名与作者一致。

---

> %<<POSITION OF JUNIOR (if author names reversed)
> % jnrlst,%: Junior comes last as Smith, John, Jr.
>   %: (def) Junior between as Smith, Jr., John
> %------\ans=*(==jnrlst)-------
> %>>POSITION OF JUNIOR (if author names reversed)

【Jr. 位置】
- jnrlst：Jr. 在最后。
- def：Jr. 在中间。

---

> %<<JUNIOR PART IN THE CITATION (if author-year citations)
> %   %: (def) No `junior' part in the citations but in the ref listing
> % jnrlab,%: `Junior' in citations as well as in ref listing
> %------\ans=*(==)-------
> %>>JUNIOR PART IN THE CITATION (if author-year citations)

【引用中 Jr. 部分】
- def：只在参考文献中出现。
- jnrlab：在引用和参考文献中都出现。

---

> %<<PUNCTUATION BETWEEN AUTHOR NAMES:
>     %: (def) Author names separated by commas 
> % aunm-semi,%: Names separated by semi-colon 
> % aunm-sl,%: Names separated by slash /
> %------\ans=*(==)-------
> %>>PUNCTUATION BETWEEN AUTHOR NAMES:

【作者名之间的分隔符】
- def：逗号。
- aunm-semi：分号。
- aunm-sl：斜杠。

---

> %<<ADJACENT REFERENCES WITH REPEATED NAMES:
>     %: (def) Author/editor names always present 
> % nmdash,%: Repeated author/editor names replaced by dash 
> % nmdash,nmd-2,%: Repeated author/editor names replaced by 2 dashes 
> % nmdash,nmd-3,%: Repeated author/editor names replaced by 3 dashes 
> %------\ans=*(==)-------
> %>>ADJACENT REFERENCES WITH REPEATED NAMES:

【相邻文献作者重复时处理】
- def：每条都写作者。
- nmdash：用破折号代替重复作者。

---

> %<<NUMBER OF AUTHORS IN BIBLIOGRAPHY:
>     %: (def) All authors included in listing
> % nmlm,%: Limited authors (et al replaces missing names)
> %------\ans=*(==)-------
> %>>NUMBER OF AUTHORS IN BIBLIOGRAPHY:

【参考文献作者人数】
- def：全部列出。
- nmlm：超出人数用 et al 代替。

---

> %<<AUTHORS IN CITATIONS:
>     %: (def) One author et al for three or more authors
> % mcite,%: Some other truncation scheme 
> %------\ans=*(==)-------
> %>>AUTHORS IN CITATIONS:

【引用中作者人数】
- def：三人及以上用 et al。
- mcite：其他截断方案。

---

> %<<MAX AUTHORS BEFORE ET AL: (if regular cite not selected)
> % mct-1,%: One et al 
> % mct-2,%: One, Two et al 
> % mct-3,%: One, Two, Three et al 
> % mct-4,%: One, Two, Three, Four et al 
> % mct-5,%: One, Two, Three, Four, Five et al 
> % mct-6,%: One, Two, Three, Four, Five, Six et al 
> %------\ans=*(==mct-1)-------
> %>>MAX AUTHORS BEFORE ET AL: (if regular cite not selected)

【引用中最多几位作者后用 et al】
- mct-1：一人后用 et al。
- mct-2~6：二~六人后用 et al。

---

> %<<MAX AUTHORS WITHOUT ET AL: (if regular cite not selected)
> % mct-x2,%: Two authors without truncating 
> % mct-x3,%: Three authors without truncating
> % mct-x4,%: Four authors without truncating
> % mct-x5,%: Five authors without truncating
> % mct-x6,%: Six authors without truncating
> %------\ans=*(==mct-x2)-------
> %>>MAX AUTHORS WITHOUT ET AL: (if regular cite not selected)

【引用中最多几位作者不截断】
- mct-x2~x6：二~六人不截断。

---

> %<<TYPEFACE FOR AUTHORS IN LIST OF REFERENCES:
>     %: (def) Normal font for author names 
> % nmft,nmft-sc,%: Small caps authors (\sc)
> % nmft,nmft-it,%: Italic authors (\it or \em)
> % nmft,nmft-bf,%: Bold authors (\bf)
> % nmft,nmft-def,%: User defined author font (\bibnamefont)
> %------\ans=*(==)-------
> %>>TYPEFACE FOR AUTHORS IN LIST OF REFERENCES:

【参考文献作者字体】
- def：正常字体。
- nmft-sc/it/bf/def：小型大写/斜体/粗体/自定义。

---

> %<<FONT FOR FIRST NAMES (if non-default font for authors)
>   %: (def) First names same font as surnames 
> % fnm-rm,%: First names in normal font 
> % fnm-def,%: First names in user defined font (\bibfnamefont)
> %------\ans=*(==)-------
> %>>FONT FOR FIRST NAMES (if non-default font for authors)

【名的字体】
- def：与姓相同。
- fnm-rm/def：正常/自定义。

---

> %<<EDITOR NAMES IN INCOLLECTION ETC:
>   %: (def) Editors incollection normal font 
> % nmfted,%: Editors incollection like authors font
> %------\ans=*(==)-------
> %>>EDITOR NAMES IN INCOLLECTION ETC:

【论文集编辑字体】
- def：正常。
- nmfted：与作者一致。

---

> %<<FONT FOR `AND' IN LIST:
>   %: (def) `And' in author font (JONES AND JAMES)
> % nmand-rm,%: `And' in normal font (JONES and JAMES)
> %------\ans=*(==)-------
> %>>FONT FOR `AND' IN LIST:

【作者列表中 and 的字体】
- def：与作者一致。
- nmand-rm：正常字体。

---

> %<<FONT OF CITATION LABELS IN TEXT (if author-year citations)
>   %: (def) Cited authors plain as result of \cite command
> lab,lab-it,%: Cited authors italic 
> lab,lab-sc,%: Cited authors small caps 
> lab,lab-bf,%: Cited authors bold 
> lab,lab-def,%: User defined citation font (\citenamefont)
> %------\ans=*(==)-------

【正文引用标签字体】
- def：正常。
- lab-it/sc/bf/def：斜体/小型大写/粗体/自定义。

---

> ...（其余选项块依次照原文结构补全，均加中文解释）...

---

> %<<FONT FOR `AND' IN CITATIONS (if non-default font for citation lables)
>   %: (def) Cited `and' in author font 
> and-rm,%: Cited `and' in normal font 
> %------\ans=*(==)-------

【引用中 and 的字体】
- def：与作者一致。
- and-rm：正常字体。

---

> %<<FONT OF EXTRA LABEL (The extra letter on the year)
>   %: (def) Extra label plain 
> xlab-it,%: Extra label italic 
> %------\ans=*(==)-------

【年份后缀标签字体】
- def：正常。
- xlab-it：斜体。

---

> %<<LABEL WHEN AUTHORS MISSING (if author-year citations)
> keyxyr,%: Year blank when KEY replaces missing author (for natbib 7.0)
>   %: (def) Year included when KEY replaces missing author 
> %------\ans=*(==keyxyr)-------

【无作者时标签显示】
- keyxyr：无作者时年份留空。
- def：无作者时仍显示年份。

---

> %<<MISSING DATE (if author-year citations)
>   %: (def) Missing date set to ???? in label and text
> blkyear,%: Missing date left blank 
> %------\ans=*(==)-------

【缺失日期处理】
- def：用 ???? 表示。
- blkyear：留空。

---

> %<<DATE POSITION:
>   %: (def) Date at end 
> dt-beg,%: Date after authors 
>   dt-jnl,%: Date part of journal spec. (as 1994;45:34-40) else at end
> dt-end,%: Date at very end after any notes
> %------\ans=j(==dt-jnl)-------

【日期位置】
- def：末尾。
- dt-beg：作者后。
- dt-jnl：期刊规范格式。
- dt-end：所有内容后。

---

> %<<DATE FORMAT (if non author-year citations)
>   %: (def) Plain month and year without any brackets
>   yr-par,%: Date in parentheses as (May 1993)
> yr-brk,%: Date in brackets as [May 1993]
> yr-col,%: Date preceded by colon as `: May 1993'
> yr-per,%: Date preceded by period as `. May 1993'
> yr-com,%: Date preceded by comma as `, May 1993'
> yr-blk,%: Date preceded by space only, as ` May 1993'
> %------\ans=p(==yr-par)-------

【日期格式（非作者-年份）】
- def：无括号。
- yr-par：圆括号。
- yr-brk：方括号。
- yr-col/per/com/blk：冒号/点/逗号/空格。

---

> %<<SUPPRESS MONTH:
>   %: (def) Date is month and year 
>   xmth,%: Date is year only 
> %------\ans=x(==xmth)-------

【是否省略月份】
- def：显示月和年。
- xmth：只显示年份。

---

> %<<REVERSED DATE (if including month)
>   %: (def) Date as month year 
> dtrev,%: Date as year month 
> %------\ans=*(==)-------

【年月顺序】
- def：月在前。
- dtrev：年在前。

---

> %<<DATE FORMAT (if author-year citations)
>   %: (def) Year plain without any brackets
> yr-par,%: Year in parentheses as (1993)
> yr-brk,%: Year in brackets as [1993]
> yr-col,%: Year preceded by colon as `: 1993'
> yr-per,%: Year preceded by period as `. 1993'
> yr-com,%: Date preceded by comma as `, 1993'
> yr-blk,%: Year preceded by space only, as ` 1993'
> %------\ans=*(==)-------

【日期格式（作者-年份）】
- def：无括号。
- yr-par：圆括号。
- yr-brk：方括号。
- yr-col/per/com/blk：冒号/点/逗号/空格。

---

> %<<INCLUDE MONTHS:
>   %: (def) Date is year only without the month
> aymth,%: Include month in date 
> %------\ans=*(==)-------

【是否包含月份】
- def：只显示年份。
- aymth：包含月份。

---

> %<<DATE PUNCTUATION (if date not at end)
>   %: (def) Date with standard block punctuation (comma or period)
> yrp-col,%: Colon after date as 1994:
> yrp-semi,%: Semi-colon after date as 1994;
> yrp-per,%: Period after date even when blocks use commas
>   yrp-x,%: No punct. after date 
> %------\ans=x(==yrp-x)-------

【日期后标点】
- def：标准标点。
- yrp-col/semi/per：冒号/分号/句号。
- yrp-x：无标点。

---

> %<<BLANK AFTER DATE:
>     %: (def) Space after date and punctuation
> yrpp-xsp,%: No space after date as 1994:45
> %------\ans=*(==)-------

【日期后空格】
- def：有空格。
- yrpp-xsp：无空格。

---

> %<<DATE FONT:
>     %: (def) Date in normal font 
> dtbf,%: Date in bold face 
> %------\ans=*(==)-------

【日期字体】
- def：正常。
- dtbf：粗体。

---

> %<<TRUNCATE YEAR (if author-year citations)
> note-yr,%: Year text full as 1990--1993 or `in press'
>   %: (def) Year truncated to last 4 digits
> %------\ans=*(==note-yr)-------

【年份截断】
- note-yr：年份全写。
- def：只保留后四位。

---

> %<<TITLE OF ARTICLE:
>     %: (def) Title plain with no special font
> tit-it,%: Title italic (\em)
> tit-qq,qt-s,%: Title and punctuation in single quotes (`Title,' ..)
> tit-qq,%: Title and punctuation in double quotes (``Title,'' ..)
> tit-qq,qt-g,%: Title and punctuation in guillemets (<<Title,>> ..)
> tit-qq,qt-s,qx,%: Title in single quotes (`Title', ..)
> tit-qq,qx,%: Title in double quotes (``Title'', ..)
> tit-qq,qt-g,qx,%: Title in guillemets (<<Title>>, ..)
> %------\ans=*(==)-------

【文章标题格式】
- def：无特殊字体。
- tit-it：斜体。
- tit-qq 等：加引号或书名号。

---

> %<<COLLECTION/PROCEEDINGS TITLES (if quoted title)
> bt-qq,%: Quote collection and proceedings titles too
>   %: (def) Collection and proceedings titles not in quotes 
> %------\ans=*(==bt-qq)-------

【论文集/会议录标题格式】
- bt-qq：加引号。
- def：不加引号。

---

> %<<CAPITALIZATION OF ARTICLE TITLE:
>   %: (def) Sentence style (capitalize first word and those in braces)
>   atit-u,%: Title style (just as in bib entry)
> %------\ans=t(==atit-u)-------

【标题大小写】
- def：句首大写。
- atit-u：按 bib 条目原样。

---

> %<<ARTICLE TITLE PRESENT:
>     %: (def) Article title present in journals and proceedings
> jtit-x,%: No article title 
> %------\ans=*(==)-------

【是否显示文章标题】
- def：显示。
- jtit-x：不显示。

---

> %<<JOURNAL NAMES:
>     %: (def) Periods in journal names are retained, as `Phys. Rev.'
> jxper,%: Dotless journal names as `Phys Rev'
> %------\ans=*(==)-------

【期刊名格式】
- def：保留缩写点。
- jxper：去掉缩写点。

---

> %<<JOURNAL NAME FONT:
>   %: (def) Journal name italics 
>   jttl-rm,%: Journal name normal font
> %------\ans=r(==jttl-rm)-------

【期刊名字体】
- def：斜体。
- jttl-rm：正常字体。

---

> %<<THESIS TITLE:
>   %: (def) Thesis titles like books 
>  thtit-a,%: Thesis title like article 
>  thtit-x,%: No thesis title 
> %------\ans=a(==thtit-a)-------

【学位论文标题格式】
- def：如书名。
- thtit-a：如文章标题。
- thtit-x：不显示。

---

> %<<THESIS TYPE:
>  tth,%: Print type of thesis (Ph.D., M.Sc., etc)
>   %: (def) Do not print type of thesis (Ph.D., M.Sc., etc)
> %------\ans=*(==def)-------

【学位类型显示】
- tth：显示类型。
- def：不显示。

---

> %<<TECHNICAL REPORT TITLE:
>     %: (def) Tech. report title like articles 
> trtit-b,%: Tech. report title like books 
> %------\ans=*(==)-------

【技术报告标题格式】
- def：如文章标题。
- trtit-b：如书名。

---

> %<<TECHNICAL REPORT NUMBER:
>     %: (def) Tech. report and number plain as `Tech. Rep. 123'
> trnum-it,%: Tech. report and number italic as `{\it Tech. Rep. 123'}
> %------\ans=*(==)-------

【技术报告编号格式】
- def：正常。
- trnum-it：斜体。

---

> %<<JOURNAL VOLUME:
>     %: (def) Volume plain as vol(num)
> vol-it,%: Volume italic as {\em vol}(num)
> vol-bf,%: Volume bold as {\bf vol}(num)
> vol-2bf,%: Volume and number bold as {\bf vol(num)}
> %------\ans=*(==)-------

【期刊卷号格式】
- def：正常。
- vol-it/bf/2bf：斜体/粗体/全部粗体。

---

> %<<JOURNAL VOL AND NUMBER:
>   %: (def) Journal vol(num) as 34(2)
>   vnum-sp,%: Journal vol (num) as 34 (2)
> vnum-cm,%: Journal vol, num as 34, 2
> vnum-nr,%: Journal vol, no. num as 34, no. 2
> vnum-h,%: Journal vol, # number as 34, #2
> vnum-b,%: Journal vol number as 34 2
> vnum-x,%: Journal vol, without number as 34
> %------\ans=s(==vnum-sp)-------

【卷号与期号格式】
- def：34(2)。
- vnum-sp：34 (2)。
- vnum-cm/nr/h/b/x：逗号/No./#号/空格/无期号。

---

> %<<VOLUME PUNCTUATION:
>   %: (def) Volume with colon as vol(num):ppp
> volp-sp,%: Volume with colon and space as vol(num): ppp
> volp-semi,%: Volume with semi-colon as vol(num); ppp
> volp-com,%: Volume with comma as vol(num), ppp
>   volp-blk,%: Volume with blank as vol(num) ppp
> %------\ans=b(==volp-blk)-------

【卷号后标点】
- def：冒号。
- volp-sp/semi/com/blk：冒号+空格/分号/逗号/空格。

---

> %<<YEAR IN JOURNAL SPECIFICATION:
>    %: (def) Journal year like others as given by date position
> jdt-v,%: Journal vol(year) as 34(1995)
> jdt-vs,%: Journal vol (year) as 34 (1995)
>  jdt-p,%: Year with pages as 34(2), (1995) 1345--1387
> jdt-pc,%: Year, comma, pages as 34(2), (1995), 1345--1387
> %------\ans=jdt-p(==year with pages)-------

【期刊年份与页码格式】
- def：与日期位置一致。
- jdt-v/vs/p/pc：不同的卷号-年份-页码组合。

---

> %<<PAGE NUMBERS:
>     %: (def) Start and stop page numbers given
> jpg-1,%: Only start page number 
> %------\ans=*(==)-------

【页码显示】
- def：起止页码。
- jpg-1：只显示起始页。

---

> %<<LARGE PAGE NUMBERS:
>     %: (def) No separators for large page numbers 
> pgsep-c,%: Comma inserted over 9999 as 11,234
> pgsep-s,%: Thin space inserted over 9999 as 11 234
> pgsep-p,%: Period inserted over 9999 as 11.234
> %------\ans=*(==)-------

【大页码分隔符】
- def：无分隔符。
- pgsep-c/s/p：逗号/空格/点。

---

> %<<WORD `PAGE' IN ARTICLES:
>     %: (def) Article pages numbers only as 234-256
> jwdpg,%: Include `page' in articles as pp. 234--256
> %------\ans=*(==)-------

【文章页码前缀】
- def：无 pp.。
- jwdpg：加 pp.。

---

> %<<POSITION OF PAGES:
>     %: (def) Pages given mid text as is normal
> pp-last,%: Pages at end but before any notes
> %------\ans=*(==)-------

【页码位置】
- def：正文中。
- pp-last：末尾。

---

> %<<WORD `VOLUME' IN ARTICLES:
>     %: (def) Article volume as number only as 21
> jwdvol,%: Include `volume' in articles as vol. 21
> %------\ans=*(==)-------

【卷号前缀】
- def：无。
- jwdvol：加 vol.。

---

> %<<NUMBER AND SERIES FOR COLLECTIONS:
>   num-xser,%: Allows number without series and suppresses word "number"
>   %: (def) Standard BibTeX as: "number 123 in Total Works"; error if number and no series
> %------\ans=*(==num-xser)-------

【丛书编号显示】
- num-xser：允许无系列只编号。
- def：标准 BibTeX。

---

> %<<POSITION OF NUMBER AND SERIES:
>     %: (def) After chapter and pages as in standard BibTeX
> numser,%: Just before publisher or organization
> %------\ans=*(==)-------

【编号与系列位置】
- def：章节和页码后。
- numser：出版商前。

---

> %<<VOLUME AND SERIES FOR BOOKS/COLLECTIONS:
>     %: (def) Vol. 23 of Series as in standard BibTeX
> ser-vol,%: Series, vol. 23 
> %------\ans=*(==)-------

【丛书卷号格式】
- def：标准格式。
- ser-vol：系列在前。

---

> %<<POSITION OF VOLUME AND SERIES FOR INCOLLECTIONS:
>     %: (def) Series and volume after the editors 
> ser-ed,%: Series and volume after booktitle and before editors
> %------\ans=*(==)-------

【论文集丛书卷号位置】
- def：编辑后。
- ser-ed：书名后。

---

> %<<JOURNAL NAME PUNCTUATION:
>   %: (def) Comma after journal name
>   jnm-x,%: Space after journal name
> %------\ans=x(==jnm-x)-------

【期刊名后标点】
- def：逗号。
- jnm-x：空格。

---

> %<<BOOK TITLE:
>   %: (def) Book title italic (\em)
>   btit-rm,bt-rm,%: Book title plain (no font command)
> %------\ans=p(==btit-rm,bt-rm)-------

【书名格式】
- def：斜体。
- btit-rm,bt-rm：正常字体。

---

> %<<PAGES IN BOOKS:
>   %: (def) Pages in book plain as pp. 50-55
> bkpg-par,%: Pages in book in parentheses as (pp. 50-55)
>   bkpg-x,%: Pages in book bare as 50-55
> %------\ans=x(==bkpg-x)-------

【书中页码格式】
- def：pp. 50-55。
- bkpg-par：括号。
- bkpg-x：裸页码。

---

> %<<TOTAL PAGES OF A BOOK:
>     %: (def) Total book pages not printed 
> pg-bk,%: For book: 345 pages or pp.
> pg-bk,pg-pre,%: Total book pages before publisher 
> %------\ans=*(==)-------

【书籍总页数显示】
- def：不显示。
- pg-bk/pg-pre：显示。

---

> %<<PUBLISHER ADDRESS:
>     %: (def) Publisher, address as Harcourt, New York
> add-pub,%: Address: Publisher as New York: Harcourt
> %------\ans=*(==)-------

【出版商地址格式】
- def：出版商, 地址。
- add-pub：地址: 出版商。

---

> %<<PUBLISHER IN PARENTHESES:
>     %: (def) Publisher as normal block without parentheses
> pub-par,%: Publisher in parentheses 
> pub-date,%: Publisher and date in parentheses (Oxford, 1994)
> pub-date,pub-xc,%: Publisher and date in parentheses, no comma (Oxford 1994)
> pub-date,pub-xpar,%: Publisher and date without parentheses Oxford, 1994
> pub-date,pub-xpar,pub-xc,%: Publisher and date, no parentheses, no comma Oxford 1994
> %------\ans=*(==)-------

【出版商括号格式】
- def：无括号。
- pub-par：括号。
- pub-date 等：括号+日期/无逗号等。

---

> %<<PUBLISHER POSITION:
>     %: (def) Publisher after chapter, pages 
> pre-pub,%: Publisher before chapter, pages 
> pre-edn,%: Publisher after edition 
> %------\ans=*(==)-------

【出版商位置】
- def：章节和页码后。
- pre-pub：章节和页码前。
- pre-edn：版本后。

---

> %<<ISBN NUMBER:
>   isbn,%: Include ISBN for books, booklets, etc.
>   %: (def) No ISBN 
> %------\ans=*(==isbn)-------

【ISBN 显示】
- isbn：显示。
- def：不显示。

---

> %<<ISSN NUMBER:
> issn,%: Include ISSN for periodicals
>     %: (def) No ISSN 
> %------\ans=x(==)-------

【ISSN 显示】
- issn：显示。
- def：不显示。

---

> %<<DOI NUMBER:
> doi,%: Include DOI as "doi: number"
> url-doi,%: Format DOI as URL //dx.doi.org/doi (must give url options!)
> agu-doi,doi,%: Insert DOI AGU style as part of page number
>     %: (def) No DOI 
> %------\ans=x(==)-------

【DOI 显示】
- doi/url-doi/agu-doi：不同 DOI 格式。
- def：不显示。

---

> %<<`EDITOR' AFTER NAMES (EDITED BOOKS WITHOUT AUTHORS):
>     %: (def) Word `editor' after name 
> edpar,%: `Name (editor),' in parentheses, after name, comma after
> edpar,bkedcap,%: `Name (Editor),' as above, editor upper case
> edparc,%: `Name, (editor)' in parentheses, after name, comma between
> edparc,bkedcap,%: `Name, (Editor)' as above, editor upper case
> edparxc,%: `Name (editor)' in parentheses, after name, no commas
> edparxc,bkedcap,%: `Name (Editor)' as above, editor upper case
> %------\ans=*(==)-------

【无作者编辑书籍编辑名格式】
- def：name editor。
- edpar 等：括号、逗号、大写等不同组合。

---

> %<<EDITOR IN COLLECTIONS:
>     %: (def) Same as for edited book (names before booktitle)
> edby,%: In booktitle, edited by ..  (where .. is names)
> edby-par,%: In booktitle (edited by ..) 
> edby-parc,%: In booktitle, (edited by ..) 
> edby,edbyx,%: In booktitle, editor .. 
> edby,edbyw,%: In booktitle, (editor) .. 
> edby-par,edbyx,%: In booktitle (editor..) 
> edby-parc,edbyx,%: In booktitle, (editor..) 
> edby,edbyy,%: In booktitle, .., editor 
> edby-par,edbyy,%: In booktitle (.., editor) 
> %------\ans=*(==)-------

【论文集编辑名显示】
- def：与编辑书一致。
- edby 等：不同括号、顺序、逗号组合。

---

> %<<CAPITALIZE `EDITOR' OR `EDITED BY' (if editor capitalizable)
>   %: (def) `(editor,..)' or `(edited by..)' in lower case
> edcap,%: `(Editor,..)' or `(Edited by..)' in upper case
> %------\ans=*(==)-------

【编辑/编辑者大写】
- def：小写。
- edcap：大写。

---

> %<<PUNCTUATION BETWEEN SECTIONS (BLOCKS):
>     %: (def) \newblock after blocks (periods or new lines with openbib option)
> blk-com,%: Comma between blocks 
> blk-com,com-semi,%: Semi-colon between blocks 
> blk-com,com-blank,%: Blanks between blocks 
> blk-tit,%: Period after titles of articles, books, etc else commas
> blk-tit,tit-col,%: Colon after titles of articles, books, etc else commas
> blk-tita,%: Period after titles of articles else commas
> blk-tita,tit-col,%: Colon after titles of articles else commas
> %------\ans=*(==)-------

【各块间标点】
- def：\newblock。
- blk-com/com-semi/com-blank/tit/tita：逗号/分号/空格/句号/冒号。

---

> %<<PUNCTUATION BEFORE NOTES (if not using \newblock)
>   %: (def) Notes have regular punctuation like all other blocks
> blknt,%: Notes preceded by period 
> %------\ans=*(==)-------

【注释前标点】
- def：常规标点。
- blknt：句号。

---

> %<<PUNCTUATION AFTER AUTHORS:
>     %: (def) Author block normal with regular block punctuation
> au-col,%: Author block with colon 
> %------\ans=*(==)-------

【作者块后标点】
- def：常规。
- au-col：冒号。

---

> %<<PUNCTUATION AFTER `IN':
>     %: (def) Space after `in' for incollection or inproceedings
> in-col,%: Colon after `in' (as `In: ...')
> in-it,%: Italic `in' and space
> in-col,in-it,%: Italic `in' and colon 
> in-x,%: No word `in' for edited works
> %------\ans=*(==)-------

【in 后标点】
- def：空格。
- in-col/it/x：冒号/斜体/无 in。

---

> %<<`IN' WITH JOURNAL NAMES (if using 'in' with collections)
>     %: (def) No `in' before journal name 
> injnl,%: Add `in' before journal name in style for incollection
> %------\ans=*(==)-------

【期刊名前 in】
- def：无。
- injnl：加 in。

---

> %<<FINAL PUNCTUATION:
>     %: (def) Period at very end of the listed reference
> fin-bare,%: No period at end 
> %------\ans=*(==)-------

【文献末尾标点】
- def：句号。
- fin-bare：无句号。

---

> %<<ABBREVIATE WORD `PAGES' (if not using external language file)
>     %: (def) `Page(s)' (no abbreviation)
> pp,%: `Page' abbreviated as p. or pp.
> ppx,%: `Page' omitted 
> %------\ans=*(==)-------

【页码前缀缩写】
- def：不缩写。
- pp：缩写。
- ppx：省略。

---

> %<<ABBREVIATE WORD `EDITORS':
>     %: (def) `Editor(s)' (no abbreviation)
> ed,%: `Editor' abbreviated as ed. or eds.
> %------\ans=*(==)-------

【编辑缩写】
- def：不缩写。
- ed：缩写。

---

> %<<OTHER ABBREVIATIONS:
>     %: (def) No abbreviations of volume, edition, chapter, etc
> abr,%: Abbreviations of such words
> %------\ans=*(==)-------

【其他缩写】
- def：不缩写。
- abr：缩写。

---

> %<<ABBREVIATION FOR `EDITION' (if abbreviating words)
>   %: (def) `Edition' abbreviated as `edn' 
> ednx,%: `Edition' abbreviated as `ed' 
> %------\ans=*(==)-------

【版本缩写】
- def：edn。
- ednx：ed。

---

> %<<MONTHS WITH DOTS:
>   %: (def) Months with dots as Jan.
> mth-bare,%: Months without dots as Feb Mar
> %------\ans=*(==)-------

【月份缩写】
- def：带点。
- mth-bare：不带点。

---

> %<<EDITION NUMBERS:
>   xedn,%: Editions as in database saving much processing memory
>   %: (def) Write out editions as first, second, third, etc
> ord,%: Numerical editions as 1st, 2nd, 3rd, etc
> %------\ans=*(==xedn)-------

【版本号格式】
- xedn：数据库数字。
- def：英文序数。
- ord：数字序数。

---

> %<<STORED JOURNAL NAMES:
>   %: (def) Full journal names for prestored journals
>   jabr,%: Abbreviated journal names 
> jabr,jaa,%: Abbreviated with astronomy shorthands like ApJ and AJ
> %------\ans=a(==jabr)-------

【预存期刊名缩写】
- def：全名。
- jabr：缩写。
- jabr,jaa：天文学缩写。

---

> %<<AMPERSAND:
>   %: (def) Use word `and' in author lists
> amper,%: Use ampersand in place of `and'
>   varand,%: Use \BIBand in place of `and'
> %------\ans=v(==varand)-------

【作者列表 and 显示】
- def：and。
- amper：&。
- varand：\BIBand。

---

> %<<COMMA BEFORE `AND':
>     %: (def) Comma before `and' as `Tom, Dick, and Harry'
> and-xcom,%: No comma before `and' as `Tom, Dick and Harry'
> and-com,%: Comma even with 2 authors as `Tom, and Harry'
> %------\ans=*(==)-------

【and 前逗号】
- def：有逗号。
- and-xcom：无逗号。
- and-com：两人也加逗号。

---

> %<<COMMA BEFORE `AND' EVEN FOR COLLECTION EDITORS (if using comma before `and' with authors)
> and-com-ed,%: Comma with 2 editors in collections
>   %: (def) Two editors without comma as `Tom and Harry'
> %------\ans=*(==and-com-ed)-------

【论文集编辑 and 前逗号】
- and-com-ed：有逗号。
- def：无逗号。

---

> %<<NO `AND' IN REFERENCE LIST:
>   %: (def) With `and' before last author in reference list
>   xand,%: No `and' as `Tom, Dick, Harry'
> %------\ans=x(==xand)-------

【参考文献 and 显示】
- def：有 and。
- xand：无 and。

---

> %<<COMMA BEFORE `ET AL':
>   %: (def) Comma before `et al' in reference list
>   etal-xc,%: No comma before `et al' 
> %------\ans=x(==etal-xc)-------

【et al 前逗号】
- def：有逗号。
- etal-xc：无逗号。

---

> %<<FONT OF `ET AL':
>     %: (def) Plain et al 
> etal-it,%: Italic et al 
> etal-rm,%: Roman et al even when authors something else
> %------\ans=*(==)-------

【et al 字体】
- def：正常。
- etal-it：斜体。
- etal-rm：罗马体。

---

> %<<ADDITIONAL REVTeX DATA FIELDS:
>     %: (def) No additional fields for REVTeX
> revdata,eprint,url,url-blk,%: Include REVTeX data fields collaboration, eid, eprint, archive, numpages, url
> %------\ans=*(==)-------

【REVTeX 附加字段】
- def：无。
- revdata,eprint,url,url-blk：包含。

---

> %<<E-PRINT DATA FIELD: (without REVTeX fields)
>     %: (def) Do not include eprint field 
> eprint,%: Include eprint and archive fields for electronic publications
> %------\ans=*(==)-------

【eprint 字段】
- def：不包含。
- eprint：包含。

---

> %<<URL ADDRESS: (without REVTeX fields)
>     %: (def) No URL for electronic (Internet) documents
> url,url-blk,%: Include URL as regular item block
> url,url-nt,%: URL as note 
> url,url-nl,%: URL on new line after rest of reference
> %------\ans=*(==)-------

【URL 字段】
- def：无。
- url/url-blk/url-nt/url-nl：不同显示方式。

---

> %<<REFERENCE COMPONENT TAGS:
>     %: (def) No reference component tags in the \bibitem entries
> bibinfo,%: Reference component tags like \bibinfo in the content of \bibitem
> %------\ans=*(==)-------

【参考文献组件标签】
- def：无。
- bibinfo：有。

---

> %<<EMPHASIS: (affects all so-called italics)
>     %: (def) Use emphasis ie, \em, allows font switching
> em-it,%: Use true italics ie, \it, absolute italics
> em-x,%: No italics at all
> em-ul,%: Underlining in place of italics, best with ulem package
> %------\ans=*(==)-------

【强调字体】
- def：\em。
- em-it：\it。
- em-x：无斜体。
- em-ul：下划线。

---

> %<<COMPATIBILITY WITH PLAIN TEX:
>   nfss,%: Use LaTeX commands which may not work with Plain TeX
> plntx,%: Use only Plain TeX commands for fonts and testing
> %------\ans=*(==nfss)-------

【兼容 Plain TeX】
- nfss：LaTeX 命令。
- plntx：Plain TeX 命令。

---

> }}
> \generate{\file{mma.bst}{\MBopts}}
> \endbatchfile

最后，调用 `\generate` 生成 `mma.bst` 文件，使用上述所有选项。

---

**注：**
- 每个 `%<<...` 和 `%>>...` 表示一个选项块的开始和结束。
- `%: (def)` 表示该选项的默认值。
- `%------\ans=*(==xxx)-------` 表示当前选中的选项。
- 具体每个选项的详细含义可参考 BibTeX 和 makebst 的官方文档。
