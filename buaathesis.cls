% !Mode:: "TeX:UTF-8"

\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{buaathesis}[2012/07/06 0.8 The LaTeX template for thesis of BeiHang University]
\typeout{Document Class `buaathesis' v0.8 by BHOSC (2012/07)}

\newif\ifbuaa@bachelor\buaa@bachelorfalse
\newif\ifbuaa@master\buaa@mastertrue
\newif\ifbuaa@engineer\buaa@engineerfalse
\newif\ifbuaa@doctor\buaa@doctorfalse
\newif\ifbuaa@nocolor\buaa@nocolorfalse

\DeclareOption{bachelor}{\buaa@bachelortrue}
\DeclareOption{master}{\buaa@mastertrue}
\DeclareOption{engineer}{\buaa@engineertrue}
\DeclareOption{doctor}{\buaa@doctortrue}
\DeclareOption{nocolor}{\buaa@nocolortrue}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%声明五个选项，用来判断用户是应该选择哪种样式
%其中，master选项为默认为true，在往后的编写判断语句时
%须先将其放在后面进行判断，此处就注意！
%如若需要其他的参数亦可参照如上格式写代码即可。
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
\LoadClass[cs4size,a4paper,fancyhdr]{ctexbook}[2007/10/19]
\bibliographystyle{buaathesis}%参考文献格式

%===============需要用户输入的信息==================
\def\buaa@university{北京航空航天大学}
\def\buaa@universityeng{BeiHang Univerisity}
%或者是：Beijing University of Areonautics and Astronautics
\newcommand{\university}[2]{%
    \def\buaa@university{#1}
    \def\buaa@universityeng{#2}
}%学校名称

\def\buaa@school{}
\def\buaa@schooleng{}
\newcommand{\school}[2]{%
    \def\buaa@school{#1}
    \def\buaa@schooleng{#2}
}%学院

\def\buaa@thesisauthor{}
\def\buaa@thesisauthoreng{}
\newcommand{\thesisauthor}[2]{%
    \def\buaa@thesisauthor{#1}
    \def\buaa@thesisauthoreng{#2}
}%作者

\def\buaa@thesistitle{}
\def\buaa@thesistitleeng{}
\newcommand{\thesistitle}[2]{%
    \def\buaa@thesistitle{#1}
    \def\buaa@thesistitleeng{#2}
}%论文标题

\def\buaa@major{}
\def\buaa@majoreng{}
\newcommand{\major}[2]{%
    \def\buaa@major{#1}
    \def\buaa@majoreng{#2}
}%专业

\def\buaa@teacher{}
\def\buaa@teachereng{}
\newcommand{\teacher}[2]{%
    \def\buaa@teacher{#1}
    \def\buaa@teachereng{#2}
}%指导老师

\def\buaa@category{}
\newcommand{\category}[1]{%
    \def\buaa@category{#1}
}%中国分类号

\def\buaa@mibao{}
\newcommand{\mibao}[1]{%
    \def\buaa@mibao{#1}
}%保密等级

\def\buaa@thesisbeginyear{}
\def\buaa@thesisbeginmonth{}
\def\buaa@thesisbeginday{}
\newcommand{\thesisbegin}[3]{%
    \def\buaa@thesisbeginyear{#1}
    \def\buaa@thesisbeginmonth{#2}
    \def\buaa@thesisbeginday{#3}
}%论文开始时间

\def\buaa@thesisendyear{}
\def\buaa@thesisendmonth{}
\def\buaa@thesisendday{}
\newcommand{\thesisend}[3]{%
    \def\buaa@thesisendyear{#1}
    \def\buaa@thesisendmonth{#2}
    \def\buaa@thesisendday{#3}
}%论文结束时间

\def\buaa@defenseyear{}
\def\buaa@defensemonth{}
\def\buaa@defenseday{}
\newcommand{\defense}[3]{%
    \def\buaa@defenseyear{#1}
    \def\buaa@defensemonth{#2}
    \def\buaa@defenseday{#3}
}%答辩时间

\def\buaa@ckeyword{}
\newcommand{\ckeyword}[1]{%
    \def\buaa@ckeyword{#1}}
\def\buaa@ekeyword{}
\newcommand{\ekeyword}[1]{%
    \def\buaa@ekeyword{#1}}
%中英文摘要关键词

%+++++++++++++++本科生的信息+++++++++++++++++++
\def\buaa@class{}
\newcommand{\class}[1]{%
    \def\buaa@class{#1}
}%班级

\def\buaa@unicode{}
\newcommand{\unicode}[1]{%
    \def\buaa@unicode{#1}
}%单位代码

\def\buaa@studentID{}
\newcommand{\studentID}[1]{%
    \def\buaa@studentID{#1}
}%学号

\def\buaa@thesisdateyear{}
\def\buaa@thesisdatemonth{}
\newcommand{\thesisdate}[2]{%
    \def\buaa@thesisdateyear{#1}
    \def\buaa@thesisdatemonth{#2}
}%论文时间，用于论文首页

%+++++++++++++++研究生的信息++++++++++++++++++++
\def\buaa@direction{}
\newcommand{\direction}[1]{
    \def\buaa@direction{#1}
}%研究方向

\def\buaa@teacherdegree{}
\def\buaa@teacherdegreeeng{}
\newcommand{\teacherdegree}[2]{%
    \def\buaa@teacherdegree{#1}
    \def\buaa@teacherdegreeeng{#2}
}%教师职称

\def\buaa@thesisID{}
\newcommand{\thesisID}[1]{%
    \def\buaa@thesisID{#1}
}%论文编号

\def\buaa@commityear{}
\def\buaa@commitmonth{}
\def\buaa@commitday{}
\newcommand{\commit}[3]{%
    \def\buaa@commityear{#1}
    \def\buaa@commitmonth{#2}
    \def\buaa@commitday{#3}
}%论文提交时间

\def\buaa@awardyear{}
\def\buaa@awardmonth{}
\def\buaa@awardday{}
\newcommand{\award}[3]{%
    \def\buaa@awardyear{#1}
    \def\buaa@awardmonth{#2}
    \def\buaa@awardday{#3}
}%授予学位时间

\def\buaa@appdegree{}%首页
\def\buaa@appdegreeeng{}%英文首页
\def\buaa@applydegree{}%页眉页脚
\newcommand{\degree}[3]{%
    \def\buaa@appdegree{#1}
    \def\buaa@appdegreeeng{#2}
    \def\buaa@applydegree{#3}
}
\ifbuaa@doctor
    \degree{博士学位}{Doctor of Philosophy}{博士}
\else
    \ifbuaa@engineer
        \degree{专业硕士学位}{Master}{硕士}
    \else
        \ifbuaa@bachelor
            \degree{学士学位}{Bachelor}{学士}
        \else
            \degree{学士硕士学位}{Master}{硕士}
        \fi
    \fi
\fi
%=============用户录入的信息到此完毕================

%---------------------字体字号的一些设置-------------------
%   设置主要字体为Times New Roman和宋体
%   研究生论文的首页需要华文行楷和32号字
%----------------------------------------------------------
\setmainfont{Times New Roman}
\setCJKmainfont{宋体}
\setCJKfamilyfont{hwxingkai}{STXingkai}
\newcommand{\hwxingkai}{\CJKfamily{hwxingkai}}
\newcommand{\xiaochuhao}{\fontsize{32pt}{\baselineskip}\selectfont}

%--------------------页面、页眉页脚的设置（具体间距还有待修正）-----------------------
\RequirePackage{geometry}
\newgeometry{top=30mm,bottom=25mm,left=30mm,right=20mm,headsep=5mm}
%%学位论文的上边距：30mm；下边距：25mm；左边距：30mm；右边距：20mm；
\savegeometry{bachelorgeometry}
\newgeometry{
    top=25mm,bottom=25mm,left=30mm,right=20mm,
    headsep=5mm,headheight=10mm,footskip=10mm}
%学位论文的上边距：25mm；下边距：25mm；左边距：30mm；右边距：20mm；
%页眉都用小五号宋体字，页眉的上边距为15mm；页脚的下边距为15mm。
%按照上面的设置，个人觉得基本符合要求。
\savegeometry{mastergeometry}

\ifbuaa@bachelor
    \loadgeometry{bachelorgeometry}
\else
    \loadgeometry{mastergeometry}
\fi

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
    \ifbuaa@bachelor
        %\newsavebox{\markbuaa}
        %\sbox{\markbuaa}{\includegraphics[width=45bp]{figure/buaamark.eps}}
        %<LaTeX插图指南>第十五章讲了为什么要这样做。但不顶用啊！！！
        \fancyhead[C]{%
        \includegraphics[width=37bp]{figure/buaamark.eps}\hfill
        \raisebox{2ex}{\heiti\zihao{4}\buaa@university 毕业设计(论文)}\hfill
        \raisebox{2ex}{\songti\zihao{5}第\quad\thepage\quad 页}
        }
    \else
        \fancyhead[CO]{\zihao{-5}\songti\buaa@university\buaa@applydegree 学位论文\vspace{1.5mm}}
        \fancyhead[CE]{\zihao{-5}\songti\leftmark\vspace{1.5mm}}
        \fancyfoot[C]{\zihao{5}\thepage}
    \fi
\renewcommand{\headrulewidth}{0.5bp} %页眉线宽度

\fancypagestyle{plain}{
    \pagestyle{fancy}
}

\newcommand{\clearemptydoublepage}{%
\clearpage
\if@twoside
    \ifodd
        \c@page
    \else
        \hbox{}\thispagestyle{empty}\newpage
        \if@twocolumn
            \hbox{}\newpage
        \fi
    \fi
\fi}
%这个clearemptydoublepage我也不知道怎么设置，这一段是从网上找的，基本能用。

% 表格内为5号字，故重定义表格环境
% 暂不支持longtable
\let\oldtable\table
\let\endoldtable\endtable
\renewenvironment{table}[1][ht]
{\oldtable[#1]\zihao{5}}
{\endoldtable}

\let\oldtabular\tabular
\let\endoldtabular\endtabular
\renewenvironment{tabular}[1][ht]
{\oldtabular[#1]\zihao{5}}
{\endoldtabular}

%---------------------------文章中标题的格式设置--------------------------%
\usepackage{titlesec,titletoc}
\ifbuaa@bachelor
    \titleformat{\chapter}[block]{\centering\zihao{3}\heiti}{第\,\thechapter\,章}{1em}{}
    \titleformat{\section}[block]{\zihao{-4}\heiti}{\thesection}{1em}{}
    \titleformat{\subsection}[block]{\zihao{-4}\heiti}{\thesubsection}{1em}{}
\else
    \titleformat{\chapter}[block]{\centering\zihao{3}\heiti}{第\,\thechapter\,章}{1em}{}
    \titleformat{\section}[block]{\zihao{4}\heiti}{\thesection}{1em}{}
    \titleformat{\subsection}[block]{\zihao{-4}\heiti}{\thesubsection}{1em}{}
\fi
\titlespacing*{\chapter}{0pt}{0pt}{.5\baselineskip} % 标题间距
\titlespacing*{\section}{0pt}{.5\baselineskip}{.5\baselineskip}
\titlespacing*{\subsection}{0pt}{.5\baselineskip}{.5\baselineskip}

%------------------------目录中标题格式进行设置---------------------------%
\ifbuaa@bachelor
    \titlecontents{chapter}[0pt]{\heiti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
    \titlecontents{section}[2em]{\vspace{0.1\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}[\vspace{0.1\baselineskip}]
    \titlecontents{subsection}[4em]{\vspace{0.1\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}[\vspace{0.1\baselineskip}]
\else
    \titlecontents{chapter}[0pt]{\heiti\zihao{4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
    \titlecontents{section}[2em]{\vspace{0.15\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}[\vspace{0.15\baselineskip}]
    \titlecontents{subsection}[4em]{\vspace{0.1\baselineskip}\heiti\zihao{5}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}[\vspace{0.1\baselineskip}]
\fi
%-------------------交叉引用和参考文献整理---------------------
\RequirePackage[xetex,unicode,
                bookmarksnumbered,
                bookmarksopen]{hyperref}
    \ifbuaa@nocolor
        \hypersetup{colorlinks=false}
    \else
        \hypersetup{colorlinks=true}
    \fi
    \hypersetup{
        linkcolor=blue,
        citecolor=blue,
        urlcolor=blue,
        filecolor=black
    }
    \hypersetup{%
        pdftitle={BUAA thesis},
        pdfauthor={BHOSC},
        pdfsubject={北航-\buaa@appdegree 论文},
        pdfcreator={LaTeXed~By~BHOSC}}

\RequirePackage[sort&compress]{natbib}
    \bibpunct{[}{]}{,}{n}{}{}
\RequirePackage{hypernat}
    \newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}
%上面四行代码是06版中的，我也不懂，但使用上没有问题。

%------------------------图形表格的一些设置------------------------
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.eps,.ps,.jpg,.bmp}
\graphicspath{figure/}
\RequirePackage{pifont}%这个包主要是在“秘级”后加一个五角星

\RequirePackage{caption}
\RequirePackage{subfigure}
\RequirePackage{longtable}
\DeclareCaptionFormat{bachelorfigure}{\songti\zihao{5}{#1\textrm{#2}#3}}
\DeclareCaptionFormat{bachelortable}{\heiti\bf\zihao{5}{#1\textrm{#2}#3}}
\DeclareCaptionFormat{masterfigure}{\songti\bf\zihao{5}{#1\textrm{#2}#3}}
\DeclareCaptionFormat{mastertable}{\songti\bf\zihao{5}{#1\textrm{#2}#3}}
\ifbuaa@bachelor
    \captionsetup[figure]{format=bachelorfigure,labelsep=quad}
    \captionsetup[table]{format=bachelortable,labelsep=quad}
    \renewcommand{\thefigure}{\arabic{section}.\arabic{figure}}
    \renewcommand{\thetable}{\arabic{section}.\arabic{table}}
    \renewcommand{\theequation}{\arabic{section}.\arabic{equation}}
\else
    \RequirePackage{remreset}
    \@removefromreset{table}{chapter}
    \@removefromreset{figure}{chapter}
    %使图表的标号与章节无关
    \captionsetup[figure]{format=masterfigure,labelsep=quad}
    \captionsetup[table]{format=mastertable,labelsep=quad}
    \renewcommand{\thefigure}{\arabic{figure}}
    \renewcommand{\thetable}{\arabic{table}}
    \renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\fi

%---------------------间距的一些设置--------------------
\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{2em}
%\setlength{\parskip}{3pt plus1pt minus1pt}          %段落间距离，是否需要？
%\setlength{\itemsep}{3pt plus1pt minus2pt}          % 连续items之间的距离.
\setlength{\itemsep}{0pt}
\setlength{\floatsep}{10pt plus 3pt minus 2pt}      % 图形之间或图形与正文之间的距离
\setlength{\abovecaptionskip}{2pt plus1pt minus1pt} % 图形中的图与标题之间的距离
\setlength{\belowcaptionskip}{3pt plus1pt minus2pt} % 表格中的表与标题之间的距离

%-----------------定义item及间距---------------
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
%注：使用上面的代码并未能改变item之间的间距，原因未知
%更多关于间距的设置请见http://blog.sina.com.cn/s/blog_5e16f1770100gdhm.html

%==================若干标题的汉化================%
\renewcommand{\contentsname}{目\qquad 录}
\renewcommand\listfigurename{插\ 图\ 目\ 录}
\renewcommand\listtablename{表\ 格\ 目\ 录}
\renewcommand\bibname{参\ 考\ 文\ 献}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}

%------------------其他一些设置---------------
\RequirePackage{ulem}               %比较容易加入下划线\uline{}
\newcommand{\CoverOption}[2]{%
\makebox[1.5cm][c]{#1}\,{\underline{\makebox[1.5cm][c]{#2}}}
}
\RequirePackage{array}
\renewcommand{\frontmatter}{        %将frontmatter页码定义为大写罗马数字
\cleardoublepage
\@mainmatterfalse
\pagenumbering{Roman}
}
%backmatter会使后面的附录没有“附录A”之类的字样
%这三个命令的具体定义可见http://m.lilacbbs.com/bbstcon.php?board=TeX&gid=2269

\RequirePackage{setspace}          %用此包来设置行距

%-----------------代码环境定义和设置---------------
\RequirePackage{xcolor}
\RequirePackage{listings}
%此宏包的设置请参考 http://bbs.ctex.org/forum.php?mod=viewthread&tid=53451
\ifbuaa@nocolor
    \lstset{
        commentstyle=\color{black!100},%黑色的注释
        rulesepcolor=\color{black!100},%代码块边框为黑色
        keywordstyle=\color{black!100}\bfseries, %代码关键字的颜色为黑色，粗体
    }
\else
    \lstset{
        commentstyle=\color{red!50!green!50!blue!50},%浅灰色的注释
        rulesepcolor=\color{red!20!green!20!blue!20},%代码块边框为淡青色
        keywordstyle=\color{blue!90}\bfseries, %代码关键字的颜色为蓝色，粗体
    }
\fi

\lstdefinelanguage{LaTeX}{
    morekeywords={%
    documentclass,begin,end,maketitle,tableofcontent,include,%
    usepackage,par,chapter,section,subsection,%
    hspace,vspace,quad,qquad,frontmatter,mainmatter,backmatter,%
    clearpage,cleardoublepage,appendix,item,upcite,url},
    otherkeywords={},
    sensitive=true
}

\lstset{tabsize=4, %
  frame=shadowbox, %把代码用带有阴影的框圈起来
  showstringspaces=false,%不显示代码字符串中间的空格标记
  stringstyle=\ttfamily, % 代码字符串的特殊格式
  keepspaces=true, %
  breakindent=22pt, %
  numbers=left,%左侧显示行号
  stepnumber=1,%
  numberstyle=\tiny, %行号字体用小号
  basicstyle=\footnotesize, %
  showspaces=false, %
  flexiblecolumns=true, %
  breaklines=true, %对过长的代码自动换行
  breakautoindent=true,%
  breakindent=4em, %
  escapebegin=\begin{CJK*}{GBK}{kai},escapeend=\end{CJK*},
  aboveskip=1em, %代码块边框
  fontadjust,
  captionpos=t,
  framextopmargin=2pt,framexbottommargin=2pt,abovecaptionskip=-3pt,belowcaptionskip=3pt,
  xleftmargin=4em,xrightmargin=4em, % 设定listing左右的空白
  texcl=true,
  % 设定中文冲突，断行，列模式，数学环境输入，listing数字的样式
  extendedchars=false,columns=flexible,mathescape=true
  % numbersep=-1em
}
\renewcommand{\lstlistingname}{代码} %% 重命名Listings标题头

%++++++++++++++++++设置首页+++++++++++++++++++

\newcommand{\ulinecvrtc}[1]{\uline{\makebox[9em][c]{\bf #1}}}
\newcommand{\ulinecvcbc}[1]{\uline{\makebox[14em][c]{#1}}}
% 上述两条命令为本科生论文封面所使用的
% 一个是cover-right-top-center的意思，另一个是cover-center-bottom-center
\newcommand{\titlech}{
\ifbuaa@bachelor
    \begin{titlepage}
        \begin{picture}(0,0)(35,55){
        % 第二个()里的第一个参数表示向左移35pt，第二个参数为向下移55pt
        % 具体这两个参数还没有搞得很明白，暂且这么用着吧。
            \includegraphics[width=90pt]{figure/buaamark.eps}}
        \end{picture}
        \hfill
        \raisebox{-.2cm}[0pt][0pt]{
            {\zihao{5}\heiti
            \begin{tabular}{c}
                单位代码~\ulinecvrtc{\bf\buaa@unicode}\\[.1ex]
                学\qquad 号~\ulinecvrtc{\bf\buaa@studentID}\\[.1ex]
                分~~类~~号~\ulinecvrtc{\bf\buaa@category}\\
            \end{tabular}}
        }
        \vskip 95bp
        \centerline{\includegraphics[width=360bp]{figure/buaaname.eps}}
        \vskip 45bp
        \centerline{\zihao{-0}\heiti 毕业设计(论文)}
        \vskip70bp
        \centerline{\heiti\zihao{2}\buaa@thesistitle}
        \vskip 118bp
        \begin{center}
        {
            \zihao{-3}\heiti
            \begin{tabular}{cc}
                学~~~院~~~名~~~称~~&\ulinecvcbc{\buaa@school 学院}\\[.4ex]
                专~~~业~~~名~~~称~~&\ulinecvcbc{\buaa@major 专业}\\[.4ex]
                学~~~生~~~姓~~~名~~&\ulinecvcbc{\buaa@thesisauthor}\\[.4ex]
                指~~~导~~~教~~~师~~&\ulinecvcbc{\buaa@teacher}\\
            \end{tabular}
        }
        \end{center}
        \vskip 60bp
        \centerline{\heiti\zihao{-3}\buaa@thesisdateyear ~~年~~\buaa@thesisdatemonth ~~月}
    \end{titlepage}
\else
%------研究生论文首页---------
%间距、字体字号还需要调整
\begin{titlepage}
    \begin{center}
        \zihao{5}\heiti
        \begin{flushleft}
            中图分类号：\buaa@category \hfill 密级\ding{73}~~\buaa@mibao \\
            论\,\,文\,\,编\,\,号：\buaa@thesisID\\
        \end{flushleft}
        \vskip80bp
        \includegraphics[width=.5\textwidth]{figure/buaaname.eps}
        \vskip 10bp
        \zihao{0}\hwxingkai\centerline{\buaa@appdegree 论文}
        \vskip100bp
        \begin{minipage}[h]{.8\textwidth}
            \begin{spacing}{2}
            \xiaochuhao\songti\centering{\buaa@thesistitle}
            \end{spacing}
        \end{minipage}
        \vskip80bp
        {
            \heiti\zihao{4}\ziju{0.2}
            \begin{tabular}[b]{ll}
                作~~者~~姓~~名~~ & \buaa@thesisauthor \\[.4ex]
                学~~科~~专~~业~~ & \buaa@major 专业\\[.4ex]
                指~~导~~教~~师~~ & \buaa@teacher \quad\buaa@teacherdegree\\[.4ex]
                培~~养~~院~~系~~ & \buaa@school 学院\\
            \end{tabular}
        }
    \end{center}
\end{titlepage}

\fi
}

\newcommand{\titleeng}{%英文首页
\clearemptydoublepage
\thispagestyle{empty}
\vspace*{100bp}
\begin{center}
    \begin{minipage}[h]{.85\textwidth}
        \centerline{\zihao{-2}\textbf{\buaa@thesistitleeng}}
    \end{minipage}
    \vskip100bp
    {\zihao{4}A Dissertation Submitted for the Degree of \buaa@appdegreeeng}\\
    \vskip110bp
    \begin{center}
    {\zihao{-3}
        \begin{tabular}{rl}
            \textbf{Candidate：}&\textbf{\buaa@thesisauthoreng}\\[2.5ex]
            \textbf{Supervisor：}&\textbf{\buaa@teacherdegreeeng ~~\buaa@teachereng}
        \end{tabular}}
    \end{center}
    %这个地方编译后老感觉不是居中的，不知为嘛，或许可以直接在前面加个固定长度而不用列表环境。
    %加入多余的center环境后编译又会报错，但出来的pdf是正确的，很诡异！
    \vskip125bp
    \zihao{3}{
    \buaa@schooleng \\[1.8ex]
    \buaa@universityeng , Beijing, China}
\end{center}
%说明：使用垂直橡皮长度经常需要加各种空格换行一类的，推荐还是使用vskip来替代
}

%++++++++++++本科生论文声明页++++++++++++
\newcommand{\announce}{%
\clearemptydoublepage
\vspace*{54bp}
\centerline{\bf\zihao{-2}\songti 本人声明}
\vskip27bp
\zihao{4}我声明，本论文及其研究工作是由本人在导师指导下独立完成的，在完成论文时所利用的一
切资料均已在参考文献中列出。\par
\vskip63bp
\zihao{-4}
\hfill    \begin{tabular}{cl}
        作者：&\buaa@thesisauthor\\
        签字：&~~~~\\
        时间：& \buaa@thesisdateyear~年~\buaa@thesisdatemonth ~月
        \end{tabular}
}

%+++++++++++++设置研究生论文的提名页+++++++++++
\newcommand{\timingye}{%
\clearemptydoublepage
\thispagestyle{empty}
\begin{flushleft}
    {\zihao{5}\heiti
    中图分类号：\buaa@category\\
    论\,\,文\,\,编\,\,号：\buaa@thesisID\\}
\end{flushleft}
\vskip130bp
\centerline{\zihao{-2}\heiti{\ziju{1.3}\buaa@appdegree 论文}}
\vskip120bp
\begin{center}
    \begin{minipage}[h]{.85\textwidth}
        \zihao{-1}\heiti\centering{\buaa@thesistitle}
    \end{minipage}
\end{center}
\vskip110bp
\begin{spacing}{2.2}
{\zihao{-4}\songti
\begin{tabular}[b]{llll}
    作\,\,\,\,者\,\,\,\,姓\,\,\,\,名 & \buaa@thesisauthor& 申请学位级别 & \buaa@appdegree \\
    指导教师姓名 & \buaa@teacher & 职\qquad\qquad 称 & \buaa@teacherdegree \\
    学\,\,\,\,科\,\,\,\,专\,\,\,\,业 & \buaa@major  & 研\,\,\,\,究\,\,\,\,方\,\,\,\,向 & \buaa@direction \\
    学\,\,习\,\,时\,\,间\,自 &\buaa@thesisbeginyear~~年~~\buaa@thesisbeginmonth~~月~~\buaa@thesisbeginday~~日\qquad & 起\qquad 至~  & \buaa@thesisendyear~~年~~\buaa@thesisendmonth~~月~~\buaa@thesisendday~~日止\qquad\\
    论文提交日期 &\buaa@commityear~~年~~\buaa@commitmonth~~月~~\buaa@commitday~~日\qquad & 论文答辩日期& \buaa@defenseyear~~年~~\buaa@defensemonth~~月~~\buaa@defenseday~~日~\qquad\\
    学位授予单位 & \buaa@university &学位授予日期 &\buaa@awardyear~~年~~\buaa@awardmonth~~月~~\buaa@awardday~~日~\qquad\\
\end{tabular}}
\end{spacing}
}
%+++++++++++研究生独创声明和使用授权书++++++++++++++
\newcommand{\creationanduse}{%
\clearemptydoublepage
\thispagestyle{empty}
\vspace*{50bp}
\centerline{\zihao{3}\heiti 关于学位论文的独创性声明}
\zihao{-4}\songti
~~\par
    本人郑重声明：所呈交的论文是本人在指导教师指导下独立进行研究工作所取得的成果，
论文中有关资料和数据是实事求是的。尽我所知，除文中已经加以标注和致谢外，
本论文不包含其他人已经发表或撰写的研究成果，也不包含本人或他人为获得北京航空航天大学
或其它教育机构的学位或学历证书而使用过的材料。与我一同工作的同志对研究所做的任何贡献
均已在论文中作出了明确的说明。\par
若有不实之处，本人愿意承担相关法律责任。\par
~~\\
{\zihao{5}学位论文作者签名：\uline{\hspace{6em}}\hspace{8em}日期：\hspace{7ex}年\hspace{5ex}月\hspace{5ex}日}
\vskip130bp
\centerline{\zihao{3}\heiti 学位论文使用授权书}
~~\par
    本人完全同意北京航空航天大学有权使用本学位论文（包括但不限于其印刷版和电子版），
使用方式包括但不限于：保留学位论文，按规定向国家有关部门（机构）送交学位论文，
以学术交流为目的赠送和交换学位论文，允许学位论文被查阅、借阅和复印，将学位论文的全部
或部分内容编入有关数据库进行检索，采用影印、缩印或其他复制手段保存学位论文。\par
保密学位论文在解密后的使用授权同上。\par
~~\\
{\zihao{5}
学位论文作者签名：\uline{\hspace{6em}}\hspace{8em}日期：\hspace{7ex}年\hspace{5ex}月\hspace{5ex}日\\
指导教师签名：\uline{\hspace{8em}}\hspace{8em}日期：\hspace{7ex}年\hspace{5ex}月\hspace{5ex}日}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 本科生任务书
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\ulinel}[2][]{\uline{\makebox[#1\textwidth][l]{#2}}} % 文字左对齐的下划线
\newcommand{\ulinec}[2][]{\uline{\makebox[#1\textwidth][c]{#2}}} % 文字居中的下划线
\newcounter{assign} % 任务书条目序号
\def\buaa@bachelor@assign@req@one{}
\def\buaa@bachelor@assign@req@two{}
\def\buaa@bachelor@assign@req@three{}
\def\buaa@bachelor@assign@req@four{}
\def\buaa@bachelor@assign@req@five{}
\newcommand{\assignReq}[5]{
    \def\buaa@bachelor@assign@req@one{#1}
    \def\buaa@bachelor@assign@req@two{#2}
    \def\buaa@bachelor@assign@req@three{#3}
    \def\buaa@bachelor@assign@req@four{#4}
    \def\buaa@bachelor@assign@req@five{#5}
} % 原始资料及设计要求
\def\buaa@bachelor@assign@work@one{}
\def\buaa@bachelor@assign@work@two{}
\def\buaa@bachelor@assign@work@three{}
\def\buaa@bachelor@assign@work@four{}
\def\buaa@bachelor@assign@work@five{}
\def\buaa@bachelor@assign@work@six{}
\newcommand{\assignWork}[6]{
    \def\buaa@bachelor@assign@work@one{#1}
    \def\buaa@bachelor@assign@work@two{#2}
    \def\buaa@bachelor@assign@work@three{#3}
    \def\buaa@bachelor@assign@work@four{#4}
    \def\buaa@bachelor@assign@work@five{#5}
    \def\buaa@bachelor@assign@work@six{#6}
} % 工作内容
\def\buaa@bachelor@assign@ref@one{}
\def\buaa@bachelor@assign@ref@two{}
\def\buaa@bachelor@assign@ref@three{}
\def\buaa@bachelor@assign@ref@four{}
\def\buaa@bachelor@assign@ref@five{}
\def\buaa@bachelor@assign@ref@six{}
\def\buaa@bachelor@assign@ref@seven{}
\def\buaa@bachelor@assign@ref@eight{}
\newcommand{\assignRef}[8]{
    \def\buaa@bachelor@assign@ref@one{#1}
    \def\buaa@bachelor@assign@ref@two{#2}
    \def\buaa@bachelor@assign@ref@three{#3}
    \def\buaa@bachelor@assign@ref@four{#4}
    \def\buaa@bachelor@assign@ref@five{#5}
    \def\buaa@bachelor@assign@ref@six{#6}
    \def\buaa@bachelor@assign@ref@seven{#7}
    \def\buaa@bachelor@assign@ref@eight{#8}
} % 参考文献
\def\buaa@bachelor@assign{
    \newpage
    \thispagestyle{empty}
    \CTEXnoindent
    \songti
    {
        \zihao{2}
        {
            \renewcommand{\CJKglue}{\hskip 1pt}
            \centerline{\hwxingkai{北京航空航天大学}}
        }
        {
            \renewcommand{\CJKglue}{\hskip 1.2pt}
            \centerline{本科生毕业设计（论文）任务书}
        }
    }
    {
        \linespread{2}
        \zihao{4}
        \stepcounter{assign}
        \Roman{assign}、毕业设计（论文）题目： \\[2.5ex]
        \ulinel{\buaa@thesistitle}
        \ulinel{}
        \ulinel{}
        \stepcounter{assign}
        \Roman{assign}、毕业设计（论文）使用的原始资料（数据）及设计技术要求： \\[2.5ex]
        \ulinel{\buaa@bachelor@assign@req@one}
        \ulinel{\buaa@bachelor@assign@req@two}
        \ulinel{\buaa@bachelor@assign@req@three}
        \ulinel{\buaa@bachelor@assign@req@four}
        \ulinel{\buaa@bachelor@assign@req@five}
        \stepcounter{assign}
        \Roman{assign}、毕业设计（论文）工作内容： \\[2.5ex]
        \ulinel{\buaa@bachelor@assign@work@one}
        \ulinel{\buaa@bachelor@assign@work@two}
        \ulinel{\buaa@bachelor@assign@work@three}
        \ulinel{\buaa@bachelor@assign@work@four}
        \ulinel{\buaa@bachelor@assign@work@five}
        \ulinel{\buaa@bachelor@assign@work@six}
        \newpage
        \thispagestyle{empty}
        \begin{spacing}{1.9}
        \zihao{4}
        \stepcounter{assign}
        \Roman{assign}、主要参考资料： \\[1.5ex]
        \ulinel{\buaa@bachelor@assign@ref@one}
        \ulinel{\buaa@bachelor@assign@ref@two}
        \ulinel{\buaa@bachelor@assign@ref@three}
        \ulinel{\buaa@bachelor@assign@ref@four}
        \ulinel{\buaa@bachelor@assign@ref@five}
        \ulinel{\buaa@bachelor@assign@ref@six}
        \ulinel{\buaa@bachelor@assign@ref@seven}
        \ulinel{\buaa@bachelor@assign@ref@eight}
        \ulinec[.28]{\buaa@school}学院\ulinec[.28]{\buaa@major}~专业类~\ulinec[.15]{\buaa@class}班 \\
        学生\ulinec[.3]{\buaa@thesisauthor} \\
        毕业设计(论文)时间：~~\ulinec[.1]{\buaa@thesisbeginyear}年\ulinec[.06]{\buaa@thesisbeginmonth}月\ulinec[.06]{\buaa@thesisbeginday}日至\ulinec[.1]{\buaa@thesisendyear}年\ulinec[.06]{\buaa@thesisendmonth}月\ulinec[.06]{\buaa@thesisendday}日 \\
        答辩时间：\ulinec[.16]{\buaa@defenseyear}年\ulinec[.08]{\buaa@defensemonth}月\ulinec[.08]{\buaa@defenseday}日 \\
        成\qquad 绩：\ulinec[.3]{} \\
        指导教师：\ulinec[.3]{} \\
        兼职教师或答疑教师（并指出所负责部分）：\\
        \ulinel{}
        \ulinel{}
        \ulinec[.28]{}系（教研室） 主任（签字）：\ulinec[.28]{} \\
        \vfill
        注：任务书应该附在已完成的毕业设计（论文）的首页。
        \end{spacing}
    }
    \CTEXindent
    \linespread{1.5}
}

% 首页重定义
\renewcommand{\maketitle}{%
\titlech
\ifbuaa@bachelor
    \buaa@bachelor@assign     %本科生论文任务书
    \frontmatter
    \announce
\else
    \titleeng                 %研究生英文封面
    \timingye                 %研究生题名页
    \creationanduse           %研究生独创性声明和使用授权书
    \clearemptydoublepage
    \frontmatter
\fi
\songti
\zihao{-4}
}
%++++++++++++设置首页完毕+++++++++++

%中文摘要
\newenvironment{cabstract}{%
\newpage
\vspace*{2bp}
\ifbuaa@bachelor
    \centerline{\zihao{3}\heiti\buaa@thesistitle}
    \vskip10bp
    \begin{flushright}
        {\begin{tabular}{cl}
            \ziju{2}学生：&\buaa@thesisauthor\\
            指导教师：&\buaa@teacher\\
        \end{tabular}}
    \end{flushright}
\fi
\centerline{\heiti\zihao{3} 摘~~~~要}
\ifbuaa@bachelor
    \vskip10bp
    \par
\else
    \vspace{5ex}
\fi
\setlength{\parindent}{24bp}
}{%
\vskip21bp
\ifbuaa@bachelor
    \noindent
\fi
{\heiti\zihao{-4} 关键词：}\buaa@ckeyword
}

%英文摘要
\newenvironment{eabstract}{%
\newpage
\vspace*{2bp}
\ifbuaa@bachelor
    \centerline{\bf\zihao{3}\buaa@thesistitleeng}
    \vskip10bp
    \begin{flushright}
        {\begin{tabular}{rl}
            Author：&\buaa@thesisauthoreng\\
            Tutor：&\buaa@teachereng\\
        \end{tabular}}
    \end{flushright}
\fi
\centerline{\bf\zihao{3} Abstract}
\ifbuaa@bachelor
    \vskip10bp
    \par
\else
    \vspace{5ex}
\fi
\setlength{\parindent}{24bp}
}{%
\vskip21bp
\ifbuaa@bachelor
    \noindent
\fi
{\bf\zihao{-4} Key words: }\buaa@ekeyword
}

%% 主要符号对照表
%% 来自于武汉理工大学论文模板，不知下面的间距设置是否会对别的地方有影响，待后续检验。
\newenvironment{denotation}{
  \chapter*{主要符号对照表} % no tocline
  \begin{list}{}%
    {\zihao{-4}
     \renewcommand\makelabel[1]{##1\hfil}
     \setlength{\labelwidth}{2.5cm} % 标签盒子宽度
     \setlength{\labelsep}{0.5cm} % 标签与列表文本距离
     \setlength{\itemindent}{0cm} % 标签缩进量
     \setlength{\leftmargin}{10em} % 左边界
     \setlength{\rightmargin}{0cm}
     \setlength{\parsep}{0cm} % 段落间距
     \setlength{\itemsep}{0cm} % 标签间距
    \setlength{\listparindent}{0cm} % 段落缩进量
    \setlength{\topsep}{0cm} % 标签与上文的间距
   }}{\end{list}}
%% 关于列表环境的定义和使用，可以参考http://blog.sina.com.cn/s/blog_5e16f1770100h0jt.html
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---      以下是写用户手册时需要用到的一新命令     ---
%---      可根据需要放到发行的模板中               ---
