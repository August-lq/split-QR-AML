# LaTeX `makebst` 配置问答手册（基于 [merlin.mbs](file:///Users/seawolflin/workspace/code/liuqianqian/An_Algorithm_for_QR_Decomposition_of_Split_Quaternion_Matrices/merlin.mbs)）

以下内容完全基于提供的 [merlin.mbs](file:///Users/seawolflin/workspace/code/liuqianqian/An_Algorithm_for_QR_Decomposition_of_Split_Quaternion_Matrices/merlin.mbs) 文件，提取了所有配置问题及选项，按逻辑分类整理，并附详细解释与示例。

---

## 基本设置

### 1. 语言定义文件
**问题：** Name of language definition file  
**选项：**  
- **默认值（空）**：使用 [merlin.mbs](file:///Users/seawolflin/workspace/code/liuqianqian/An_Algorithm_for_QR_Decomposition_of_Split_Quaternion_Matrices/merlin.mbs) 自身的英文定义  
- **其他文件**：输入外部语言文件名（如 `french.mbs`）  
**解释：**  
- 若选择默认值（空），则使用内置英文定义  
- 若需非英语支持（如法语），需提供外部语言文件  
**示例：**  
- [merlin.mbs](file:///Users/seawolflin/workspace/code/liuqianqian/An_Algorithm_for_QR_Decomposition_of_Split_Quaternion_Matrices/merlin.mbs)（默认）  
- `french.mbs`（法语支持）

---

### 2. 内部语言支持
**问题：** INTERNAL LANGUAGE SUPPORT  
**选项：**  
- **\* (def)**：直接显示英语单词（如 "et al"）  
- **babel**：使用 Babel 包（需 `babelbst.tex` 定义语言命令）  
**解释：**  
- 默认使用英语单词  
- 选择 `babel` 需配合 `babelbst.tex` 实现多语言支持  
**示例：**  
- 选择 `\*` 时显示 "et al"  
- 选择 `babel` 时可能显示 "et al" 的法语形式（如 "et al."）

---

### 3. 引用样式
**问题：** STYLE OF CITATIONS  
**选项：**  
- **\* (def)**：数值引用（如 [1]）  
- **ay**：作者-年份引用（如 (Smith, 1999)）  
- **alph**：Alpha 样式（如 Jon90 或 JWB90）  
- **cite**：特殊用途（显示数据库条目）  
**解释：**  
- 默认为数值引用  
- 选择 `ay` 启用作者-年份引用  
**示例：**  
- 数值引用：`[1]`  
- 作者-年份引用：`(Smith, 1999)`

---

### 4. HTML 输出
**问题：** HTML OUTPUT  
**选项（仅在非作者-年份引用时有效）：**  
- **\* (def)**：正常 LaTeX 输出  
- **html**：超文本输出（HTML 格式段落）  
- **html,htlist**：超文本列表（序列号）  
- **html,htdes**：超文本带键（key）  
**解释：**  
- 默认输出 LaTeX 格式  
- 选择 `html` 生成 HTML 格式参考文献  
**示例：**  
- HTML 段落：`<p>[1] Smith, J. (1999)</p>`

---

### 5. 语言字段
**问题：** LANGUAGE FIELD  
**选项：**  
- **\* (def)**：不添加语言字段  
- **lang**：添加语言字段（临时切换连字符模式）  
**解释：**  
- 默认不标注语言（如 "in French"）  
- 选择 `lang` 会标注语言信息  
**示例：**  
- 不标注：`Smith, J. (1999)`  
- 标注：`Smith, J. (1999) (in French)`

---

## 排序与作者姓名

### 6. 参考文献排序
**问题：** ORDERING OF REFERENCES  
**选项（非作者-年份和非 Alpha 样式）：**  
- **\* (def)**：按所有作者字母顺序排列  
- **seq-no**：按引用顺序排列（未排序）  
- **seq-yr**：按年份后按作者排序  
- **seq-yrr**：按年份逆序后按作者排序  
**选项（作者-年份引用时）：**  
- **\* (def)**：按所有作者字母顺序排列  
- **seq-lab**：按标签排序（Jones 在 Jones et al 前）  
- **seq-labc**：按标签和引用顺序排序  
- **seq-key**：按标签和键排序  
**解释：**  
- 默认按所有作者字母排序  
- 按标签排序适用于作者缩写与全名共存的情况  
**示例：**  
- 按字母排序：Anderson, R. → Smith, J. F.  
- 按标签排序：Jones (1 author) → Jones et al (3 authors)

---

### 7. 作者姓名格式
**问题：** AUTHOR NAMES  
**选项：**  
- **\* (def)**：默认格式（Full, surname last）  
- **nm-rev**：姓氏+首字母（如 Smith, J. F.）  
- **nm-rv**：姓氏+无点首字母（如 Smith J F）  
- **nm-rvvc**：姓氏+逗号+无空格首字母（如 Smith, J.F.）  
- **nm-rvx**：姓氏+纯首字母（如 Smith JF）  
- **nm-rev1**：仅第一个名字反转（AGU 风格）  
- **nm-revv1**：第一个名字全名反转（如 Smith, John Fred）  
**解释：**  
- `nm-rev` 是常见格式（姓氏+首字母）  
- `nm-rev1` 用于特定期刊（如 AGU）  
**示例：**  
- `nm-rev`：Smith, J. F.  
- `nm-rev1`：Smith, J. F., H. K. Jones

---

### 8. 编辑者姓名格式（合集）
**问题：** EDITOR NAMES IN COLLECTIONS  
**选项：**  
- **\* (def)**：编辑者姓名与作者格式不同  
- **ed-rev**：编辑者姓名与作者格式相同  
**解释：**  
- 默认编辑者保持原顺序  
- 选择 `ed-rev` 会反转编辑者姓名  
**示例：**  
- 默认：Ed. by John F. Smith  
- `ed-rev`：Smith, J. F., ed.

---

### 9. 作者数量与引用
**问题：** NUMBER OF AUTHORS IN BIBLIOGRAPHY  
**选项：**  
- **\* (def)**：显示所有作者  
- **nmlm**：限制作者数，用 "et al" 替代  
**选项：**  
- **x3**：最多显示 3 位作者  
- **m3**：至少显示 3 位作者  
**解释：**  
- `nmlm` 启用作者数限制  
- `x3` 和 `m3` 控制显示阈值  
**示例：**  
- 3 位作者：Smith, J. F., Jones, M. & Brown, T.  
- 超过 3 位：Smith et al.

---

## 标点符号与格式

### 10. "et al" 前的逗号
**问题：** COMMA BEFORE `ET AL'  
**选项：**  
- **\* (def)**：使用逗号（如 "et al., 2020"）  
- **etal-xc**：不使用逗号  
**解释：**  
- 默认 "et al" 后加逗号  
- 某些期刊要求无逗号  

---

### 11. 日期格式
**问题：** DATE FORMAT  
**选项（非作者-年份引用）：**  
- **\* (def)**：无括号（如 "May 1993"）  
- **yr-par**：括号年份（如 "(May 1993)"）  
- **yr-brk**：方括号年份（如 "[May 1993]"）  
- **yr-col**：冒号后接年份（如 ": May 1993"）  
- **yr-per**：句号后接年份（如 ". May 1993"）  
- **yr-com**：逗号后接年份（如 ", May 1993"）  
- **yr-blk**：空格后接年份（如 " May 1993"）  
**选项（作者-年份引用）：**  
- **\* (def)**：年份无括号  
- **yr-par**：年份加括号（如 "(1993)"）  
- **yr-brk**：年份加方括号（如 "[1993]"）  
- **yr-col**：年份前加冒号（如 ": 1993"）  
- **yr-per**：年份前加句号（如 ". 1993"）  
- **yr-com**：年份前加逗号（如 ", 1993"）  
- **yr-blk**：年份前加空格（如 " 1993"）  
**解释：**  
- 日期格式分非作者-年份和作者-年份两类  
- `yr-par` 常见于作者-年份引用  
**示例：**  
- 非作者-年份：`1994;45(3):1345--1387`  
- 作者-年份：`Jones, J. (2023). Title. Journal, 45(3), 123-130.`

---

### 12. 期刊卷号和期号
**问题：** JOURNAL VOL AND NUMBER  
**选项：**  
- **\* (def)**：卷号(期号)（如 "25(3)"）  
- **vnum-sp**：卷号 (期号)（如 "25 (3)"）  
- **vnum-cm**：卷号, 期号（如 "25, 3"）  
- **vnum-nr**：卷号, no. 期号（如 "25, no. 3"）  
- **vnum-h**：卷号, \# 期号（如 "25, \#3"）  
- **vnum-b**：卷号 期号（如 "25 3"）  
- **vnum-x**：仅卷号（如 "25"）  
**解释：**  
- `vnum-sp` 增加空格以改善可读性  
- `vnum-nr` 用于特定期刊格式  
**示例：**  
- 默认：`25(3)`  
- `vnum-sp`：`25 (3)`  
- `vnum-nr`：`25, no. 3`

---

### 13. 页码缩写
**问题：** ABBREVIATE WORD `PAGES'  
**选项：**  
- **\* (def)**：不缩写（如 "pages 50-55"）  
- **pp**：缩写为 "p." 或 "pp."  
- **ppx**：省略页码（如 "45-50"）  
**解释：**  
- 默认显示完整 "pages"  
- `pp` 缩写适用于紧凑格式  
**示例：**  
- 默认：`pp. 45-50`  
- `ppx`：`45-50`

---

### 14. 缩写选项
**问题：** OTHER ABBREVIATIONS  
**选项：**  
- **\* (def)**：不缩写（如 "volume", "edition"）  
- **abr**：缩写（如 "vol", "ed"）  
**解释：**  
- `abr` 用于期刊名称的缩写（如 "vol"）  
- 某些缩写需配合 `jfile` 使用  
**示例：**  
- 默认：`volume 21`  
- `abr`：`vol. 21`

---

## 技术选项

### 15. eprint 字段
**问题：** E-PRINT DATA FIELD  
**选项：**  
- **\* (def)**：不包含 eprint 字段  
- **eprint**：包含 eprint 和 archive 字段  
**解释：**  
- `eprint` 用于电子出版物（如 arXiv）  
**示例：**  
- 包含：`arXiv:1234.5678`

---

### 16. URL 地址
**问题：** URL ADDRESS  
**选项：**  
- **\* (def)**：不包含 URL  
- **url,url-blk**：包含 URL 为常规条目块  
- **url,url-nt**：URL 为注释  
- **url,url-nl**：URL 为新行  
**解释：**  
- `url,url-blk` 适用于普通 URL 显示  
- `url,url-nl` 用于长 URL 的可读性  
**示例：**  
- 包含：`URL http://example.com`

---

### 17. 期刊名称全称
**问题：** STORED JOURNAL NAMES  
**选项：**  
- **\* (def)**：使用预存期刊全称  
- **jabr**：使用缩写期刊名称  
- **jabr,jaa**：使用天文学缩写（如 ApJ, AJ）  
**解释：**  
- `jabr` 用于物理期刊缩写  
- `jabr,jaa` 为天文学特例  
**示例：**  
- 全称：`Journal of Mathematical Analysis and Applications`  
- 缩写：`J. Math. Anal. Appl.`

---

### 18. DOI 号码
**问题：** DOI NUMBER  
**选项：**  
- **\* (def)**：不包含 DOI  
- **doi**：包含 "doi: number"  
- **url-doi**：格式化为 URL（需 `url` 选项）  
- **agu-doi,doi**：AGU 风格 DOI  
**解释：**  
- `doi` 为标准 DOI 显示  
- `url-doi` 需配合 `url` 使用  
**示例：**  
- 包含：`doi:10.1001/journal.2023.1234`  
- URL 格式：`//dx.doi.org/10.1001/journal.2023.1234`

---

### 19. 日期位置
**问题：** DATE POSITION  
**选项：**  
- **\* (def)**：日期在末尾  
- **dt-beg**：日期在作者后  
- **dt-jnl**：日期作为期刊部分  
- **dt-end**：日期在末尾（包括注释后）  
**解释：**  
- `dt-beg` 用于按作者-年份排序  
- `dt-jnl` 用于期刊特定格式（如 `1994;45:34-40`）  
**示例：**  
- 默认：`Jones, J. F. (2023). Title. Journal, 45(3), 123-130.`  
- `dt-beg`：`Jones, J. F. (2023). Title. Journal, 45(3), 123-130.`

---

### 20. 期刊名称标点
**问题：** JOURNAL NAME PUNCTUATION  
**选项：**  
- **\* (def)**：逗号后接期刊名称（如 `Journal, 45(3), 123-130.`）  
- **jnm-x**：空格后接期刊名称（如 `Journal 45(3) 123-130.`）  
**解释：**  
- 默认逗号分隔期刊和卷号  
- `jnm-x` 用于无标点格式  
**示例：**  
- 默认：`Journal, 45(3), 123-130.`  
- 无标点：`Journal 45(3), 123-130.`

---

### 21. 书标题格式
**问题：** BOOK TITLE  
**选项：**  
- **\* (def)**：书标题斜体（`\em`）  
- **btit-rm,bt-rm**：书标题普通字体  
**解释：**  
- 默认斜体书名  
- `btit-rm` 用于普通字体  
**示例：**  
- 默认：*Book Title*  
- 普通字体：`Book Title`

---

### 22. ISBN 号码
**问题：** ISBN NUMBER  
**选项：**  
- **\* (def)**：不包含 ISBN  
- **isbn**：包含 ISBN（书籍、书册等）  
**解释：**  
- `isbn` 用于需标注 ISBN 的期刊  
**示例：**  
- 包含：`ISBN 0013/2021/ITP`

---

### 23. ISSN 号码
**问题：** ISSN NUMBER  
**选项：**  
- **\* (def)**：不包含 ISSN  
- **issn**：包含 ISSN（期刊）  
**解释：**  
- `issn` 用于需标注 ISSN 的期刊  
**示例：**  
- 包含：`ISSN 12371023`

---

## 其他高级选项

### 24. 引用标签字体
**问题：** FONT OF CITATION LABELS IN TEXT  
**选项：**  
- **\* (def)**：引用标签普通字体  
- **lab,lab-it**：引用标签斜体  
- **lab,lab-sc**：引用标签小大写  
- **lab,lab-bf**：引用标签粗体  
- **lab,lab-def**：用户定义字体（`\citenamefont`）  
**解释：**  
- `lab,lab-it` 用于斜体作者-年份标签  
**示例：**  
- 默认：`Jones, J. F.`  
- 斜体：*Jones, J. F.*

---

### 25. 年份截断
**问题：** TRUNCATE YEAR (if author-year citations)  
**选项：**  
- **\* (def)**：年份截断为 4 位数字（如 "et al., 23"）  
- **note-yr**：年份完整文本（如 "in press"）  
**解释：**  
- `note-yr` 用于非数字年份（如 "in press"）  
**示例：**  
- 默认：`et al., 23`  
- 完整年份：`et al., in press`

---

### 26. 标签缺失作者
**问题：** LABEL WHEN AUTHORS MISSING  
**选项：**  
- **\* (def)**：缺失作者时显示年份（如 "Key, 1999"）  
- **keyxyr**：缺失作者时年份留空（如 "Key, "）  
**解释：**  
- `keyxyr` 用于 natbib 7.0 兼容  
**示例：**  
- 默认：`Key, 1999`  
- `keyxyr`：`Key, `（年份空白）

---

### 27. 并列作者分隔符
**问题：** PUNCTUATION BETWEEN AUTHOR NAMES  
**选项：**  
- **\* (def)**：逗号分隔（如 "Tom, Dick, and Harry"）  
- **aunm-semi**：分号分隔  
- **aunm-sl**：斜杠分隔  
**解释：**  
- 默认逗号分隔  
- 分号分隔用于特殊格式  
**示例：**  
- 默认：`Tom, Dick, and Harry`  
- 分号：`Tom; Dick; and Harry`

---

### 28. 相同作者名替换
**问题：** ADJACENT REFERENCES WITH REPEATED NAMES  
**选项：**  
- **\* (def)**：重复作者名始终显示  
- **nmdash**：重复名替换为破折号  
- **nmdash,nmd-2**：替换为双破折号  
- **nmdash,nmd-3**：替换为三破折号  
**解释：**  
- `nmdash` 用于节省空间  
**示例：**  
- 默认：`Smith, J. F., ed.`  
- 替换：`---, ed.`

---

### 29. 作者数量（引用中）
**问题：** AUTHORS IN CITATIONS  
**选项：**  
- **\* (def)**：一位作者后加 "et al"  
- **mcite**：其他截断方案（未指定具体行为）  
**解释：**  
- 默认按 1 作者截断  
- `mcite` 用于自定义截断规则  

---

### 30. 最大作者数（截断前）
**问题：** MAX AUTHORS BEFORE ET AL  
**选项：**  
- **\* (def)**：1 作者后加 "et al"  
- **mct-2**：1, 2 后加 "et al"  
- **mct-3**：1, 2, 3 后加 "et al"  
- **mct-4**：4 位作者前加 "et al"  
**解释：**  
- `mct-1` 是标准截断规则  
- `mct-3` 用于 3 位作者后截断  

---

### 31. 最小作者数（截断后）
**问题：** MINIMUM NUMBER (before et al given)  
**选项：**  
- **\* (def)**：无截断（显示所有）  
- **mct-x2**：2 位作者无截断  
- **mct-x3**：3 位作者无截断  
**解释：**  
- `mct-x2` 用于至少 2 位作者显示  
**示例：**  
- 默认：3 位作者后截断  
- `mct-x3`：3 位作者无截断  

---

## 其他格式选项

### 32. 页码位置
**问题：** POSITION OF PAGES  
**选项：**  
- **\* (def)**：页码在正文中间  
- **pp-last**：页码在末尾（注释前）  
**解释：**  
- `pp-last` 用于页码在末尾显示  

---

### 33. 月份格式
**问题：** MONTHS WITH DOTS  
**选项：**  
- **\* (def)**：月份带点（如 "Jan."）  
- **mth-bare**：月份无点（如 "Feb Mar"）  
**解释：**  
- `mth-bare` 用于无月份点的格式  

---

### 34. 标题标点
**问题：** PUNCTUATION BETWEEN SECTIONS (BLOCKS)  
**选项：**  
- **\* (def)**：块间用标准标点（逗号或句号）  
- **blk-com**：块间用逗号  
- **blk-com,com-semi**：块间用分号  
- **blk-com,com-blank**：块间用空格  
- **blk-tit**：标题后用句号（其他用逗号）  
**解释：**  
- `blk-com` 用于块间逗号分隔  
- `blk-tit` 用于标题后句号  

---

### 35. 最终标点
**问题：** FINAL PUNCTUATION  
**选项：**  
- **\* (def)**：参考文献末尾用句号  
- **fin-bare**：无句号  
**解释：**  
- `fin-bare` 用于无标点风格  

---

## 附录：完整选项映射表

| 问题标签 | 选项代码 | 含义 | 示例 |
|---------|----------|------|------|
| AUTHOR--YEAR SUPPORT SYSTEM | nat | 使用 natbib 包 | `\citet{key}` |
| DATE FORMAT (author-year) | yr-par | 年份括号 | `(2023)` |
| PAGE NUMBERS | jpg-1 | 仅显示起始页码 | `pp. 45` |
| PUBLISHER IN PARENTHESES | pub-par | 出版商括号 | `(Oxford, 1994)` |
| COMMA BEFORE `AND' | and-xcom | `and` 前无逗号 | `Tom, Dick and Harry` |

---

## 注意事项
1. **选项冲突**：若多个互斥选项被选择，以最后选择为准（如 `nm-rev` 覆盖 `nm-init`）。
2. **调试**：生成的 `.dbj` 文件可手动编辑调整选项。
3. **多语言支持**：使用外部语言文件时需 `makebst` 3.0+，且处理时间翻倍。

---

## 参考文献
- `merlin.mbs` 文件注释与 `makebst` 文档。
- LaTeX 项目公共许可证（LPPL）v1.3+。
- 《LaTeX 宏包使用指南》相关章节。