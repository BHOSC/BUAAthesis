# BUAAthesis

北航毕设论文 LaTeX 模板

## 项目说明

这是北航开源俱乐部维护的的北航毕设论文的 LaTeX 模板

目前仍在开发中，欢迎关注进展，提交 bug/issue，甚至贡献代码

## 预览

项目发布了最新版本的编译好的 [PDF 样例文档](https://github.com/BHOSC/BUAAthesis/releases/latest) 供大家预览：

+ 本科：https://github.com/BHOSC/BUAAthesis/releases/download/v0.1/sample-bachelor.pdf
+ 硕士：https://github.com/BHOSC/BUAAthesis/releases/download/v0.1/sample-master.pdf
+ 博士：https://github.com/BHOSC/BUAAthesis/releases/download/v0.1/sample-doctor.pdf

## 最佳实践

** 目前学院的要求是毕设论文必须以 Word 格式提交，这给使用 LaTeX
模板书写毕设论文的同学带来了诸多不便。为此，我们推荐使用在线工
具将 PDF 文档转为 Word 格式：**

[https://cloud.gonitro.com/](https://cloud.gonitro.com/) 需注册，经过尝试本链接效果更好，可以较好处理目录、段落格式和字体等问题。

[http://convertonlinefree.com/PDFToWORDEN.aspx](http://convertonlinefree.com/PDFToWORDEN.aspx)

** 以上链接对公式转换效果均不好，推荐使用 pandoc 转换或使用其他公式插件进行公式插入 **

## 依赖

模板依赖 v2.0 及以上版本的 ctex 包，请使用较新版本的 LaTeX 发行版。

目前已经测试的 LaTeX 发行版包括：

+ TeXLive 2015、TeXLive 2016、TeXLive 2019（** 推荐 **）
+ CTeX 2.9.3

对于老版本的 LaTeX 发行版，请通过包管理器升级 ctex 的版本。

## 使用方法

1. 可以使用命令行或 PowerShell 等，配合项目中的 `mamske.bat` 批处理文件进行编译，详细使用方法请见 `mamske.bat` 文件；

2. 使用 Makefile，需要所使用的命令行环境支持 Make，cd 到 BUAAthesis 相应目录，目前支持以下功能

+ `make bachelor` # 编译本科生的 LATEX（文件默认项，亦可直接输入 make）
+ `make master` # 编译研究生的 LATEX 文件
+ `make clean` # 删除编译过程中生成的文件（除了 pdf）
+ `make depclean` # 删除编译过程中生成的文件（包括 pdf）

3. 使用 Visual Studio Code 等软件进行编译，请使用 `xelatex->bibtex->xelatex*2` 方式进行编译；

## 参考文献相关

模板参考文献格式采用国家标准 `GB/T 7714-2005` 《信息与文献 参考文献著录规则》之中描述的格式。代码实现为 `CTeX-org / gbt7714-bibtex-style` v2.0.1[https://github.com/CTeX-org/gbt7714-bibtex-style/](https://github.com/CTeX-org/gbt7714-bibtex-style/)。参考文献详细说明请见该项目 README.md 或 [https://mirror.ctan.org/biblio/bibtex/contrib/gbt7714/gbt7714.pdf](https://mirror.ctan.org/biblio/bibtex/contrib/gbt7714/gbt7714.pdf)。

参考文献提供两种排序方式，分别为 ` 按出现顺序 `（默认）和 ` 按作者姓名和年份 `，请按需在模板 `data\reference.tex` 中做相应修改。

注意：根据 `GB/T 7714-2005` 中 `8.4 节 出版项 ` 中相关规定：

+ 无出版地的中文文献著录 “出版地不详”，外文文献著录 “S.l.”
+ 无出版者的中文文献著录 “出版者不详”，外文文献著录 “s.n.”

相应的解决方法为

+ 若编译的参考文献条目中出现 “出版地不详” 或 “S.l.”，请在相应的 bib 条目中添加 address 相关信息
+ 若编译的参考文献条目中出现 “出版者不详” 或 “s.n.”，请在相应的 bib 条目中添加 publisher 相关信息

实际使用中应避免出现 `［S.l.］:［s.n.］` 这样的著录形式。