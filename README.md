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

## 依赖

模板依赖 v2.0 及以上版本的 ctex 包，请使用较新版本的 LaTeX 发行版。

目前已经测试的 LaTeX 发行版包括：

+ TeXLive 2015、TeXLive 2016、TeXLive 2019（** 推荐 **）
+ CTeX 2.9.3

对于老版本的 LaTeX 发行版，请通过包管理器升级 ctex 的版本。



此外，对于非Windows环境，会需要额外安装两个字体：

* `Times New Roman`，该字体可以在Windows系统字体库中获取，可以从[此链接下载](https://dl.freefontsfamily.com/download/Times-New-Roman-Font/)，也可以在Ubuntu/Debian下快速安装（**推荐使用此方法以实现自动化**）

```shell
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections  # 用于非交互模式下自动安装，其他情况下非必须
sudo apt-get install -y ttf-mscorefonts-installer  # 安装微软核心字体库
```

* `STXingKai`，该字体暂无可靠的自动安装手段，可以从Windows系统字体库中获取，或从[此链接下载](https://github.com/dolbydu/font/raw/master/unicode/STXingkai.TTF)。

* `STKaiTi`，该字体暂无可靠的自动安装手段，可以从Windows系统字体库中获取，或从[此链接下载](https://github.com/dolbydu/font/raw/master/unicode/STKaiti.TTF)。

* `SimSun`，该字体暂无可靠的自动安装手段，可以从Windows系统字体库中获取，或从[此链接下载](https://github.com/dolbydu/font/raw/master/unicode/SimSun.ttc)。

* `SimHei`，该字体暂无可靠的自动安装手段，可以从Windows系统字体库中获取，或从[此链接下载](https://github.com/dolbydu/font/raw/master/unicode/SimHei.ttf)。

关于Linux环境下安装字体，可以参考此篇：[linux安装字体](https://www.cnblogs.com/wangjiming/p/12553535.html)

如需更多字体文件，可以去[此仓库查找并下载](https://github.com/dolbydu/font)。


## 使用方法

1. 可以使用命令行或 PowerShell 等，配合项目中的 `mamske.bat` 批处理文件进行编译，详细使用方法请见 `mamske.bat` 文件；

2. 使用 Makefile，需要所使用的命令行环境支持 Make，cd 到 BUAAthesis 相应目录，目前支持以下功能

+ `make bachelor` # 编译本科生的 LATEX（文件默认项，亦可直接输入 make）
+ `make master` # 编译研究生的 LATEX 文件
+ `make kaitireport` # 编译本科生/研究生/博士生的开题报告/文献综述文件
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

## 文件格式相关

目前论文提交网站不再要求必须提交 docx 等格式的 Word 文件，但部分老师会要求在 Word 文件上修改和批注。
可使用如下方法将 Latex 文件（或编译后的 pdf 格式文件）转换为 Word 文件。

**注意**：将未公开的论文上传至网络有风险，推荐在本地进行转换。

### pandoc 本地转换

- 具体操作可参考 [Latex2Word](http://mingzf.xyz/zh-cn/posts/latex2word/) 这篇博客。
- 优点：公式支持相对较好；可以基于 Word 模板进行转换。
- 缺点： `subfigure` 支持差（可手动对编译后的 pdf 文件截图，进行替换）；需手动调整对公式的`\ref`（可使用 Word 全局替换）。

### 在线转换

如下网址效果较好：

- [ilovepdf](https://www.ilovepdf.com/)：整体效果好，包括页眉和页脚；公式支持差。
- [nitro](https://cloud.gonitro.com/)：需要注册；对超链接、目录、段落格式和字体等支持较好；公式支持差。

