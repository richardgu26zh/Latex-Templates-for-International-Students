%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%              本模板可以使用以下两种方式编译:               %%%
%%%                 PDFLaTeX       XeLaTeX                   %%%
%%%                请使用 TeXLive 2015 编译                   %%%
%%%                  浙江工商大学论文模板                     %%%
%%%       Created：2016/04/15 ver 0.5 by KarryZhao@ZJSU      %%%
%%%  Any problem or advice please mail to Karry@outlook.com  %%%
%%%                                                          %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ZJSUthesis}
\LoadClass[a4paper,UTF8]{ctexart}
\RequirePackage{bbding}
\RequirePackage{url}
\RequirePackage{fancyhdr,booktabs}
\RequirePackage{graphicx,paralist}
\RequirePackage{amsmath,amssymb}
\RequirePackage{fancybox,ifpdf}
\RequirePackage[dvipsnames,svgnames,x11names]{xcolor}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{lipsum}
\RequirePackage{fancyhdr}
\RequirePackage{float}
\RequirePackage[colorlinks,urlcolor=blue, citecolor=blue,linkcolor=blue,hyperindex, CJKbookmarks]{hyperref}
\RequirePackage[round,sort&compress]{natbib}
%\RequirePackage{mhchem}
%\RequirePackage{xfrac}
%\RequirePackage{fancyhdr} %页眉设置
\RequirePackage{mathpazo}
\RequirePackage{booktabs}
\RequirePackage[titles]{tocloft}
\linespread{1.25}
%\RequirePackage{CJK}
%\RequirePackage{CJKpunct}

\allowdisplaybreaks[4]
\ifpdf
    \RequirePackage{CJKpunct}
	\punctstyle{kaiming}
\else
    \RequirePackage{CJKpunct}
	\punctstyle{kaiming}
\fi

%%%%--------------------------页面布局----------------------------%%%%
\RequirePackage[a4paper,left=2.54cm,top=2.54cm,bottom=3.18cm,right=3.18cm]{geometry}
\def\maketitle{
  \vspace{0.2em}
  \thispagestyle{fancy}
  \setcounter{page}{1}
  \begin{center}
     {\heiti\sanhao \textbf{ \@title } \par}
  \end{center}
  \vspace{0.3em}\par
  }

%%%%-------------------------字体大小设置--------------------------%%%%
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{27.5pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{13.75pt}{\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}

%%%%---------------------------摘要和关键字--------------------------%%%%
\newcommand\cnabstractname{\textbf{摘\quad要：}}
\newcommand\enabstractname{\textbf{Abstract:}}
\newcommand\cnkeywords[1]{\noindent{\songti\xiaosihao\cnkeywordsname\ #1}}
\newcommand\cnkeywordsname{\textbf{关键词：}}
\newcommand\enkeywords[1]{\noindent{\songti\wuhao\enkeywordsname\ #1}}
\newcommand\enkeywordsname{\textbf{Keywords:}}
\newcommand\cnabstract[1]{\noindent{\songti\xiaosihao\cnabstractname\ #1}}
\newcommand\enabstract[1]{\noindent{\songti\xiaosihao\enabstractname\ #1}}

%%%%---------------------------页眉设置------------------------------%%%%
\renewcommand{\headrulewidth}{0.1pt}
\renewcommand{\footrulewidth}{0pt}
%\renewcommand\contentsname{\sanhao \heiti 正文目录}
%\newsavebox{\headpic}
%\sbox{\headpic}{\includegraphics[height=1.38cm]{picture/ZJSU_Headlogo.jpg}}
%\setlength{\cftbeforechapskip{2ex}
%\setlength{\cftbeforesecskip}{0.5ex}
%%%%---------------------------节设置------------------------------%%%%
%\renewcommand\section{\renewcommand{\@seccntformat}[1]{%
%   \xiaosihao \songti \csname thesection\endcsname \hspace{0.8em}}
%   \@startsection{section}{2}{\z@}%  {name}{depth}{}
%                {3.5ex \@plus 1ex \@minus .2ex}% positive->leave parindent
%                {2.3ex \@plus.2ex}%
%                {\reset@font\fontsize{13.75pt}{\baselineskip}\sectionformat}}
%\renewcommand\thesection{\chinese{section}、}
%\newcommand\sectionformat{\xiaosihao \bfseries \selectfont \centering}
%
%%%%%---------------------------小节设置------------------------------%%%%
%\renewcommand\subsection{\renewcommand{\@seccntformat}[1]{%
%   \xiaosihao \songti \csname thesubsection\endcsname \hspace{0.5em}}
%\@startsection
%{subsection}{2}{\z@}% {name}{depth}{}
%{1.75ex \@plus.5ex \@minus .1ex}% leave parindent
%{1.15ex \@plus.1ex}%
%{\reset@font\normalsize\bfseries\subsectionformat}}
%%\renewcommand\thesubsection{\arabic{section}.\arabic{subsection}}
%\renewcommand\thesubsection{（\chinese{section}）}
%\newcommand\subsectionformat{\xiaosihao \bfseries \selectfont}
%
%\renewcommand\subsubsection{\renewcommand{\@seccntformat}[1]{%
%   \xiaosihao \songti \csname thesubsubsection\endcsname \hspace{0.5em}}
%\@startsection{subsubsection}{2}{\z@}% {name}{depth}{}
%{1.75ex \@plus.5ex \@minus .1ex}% leave parindent
%{1.15ex \@plus.1ex}%
%{\reset@font\normalsize\bfseries\subsubsectionformat}}
%%\renewcommand\thesubsubsection{\thesubsection.\arabic{subsubsection}}
%\renewcommand\thesubsubsection{\arabic{subsubsection}、}
%\newcommand\subsubsectionformat{\xiaosihao\bfseries\selectfont}



%----------------------- Theorems ---------------------------
%\newtheorem{theorem}{{定理}}
%\newtheorem{proposition}{{命题}}
%\newtheorem{lemma}{{引理}}
%\newtheorem{corollary}{{推论}}[theorem]
%\newtheorem{definition}{{定义}}
%\newtheorem{example}{{例}}
%\AtBeginDocument{%
%   \pagestyle{plain}%
%   }
%\endlinechar `\^^M
%\endinput
