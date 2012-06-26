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
%须先将其放在后面进行判断，此处就注意！
%如若需要其他的参数亦可参照如上格式写代码即可。
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
\LoadClass[cs4size,a4paper,fancyhdr]{ctexbook}[2007/10/19]
\bibliographystyle{BUAAbibsty}%参考文献格式

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
			\degree{本科生学位论文}{Bachelor}{本科}
			%其实上面那一行只用到第一个参数，用来设置pdf的信息时用到。
		\else
			\degree{学士硕士学位}{Master}{硕士}
		\fi
	\fi
\fi




%==========用户录入的信息到此完毕============


%---------------------字体字号的一些设置-------------------
%   设置主要字体为Times New Roman和宋体
%   研究生论文的首页需要华文行楷和32号字
%   其余的都可以用ctex自带的
%----------------------------------------------------------
\setmainfont{Times New Roman}
\setCJKmainfont{宋体}
\setCJKfamilyfont{hwxingkai}{STXingkai}
\newcommand{\hwxingkai}{\CJKfamily{hwxingkai}}
\newcommand{\xiaochuhao}{\fontsize{32pt}{\baselineskip}\selectfont}


%--------------------页面、页眉页脚的设置（具体间距还有待修正）-----------------------
\RequirePackage[top=3cm,bottom=2.5cm,left=3cm,right=2cm]{geometry}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
	\ifbuaa@bachelor
		%\newsavebox{\markbuaa}
		%\sbox{\markbuaa}{\includegraphics[width=45bp]{figure/buaamark.eps}}
		%<LaTeX插图指南>第十五章讲了为什么要这样做。但不顶用啊！！！
		\fancyhead[C]{%
		\includegraphics[width=45bp]{figure/buaamark.eps}\hspace{\stretch{1}}
		\raisebox{2ex}{\heiti\zihao{4}\buaa@university 毕业设计(论文)}\hspace{\stretch{1}}
		\raisebox{2ex}{\heiti\zihao{4}第\quad\thepage\quad 页}
		}
	\else
		\fancyhead[CO]{\zihao{-5}\songti\buaa@university\buaa@applydegree 学位论文\vspace{1.5mm}}
		\fancyhead[CE]{\zihao{-5}\songti\leftmark\vspace{1.5mm}}
		\fancyfoot[C]{\zihao{5}\thepage}
	\fi
\renewcommand{\headrulewidth}{0.5bp} %页眉线宽度
\ifbuaa@bachelor
	\setlength{\headsep}{45bp}
\else
	\setlength{\headsep}{5mm}
\fi
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
\titlespacing*{\chapter}{0pt}{.5\baselineskip}{.5\baselineskip} % 标题间距
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
				bookmarksnumbered,colorlinks,
				linkcolor=blue,citecolor=blue,
				urlcolor=blue,
				filecolor=black,
				bookmarksopen]{hyperref}
	\hypersetup{%
				pdftitle=BUAA thesis,
				pdfauthor={\buaa@thesisauthor },%这个pdf作者项设置有问题？编译结果一直不对！
				pdfsubject={北航-\buaa@appdegree 论文},
				pdfcreator={LaTeXed~By~BHOSC}
				}
				
\RequirePackage[sort&compress]{natbib}
	\bibpunct{[}{]}{,}{n}{}{}
\RequirePackage{hypernat}
	\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}
    %上面四行代码是06版中的，我也不懂，但使用上没有问题。
	
%------------------------图形表格的一些设置------------------------
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.eps,.ps,.jpg,.bmp}
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
	\renewcommand{\figurename}{图}
	\renewcommand{\tablename}{表}


%---------------------间距的一些设置--------------------
\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{2em}
%\setlength{\parskip}{3pt plus1pt minus1pt}          %段落间距离，是否需要？
\setlength{\itemsep}{3pt plus1pt minus2pt}          % 连续items之间的距离.
\setlength{\floatsep}{10pt plus 3pt minus 2pt}      % 图形之间或图形与正文之间的距离
\setlength{\abovecaptionskip}{2pt plus1pt minus1pt} % 图形中的图与标题之间的距离
\setlength{\belowcaptionskip}{3pt plus1pt minus2pt} % 表格中的表与标题之间的距离

%==================若干标题的汉化================%
\renewcommand{\contentsname}{目\qquad 录}
\renewcommand\listfigurename{插\ 图\ 目\ 录}
\renewcommand\listtablename{表\ 格\ 目\ 录}
\renewcommand\bibname{参\ 考\ 文\ 献}

%------------------其他一些设置---------------
\RequirePackage{ulem}               %比较容易加入下划线\uline{}
\newcommand{\filltable}[1]{\uline{~\hfill #1\hfill ~}} %带下划线单元格

\renewcommand{\frontmatter}{        %将frontmatter页码定义为大写罗马数字
\cleardoublepage
\@mainmatterfalse
\pagenumbering{Roman}
}




%++++++++++++++++++设置首页+++++++++++++++++++
%
\newcommand{\titlech}{
\ifbuaa@bachelor

\thispagestyle{empty}
%首页搞不定！真DT！
\vspace{5cm}
\centerline{\zihao{1}\heiti 本科生\buaa@thesistitle}

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
		\vspace{5em}
		\includegraphics[width=.55\textwidth]{figure/buaaname.eps}\\
		\vspace{3mm}
		\zihao{0}\hwxingkai\centerline{\buaa@appdegree 论文}
		\vspace{1em}%此处用绝对距离更好些？
		\begin{minipage}[h]{.85\textwidth}
			\xiaochuhao\songti\centering{\buaa@thesistitle}
		\end{minipage}   
		\vspace{\stretch{1}}
	%这个橡皮长度很容易出bug(下面的空白行删除的话就会有bug)啊！如果可以的话还是不要用这种方式好了~

		\heiti\zihao{4}
		\begin{tabular}[b]{ll}
			作\,者\,姓\,名~~ & \buaa@thesisauthor \\
			学\,科\,专\,业~~ & \buaa@major \\
			指\,导\,教\,师~~ & \buaa@teacher \\
			培\,养\,院\,系~~ & \buaa@school \\
		\end{tabular}
	\end{center}
\end{titlepage}
\fi
}

\newcommand{\titleeng}{%英文首页
\clearemptydoublepage
\thispagestyle{empty}%还是得定义一个空白的双页环境更好
\vspace*{\stretch{2}}
\begin{center}
	\begin{minipage}[h]{.85\textwidth}
		\zihao{-2}\centering\textbf{\buaa@thesistitleeng}
	\end{minipage}
	~~~\\
	\vspace{\stretch{2}}
	\zihao{4}A Dissertation Submitted for the Degree of \buaa@appdegreeeng\\
	\vspace{\stretch{4}}
	\zihao{-3}
	\begin{center}
		\begin{tabular}{rl}
			\textbf{Candidate：}&\textbf{\buaa@thesisauthoreng}\\[0.7ex]
			\textbf{Supervisor：}&\textbf{\buaa@teacherdegreeeng ~~\buaa@teachereng}
		\end{tabular}
	\end{center}
	%这个地方编译后老感觉不是居中的，不知为嘛，或许可以直接在前面加个固定长度而不用列表环境。
	%加入多余的center环境后编译又会报错，但出来的pdf是正确的，很诡异！
	\newline
	\vspace{\stretch{3}}
	\zihao{3}{
	\buaa@schooleng \\
	\buaa@universityeng , Beijing, China}
\end{center}
%说明：使用垂直橡皮长度经常需要加各种空格换行一类的，推荐还是使用vskip来替代
}

%++++++++++++本科生论文声明页++++++++++++
\newcommand{\announce}{%
\clearemptydoublepage
\vspace*{54bp}
\centerline{\bf\zihao{-2}本人声明}
\vskip27bp
\zihao{4}我声明，本论文及其研究工作是由本人在导师指导下独立完成的，在完成论文时所利用的一
切资料均已在参考文献中列出。\par
\vskip63bp
\zihao{-4}
\hfill	\begin{tabular}{cl}
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
	\zihao{5}\heiti
	中图分类号：\buaa@category\\
	论\,\,文\,\,编\,\,号：\buaa@thesisID\\
\end{flushleft}
\zihao{-2}
\vspace{\stretch{4}}
\begin{center}
	\heiti{\ziju{1.35}\buaa@appdegree 论文}
	\zihao{5}
	~~\\
	\vspace{\stretch{5}}
	\begin{minipage}[h]{.85\textwidth}
		\zihao{-1}\heiti\centering{\buaa@thesistitle}
	\end{minipage}
	\vspace{\stretch{5}}
\end{center}
\zihao{-4}\songti
\begin{tabular}[b]{llll}
	作\,\,\,\,者\,\,\,\,姓\,\,\,\,名 & \buaa@thesisauthor& 申请学位级别 & \buaa@appdegree \\
	指导教师姓名 & \buaa@teacher & 职\qquad\qquad 称 & \buaa@teacherdegree \\
	学\,\,\,\,科\,\,\,\,专\,\,\,\,业 & \buaa@major  & 研\,\,\,\,究\,\,\,\,方\,\,\,\,向 & \buaa@direction \\
	学\,\,习\,\,时\,\,间\,自 &\buaa@thesisbeginyear~~年~~\buaa@thesisbeginmonth~~月~~\buaa@thesisbeginday~~日\qquad & 起\qquad 至~  & \buaa@thesisendyear~~年~~\buaa@thesisendmonth~~月~~\buaa@thesisendday~~日止\qquad\\
	论文提交日期 &\buaa@commityear~~年~~\buaa@commitmonth~~月~~\buaa@commitday~~日\qquad & 论文答辩日期& \buaa@defenseyear~~年~~\buaa@defensemonth~~月~~\buaa@defenseday~~日~\qquad\\
	学位授予单位 & \buaa@university &学位授予日期 &\buaa@awardyear~~年~~\buaa@awardmonth~~月~~\buaa@awardday~~日~\qquad\\
\end{tabular}
}
%+++++++++++研究生独创声明和使用授权书++++++++++++++
\newcommand{\creationanduse}{%
\clearemptydoublepage
\thispagestyle{empty}
\vspace*{30bp}
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
\zihao{5}{学位论文作者签名：\uline{\hspace{6em}}\hspace{8em}日期：\hspace{7ex}年\hspace{5ex}月\hspace{5ex}日}
\vspace{90bp}
\newline
\centerline{\zihao{3}\heiti 学位论文使用授权书}
~~\par
	本人完全同意北京航空航天大学有权使用本学位论文（包括但不限于其印刷版和电子版），
使用方式包括但不限于：保留学位论文，按规定向国家有关部门（机构）送交学位论文，
以学术交流为目的赠送和交换学位论文，允许学位论文被查阅、借阅和复印，将学位论文的全部
或部分内容编入有关数据库进行检索，采用影印、缩印或其他复制手段保存学位论文。\par
保密学位论文在解密后的使用授权同上。\par
~~\\
\zihao{5}{
学位论文作者签名：\uline{\hspace{6em}}\hspace{8em}日期：\hspace{7ex}年\hspace{5ex}月\hspace{5ex}日\\
指导教师签名：\uline{\hspace{8em}}\hspace{8em}日期：\hspace{7ex}年\hspace{5ex}月\hspace{5ex}日}
}





\renewcommand{\maketitle}{%
\titlech
\ifbuaa@bachelor
%此处应该加入任务书
	\clearemptydoublepage
	\frontmatter
	\announce
\else
	\titleeng
	\timingye
	\creationanduse
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
	\vspace{3ex}
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
	\vspace{3ex}
\fi
\setlength{\parindent}{24bp}
}{%
\vskip21bp
\ifbuaa@bachelor
	\noindent
\fi
{\bf\zihao{-4} Key words: }\buaa@ekeyword
}










