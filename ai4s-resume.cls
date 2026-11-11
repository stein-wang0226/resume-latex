% AI4S Resume: redesigned from the datedline/section layout of
% zheyuye/resume-chinese (MIT, Copyright (c) 2021 Zheyu Ye).
% LLM-Resume-Template inspired the research/project content organization.
% See THIRD_PARTY_NOTICES.md for attribution and precise upstream versions.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ai4s-resume}[2026/11/12 v2 Refined Chinese research resume]
\LoadClass[10pt,a4paper]{article}
\RequirePackage{iftex}
\ifXeTeX\else
  \ClassError{ai4s-resume}{Use XeLaTeX or Tectonic}{This class needs the XeTeX engine.}
\fi
\RequirePackage[left=17mm,right=17mm,top=15mm,bottom=17mm,footskip=8mm]{geometry}
\RequirePackage{fontspec}
\RequirePackage{xeCJK}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{enumitem}
\RequirePackage{needspace}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{hyperref}
\defaultfontfeatures{Ligatures=TeX}
\setmainfont{IBMPlexSans-Regular.otf}[
  Path=assets/fonts/,
  BoldFont=IBMPlexSans-SemiBold.otf,
  ItalicFont=IBMPlexSans-Italic.otf]
\setCJKmainfont{NotoSansSC-Regular.otf}[
  Path=assets/fonts/,
  BoldFont=NotoSansSC-Medium.otf]
\newfontfamily\headingfont{IBMPlexSans-Medium.otf}[Path=assets/fonts/]
\newfontfamily\paperfont{IBMPlexSerif-Regular.otf}[Path=assets/fonts/]
\newCJKfontfamily\nameCJKfont{NotoSerifSC-SemiBold.otf}[
  Path=assets/fonts/,LetterSpace=8]
\newcommand{\namefont}{\paperfont\nameCJKfont}
\xeCJKsetup{CJKecglue=\hskip 0.16em}
\definecolor{Accent}{HTML}{24455C}
\definecolor{Ink}{HTML}{232C34}
\definecolor{Muted}{HTML}{63717C}
\definecolor{Rule}{HTML}{D3DCE2}
\color{Ink}
\hypersetup{unicode=true,colorlinks=true,urlcolor=Accent,linkcolor=Accent,
  pdfborder={0 0 0},pdfcreator={XeLaTeX / AI4S Resume}}
\urlstyle{same}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\setlength{\tabcolsep}{0pt}
\newcommand{\ResumeBodySize}{9.8}
\newcommand{\ResumeLeading}{14.4}
\newcommand{\ResumeSectionGap}{11pt}
\newcommand{\ResumeEntryGap}{6pt}
\newcommand{\ResumeProjectGap}{10pt}
\renewcommand{\normalsize}{\@setfontsize\normalsize{\ResumeBodySize}{\ResumeLeading}}
\normalsize
\AtBeginDocument{\normalsize}
\setlist[itemize]{leftmargin=1.15em,labelsep=0.45em,
  label={\textcolor{Muted}{\raisebox{0.2ex}{\fontsize{5}{5}\selectfont\textbullet}}},
  topsep=3pt,itemsep=2pt,parsep=0pt,partopsep=0pt}
\setlength{\emergencystretch}{1.8em}
\hyphenpenalty=10000 % Keep English paper titles from splitting inside words.
\raggedright
\raggedbottom
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.3pt}
\renewcommand{\footrule}{\hbox to\headwidth{\color{Rule}\leaders\hrule height \footrulewidth\hfill}}
\fancyfoot[L]{\fontsize{7.2}{9}\selectfont\color{Muted}\ResumeName\quad·\quad\ResumeFooter}
\fancyfoot[R]{\headingfont\fontsize{7.2}{9}\selectfont\color{Muted}\thepage\ /\ \pageref*{LastPage}}

% Public interface: all personal information lives in content/profile.tex.
\newcommand{\ResumeName}{姓名}
\newcommand{\ResumeTagline}{研究方向}
\newcommand{\ResumePhone}{联系电话}
\newcommand{\ResumeEmail}{name@example.com}
\newcommand{\ResumeCity}{所在城市}
\newcommand{\ResumeIdentity}{}
\newcommand{\ResumeFooter}{AI for Science · LLM · Agent}
\newcommand{\ResumePhoto}{assets/photo.png}
\newif\ifResumePhotoEnabled
\ResumePhotoEnabledtrue
\newif\ifResumeManualBreak
\ResumeManualBreaktrue

\newcommand{\makeheader}{%
  \hypersetup{pdfauthor={\ResumeName},pdftitle={\ResumeName · 研究型简历}}%
  \noindent
  \begin{minipage}[c]{\ifResumePhotoEnabled0.82\else1.0\fi\linewidth}
    {\namefont\fontsize{27}{33}\selectfont\color{Ink}\ResumeName\par}
    \vspace{5pt}
    {\headingfont\fontsize{10.2}{14}\selectfont\color{Accent}\ResumeTagline\par}
    \vspace{7pt}
    {\fontsize{8.5}{12}\selectfont\color{Muted}%
      \ResumePhone\quad·\quad\href{mailto:\ResumeEmail}{\ResumeEmail}%
      \quad·\quad\ResumeCity%
      \ifx\ResumeIdentity\@empty\else\quad·\quad\ResumeIdentity\fi\par}
  \end{minipage}%
  \ifResumePhotoEnabled
    \hfill\begin{minipage}[c]{0.14\linewidth}
      \raggedleft
      \setlength{\fboxsep}{2.5pt}\setlength{\fboxrule}{0.35pt}%
      \fcolorbox{Rule}{white}{%
        \includegraphics[width=20mm,height=24mm,keepaspectratio]{\ResumePhoto}}
    \end{minipage}%
  \fi
  \par\vspace{11pt}{\color{Accent}\hrule height 0.65pt}\vspace{1pt}%
}

\newcommand{\continuationheader}{%
  {\namefont\fontsize{12}{16}\selectfont\color{Ink}\ResumeName}%
  \hfill{\fontsize{8.5}{12}\selectfont\color{Muted}\ResumeTagline}\par
  \vspace{7pt}{\color{Rule}\hrule height 0.45pt}\vspace{1pt}%
}
\newcommand{\resumepagebreak}{%
  \ifResumeManualBreak\newpage\continuationheader\fi}
\newcounter{cvsection}
\newcommand{\cvsection}[2]{%
  \Needspace{5\baselineskip}
  \stepcounter{cvsection}
  \par\vspace{\ResumeSectionGap}
  \noindent\hbox to\linewidth{%
    {\headingfont\fontsize{8}{12}\selectfont\color{Muted}%
      \makebox[18pt][l]{0\arabic{cvsection}}}%
    {\fontsize{12}{16}\selectfont\bfseries\color{Accent}#1}%
    \hspace{10pt}{\color{Rule}\leaders\hrule height 0.35pt\hfill}%
    \hspace{10pt}%
    {\headingfont\fontsize{7.2}{10}\selectfont\addfontfeatures{LetterSpace=8}%
      \color{Muted}#2}}\par
  \vspace{7pt}
}
% Unlike upstream dateRange, the end date is not expanded to a fixed width.
\newcommand{\dateRange}[2]{\mbox{#1\,--\,#2}}
\newcommand{\datedline}[2]{%
  \Needspace{3\baselineskip}
  \noindent{\fontsize{10.3}{14.4}\selectfont\bfseries #1}\hfill
  \mbox{\headingfont\fontsize{8.4}{14.4}\selectfont%
    \addfontfeatures{Numbers={Lining,Monospaced}}\color{Muted}#2}\par
}
\newcommand{\entrydetail}[1]{{\fontsize{9}{13.3}\selectfont\color{Muted}#1\par}}
\newcommand{\courseline}[1]{%
  {\fontsize{9.1}{13.4}\selectfont\color{Muted}课程：#1\par}}
\newcommand{\entryspace}{\par\vspace{\ResumeEntryGap}}
\newcommand{\projectspace}{\par\vspace{\ResumeProjectGap}}
\newcommand{\projecttitle}[2]{%
  \Needspace{6\baselineskip}
  {\fontsize{10.5}{15}\selectfont\bfseries\color{Accent}#1}\par
  \vspace{2pt}
  {\fontsize{8.7}{12.5}\selectfont\color{Muted}#2}\par}
\newcommand{\metric}[1]{\textbf{\textcolor{Accent}{#1}}}
\newcounter{cvpaper}
\newcommand{\paper}[2]{%
  \Needspace{4\baselineskip}
  \stepcounter{cvpaper}
  {\paperfont\fontsize{10.2}{13.4}\selectfont
    \noindent\hangindent=18pt\hangafter=1
    \makebox[18pt][l]{\headingfont\fontsize{7.7}{11}\selectfont%
      \color{Muted}\arabic{cvpaper}.}#1\par}
  \vspace{1pt}
  \noindent\hspace{18pt}%
    {\fontsize{8.2}{11.5}\selectfont\color{Accent}#2}\par
  \vspace{5pt}}
\newcommand{\skill}[2]{%
  {\fontsize{9.1}{13.2}\selectfont
    \par\noindent\hangindent=76pt\hangafter=1
    \makebox[76pt][l]{\bfseries #1}#2\par}\vspace{3.5pt}}
\endinput
