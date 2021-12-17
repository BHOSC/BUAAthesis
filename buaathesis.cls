% !Mode:: "TeX:UTF-8"
%%%%% 'buaathesis.cls' BEGIN

%%%%%%%%%% class clarification %%%%%%%%%%
% 模板声明

\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{buaathesis}
              [2020/03/05 v0.9
The LaTeX template for thesis of BUAA]
\typeout{Document Class `buaathesis' v0.9 by BHOSC (2020/03)}

%%%%%%%%%% class options %%%%%%%%%%
% 模板选项

% 本模板自身包含五个选项
% 前四个为对应学位类型，决定不同样式
% 第五个为颜色选项，用于电子版的情况
\newif\ifbuaa@bachelor\buaa@bachelorfalse
\newif\ifbuaa@master\buaa@masterfalse
\newif\ifbuaa@doctor\buaa@doctorfalse
\newif\ifbuaa@professional\buaa@professionalfalse
\newif\ifbuaa@classfied\buaa@classfiedfalse
\newif\ifbuaa@color\buaa@colorfalse
\newif\ifbuaa@twoteacher\buaa@twoteacherfalse
\newif\ifbuaa@ktreport\buaa@ktreportfalse
\DeclareOption{bachelor}{\buaa@bachelortrue}
\DeclareOption{master}{\buaa@mastertrue}
\DeclareOption{doctor}{\buaa@doctortrue}
\DeclareOption{professional}{\buaa@professionaltrue}
\DeclareOption{classfied}{\buaa@classfiedtrue}
\DeclareOption{color}{\buaa@colortrue}
\DeclareOption{twoteacher}{\buaa@twoteachertrue}
\DeclareOption{ktreport}{\buaa@ktreporttrue}
% 其余选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
% 引用ctexbook及基本设置
\LoadClass[zihao=-4,a4paper]{ctexbook}[2007/10/19]

%%%%%%%%%% global package %%%%%%%%%%
% 全局通用宏包

\RequirePackage{ifthen}

%%%%%%%%%% font %%%%%%%%%%
% 数学相关和字体设置

\RequirePackage{amsmath,amssymb,amsfonts,mathrsfs,bm}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage{txfonts}

%%%%%%%%%% hyphen %%%%%%%%%%
% For the `\hyp{}` command. Allow the user to insert `hyp{}` manually to
% adjust the line break when necessary.
\RequirePackage{hyphenat}

% 主要字体为Times New Roman和宋体
% 模板某些标题需要华文行楷和32号字
\setmainfont{Times New Roman}
% 不需要设置CJKmainfont，ctex 宏包已经很好的处理了
% 不仅设置了粗体为黑体，斜体为楷体，还兼容了winfonts和adobefonts
% 直接设置反而会在只有adobefonts的情况下报错
% \setCJKmainfont{宋体}
% 重新定义了一下宋体和黑体，让其能支持textbf
% 华文行楷、华文楷体同上
\let\songti\relax
\let\heiti\relax
\setCJKfamilyfont{songti}[AutoFakeBold = {2.17}]{SimSun}
\setCJKfamilyfont{heiti}[AutoFakeBold = {2.17}]{SimHei}
\setCJKfamilyfont{hwxingkai}[AutoFakeBold = {2.17}]{STXingkai}
\setCJKfamilyfont{hwkaiti}[AutoFakeBold = {2.17}]{STKaiti}
\newcommand{\songti}{\CJKfamily{songti}}
\newcommand{\heiti}{\CJKfamily{heiti}}
\newcommand{\hwxingkai}{\CJKfamily{hwxingkai}}
\newcommand{\hwkaiti}{\CJKfamily{hwkaiti}}

% 预定义的字体大小，以后用得着
\newcommand{\xiaochuhao}{\fontsize{32pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{26pt}{39pt}\selectfont}
\newcommand{\xiaoyi}{\fontsize{24pt}{36pt}\selectfont}
\newcommand{\erhao}{\fontsize{22pt}{33pt}\selectfont}
\newcommand{\xiaoer}{\fontsize{18pt}{27pt}\selectfont}
\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}
\newcommand{\xiaosan}{\fontsize{15pt}{22.5pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}
\newcommand{\xiaosi}{\fontsize{12pt}{18pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{15.75pt}\selectfont}
\newcommand{\xiaowu}{\fontsize{9pt}{13.5pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{11.25pt}\selectfont}

%%%%%%%%%% color %%%%%%%%%%
% 颜色设置

% 只用于电子版
\RequirePackage{color}
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

%%%%%%%%%% page margin %%%%%%%%%%
% 页面边距

\RequirePackage{geometry}
\newgeometry{
    top=30mm, bottom=25mm, left=30mm, right=20mm,
    headsep=5mm, includefoot
}
\savegeometry{bachelorgeometry}

% geometry for tasks pages for bachelor thesis, see also #270
\newgeometry{
    top=30mm, bottom=25mm, left=30mm, right=20mm,
    headsep=5mm
}
\savegeometry{bachelortaskgeometry}

\newgeometry{
    top=25mm, bottom=25mm, left=30mm, right=20mm,
    headsep=5mm, headheight=10mm, footskip=10mm,
}
\savegeometry{mastergeometry}

\ifbuaa@bachelor
    \loadgeometry{bachelorgeometry}
\else
    \loadgeometry{mastergeometry}
\fi

%%%%%%%%%% space %%%%%%%%%%
% 其他间距

\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{2em}
\setlength{\floatsep}{3pt plus 3pt minus 2pt}      % 图形之间或图形与正文之间的距离
\setlength{\abovecaptionskip}{10pt plus 1pt minus 1pt} % 图形中的图与标题之间的距离
\setlength{\belowcaptionskip}{3pt plus 1pt minus 2pt} % 表格中的表与标题之间的距离

%%%%%%%%%% header & footer %%%%%%%%%%
% 页眉页脚

% Force enter compat v3 mode when requires fancyhdr.
%
% There's chances after v3 that breaks BUAAThesis, see issue report:
%
%   https://github.com/BHOSC/BUAAthesis/issues/265
%
% and commit from fancyhdr
%
%   https://github.com/pietvo/fancyhdr/commit/00a7445aec70d3246de8faf108900d06e9caea1b
%
% The fix is tricky, but I think it is the best option we currently have...
%
\RequirePackage{fancyhdr}
\newif\iff@nch@compatViii
\let\f@nch@gbl\relax
\let\f@nch@gbl\global
    \f@nch@compatViiitrue

\fancypagestyle{frontmatter}{
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
    \fancyhf{}
    \fancyfoot[C]{\thepage}
}
\fancypagestyle{mainmatter}{
    \fancyhead{}
    \fancyfoot{}
    \ifbuaa@bachelor
        \ifbuaa@ktreport
            \fancyhead[C]{\zihao{-5}\hwkaiti
                \buaa@degreehead 学位论文\buaa@ktclass\vspace{1.5mm}
            }
            \fancyfoot[C]{
                \hspace{1.5mm}
                \hwkaiti\zihao{-5}\buaa@university\buaa@school 学院
                \hfill\hfill
                \songti\zihao{-5}$\cdot$\quad\thepage\quad$\cdot$
                \hspace{1.5mm}
            }
            % 本科开题报告有页脚线
            \renewcommand{\footrulewidth}{0.4bp}
        \else
            \fancyhead[C]{
                \includegraphics[width=37bp]{figure/buaamark.pdf}\hfill
                \raisebox{2ex}{\heiti\zihao{4}\buaa@university 毕业设计(论文)}\hfill
                \raisebox{2ex}{\songti\zihao{5}第\quad\thepage\quad 页}
            }
        \fi
    \else
        \ifbuaa@ktreport
            % 研究生开题报告/文献综述，与本科生格式基本一致
            \fancyhead[C]{\zihao{-5}\hwkaiti
                \buaa@degreehead 学位论文\buaa@ktclass\vspace{1.5mm}
            }
            \fancyfoot[C]{
                \hspace{1.5mm}
                \hwkaiti\zihao{-5}\buaa@university\buaa@school 学院
                \hfill\hfill
                \songti\zihao{-5}$\cdot$\quad\thepage\quad$\cdot$
                \hspace{1.5mm}
            }
            % 研究生开题报告有页脚线
            \renewcommand{\footrulewidth}{0.4bp}
        \else
            \if@twoside
                \fancyhead[CO]{\zihao{-5}\songti
                    \buaa@university\buaa@degreehead 学位论文\vspace{1.5mm}
                }
                \fancyhead[CE]{\zihao{-5}\songti\leftmark\vspace{1.5mm}}
            \else
                \fancyhead[C]{\zihao{-5}\songti
                    \ifthenelse{\isodd{\value{page}}}
                        {\buaa@university\buaa@degreehead 学位论文}
                        {\leftmark}
                    \vspace{1.5mm}
                }
            \fi
            \fancyfoot[C]{\zihao{5}\thepage}
        \fi
    \fi

    \renewcommand{\headrulewidth}{0.5bp} % 页眉线宽度
}

\fancypagestyle{plain}{
    \pagestyle{fancy}
}

%%%%%%%%%% title %%%%%%%%%%
% 标题

% 汉化
\renewcommand{\contentsname}{\heiti\zihao{-2}\bfseries 目\qquad 录}
\renewcommand\listfigurename{\heiti\zihao{-2}\bfseries 插\ 图\ 目\ 录}
\renewcommand\listtablename{\heiti\zihao{-2}\bfseries 表\ 格\ 目\ 录}
\renewcommand\bibname{参\ 考\ 文\ 献}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}

% 格式
\ctexset{
    chapter={
        format={\centering\zihao{3}\heiti},
        nameformat={},
        aftername={\quad},
        titleformat={},
        beforeskip={-.5\baselineskip},
        afterskip={\baselineskip},
    },
    section={
        aftername={\quad},
        beforeskip={.5\baselineskip},
        afterskip={.5\baselineskip},
    },
    subsection={
        format={\zihao{-4}\heiti},
        aftername={\quad},
        beforeskip={.5\baselineskip},
        afterskip={.5\baselineskip},
    },
}

\ifbuaa@bachelor
    \ctexset{
        chapter={
            name={,},
            number={\arabic{chapter}},
        },
        section={
            format={\zihao{-4}\heiti},
        },
    }
\else
    \ctexset{
        chapter={
            name={第,章},
            number={\chinese{chapter}},
        },
        section={
            format={\zihao{4}\heiti},
        },
    }
\fi

%%%%%%%%%% contents %%%%%%%%%%
% 目录

\RequirePackage{titletoc}
\ifbuaa@bachelor
    \titlecontents{chapter}[0pt]{\heiti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
    \titlecontents{section}[2em]{\vspace{0.1\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
    \titlecontents{subsection}[4em]{\vspace{0.1\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\else
    \titlecontents{chapter}[0pt]{\vspace{-0.25\baselineskip}\heiti\zihao{4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}{\zihao{-4}\contentspage}}[\vspace{0.07\baselineskip}]
    \titlecontents{section}[2em]{\songti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}{\zihao{-4}\contentspage}}[\vspace{0.1\baselineskip}]
    \titlecontents{subsection}[4em]{\vspace{-0.2\baselineskip}\songti\zihao{5}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}{\zihao{-4}\contentspage}}[\vspace{0.1\baselineskip}]
\fi

% 取消图片、表格目录中的章节空格
\newcommand*{\noaddvspace}{\renewcommand*{\addvspace}[1]{}}
\addtocontents{lof}{\protect\noaddvspace}
\addtocontents{lot}{\protect\noaddvspace}

%表目录图目录的格式设置
%表目录与图目录数字前增加“表”与“图”字，并且使目录行间距与section行间距一致

\titlecontents{figure}[0pt]{\vspace{0.15\baselineskip}\songti\zihao{-4}}{\makebox[3em][l]{图~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}[\vspace{0.15\baselineskip}]

\titlecontents{table}[0pt]{\vspace{0.15\baselineskip}\songti\zihao{-4}}{\makebox[3em][l]{表~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}[\vspace{0.15\baselineskip}]

%%%%%%%%%% cross reference %%%%%%%%%%
% 交叉引用

\RequirePackage[xetex,unicode]{hyperref}
\ifbuaa@color
    \hypersetup{colorlinks}
\else
    \hypersetup{hidelinks}
\fi
\ifbuaa@ktreport
    \hypersetup{
        bookmarksnumbered,
        bookmarksopen,
        pdftitle={BUAA thesis},
        pdfauthor={BHOSC},
        pdfsubject={北航毕业设计开题报告/文献综述},
        pdfcreator={LaTeXed~By~BHOSC}
    }
\else
    \hypersetup{
        bookmarksnumbered,
        bookmarksopen,
        pdftitle={BUAA thesis},
        pdfauthor={BHOSC},
        pdfsubject={北航毕业设计论文},
        pdfcreator={LaTeXed~By~BHOSC}
    }
\fi

%%%%%%%%%% reference %%%%%%%%%%
% 参考文献
\RequirePackage[sort&compress]{natbib}
\bibpunct{[}{]}{,}{n}{}{}
\setlength{\bibsep}{0pt}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

%%%%%%%%%% table %%%%%%%%%%
% 表格

% 设置三线表格的上下边为粗实线
\RequirePackage{booktabs}

% 长表格
\RequirePackage{longtable}

% 表格中的行合并
\RequirePackage{multirow}

% 重定义table/tabular/tabularx环境，使表格内为5号字
% TODO(huxuan): 支持 longtable
\let\oldtable\table
\let\endoldtable\endtable
\renewenvironment{table}[1][h!]
{\renewcommand{\arraystretch}{1.5}
\oldtable[#1]\zihao{5}}
{\renewcommand{\arraystretch}{1}
\endoldtable}

\let\oldtabular\tabular
\let\endoldtabular\endtabular
\renewenvironment{tabular}[1][h!]
{\renewcommand{\arraystretch}{1.5}
\oldtabular[#1]\zihao{5}}
{\renewcommand{\arraystretch}{1}
\endoldtabular}

\RequirePackage{tabularx}
\let\oldtabularx\tabularx
\let\endoldtabularx\endtabularx
\renewenvironment{tabularx}[2]
{\renewcommand{\arraystretch}{1.5}
\zihao{5}\oldtabularx{#1}{#2}}
{\renewcommand{\arraystretch}{1}
\endoldtabularx}


\RequirePackage{array}

%%%%%%%%%% picture %%%%%%%%%%
% 图片

\RequirePackage{graphicx}
\graphicspath{{figure/}}
\RequirePackage{pifont} % “秘级”后的五角星
\RequirePackage{subfigure}

%%%%%%%%%% list %%%%%%%%%%
% 列表

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

%%%%%%%%%% code %%%%%%%%%%
% 代码

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

% 重命名Listings标题头
\renewcommand{\lstlistingname}{代码}

%%%%%%%%%% theorem %%%%%%%%%%
% 定理

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

%%%%%%%%%% file directory %%%%%%%%%%
% 文件目录

\RequirePackage{dirtree}
\ifbuaa@color
    \renewcommand*\DTstylecomment{\ttfamily\color{dkgreen}}
    \renewcommand*\DTstyle{\ttfamily\color{red}}
\fi

%%%%%%%%%% caption %%%%%%%%%%
% 图表标题

\RequirePackage{caption}
\DeclareCaptionFormat{bachelorfigure}{\songti\zihao{5}{#1\textrm{#2}#3}}
\DeclareCaptionFormat{bachelortable}{\heiti\bf\zihao{5}{#1\textrm{#2}#3}}
\DeclareCaptionFormat{bachelorlstlisting}{\songti\bf\zihao{5}{#1\textrm{#2}#3}}
\DeclareCaptionFormat{masterfigure}{\bf\songti\zihao{5}{#1\textrm{#2}#3}}
\DeclareCaptionFormat{mastertable}{\bf\songti\zihao{5}{#1\textrm{#2}#3}}
\DeclareCaptionFormat{masterlstlisting}{\bf\songti\zihao{5}{#1\textrm{#2}#3}}
\ifbuaa@bachelor
    % 本科无论是否是开题报告，图表序号都和章节有关
    \captionsetup[figure]{format=bachelorfigure,labelsep=quad}
    \captionsetup[table]{format=bachelortable,labelsep=quad}
    \captionsetup[lstlisting]{format=bachelorlstlisting,labelsep=quad}
    \renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
    \renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
    \renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}
\else
    % ktreport 中图标序号跟章节相关
    \ifbuaa@ktreport
        \captionsetup[figure]{format=masterfigure,labelsep=quad}
        \captionsetup[table]{format=mastertable,labelsep=quad}
        \captionsetup[lstlisting]{format=masterlstlisting,labelsep=quad}
        \renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
        \renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
        \renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}
    \else
        \RequirePackage{remreset}
        \@removefromreset{table}{chapter}
        \@removefromreset{figure}{chapter}
        %使图表的标号与章节无关
        \captionsetup[figure]{format=masterfigure,labelsep=quad}
        \captionsetup[table]{format=mastertable,labelsep=quad}
        \captionsetup[lstlisting]{format=masterlstlisting,labelsep=quad}
        \renewcommand{\thefigure}{\arabic{figure}}
        \renewcommand{\thetable}{\arabic{table}}
        \renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}
    \fi
\fi

% Fix subfigure reference bug
\let\p@subfigure=\thefigure

% 图片表格标题命令，主要用于混排
\newcommand\figcaption{\def\@captype{figure}\caption}
\newcommand\tabcaption{\def\@captype{table}\caption}

%%%%%%%%%% other settings %%%%%%%%%%
% 杂项

% 设置<附录>的图表编号与当前附录章号关联
\newcommand{\rmrelation}{
    % 图、表、公式编号随 chapter 清零
    \@addtoreset{figure}{chapter}
    \@addtoreset{table}{chapter}
    \@addtoreset{equation}{chapter}
    %图、表、公式编号章节关联
    \renewcommand{\thefigure}{\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
    \renewcommand{\thetable}{\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
    \renewcommand{\theequation}{\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
}
\let\oldappendix\appendix
\renewcommand{\appendix}{
    \oldappendix\rmrelation
}

% 下划线
\RequirePackage{ulem}

% 设置行距
\RequirePackage{setspace}

% 正文前的页码设置位大写罗马数字
\renewcommand{\frontmatter}{
    \cleardoublepage
    \@mainmatterfalse
    \ifbuaa@bachelor
        \pagenumbering{Roman}
    \else
        \pagenumbering{roman}
    \fi
}

% 保证偶数页结束章节
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
    \fi
}

%%%%%%%%%% index %%%%%%%%%%
% 首页

% 本科生首页的右上角和底部的填写内容居中
% cvrtc : CoVer - Right  - Top    - Center
% cvcbc : CoVer - Center - Bottom - Center
\newcommand{\ulinecvrtc}[1]{\uline{\makebox[9em][c]{\bf #1}}}
\newcommand{\ulinecvcbc}[1]{\uline{\makebox[14em][c]{#1}}}

% 中文首页
\newcommand{\titlech}{
    \ifbuaa@bachelor
        \ifbuaa@ktreport
            \begin{titlepage}
                % 第二个()里的参数表示左移35pt，下移55pt
                \hfill
                \vskip 45bp
                \begin{center}
                    \includegraphics[width=310bp]{figure/buaaname.pdf}
                    ~~\\
                    \vskip 60bp
                    ~~\\
                    \centerline{\yihao\heiti \textbf{\buaa@degree 论文\buaa@ktclass}}
                    ~~\\
                    \vskip 60bp
                    ~~\\
                    {
                        \zihao{-3}\heiti
                        \ifbuaa@twoteacher
                            \begin{tabular}{c p{0.55\textwidth}<{\raggedright}}
                                \hwkaiti \textbf{论文题目}  : &\hwkaiti\buaa@thesistitle\\[.4ex]
                                \hwkaiti \textbf{专~~~~~~~~业}  : &\hwkaiti\buaa@major\\[.4ex]
                                \hwkaiti \textbf{本~~科~~生}  : &\hwkaiti\buaa@thesisauthor\\[.4ex]
                                \hwkaiti \textbf{学~~~~~~~~号}  : &\hwkaiti\buaa@studentID\\[.4ex]
                                \hwkaiti \textbf{指导教师}  : &\hwkaiti\buaa@teacher \quad \buaa@subteacher\\
                            \end{tabular}
                        \else
                            \begin{tabular}{c p{0.55\textwidth}<{\raggedright}}
                                \hwkaiti \textbf{论文题目}  : &\hwkaiti\buaa@thesistitle\\[.4ex]
                                \hwkaiti \textbf{专~~~~~~~~业}  : &\hwkaiti\buaa@major\\[.4ex]
                                \hwkaiti \textbf{本~~科~~生}  : &\hwkaiti\buaa@thesisauthor\\[.4ex]
                                \hwkaiti \textbf{学~~~~~~~~号}  : &\hwkaiti\buaa@studentID\\[.4ex]
                                \hwkaiti \textbf{指导教师}  : &\hwkaiti\buaa@teacher\\
                            \end{tabular}
                        \fi
                    }
                    ~~\\
                    \vskip 75bp
                    ~~\\
                    \centerline{\heiti\sanhao\textbf{\buaa@university\buaa@school 学院}}
                    \vskip 20bp
                    \centerline{\heiti\zihao{-3}\buaa@thesisdateyear ~~年~~\buaa@thesisdatemonth ~~月}
                \end{center}
            \end{titlepage}
        \else
            \begin{titlepage}
                % 第二个()里的参数表示左移35pt，下移55pt
                \begin{picture}(0,0)(35,55)
                    \includegraphics[width=90pt]{figure/buaamark.pdf}
                \end{picture}
                \hfill
                \raisebox{-.2cm}[0pt][0pt]{
                    \zihao{5}\heiti
                    \begin{tabular}{c}
                        单位代码~\ulinecvrtc{\bf\buaa@unicode}\\[.1ex]
                        学\qquad 号~\ulinecvrtc{\bf\buaa@studentID}\\[.1ex]
                        分~~类~~号~\ulinecvrtc{\bf\buaa@category}\\
                    \end{tabular}
                }
                \vskip 95bp
                \begin{center}
                    \includegraphics[width=360bp]{figure/buaaname.pdf}
                    \vskip 45bp
                    \centerline{\zihao{-0}\heiti 毕业设计(论文)}
                    ~~\\
                    \vspace*{\stretch{4}}
                    \begin{minipage}[h]{.8\textwidth}
                        \centering{\heiti\zihao{2}\buaa@thesistitle}
                    \end{minipage}
                    \vskip 20bp
                    \begin{minipage}[h]{.75\textwidth}
                        \centering{\heiti\zihao{3}\buaa@thesissubtitle}
                    \end{minipage}
                    \vspace*{\stretch{3}}
                    ~~\\
                    {
                        \zihao{-3}\heiti
                        \ifbuaa@twoteacher
                            \begin{tabular}{cc}
                                学~~~院~~~名~~~称~~&\ulinecvcbc{\buaa@school 学院}\\[.4ex]
                                专~~~业~~~名~~~称~~&\ulinecvcbc{\buaa@major 专业}\\[.4ex]
                                学~~~生~~~姓~~~名~~&\ulinecvcbc{\buaa@thesisauthor}\\[.4ex]
                                指~~~导~~~教~~~师~~&\ulinecvcbc{\buaa@teacher \quad \buaa@subteacher}\\
                            \end{tabular}
                        \else
                            \begin{tabular}{cc}
                                学~~~院~~~名~~~称~~&\ulinecvcbc{\buaa@school 学院}\\[.4ex]
                                专~~~业~~~名~~~称~~&\ulinecvcbc{\buaa@major 专业}\\[.4ex]
                                学~~~生~~~姓~~~名~~&\ulinecvcbc{\buaa@thesisauthor}\\[.4ex]
                                指~~~导~~~教~~~师~~&\ulinecvcbc{\buaa@teacher}\\
                            \end{tabular}
                        \fi
                    }
                    \vskip 60bp
                    \centerline{\heiti\zihao{-3}\buaa@thesisdateyear ~~年~~\buaa@thesisdatemonth ~~月}
                \end{center}
            \end{titlepage}
        \fi
    \else
        \ifbuaa@ktreport
            \begin{titlepage}
                % 第二个()里的参数表示左移35pt，下移55pt
                \hfill
                \vskip 45bp
                \begin{center}
                    \includegraphics[width=310bp]{figure/buaaname.pdf}
                    ~~\\
                    \vskip 60bp
                    ~~\\
                    \centerline{\yihao\heiti \textbf{\buaa@degree 论文\buaa@ktclass}}
                    ~~\\
                    \vskip 60bp
                    ~~\\
                    {
                        \zihao{-3}\heiti
                        \ifbuaa@master
                            \ifbuaa@twoteacher
                                \begin{tabular}{c p{0.55\textwidth}<{\raggedright}}
                                    \hwkaiti \textbf{题~~~~~~~~目}  : &\hwkaiti\buaa@thesistitle\\[.4ex]
                                    \hwkaiti \textbf{专~~~~~~~~业}  : &\hwkaiti\buaa@major\\[.4ex]
                                    \hwkaiti \textbf{研究方向}  : &\hwkaiti\buaa@direction\\[.4ex]
                                    \hwkaiti \textbf{研~~究~~生}  : &\hwkaiti\buaa@thesisauthor\\[.4ex]
                                    \hwkaiti \textbf{学~~~~~~~~号}  : &\hwkaiti\buaa@studentID\\[.4ex]
                                    \hwkaiti \textbf{指导教师}  : &\hwkaiti\buaa@teacher \quad \buaa@subteacher\\
                                \end{tabular}
                            \else
                                \begin{tabular}{c p{0.55\textwidth}<{\raggedright}}
                                    \hwkaiti \textbf{题~~~~~~~~目}  : &\hwkaiti\buaa@thesistitle\\[.4ex]
                                    \hwkaiti \textbf{专~~~~~~~~业}  : &\hwkaiti\buaa@major\\[.4ex]
                                    \hwkaiti \textbf{研究方向}  : &\hwkaiti\buaa@direction\\[.4ex]
                                    \hwkaiti \textbf{研~~究~~生}  : &\hwkaiti\buaa@thesisauthor\\[.4ex]
                                    \hwkaiti \textbf{学~~~~~~~~号}  : &\hwkaiti\buaa@studentID\\[.4ex]
                                    \hwkaiti \textbf{指导教师}  : &\hwkaiti\buaa@teacher\\
                                \end{tabular}
                            \fi
                        \else
                            \ifbuaa@twoteacher
                                \begin{tabular}{c p{0.55\textwidth}<{\raggedright}}
                                    \hwkaiti \textbf{题~~~~~~~~目}  : &\hwkaiti\buaa@thesistitle\\[.4ex]
                                    \hwkaiti \textbf{专~~~~~~~~业}  : &\hwkaiti\buaa@major\\[.4ex]
                                    \hwkaiti \textbf{研究方向}  : &\hwkaiti\buaa@direction\\[.4ex]
                                    \hwkaiti \textbf{博~~士~~生}  : &\hwkaiti\buaa@thesisauthor\\[.4ex]
                                    \hwkaiti \textbf{学~~~~~~~~号}  : &\hwkaiti\buaa@studentID\\[.4ex]
                                    \hwkaiti \textbf{指导教师}  : &\hwkaiti\buaa@teacher \quad \buaa@subteacher\\
                                \end{tabular}
                            \else
                                \begin{tabular}{c p{0.55\textwidth}<{\raggedright}}
                                    \hwkaiti \textbf{题~~~~~~~~目}  : &\hwkaiti\buaa@thesistitle\\[.4ex]
                                    \hwkaiti \textbf{专~~~~~~~~业}  : &\hwkaiti\buaa@major\\[.4ex]
                                    \hwkaiti \textbf{研究方向}  : &\hwkaiti\buaa@direction\\[.4ex]
                                    \hwkaiti \textbf{博~~士~~生}  : &\hwkaiti\buaa@thesisauthor\\[.4ex]
                                    \hwkaiti \textbf{学~~~~~~~~号}  : &\hwkaiti\buaa@studentID\\[.4ex]
                                    \hwkaiti \textbf{指导教师}  : &\hwkaiti\buaa@teacher\\
                                \end{tabular}
                            \fi
                        \fi
                    }
                    ~~\\
                    \vskip 75bp
                    ~~\\
                    \centerline{\heiti\sanhao\textbf{\buaa@university\buaa@school 学院}}
                    \vskip 20bp
                    \centerline{\heiti\zihao{-3}\buaa@thesisdateyear ~~年~~\buaa@thesisdatemonth ~~月}
                \end{center}
            \end{titlepage}
        \else
            \begin{titlepage}
                \begin{center}
                    \begin{spacing}{1.5}
                        {
                            \zihao{5}\heiti\bfseries
                            \begin{flushleft}
                                中图分类号：\buaa@category  \\
                                论\,\,文\,\,编\,\,号：\buaa@thesisID\\
                                \ifbuaa@classfied
                                    \buaa@clevel\ding{73}~~\buaa@climit \\
                                \else
                                    \vskip 20bp
                                \fi
                            \end{flushleft}
                        }
                        \vskip 60bp
                        \includegraphics[width=.5\textwidth]{figure/buaaname_ch.pdf}
                        \vskip 30bp
                        \centerline{\zihao{0}\ziju{0.2}\hwxingkai\buaa@degree 论文}
                        ~~\\
                        %\vskip 100bp
                        \vspace*{\stretch{5}}
                        \begin{minipage}[h]{.85\textwidth}
                            \begin{spacing}{3}
                                % actually, it should be 1.5, but I think 3 will be prefect.
                                \centering{\xiaochuhao\songti\bfseries\buaa@thesistitle}
                            \end{spacing}
                        \end{minipage}
                        %\vspace{5bp}
                        % the space between title and subtitle, however, it seems doesn't work.
                        \begin{minipage}[h]{.75\textwidth}
                            \begin{spacing}{1.5}
                                \centering{\heiti\zihao{3}\buaa@thesissubtitle}
                            \end{spacing}
                        \end{minipage}
                        \vspace*{\stretch{4}}
                        ~~\\
                        %\vskip 80bp
                        {
                            \heiti\zihao{4}\ziju{0.2}
                            \ifbuaa@twoteacher
                                \begin{tabular}[b]{ll}
                                    作~~者~~姓~~名~~ & \buaa@thesisauthor\\[.3ex]
                                    \ifbuaa@professional
                                        专~~业~~名~~称~~ & \buaa@major\\[.3ex]
                                    \else
                                        学~~科~~专~~业~~ & \buaa@major\\[.3ex]
                                    \fi
                                    指~~导~~教~~师~~ & \buaa@teacher\quad\buaa@teacherdegree\\[.3ex]
                                    ~~ & \buaa@subteacher\quad\buaa@subteacherdegree\\[.3ex]
                                    培~~养~~学~~院~~ & \buaa@school 学院\\
                                \end{tabular}
                            \else
                                \begin{tabular}[b]{ll}
                                    作~~者~~姓~~名~~ & \buaa@thesisauthor\\[.4ex]
                                    \ifbuaa@professional
                                        专~~业~~名~~称~~ & \buaa@major\\[.4ex]
                                    \else
                                        学~~科~~专~~业~~ & \buaa@major\\[.4ex]
                                    \fi
                                    指~~导~~教~~师~~ & \buaa@teacher \quad\buaa@teacherdegree\\[.4ex]
                                    培~~养~~学~~院~~ & \buaa@school 学院\\
                                \end{tabular}
                            \fi
                        }
                    \end{spacing}
                \end{center}
            \end{titlepage}
        \fi
    \fi
}

% 英文首页
\newcommand{\titleeng}{
    \clearemptydoublepage
    \thispagestyle{empty}
    \vspace*{\stretch{1}}
    \begin{center}
    \begin{minipage}[h]{.8\textwidth}
    	\begin{spacing}{2}
        	\centering{\zihao{-2}\textbf{\buaa@thesistitleeng}}
        \end{spacing}
    \end{minipage}
    \vskip 20bp
    \begin{minipage}[h]{.75\textwidth}
        \centering{\zihao{-3}\buaa@thesissubtitleeng}
    \end{minipage}
    \vspace*{\stretch{1}}
    ~~\\
        {\zihao{4}A Dissertation Submitted for the Degree of \buaa@degreeeng}\\
        \vskip 110bp
        \begin{center}
            \zihao{-3}
            \ifbuaa@twoteacher
                \begin{tabular}{ll}
                    \textbf{Candidate:\ }&\textbf{\buaa@thesisauthoreng}\\[0.5ex]
                    \textbf{Supervisor:\ }&\textbf{\buaa@teacherdegreeeng ~~\buaa@teachereng}\\
                    ~~ & \textbf{\buaa@subteacherdegreeeng ~~\buaa@subteachereng}\\
                \end{tabular}
            \else
                \begin{tabular}{ll}
                    \textbf{Candidate:\ }&\textbf{\buaa@thesisauthoreng}\\[0.5ex]
                    \textbf{Supervisor:\ }&\textbf{\buaa@teacherdegreeeng ~~\buaa@teachereng}\\
                \end{tabular}
            \fi
        \end{center}
        \vskip 125bp
        \zihao{3}{
        \buaa@schooleng \\[1.8ex]
        \buaa@universityeng , Beijing, China}
    \end{center}
}

%%%%%%%%%% abstract %%%%%%%%%%
% 摘要

% 中文摘要
\newenvironment{cabstract}{%
    \newpage
    \vspace*{2bp}
    \ifbuaa@bachelor
        \begin{center}
            \begin{minipage}[h]{.75\textwidth}
                \centering{\zihao{3}\heiti\buaa@thesistitle}
            \end{minipage}
            \begin{minipage}[h]{.8\textwidth}
                \begin{flushright}
                    {\zihao{3}\heiti\buaa@thesissubtitle}
                \end{flushright}
                % subtitle should be flush right?
            \end{minipage}
        \end{center}
        %\vskip 10bp
        \begin{flushright}
            \ifbuaa@twoteacher
                {\begin{tabular}{cl}
                    学\qquad 生：&\buaa@thesisauthor\\
                    指导教师：&\buaa@teacher\\
                    ~~ & \buaa@subteacher\\
                    % I don't know is this corrent and properly.
                \end{tabular}}
            \else
                {\begin{tabular}{cl}
                    学\qquad 生：&\buaa@thesisauthor\\
                    指导教师：&\buaa@teacher\\
                \end{tabular}}
            \fi
        \end{flushright}
    \fi
    \centerline{\heiti\zihao{3} 摘~~~~要}
    \ifbuaa@bachelor
        \vskip 10bp
        \par
    \else
        \vspace{5ex}
    \fi
    \setlength{\parindent}{24bp}
    }{%
    \vskip 21bp
    \ifbuaa@bachelor
        \noindent
    \fi
    {\heiti\zihao{-4} 关键词：}\heiti\buaa@ckeyword
}

% 英文摘要
\newenvironment{eabstract}{%
    \newpage
    \vspace*{2bp}
    \ifbuaa@bachelor
        \begin{center}
            \begin{minipage}[h]{.75\textwidth}
                \centering{\bf\zihao{3}\buaa@thesistitleeng}
            \end{minipage}
            \begin{minipage}[h]{.8\textwidth}
                \begin{flushright}
                    {\zihao{3}\heiti\buaa@thesissubtitleeng}
                \end{flushright}
            % subtitle should be flushright?
            \end{minipage}
        \end{center}
        \vskip 10bp
        \begin{flushright}
            \ifbuaa@twoteacher
                {\begin{tabular}{rl}
                    Author:\ &\buaa@thesisauthoreng\\
                    Tutor:\ &\buaa@teachereng\\
                    ~~ & \buaa@subteachereng\\
                \end{tabular}}
            \else
                {\begin{tabular}{rl}
                    Author:\ &\buaa@thesisauthoreng\\
                    Tutor:\ &\buaa@teachereng\\
                \end{tabular}}
            \fi
        \end{flushright}
    \fi
    \centerline{\bf\zihao{3} Abstract}
    \ifbuaa@bachelor
        \vskip 10bp
        \par
    \else
        \vspace{5ex}
    \fi
    \setlength{\parindent}{24bp}
    }{%
    \vskip 21bp
    \ifbuaa@bachelor
        \noindent
    \fi
    {\bf\zihao{-4} Key words: }\buaa@ekeyword
}

%%%%%%%%%% announce %%%%%%%%%%
% 本科生声明页

\newcommand{\announce}{%
    \clearemptydoublepage
    \thispagestyle{empty}
    \vspace*{54bp}
    \centerline{\bf\zihao{-2}\songti 本人声明}
    \vskip 27bp
    \zihao{4}我声明，本论文及其研究工作是由本人在导师指导下独立完成的，在完成论文时所利用的一
    切资料均已在参考文献中列出。\par
    \vskip 63bp
    \zihao{-4}
    \hfill
    \begin{tabular}{cl}
        作者：&\buaa@thesisauthor\\
        签字：&~~~~\\
        时间：& \buaa@thesisdateyear~年~\buaa@thesisdatemonth ~月
    \end{tabular}
}

%%%%%%%%%% assign %%%%%%%%%%
% 本科生任务书

% 文字左对齐的下划线
\newcommand{\ulinel}[2][]{\uline{\makebox[#1\textwidth][l]{#2}}}
% 文字居中的下划线
\newcommand{\ulinec}[2][]{\uline{\makebox[#1\textwidth][c]{#2}}}
% 任务书条目序号
\newcounter{assign}
% 原始资料及设计要求
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
}
% 工作内容
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
}
% 参考文献
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
}
% 任务书
\def\buaa@bachelor@assign{
    \newpage
    \thispagestyle{empty}
    \parindent=0pt
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
        \ulinel{\buaa@thesissubtitle}
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
    \parindent=2\ccwd
    \linespread{1.5}
}

%%%%%%%%%% nominate %%%%%%%%%%
% 研究生提名页

\newcommand{\timingye}{%
    \clearemptydoublepage
    \thispagestyle{empty}
    \begin{flushleft}
        {\zihao{5}\heiti\bfseries
        中图分类号：\buaa@category\\
        论\,\,文\,\,编\,\,号：\buaa@thesisID\\}
    \end{flushleft}
    \begin{center}
        \vskip 130bp
        {\zihao{-2}\heiti{\ziju{1.3}\buaa@degreetitle 论文}}
        \vskip 120bp
        \begin{minipage}[h]{.85\textwidth}
            \zihao{-1}\heiti\centering{\buaa@thesistitle}
        \end{minipage}

        \vskip 130bp

        \begin{spacing}{2.2}
            {\zihao{-4}\songti
            \begin{tabular}[b]{llll}
                \makebox[6em][s]{作者姓名\hfill} & \buaa@thesisauthor& 申请学位级别 & \buaa@appdegree \\
                指导教师姓名 & \makebox[9em][s]{\buaa@teacher\quad\buaa@subteacher\hfill} & 职\qquad 称 & \buaa@teacherdegree \\
                \ifbuaa@professional
                    \makebox[6em][s]{专业名称\hfill} & \buaa@major  &
                \else
                    \makebox[6em][s]{学科专业\hfill} & \buaa@major  &
                \fi
                \makebox[6em][s]{研究方向\hfill} & \buaa@direction \\
                \makebox[6em][s]{学习时间自\hfill} &\buaa@thesisbeginyear~~年~~\buaa@thesisbeginmonth~~月~~\buaa@thesisbeginday~~日\qquad &
                \makebox[6em][s]{\hfill 起至\hfill} & \buaa@thesisendyear~~年~~\buaa@thesisendmonth~~月~~\buaa@thesisendday~~日止\qquad\\
                论文提交日期 &\buaa@commityear~~年~~\buaa@commitmonth~~月~~\buaa@commitday~~日\qquad & 论文答辩日期& \buaa@defenseyear~~年~~\buaa@defensemonth~~月~~\buaa@defenseday~~日~\qquad\\
                学位授予单位 & \buaa@university &学位授予日期 &\buaa@awardyear~~年~~\buaa@awardmonth~~月~~\buaa@awardday~~日~\qquad\\
            \end{tabular}}
        \end{spacing}
    \end{center}
}

%%%%%%%%%% creation and use %%%%%%%%%%
% 研究生独创性声明和授权书

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
    ~~\par
    {\zihao{5}\ 学位论文作者签名：\uline{\mbox{\hspace{7em}}}\hspace{5em}日期：\hspace{7ex}年\hspace{5ex}月\hspace{5ex}日}
    \vskip130bp
    \centerline{\zihao{3}\heiti 学位论文使用授权书}
    ~~\par
        本人完全同意北京航空航天大学有权使用本学位论文（包括但不限于其印刷版和电子版），
    使用方式包括但不限于：保留学位论文，按规定向国家有关部门（机构）送交学位论文，
    以学术交流为目的赠送和交换学位论文，允许学位论文被查阅、借阅和复印，将学位论文的全部
    或部分内容编入有关数据库进行检索，采用影印、缩印或其他复制手段保存学位论文。\par
    保密学位论文在解密后的使用授权同上。\par
    ~~\par
    {\zihao{5}
    \ 学位论文作者签名：\uline{\mbox{\hspace{7em}}}\hspace{5em}日期：\hspace{7ex}年\hspace{5ex}月\hspace{5ex}日\par
    \ 指导教师签名：\uline{\mbox{\hspace{9em}}}\hspace{5em}日期：\hspace{7ex}年\hspace{5ex}月\hspace{5ex}日}
}

%%%%%%%%%% denotation %%%%%%%%%%
% 符号对照表

\newenvironment{denotation}
    {
        \chapter*{主要符号对照表\markboth{主要符号对照表}{}} % no tocline
        \begin{list}{}%
        {
            \zihao{-4}
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
        }
    }
    {\end{list}}

%%%%%%%%%% settings for custom pages %%%%%%%%%%
% 首页重定义

\renewcommand{\maketitle}{%
    \titlech
    \ifbuaa@bachelor
        \ifbuaa@ktreport
            \pagestyle{fancy}
            \frontmatter
        \else
            \pagestyle{empty}
            \loadgeometry{bachelortaskgeometry}
            \buaa@bachelor@assign     %本科生论文任务书
            \loadgeometry{bachelorgeometry}
            \announce                 %本科生声明
            \pagestyle{fancy}
            \frontmatter
        \fi
    \else
        \ifbuaa@ktreport
            \clearemptydoublepage
            \frontmatter
        \else
            \titleeng                 %研究生英文封面
            \timingye                 %研究生题名页
            \creationanduse           %研究生独创性声明和使用授权书
            \clearemptydoublepage
            \frontmatter
        \fi
    \fi
    \songti
    \zihao{-4}
}

%%%%%%%%%% common user info %%%%%%%%%%
% 用户信息

% 学校名称
\def\buaa@university{北京航空航天大学}
\def\buaa@universityeng{Beihang University}
\newcommand{\university}[2]{%
    \def\buaa@university{#1}
    \def\buaa@universityeng{#2}
}
% 学院
\def\buaa@school{}
\def\buaa@schooleng{}
\newcommand{\school}[2]{%
    \def\buaa@school{#1}
    \def\buaa@schooleng{#2}
}
% 专业
\def\buaa@major{}
\def\buaa@majoreng{}
\newcommand{\major}[2]{%
    \def\buaa@major{#1}
    \def\buaa@majoreng{#2}
}
% 论文标题和副标题
\def\buaa@thesistitle{}
\def\buaa@thesissubtitle{}
\def\buaa@thesistitleeng{}
\def\buaa@thesissubtitleeng{}
\newcommand{\thesistitle}[4]{%
    \def\buaa@thesistitle{#1}
    \def\buaa@thesissubtitle{#2}
    \def\buaa@thesistitleeng{#3}
    \def\buaa@thesissubtitleeng{#4}
}
% 作者
\def\buaa@thesisauthor{}
\def\buaa@thesisauthoreng{}
\newcommand{\thesisauthor}[2]{%
    \def\buaa@thesisauthor{#1}
    \def\buaa@thesisauthoreng{#2}
}
% 指导老师
\def\buaa@teacher{}
\def\buaa@teachereng{}
\newcommand{\teacher}[2]{%
    \def\buaa@teacher{#1}
    \def\buaa@teachereng{#2}
}
% 副指导老师
\def\buaa@subteacher{}
\def\buaa@subteachereng{}
\newcommand{\subteacher}[2]{%
    \def\buaa@subteacher{#1}
    \def\buaa@subteachereng{#2}
}
% 分类号
\def\buaa@category{}
\newcommand{\category}[1]{%
    \def\buaa@category{#1}
}
% 论文开始时间
\def\buaa@thesisbeginyear{}
\def\buaa@thesisbeginmonth{}
\def\buaa@thesisbeginday{}
\newcommand{\thesisbegin}[3]{%
    \def\buaa@thesisbeginyear{#1}
    \def\buaa@thesisbeginmonth{#2}
    \def\buaa@thesisbeginday{#3}
}
% 论文结束时间
\def\buaa@thesisendyear{}
\def\buaa@thesisendmonth{}
\def\buaa@thesisendday{}
\newcommand{\thesisend}[3]{%
    \def\buaa@thesisendyear{#1}
    \def\buaa@thesisendmonth{#2}
    \def\buaa@thesisendday{#3}
}
% 答辩时间
\def\buaa@defenseyear{}
\def\buaa@defensemonth{}
\def\buaa@defenseday{}
\newcommand{\defense}[3]{%
    \def\buaa@defenseyear{#1}
    \def\buaa@defensemonth{#2}
    \def\buaa@defenseday{#3}
}
% 中文摘要关键字
\def\buaa@ckeyword{}
\newcommand{\ckeyword}[1]{%
    \def\buaa@ckeyword{#1}}
% 英文摘要关键字
\def\buaa@ekeyword{}
\newcommand{\ekeyword}[1]{%
    \def\buaa@ekeyword{#1}}
% 学位
\def\buaa@degree{} % 中文首页
\def\buaa@degreeeng{} % 英文首页
\def\buaa@degreetitle{} % 题名页
\def\buaa@degreehead{} % 页眉页脚
\newcommand{\degree}[4]{%
    \def\buaa@degree{#1}
    \def\buaa@degreeeng{#2}
    \def\buaa@degreetitle{#3}
    \def\buaa@degreehead{#4}
}
\ifbuaa@bachelor
    \degree{学士学位}{Bachelor}{学士学位}{学士}
\else
    \ifbuaa@master
        \ifbuaa@professional
            \degree{专业硕士学位}{Master}{硕士学位}{硕士}
        \else
            \degree{硕士学位}{Master}{硕士学位}{硕士}
        \fi
    \else
        \ifbuaa@professional
            \degree{专业博士学位}{Doctor of Philosophy}{博士学位}{博士}
        \else
            \degree{博士学位}{Doctor of Philosophy}{博士学位}{博士}
        \fi
    \fi
\fi

%%%%%%%%%% bachelor user info %%%%%%%%%%
% 开题文件类别
\def\buaa@ktclass{}
\newcommand{\ktclass}[1]{%
    \def\buaa@ktclass{#1}
}

%%%%%%%%%% bachelor user info %%%%%%%%%%
% 本科生信息

% 班级
\def\buaa@class{}
\newcommand{\class}[1]{%
    \def\buaa@class{#1}
}
% 单位代码
\def\buaa@unicode{1006}
\newcommand{\unicode}[1]{%
    \def\buaa@unicode{#1}
}
% 学号
\def\buaa@studentID{}
\newcommand{\studentID}[1]{%
    \def\buaa@studentID{#1}
}
% 论文时间
\def\buaa@thesisdateyear{}
\def\buaa@thesisdatemonth{}
\newcommand{\thesisdate}[2]{%
    \def\buaa@thesisdateyear{#1}
    \def\buaa@thesisdatemonth{#2}
}

%%%%%%%%%% master user info %%%%%%%%%%
% 研究生信息

% 保密等级
\def\buaa@clevel{}
\def\buaa@climit{}
\newcommand{\mibao}[2]{%
    \def\buaa@clevel{#1}
    \def\buaa@climit{#2}
}
% 研究方向
\def\buaa@direction{}
\newcommand{\direction}[1]{
    \def\buaa@direction{#1}
}
% 导师职称
\def\buaa@teacherdegree{}
\def\buaa@teacherdegreeeng{}
\newcommand{\teacherdegree}[2]{%
    \def\buaa@teacherdegree{#1}
    \def\buaa@teacherdegreeeng{#2}
}
% 副导师职称
\def\buaa@subteacherdegree{}
\def\buaa@subteacherdegreeeng{}
\newcommand{\subteacherdegree}[2]{%
    \def\buaa@subteacherdegree{#1}
    \def\buaa@subteacherdegreeeng{#2}
}
% 申请学位级别(题名页)
\def\buaa@appdegree{}
\newcommand{\applydegree}[1]{%
    \def\buaa@appdegree{#1}
}
% 论文编号
\def\buaa@thesisID{}
\newcommand{\thesisID}[1]{%
    \def\buaa@thesisID{#1}
}
% 论文提交时间
\def\buaa@commityear{}
\def\buaa@commitmonth{}
\def\buaa@commitday{}
\newcommand{\commit}[3]{%
    \def\buaa@commityear{#1}
    \def\buaa@commitmonth{#2}
    \def\buaa@commitday{#3}
}
% 授予学位时间
\def\buaa@awardyear{}
\def\buaa@awardmonth{}
\def\buaa@awardday{}
\newcommand{\award}[3]{%
    \def\buaa@awardyear{#1}
    \def\buaa@awardmonth{#2}
    \def\buaa@awardday{#3}
}

%%%%% 'buaathesis.cls' %%%%% END
