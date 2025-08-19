# LaTeX `makebst` 配置问答记录

以下是在执行 `latex makebst` 命令过程中，根据期刊参考文献要求所做的配置选择及解释。

## 基本设置

### 语言文件
**问题：** Name of language definition file (default=merlin.mbs)  
**答案：** merlin.mbs  
**解释：** 使用默认的[merlin.mbs](file:///Users/seawolflin/workspace/code/liuqianqian/An_Algorithm_for_QR_Decomposition_of_Split_Quaternion_Matrices/merlin.mbs)文件，这是正确的主配置文件。  
**示例：** 无需修改，保持默认配置。

### 内部语言支持
**问题：** INTERNAL LANGUAGE SUPPORT  
**答案：** *  
**解释：** 使用英语单词直接显示，符合期刊要求的英文参考文献格式。  
**示例：** 引用格式显示为 "et al." 而非其他语言形式。

### 引用样式
**问题：** STYLE OF CITATIONS  
**答案：** a  
**解释：** 选择作者-年份引用格式，符合期刊要求的括号内引用方式。  
**示例：** 引用显示为 (Smith, 1999)。

### 作者-年份支持系统
**问题：** AUTHOR--YEAR SUPPORT SYSTEM  
**答案：** *  
**解释：** 选择`natbib`包，这是处理作者-年份引用最常用和功能完整的包。  
**示例：** 支持 `\citet{key}` 和 `\citep{key}` 命令。

### 语言字段
**问题：** LANGUAGE FIELD  
**答案：** *  
**解释：** 不添加语言字段，因为期刊要求都是英文参考文献。  
**示例：** 不显示 "in French" 等语言标注。

## 排序与作者姓名

### 参考文献排序
**问题：** ORDERING OF REFERENCES  
**答案：** *  
**解释：** 按所有作者字母顺序排列，符合期刊要求。  
**示例：** Smith, J. F. 和 Anderson, R. 按 S 和 A 的字母顺序排列。

### 作者姓名格式
**问题：** AUTHOR NAMES  
**答案：** r  
**解释：** 姓氏+首字母格式（如Smith, J. F.），符合期刊示例。  
**示例：** 原始BibTeX条目中的 "John F. Smith" 显示为 "Smith, J. F."。

### 编辑者姓名格式
**问题：** EDITOR NAMES IN COLLECTIONS  
**答案：** *  
**解释：** 编辑者姓名与作者格式不同，保持默认顺序。  
**示例：** 编辑者 "John F. Smith" 显示为 "Smith, J. F., ed."。

### 作者数量与引用
**问题：** NUMBER OF AUTHORS IN BIBLIOGRAPHY  
**答案：** l  
**解释：** 限制作者数量，使用"et al"替代缺失姓名。  
**示例：** 超过3位作者时显示为 "Smith et al."。

### 最大作者数
**问题：** MAXIMUM NUMBER OF AUTHORS  
**答案：** 3  
**解释：** 最多显示3位作者，超过则使用"et al"。  
**示例：** 4位作者显示为 "Smith et al."。

### 最小作者数
**问题：** MINIMUM NUMBER (before et al given)  
**答案：** 3  
**解释：** 显示3位作者后使用"et al"。  
**示例：** 3位作者显示为 "Smith, J. F., Jones, M., & Brown, T. et al."。

## 标点符号与格式

### "et al"前的逗号
**问题：** COMMA BEFORE `ET AL'  
**答案：** *  
**解释：** "et al"前使用逗号。  
**示例：** 显示为 "et al., 2020"。

### 日期格式
**问题：** DATE FORMAT  
**答案：** p  
**解释：** 年份以括号形式显示。  
**示例：** 显示为 "(2023)"。

### 期刊卷号和期号
**问题：** JOURNAL VOL AND NUMBER  
**答案：** *  
**解释：** 使用"卷号(期号)"格式。  
**示例：** 显示为 "25(3)" 而非 "25, no. 3"。

### 页码缩写
**问题：** ABBREVIATE WORD `PAGES'  
**答案：** *  
**解释：** 不缩写"Page"。  
**示例：** 显示为 "pp. 45-50" 而非 "pages 45-50"。

### 缩写选项
**问题：** OTHER ABBREVIATIONS  
**答案：** *  
**解释：** 不进行缩写。  
**示例：** "vol." 保持为 "volume"，"ed." 保持为 "edition"。

## 技术选项

### eprint字段
**问题：** E-PRINT DATA FIELD  
**答案：** *  
**解释：** 不包含eprint字段。  
**示例：** 不在参考文献末尾显示 "arXiv:1234.5678"。

### URL地址
**问题：** URL ADDRESS  
**答案：** *  
**解释：** 不包含URL。  
**示例：** 不显示 "URL http://example.com"。

### 期刊名称全称
**问题：** STORED JOURNAL NAMES  
**答案：** *  
**解释：** 对预存期刊使用全称。  
**示例：** 显示为 "Journal of Mathematical Analysis and Applications" 而非缩写。

### DOI号码
**问题：** DOI NUMBER  
**答案：** *  
**解释：** 以"doi: number"格式包含DOI。  
**示例：** 显示为 "doi:10.1001/journal.2023.1234"。

### 日期位置
**问题：** DATE POSITION  
**答案：** b  
**解释：** 日期放在作者之后。  
**示例：** 显示为 "Jones, J. (2023). Title. Journal, 45(3), 123-130."。

### 期刊名称标点符号
**问题：** JOURNAL NAME PUNCTUATION  
**答案：** *  
**解释：** 期刊名称后使用逗号。  
**示例：** 显示为 "Journal of Mathematics, 45(3), 123-130."。