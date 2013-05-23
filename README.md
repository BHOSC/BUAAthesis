# BUAAthesis

北航毕设论文LaTeX模板

## 项目说明

这是北航开源俱乐部维护的的北航毕设论文的LaTeX模板

目前仍在开发中，欢迎关注进展，提交bug/issue，甚至贡献代码

## 模板使用简介

### 软件环境

####编译环境

1、Windows用户：
使用[CTEX](http://www.ctex.org/HomePage "CTEX")套装；
或者更为推荐使用[TeXLive](http://www.tug.org/texlive/)2012以上版本+[texmaker](https://code.google.com/p/texmaker/)编辑器。

2、Linux用户：
推荐使用[TeXLive](http://www.tug.org/texlive/)2012以上版本。

3、Mac用户：
推荐使用[MacTex](http://tug.org/mactex/)2012及以上版本。

#### 其他要求：

需要字体：

参考文献管理工具：推荐使用[JabRef](jabref.sourceforge.net/download.php)。


### 编译过程及方式

编译方式：xelatex
完整编译过程：xelatex -> bibtex -> xelatex -> xelatex
注：当涉及交叉引用的改动时，需要xelatex编译两遍；涉及参考文献的改动时，需要完整编译过程编译；若二者均无涉及时，仅xelatex编译一遍即可。
