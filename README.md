# BUAAthesis

北航毕设论文LaTeX模板

## 项目说明

这是北航开源俱乐部维护的的北航毕设论文的LaTeX模板

目前仍在开发中，欢迎关注进展，提交bug/issue，甚至贡献代码

## 预览

项目发布了最新版本的编译好的[PDF样例文档](https://github.com/BHOSC/BUAAthesis/releases/latest)供大家预览：

+ 本科：https://github.com/BHOSC/BUAAthesis/releases/download/v0.1/sample-bachelor.pdf
+ 硕士：https://github.com/BHOSC/BUAAthesis/releases/download/v0.1/sample-master.pdf
+ 博士：https://github.com/BHOSC/BUAAthesis/releases/download/v0.1/sample-doctor.pdf

## 最佳实践

**目前学院的要求是毕设论文必须以Word格式提交，这给使用LaTeX
模板书写毕设论文的同学带来了诸多不便。为此，我们推荐使用在线工
具将PDF文档转为Word格式：**

[https://cloud.gonitro.com/](https://cloud.gonitro.com/) 需注册，经过尝试本链接效果更好，可以较好处理目录、段落格式和字体等问题。

[http://convertonlinefree.com/PDFToWORDEN.aspx](http://convertonlinefree.com/PDFToWORDEN.aspx)
 
**以上链接对公式转换效果均不好，推荐使用pandoc转换或使用其他公式插件进行公式插入**

## 依赖

模板依赖v2.0及以上版本的ctex包，请使用较新版本的LaTeX发行版。

目前已经测试的LaTeX发行版包括：

+ TeXLive 2015、TeXLive 2016（**推荐**）
+ CTeX 2.9.3

对于老版本的LaTeX发行版，请通过包管理器升级ctex的版本。

## From Joseph

别的宏观的话我就不多说了，这个项目也算是填补我航在这方面的一个空缺吧。

结合我个人的一些体会，将项目拆分成以下几个部分吧，当然也有一些局限，可以及时更新补充。

各位有兴趣的同学可以试着先看看别的大学的模板，再结合自己的理解进行code吧。

再说明一点：学校给的只是论文的格式规范，并没有给出范本，所以有些格式的问题需要加上自己的理解。
