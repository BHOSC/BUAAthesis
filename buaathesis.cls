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
%申请学位等级
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

\RequirePackage[top=3cm,bottom=3.2cm,left=3cm,right=2cm]{geometry}


\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.eps,.ps,.jpg,.bmp}
\RequirePackage{pifont}%这个包主要是在“秘级”后加一个五角星






\ifbuaa@master
\renewcommand{\contentsname}{\buaa@university 论文目录}
\fi

\ifbuaa@bachelor
\renewcommand{\contentsname}{\buaa@universityeng 论文目录}
\fi

\ifbuaa@engineer
\renewcommand{\contentsname}{\buaa@school 论文目录}
\fi

\ifbuaa@doctor
\renewcommand{\contentsname}{\buaa@schooleng 论文目录}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%以上四段为进行选择判断的示例，因为前面master默认为true
%所以务必将master的判断语句放在最前面
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%+++++++++++设置首页+++++++++++++
%
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
      \zihao{0}\kai\centerline{\buaa@degree 学位论文}%此处应该是华文行楷
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

%\ifbuaa@bachelor
%\renewcommand{\maketitle}{%






%}
%\fi
%++++++++++++设置首页完毕+++++++++++












