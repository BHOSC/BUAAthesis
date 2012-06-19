% !Mode:: "TeX:UTF-8"



\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{buaathesis}[2010/06 1.0.0 The LaTeX template for thesis of BeiHang University]
\typeout{Document Class `buaathesis' v1.0.0 by BHOSC (2012/06)}

\newif\ifbuaa@bachelor\buaa@bachelorfalse
\newif\ifbuaa@master\buaa@mastertrue
\newif\ifbuaa@engineer\buaa@engineerfalse
\newif\ifbuaa@doctor\buaa@doctorfalse

\DeclareOption{bachelor}{\buaa@bachelortrue}
\DeclareOption{master}{\buaa@mastertrue}
\DeclareOption{engineer}{\buaa@engineertrue}
\DeclareOption{doctor}{\buaa@doctortrue}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%声明四个选项，用来判断用户是应该选择哪种样式
%其中，master选项为默认为true，在往后的编写判断语句时
%须先将其放在前面进行判断，此处就注意！
%如若需要其他的参数亦可参照如上格式写代码即可。
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
\LoadClass[cs4size,a4paper,fancyhdr]{ctexbook}[2007/10/19]



\ifbuaa@master
\renewcommand{\contentsname}{学术硕士论文目录}
\fi

\ifbuaa@bachelor
\renewcommand{\contentsname}{本科生论文目录}
\fi

\ifbuaa@engineer
\renewcommand{\contentsname}{工程硕士论文目录}
\fi

\ifbuaa@doctor
\renewcommand{\contentsname}{博士生论文目录}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%以上四段为进行选择判断的示例，因为前面master默认为true
%所以务必将master的判断语句放在最前面
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%