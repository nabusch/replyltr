\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{replyltr}[2017/01/06 LaTeX class for typesetting reply letters]
 
\LoadClass[10pt]{scrartcl}


% -------------------------------------------------------------
% Fonts
% -------------------------------------------------------------
\RequirePackage{ae, microtype}
\RequirePackage[utf8]{inputenc} 
\RequirePackage[T1]{fontenc}
%\RequirePackage{lmodern}
\renewcommand*\familydefault{\sfdefault} 

% -------------------------------------------------------------
% Layout & Appearance
% -------------------------------------------------------------
\RequirePackage[a4paper,top=2.5cm,left=3.0cm,right=3.0cm,bottom=3cm]{geometry}
\RequirePackage{soul,color}
\RequirePackage{csquotes}
\definecolor{darkblue}{rgb}{0,0,.5}
\definecolor{lightblue}{rgb}{0,0,0.5}
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt plus 2pt minus 2pt}

\RequirePackage[margin=12pt,format=plain,font=small,labelfont=bf,skip=11pt]{caption}  

% -------------------------------------------------------------
% Hack to have section numbers in the margins.
% -------------------------------------------------------------
\renewcommand{\thesection}{} % remove section title   
\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}}
\setkomafont{subsection}{\normalsize}
\RedeclareSectionCommand[beforeskip=--1em,afterskip=-0.1em]{subsection}%negative value -> runin. This makes the subsection look like a paragraph, but it gets numbered.

% Put the subsection number in the left margin.
\makeatletter
\def\@seccntformat#1{\llap{\csname the#1\endcsname\quad}}
\makeatother

% -------------------------------------------------------------
% Bibliography
% -------------------------------------------------------------
\RequirePackage{natbib}
\def\@mb@citenamelist{cite,citep,citet,citealp,citealt}

%\RequirePackage{multibib}
%\newcites{revone}{References}

\RequirePackage{bibentry} % We need this to suppress the main bibliography with nobibliography, but still use citation commands in the main text.

% -------------------------------------------------------------
% Todo Notes
% -------------------------------------------------------------
\RequirePackage[colorinlistoftodos, textsize=scriptsize, linecolor=red!60, backgroundcolor=lightgray, bordercolor=white]{todonotes}
\newcommand{\comment}[1]{\todo[color=red!20!green!20]{#1}}

% -------------------------------------------------------------
% Headings and Footers
% -------------------------------------------------------------
\RequirePackage[headsepline]{scrpage2}
\clearscrheadfoot
\pagestyle{scrheadings}
\automark{section}
\ohead{\headmark}
\chead{}
\ihead{}
\cfoot{\pagemark}

% -------------------------------------------------------------
% New environments
% -------------------------------------------------------------
\newcommand{\reviewer}{\subsection{\noindent\textbf{Reviewer: }}}
\newcommand{\reply}{\textbf{Reply: }}
\newcommand{\revision}[1]{\textit{#1}}