% !Mode:: "TeX:UTF-8"
%%%%% 'buaathesis.cls' %%%%% BEGIN
%%%%%%%%%% class clarification %%%%%%%%%% BEGIN
\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{buaathesis}
              [2012/07/06 v0.8
The LaTeX template for thesis of BUAA]
\typeout{Document Class `buaathesis' v0.8 by BHOSC (2012/07)}
%%%%%%%%%% class clarification %%%%%%%%%% END
%%%%%%%%%% class options %%%%%%%%%% BEGIN
%% 本模板自身包含五个选项
%% 前四个为对应学位类型，决定不同样式
%% 第五个为颜色选项，用于电子版的情况
\newif\ifbuaa@bachelor\buaa@bachelorfalse
\newif\ifbuaa@master\buaa@mastertrue
\newif\ifbuaa@engineer\buaa@engineerfalse
\newif\ifbuaa@doctor\buaa@doctorfalse
\newif\ifbuaa@color\buaa@colorfalse
\DeclareOption{bachelor}{\buaa@bachelortrue}
\DeclareOption{master}{\buaa@mastertrue}
\DeclareOption{engineer}{\buaa@engineertrue}
\DeclareOption{doctor}{\buaa@doctortrue}
\DeclareOption{color}{\buaa@colortrue}
%% 其余选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
%% 引用ctexbook及基本设置
\LoadClass[cs4size,a4paper,fancyhdr]{ctexbook}[2007/10/19]
%%%%%%%%%% class options %%%%%%%%%% END

%%%%%%%%%% custom settings %%%%%%%%%% BEGIN
%%%%%%%%%%%%%%% global settings %%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% font %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% font %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% color %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% color %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% page margin %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% page margin %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% space %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% space %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% global settings %%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% page level settings %%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% header & footer %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% header & footer %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% title %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% title %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% cross reference %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% cross reference %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% reference %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% reference %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% page level settings %%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% element level settings %%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% table %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% table %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% picture %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% picture %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% list %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% list %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% code %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% code %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% formula %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% formula %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% theorem %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% theorem %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% file directory %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% file directory %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% element level settings %%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% other settings %%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% underline %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% underline %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% other settings %%%%%%%%%%%%%%% END
%%%%%%%%%% custom settings %%%%%%%%%% END

%%%%%%%%%% custom pages %%%%%%%%%% BEGIN
%%%%%%%%%%%%%%% custom pages for common %%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% index %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% index %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% abstract %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% abstract %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% custom pages for common %%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% custom pages for bachelor %%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% announce %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% announce %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% assign %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% assign %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% custom pages for bachelor %%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% custom pages for master %%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% nominate %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% nominate %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% creation and use %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% creation and use %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%%%%%%% denotation %%%%%%%%%%%%%%%%%%%% BEGIN
%%%%%%%%%%%%%%%%%%%% denotation %%%%%%%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% custom pages for master %%%%%%%%%%%%%%% END
%%%%%%%%%% custom pages %%%%%%%%%% END

\bibliographystyle{buaathesis}%参考文献格式

%%%%%%%%%% user info %%%%%%%%%% BEGIN
%%%%%%%%%%%%%%% common user info %%%%%%%%%%%%%%% BEGIN
%%% 学校名称
\def\buaa@university{北京航空航天大学}
\def\buaa@universityeng{Beihang Univerisity}
\newcommand{\university}[2]{%
    \def\buaa@university{#1}
    \def\buaa@universityeng{#2}
}
%%% 学院
\def\buaa@school{}
\def\buaa@schooleng{}
\newcommand{\school}[2]{%
    \def\buaa@school{#1}
    \def\buaa@schooleng{#2}
}
%%% 专业
\def\buaa@major{}
\def\buaa@majoreng{}
\newcommand{\major}[2]{%
    \def\buaa@major{#1}
    \def\buaa@majoreng{#2}
}
%%% 论文标题
\def\buaa@thesistitle{}
\def\buaa@thesistitleeng{}
\newcommand{\thesistitle}[2]{%
    \def\buaa@thesistitle{#1}
    \def\buaa@thesistitleeng{#2}
}
%%% 作者
\def\buaa@thesisauthor{}
\def\buaa@thesisauthoreng{}
\newcommand{\thesisauthor}[2]{%
    \def\buaa@thesisauthor{#1}
    \def\buaa@thesisauthoreng{#2}
}
%%% 指导老师
\def\buaa@teacher{}
\def\buaa@teachereng{}
\newcommand{\teacher}[2]{%
    \def\buaa@teacher{#1}
    \def\buaa@teachereng{#2}
}
%%% 分类号
\def\buaa@category{}
\newcommand{\category}[1]{%
    \def\buaa@category{#1}
}
%%% 论文开始时间
\def\buaa@thesisbeginyear{}
\def\buaa@thesisbeginmonth{}
\def\buaa@thesisbeginday{}
\newcommand{\thesisbegin}[3]{%
    \def\buaa@thesisbeginyear{#1}
    \def\buaa@thesisbeginmonth{#2}
    \def\buaa@thesisbeginday{#3}
}
%%% 论文结束时间
\def\buaa@thesisendyear{}
\def\buaa@thesisendmonth{}
\def\buaa@thesisendday{}
\newcommand{\thesisend}[3]{%
    \def\buaa@thesisendyear{#1}
    \def\buaa@thesisendmonth{#2}
    \def\buaa@thesisendday{#3}
}
%%% 答辩时间
\def\buaa@defenseyear{}
\def\buaa@defensemonth{}
\def\buaa@defenseday{}
\newcommand{\defense}[3]{%
    \def\buaa@defenseyear{#1}
    \def\buaa@defensemonth{#2}
    \def\buaa@defenseday{#3}
}
%%% 中文摘要关键字
\def\buaa@ckeyword{}
\newcommand{\ckeyword}[1]{%
    \def\buaa@ckeyword{#1}}
%%% 英文摘要关键字
\def\buaa@ekeyword{}
\newcommand{\ekeyword}[1]{%
    \def\buaa@ekeyword{#1}}
%%% 学位
\def\buaa@appdegree{} % 中文首页
\def\buaa@appdegreeeng{} % 英文首页
\def\buaa@applydegree{} % 页眉页脚
\newcommand{\degree}[3]{%
    \def\buaa@appdegree{#1}
    \def\buaa@appdegreeeng{#2}
    \def\buaa@applydegree{#3}
}
\ifbuaa@doctor
    \degree{博士学位}{Doctor}{博士}
\else
    \ifbuaa@engineer
        \degree{专业硕士学位}{Master}{硕士}
    \else
        \ifbuaa@bachelor
            \degree{学士学位}{Bachelor}{学士}
        \else
            \degree{学术硕士学位}{Master}{硕士}
        \fi
    \fi
\fi
%%%%%%%%%%%%%%% common user info %%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% bachelor user info %%%%%%%%%%%%%%% BEGIN
%%% 班级
\def\buaa@class{}
\newcommand{\class}[1]{%
    \def\buaa@class{#1}
}
%%% 单位代码
\def\buaa@unicode{1006}
\newcommand{\unicode}[1]{%
    \def\buaa@unicode{#1}
}
%%% 学号
\def\buaa@studentID{}
\newcommand{\studentID}[1]{%
    \def\buaa@studentID{#1}
}
%%% 论文时间
\def\buaa@thesisdateyear{}
\def\buaa@thesisdatemonth{}
\newcommand{\thesisdate}[2]{%
    \def\buaa@thesisdateyear{#1}
    \def\buaa@thesisdatemonth{#2}
}
%%%%%%%%%%%%%%% bachelor user info %%%%%%%%%%%%%%% END
%%%%%%%%%%%%%%% master user info %%%%%%%%%%%%%%% BEGIN
%%% 保密等级
\def\buaa@mibao{}
\newcommand{\mibao}[1]{%
    \def\buaa@mibao{#1}
}
%%% 研究方向
\def\buaa@direction{}
\newcommand{\direction}[1]{
    \def\buaa@direction{#1}
}
%%% 导师职称
\def\buaa@teacherdegree{}
\def\buaa@teacherdegreeeng{}
\newcommand{\teacherdegree}[2]{%
    \def\buaa@teacherdegree{#1}
    \def\buaa@teacherdegreeeng{#2}
}
%%% 论文编号
\def\buaa@thesisID{}
\newcommand{\thesisID}[1]{%
    \def\buaa@thesisID{#1}
}
%%% 论文提交时间
\def\buaa@commityear{}
\def\buaa@commitmonth{}
\def\buaa@commitday{}
\newcommand{\commit}[3]{%
    \def\buaa@commityear{#1}
    \def\buaa@commitmonth{#2}
    \def\buaa@commitday{#3}
}
%%% 授予学位时间
\def\buaa@awardyear{}
\def\buaa@awardmonth{}
\def\buaa@awardday{}
\newcommand{\award}[3]{%
    \def\buaa@awardyear{#1}
    \def\buaa@awardmonth{#2}
    \def\buaa@awardday{#3}
}
%%%%%%%%%%%%%%% master user info %%%%%%%%%%%%%%% END
%%%%%%%%%% user info %%%%%%%%%% END

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

% 重定义table/tabular/tabularx环境，使表格内为5号字
% TODO(huxuan): 支持 longtable
\let\oldtable\table
\let\endoldtable\endtable
\renewenvironment{table}[1][h!]
{\oldtable[#1]\zihao{5}}
{\endoldtable}

\let\oldtabular\tabular
\let\endoldtabular\endtabular
\renewenvironment{tabular}[1][h!]
{\oldtabular[#1]\zihao{5}}
{\endoldtabular}

\RequirePackage{tabularx}
\let\oldtabularx\tabularx
\let\endoldtabularx\endtabularx
\renewenvironment{tabularx}[2]
{\zihao{5}\oldtabularx{#1}{#2}}
{\endoldtabularx}

%---------------------------文章中标题的格式设置--------------------------%
\CTEXsetup[
    format={\centering\zihao{3}\heiti},
    nameformat={},
    aftername={\quad},
    titleformat={},
    beforeskip={-.5\baselineskip},
    afterskip={\baselineskip},
]{chapter}
\CTEXsetup[
    aftername={\quad},
    beforeskip={.5\baselineskip},
    afterskip={.5\baselineskip},
]{section}
\CTEXsetup[
    format={\zihao{-4}\heiti},
    aftername={\quad},
    beforeskip={.5\baselineskip},
    afterskip={.5\baselineskip},
]{subsection}
\ifbuaa@bachelor
    \CTEXsetup[
        name={,},
        number={\arabic{chapter}},
    ]{chapter}
    \CTEXsetup[
        format={\zihao{-4}\heiti},
    ]{section}
\else
    \CTEXsetup[
        name={第,章},
        number={\chinese{chapter}},
    ]{chapter}
    \CTEXsetup[
        format={\zihao{4}\heiti},
    ]{section}
\fi

%------------------------目录中标题格式进行设置---------------------------%
\RequirePackage{titletoc}
\ifbuaa@bachelor
    \titlecontents{chapter}[0pt]{\heiti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
    \titlecontents{section}[2em]{\vspace{0.1\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
    \titlecontents{subsection}[4em]{\vspace{0.1\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\else
    \titlecontents{chapter}[0pt]{\heiti\zihao{4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
    \titlecontents{section}[2em]{\vspace{0.15\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}[\vspace{0.15\baselineskip}]
    \titlecontents{subsection}[4em]{\vspace{0.1\baselineskip}\heiti\zihao{5}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}[\vspace{0.1\baselineskip}]
\fi
%-------------------交叉引用和参考文献整理---------------------
\RequirePackage[xetex,unicode]{hyperref}
\ifbuaa@color
    \hypersetup{colorlinks}
\else
    \hypersetup{hidelinks}
\fi
\hypersetup{
    bookmarksnumbered,
    bookmarksopen,
    pdftitle={BUAA thesis},
    pdfauthor={BHOSC},
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
\graphicspath{figure/}
\RequirePackage{pifont} % “秘级”后的五角星

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

% 图片表格标题命令，主要用于混排
\newcommand\figcaption{\def\@captype{figure}\caption}
\newcommand\tabcaption{\def\@captype{table}\caption}

% 表格中的行合并
\RequirePackage{multirow}

%---------------------间距的一些设置--------------------
\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{2em}
\setlength{\floatsep}{10pt plus 3pt minus 2pt}      % 图形之间或图形与正文之间的距离
\setlength{\abovecaptionskip}{2pt plus1pt minus1pt} % 图形中的图与标题之间的距离
\setlength{\belowcaptionskip}{3pt plus1pt minus2pt} % 表格中的表与标题之间的距离

%-----------------定义item样式和间距---------------
\RequirePackage{enumitem}
\setlist{noitemsep}
\setlist[1,2]{labelindent=\parindent}
\setlist[enumerate,1]{label=\arabic*、}
\setlist[enumerate,2]{label=（\arabic*）}
\setlist{
    topsep=0pt,
    itemsep=0pt,
    partopsep=0pt,
    parsep=\parskip,
}

%-------------------数学公式及定理环境的设置---------------------
\RequirePackage{amsmath,amssymb,amsfonts,mathrsfs,bm}
\RequirePackage{txfonts}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\theoremsymbol{\ensuremath{\square}}
\newtheorem*{proof}{证明}
\theoremstyle{plain}
\theoremsymbol{}
\theoremseparator{：}
\newtheorem{assumption}{假设}[chapter]
\newtheorem{definition}{定义}[chapter]
\newtheorem{proposition}{命题}[chapter]
\newtheorem{lemma}{引理}[chapter]
\newtheorem{theorem}{定理}[chapter]
\newtheorem{axiom}{公理}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{exercise}{练习}[chapter]
\newtheorem{example}{例}[chapter]
\newtheorem{remark}{注释}[chapter]
\newtheorem{problem}{问题}[chapter]
\newtheorem{conjecture}{猜想}[chapter]
% 摘自武汉理工大学论文模板，具体待验证

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

% 展示文件目录
\RequirePackage{dirtree}
\ifbuaa@color
    \renewcommand*\DTstylecomment{\ttfamily\color{dkgreen}}
    \renewcommand*\DTstyle{\ttfamily\color{red}}
\fi
%-----------------代码环境定义和设置---------------
% 设置会用到的颜色
\RequirePackage{color}
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

% Listing 的设置请参考 http://en.wikibooks.org/wiki/LaTeX/Packages/Listings
\RequirePackage{listings}
\lstset{
    backgroundcolor=\color{white},
    basicstyle=\zihao{5}\ttfamily,
    columns=flexible,
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    frame=single,
    numbers=left,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    stepnumber=1,
    rulecolor=\color{black},
    tabsize=2,
    texcl=true,
    title=\lstname,
    escapeinside={\%*}{*)},
    extendedchars=false,
    mathescape=true,
    xleftmargin=3em,
    xrightmargin=3em,
}
\ifbuaa@color
    \lstset{
        numberstyle=\color{gray},
        keywordstyle=\color{blue},
        commentstyle=\color{dkgreen},
        stringstyle=\color{mauve},
    }
\else
    \lstset{
        numberstyle=\color{black},
        keywordstyle=\color{black},
        commentstyle=\color{black},
        stringstyle=\color{black},
    }
\fi
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

%%%%% 'buaathesis.cls' %%%%% END
