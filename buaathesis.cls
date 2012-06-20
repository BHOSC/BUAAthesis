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


%===============需要用户输入的信息==================
\def\buaa@university{北京航空航天大学}
\def\buaa@universityeng{BeiHang Univerisity}
%或者是：Beijing University of Areonautics and Astronautics
\newcommand{\university}[2]{%
    \def\buaa@university{#1}
    \def\buaa@universityeng{#2}
}
%学校名称
\def\buaa@school{}
\def\buaa@schooleng{}
\newcommand{\school}[2]{%
    \def\buaa@school{#1}
    \def\buaa@schooleng{#2}
}
%学院
\def\buaa@thesisauthor{}
\def\buaa@thesisauthoreng{}
\newcommand{\thesisauthor}[2]{%
    \def\buaa@thesisauthor{#1}
    \def\buaa@thesisauthoreng{#2}
}
%作者
\def\buaa@thesistitle{}
\def\buaa@thesistitleeng{}
\newcommand{\thesistitle}[2]{%
    \def\buaa@thesistitle{#1}
    \def\buaa@thesistitleeng{#2}
}
%论文标题
\def\buaa@major{}
\def\buaa@majoreng{}
\newcommand{\major}[2]{%
    \def\buaa@major{#1}
    \def\buaa@majoreng{#2}
}
%专业
\def\buaa@teacher{}
\def\buaa@teachereng{}
\newcommand{\teacher}[2]{%
    \def\buaa@teacher{#1}
    \def\buaa@teachereng{#2}
}
%指导老师
\def\buaa@category{}
\newcommand{\category}[1]{%
    \def\buaa@category{#1}}
%中国分类号
\def\buaa@mibao{}
\newcommand{\mibao}[1]{%
    \def\buaa@mibao{#1}}
%保密等级
\def\buaa@thesisbeginyear{}
\def\buaa@thesisbeginmonth{}
\def\buaa@thesisbeginday{}
\newcommand{\thesisbegin}[3]{%
    \def\buaa@thesisbeginyear{#1}
    \def\buaa@thesisbeginmonth{#2}
    \def\buaa@thesisbeginday{#3}
}
%论文开始时间
\def\buaa@thesisendyear{}
\def\buaa@thesisendmonth{}
\def\buaa@thesisendday{}
\newcommand{\thesisend}[3]{%
    \def\buaa@thesisendyear{#1}
    \def\buaa@thesisendmonth{#2}
    \def\buaa@thesisendday{#3}
}
%论文结束时间
\def\buaa@defenseyear{}
\def\buaa@defensemonth{}
\def\buaa@defenseday{}
\newcommand{\defense}[3]{%
    \def\buaa@defenseyear{#1}
    \def\buaa@defensemonth{#2}
    \def\buaa@defenseday{#3}
}
%答辩时间
%+++++++++++++++本科生的信息+++++++++++++++++++
\def\buaa@class{}
\newcommand{\class}[1]{%
    \def\buaa@class{#1}}
%班级
\def\buaa@studentID{}
\newcommand{\studentID}[1]{%
    \def\buaa@studentID{#1}}
%学号
\def\buaa@thesisdateyear{}
\def\buaa@thesisdatemonth{}
\newcommand{\thesisdate}[2]{%
    \def\buaa@thesisdateyear{#1}
    \def\buaa@thesisdatemonth{#2}
}
%论文时间，用于论文首页
%+++++++++++++++研究生的信息++++++++++++++++++++
\def\buaa@direction{}
\newcommand{\direction}[1]{
    \def\buaa@direction{#1}}
%研究方向
\def\buaa@teacherdegree{}
\def\buaa@teacherdegreeeng{}
\newcommand{\teacherdegree}[2]{%
    \def\buaa@teacherdegree{#1}
    \def\buaa@teacherdegreeeng{#2}
}
%教师职称
\def\buaa@degree{}
\def\buaa@degreeeng{}
\newcommand{\degree}[2]{%
    \def\buaa@degree{#1}
    \def\buaa@degreeeng{#2}
}
%申请学位等级，这个信息不需要，通过class参数来判别即可，在后面写的时候注意
\def\buaa@thesisID{}
\newcommand{\thesisID}[1]{%
    \def\buaa@thesisID{#1}}
%论文编号
\def\buaa@commityear{}
\def\buaa@commitmonth{}
\def\buaa@commitday{}
\newcommand{\commit}[3]{%
    \def\buaa@commityear{#1}
    \def\buaa@commitmonth{#2}
    \def\buaa@commitday{#3}
}
%论文提交时间
\def\buaa@awardyear{}
\def\buaa@awardmonth{}
\def\buaa@awardday{}
\newcommand{\award}[3]{%
    \def\buaa@awardyear{#1}
    \def\buaa@awardmonth{#2}
    \def\buaa@awardday{#3}
}
%授予学位时间
%==========用户录入的信息到此完毕============

%--------------------页面设置------------------------------
\RequirePackage[top=3cm,bottom=3.2cm,left=3cm,right=2cm]{geometry}

%---------------------字体字号的一些设置-------------------
\setmainfont{Times New Roman}
\setCJKmainfont{宋体}
%设置主要字体为Times New Roman和宋体
\setCJKfamilyfont{hwxingkai}{STXingkai}
\newcommand{\hwxingkai}{\CJKfamily{hwxingkai}}
\newcommand{\chuyihao}{\fontsize{32pt}{\baselineskip}\selectfont}
%研究生论文的首页需要华文行楷和32号字
%其余的都可以用ctex自带的

%------------------图形表格的一些设置--------------------
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.eps,.ps,.jpg,.bmp}
\RequirePackage{pifont}%这个包主要是在“秘级”后加一个五角星

%---------------------间距的一些设置--------------------
\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{2em}
%\setlength{\parskip}{3pt plus1pt minus1pt}          %段落间距离，是否需要？
\setlength{\itemsep}{3pt plus1pt minus2pt}          % 连续items之间的距离.
\setlength{\floatsep}{10pt plus 3pt minus 2pt}      % 图形之间或图形与正文之间的距离
\setlength{\abovecaptionskip}{2pt plus1pt minus1pt} % 图形中的图与标题之间的距离
\setlength{\belowcaptionskip}{3pt plus1pt minus2pt} % 表格中的表与标题之间的距离

%--------------------页眉页脚的设置-----------------------
\RequirePackage{fancyhdr}
\ifbuaa@bachelor
\pagestyle{fancy}
\newbox\buaamark
\setbox\buaamark=\hbox{\includegraphics[width=45bp]{figure/buaamark.eps}}
\newcommand{\titletext}{\heiti\zihao{4} 北京航空航天大学毕业设计(论文)}
\newcommand{\titlesize}{210bp}
\lhead{\strut{\copy\buaamark}\strut}
\chead{\flushleft\hbox{\hskip 130bp\hbox to \titlesize{\zihao{4}\titletext}%
\hskip 90bp \zihao{5}\hbox to 40bp{\rmfamily\bf\upshape 第\hfil \thepage \hfil 页}}} %都是量出来的，不准确
\rhead{}
\lfoot{}\cfoot{}\rfoot{}
\renewcommand{\headrulewidth}{0.5bp} %页眉线宽度
%%页眉和下面的文本相距20pt.
\setlength{\headsep}{50pt}
%    这个本科生论文的页眉页脚一直是用的06年的那个，等有时间再改吧，现在这个太乱了
\else
\pagestyle{fancy}
\fancyhead{}
    \ifbuaa@doctor
        \fancyhead[CO]{\zihao{-5}\songti 北京航空航天大学博士学位论文\vspace{1.5mm}}
    \else
        \fancyhead[CO]{\zihao{-5}\songti 北京航空航天大学硕士学位论文\vspace{1.5mm}}
    \fi
\fancyhead[CE]{\zihao{-5}\songti\leftmark\vspace{1.5mm}}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.5bp} %页眉线宽度
\setlength{\headsep}{5mm}
\fi

%-----------------标题和目录的格式设置-----------------

%---------------------------文章中标题的格式设置(研究生)--------------------------%
\usepackage{titlesec,titletoc}
\titleformat{\chapter}[block]{\centering\zihao{3}\heiti}{第\,\thechapter\,章}{1em}{}
\titleformat{\section}[block]{\zihao{4}\heiti}{\thesection}{1em}{}
\titleformat{\subsection}[block]{\zihao{-4}\heiti}{\thesubsection}{1em}{}
\titlespacing*{\chapter}{0pt}{.5\baselineskip}{.5\baselineskip} % 标题间距
\titlespacing*{\section}{0pt}{.5\baselineskip}{.5\baselineskip}
\titlespacing*{\subsection}{0pt}{.5\baselineskip}{.5\baselineskip}

%------------------------目录中标题格式进行设置(研究生)---------------------------%
\titlecontents{chapter}[0pt]{\heiti\zihao{4}}{\thecontentslabel\ }{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{section}[2em]{\vspace{0.15\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}[\vspace{0.25\baselineskip}]
\titlecontents{subsection}[4em]{\vspace{0.1\baselineskip}\heiti\zihao{5}}{\thecontentslabel\ }{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}[\vspace{0.1\baselineskip}]




%++++++++++++++++++设置首页+++++++++++++++++++
%
\ifbuaa@bachelor
\renewcommand{\maketitle}{%
\zihao{2}\heiti
\vspace{3em}
\centerline{\buaa@thesistitle}


%本科生的论文首页还没处理好，有时间再写



\zihao{-4}
}

\else

%----研究生论文首页---------
%间距、字体字号还需要调整
\renewcommand{\maketitle}{%
\begin{titlepage}
  \begin{center}
    \zihao{5}\heiti
    \begin{flushleft}
      中图分类号：\buaa@category \hfill 密级\ding{73}~~\buaa@mibao \\
      论\,\,文\,\,编\,\,号：\buaa@thesisID\\
    \end{flushleft}
    \vspace{5em}
    \includegraphics[width=.55\textwidth]{figure/buaaname.eps}\\
    \vspace{3mm}
    \ifbuaa@master
      \zihao{0}\hwxingkai\centerline{博士学位论文}
    \else
        \ifbuaa@engineer
            \zihao{0}\hwxingkai\centerline{工程硕士学位论文}
        \else
        \ifbuaa@doctor
            \zihao{0}\hwxingkai\centerline{学士硕士学位论文}
        \fi
    \fi
    %这儿的连环嵌套很有问题，得再测试！
    \vspace{1em}%此处用绝对距离更好些？
    \begin{minipage}[h]{.85\textwidth}
      \zihao{0}\songti\centering{\buaa@thesistitle}
    \end{minipage}
    \newline
    
    \vspace{\stretch{1}}
%这个橡皮长度很容易出bug啊！如果可以的话还是不要用这种方式好了~

    \heiti\zihao{4}
    \begin{tabular}[b]{ll}
      作\,者\,姓\,名~~ & \buaa@thesisauthor \\
      学\,科\,专\,业~~ & \buaa@major \\
      指\,导\,教\,师~~ & \buaa@teacher \\
      培\,养\,院\,系~~ & \buaa@school \\
    \end{tabular}
  \end{center}
\end{titlepage}
}
\fi


%++++++++++++设置首页完毕+++++++++++












