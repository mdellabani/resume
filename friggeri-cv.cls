%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{friggeri-cv}[2012/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}


%%%%%%%%%%
% Colors %
%%%%%%%%%%

\RequirePackage{xcolor}
\usepackage{xcolor}

\definecolor{white}{RGB}{255,255,255}
\definecolor{yt}{HTML}{c71610}
\definecolor{linkedin}{HTML}{0085AE}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
\definecolor{pblue}{HTML}{0395DE}
\definecolor{materialpurple}{HTML}{9C27B0}
\definecolor{materialindigo}{HTML}{3F51B5}
\definecolor{materialblue}{HTML}{2196F3}
\definecolor{materialcyan}{HTML}{00BCD4}
\definecolor{materialteal}{HTML}{009688}
\definecolor{materialgreen}{HTML}{4CAF50}
\definecolor{materiallime}{HTML}{CDDC39}
\definecolor{materialamber}{HTML}{FFC107}
\definecolor{materialbrown}{HTML}{795548}
\definecolor{materialred}{HTML}{FF4436}
\definecolor{materialorange}{HTML}{FF5722}
\definecolor{shade}{HTML}{F0F8FF}
\definecolor{maingray}{HTML}{B9B9B9}
\definecolor{text1}{HTML}{2b2b2b}
\definecolor{sidecolor}{HTML}{E7E7E7}
\definecolor{mainblue}{HTML}{0E5484}
\ifdefined\@cv@print
  \colorlet{green}{gray}
  \colorlet{orange}{gray}
  \colorlet{purple}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\fi
\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}

\usepackage{graphicx,pifont}
\usepackage[misc,clock,geometry]{ifsym}
%\usepackage{marvosym}
\usepackage{fontawesome}    
\usepackage{savesym}    
%%% modified by Karol Kozioł for ShareLaTex use
%\RequirePackage[quiet]{fontspec}
\RequirePackage[math-style=TeX]{unicode-math}
\usepackage{afterpage}
\usepackage{hyperref}
%\usepackage{color}
\usepackage{smartdiagram}
\usepackage{fontspec}
\usepackage{metalogo}
\usepackage{dtklogos}
\usepackage[utf8]{inputenc}
\usepackage{tikz}
\usetikzlibrary{mindmap,shadows}


%%%%%%%%%
% Fonts %
%%%%%%%%%

% \RequirePackage[quiet]{fontspec}
% \RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}
% 
% \newfontfamily\bodyfont[]{Helvetica Neue}
% \newfontfamily\thinfont[]{Helvetica Neue UltraLight}
% \newfontfamily\headingfont[]{Helvetica Neue Condensed Bold}
% 
% \defaultfontfeatures{Mapping=tex-text}
% \setmainfont[Mapping=tex-text, Color=textcolor]{Helvetica Neue Light}
% 
% \setmathfont{XITS Math}

\newfontfamily\bodyfont{VT323}
\newfontfamily\thinfont{VT323}
\newfontfamily\headingfont{VT323}

\defaultfontfeatures{Mapping=tex-text}
\setmainfont
[Mapping=tex-text, Color=textcolor,
BoldFont=VT323,
ItalicFont=VT323,
BoldItalicFont=VT323
]
{VT323}

\setmathfont{VT323}
%%%
\let\oldding\ding% Store old \ding in \oldding
\newcommand{\barrow}{\item[\color{pblue}\footnotesize{\ding{228}}]}

%%%%%%%%%%
% Header %
%%%%%%%%%%

\RequirePackage{tikz}

\newcommand{\rolefont}{%
  \fontsize{14pt}{24pt}\selectfont%
  \thinfont%
  \color{white}%
}

\newcommand{\header}[3]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=fillheader, anchor=north, minimum width=\paperwidth-12cm, minimum height=3cm] (box) at (current page.north){};
    \node [xshift=2cm,yshift=8mm,anchor=center] (name) at (box) {%
      \fontsize{30pt}{62pt}\color{header}%
      {\thinfont #1}{\bodyfont  #2}
    };
    \node [anchor=north] at (name.south) {%
      \fontsize{14pt}{24pt}\color{pblue}%
      \bodyfont #3%
    };
   % \node [shift={(-3.75cm,-1.5cm)}]  at (current page.north east) {%
   %   \colorbox{shade}{\textcolor{text1}{
   %     \begin{tabular}{c|p{5cm}}      
   %       \raisebox{-4pt}{\small{\textifsymbol{18} $\quad$}} & \small{ \hspace{0.25mm} 2 Square Charles Michels} \\ % Address
   %       \raisebox{-4pt}{} & \small{\hspace{1mm}38000, Grenoble} \\ % Address
   %       \raisebox{-3pt}{\small{\faMobile}$\quad$} & \small{\hspace{1mm}+33 (0)6 05 83 31 66} \\ % Phone number
    %      \raisebox{-1pt}{\small{\faEnvelopeO}$\quad$} & \href{mailto:mahieddine.dellabani@gmail.com}{\small{\hspace{1mm}mahieddine.dellabani@gmail.com}} \\ % Email address
% \Keyboard & \href{http://www.johnsmith.com}{http://www.johnsmith.com} \\ % Website
    %    \end{tabular}                  
    %  }                              
    %  }\\[10pt]                        
    %};                                   
   % \node [shift={(-11cm,-3.55cm)}]  at (current page.north east)  {
   % \fcolorbox{gray}{gray}{\parbox{\dimexpr\textwidth+70\fboxsep+10\fboxrule}{%
   % .....                                
   % }}                                   
   % };             
  
  \end{tikzpicture}
  \vspace{-1.2cm}
  %\vspace{-2\parskip}
}


%%%%%%%%%%%%%
% Structure %
%%%%%%%%%%%%%
\RequirePackage{parskip}

%\newcounter{colorCounter}
%\def\@sectioncolor#1#2#3{%
%  {%
%    \color{%
%      \ifcase\value{colorCounter}%
%        blue\or%
%        red\or%
%        orange\or%
%        green\or%
%        purple\else%
%        headercolor\fi%
%    } #1#2#3%
%  }%
%  \stepcounter{colorCounter}%
%}

\newcounter{colorCounter}
\def\@sectioncolor#1#2#3{%
  {%
    \color{%
      \ifcase\value{colorCounter}%
        pblue\or%
        pblue\or%
        pblue\or%
        pblue\or%
        pblue\else%
        pblue\fi%
    } #1#2#3%
  }%
  \stepcounter{colorCounter}%
}

\renewcommand{\section}[1]{
  \par\vspace{\parskip}
  {%
    \LARGE\headingfont\color{headercolor}%
    \@sectioncolor #1%
  }
  \par\vspace{\parskip}
}

\renewcommand{\subsection}[2]{
  \par\vspace{.5\parskip}%
  \Large\headingfont\color{headercolor} #2%
  \par\vspace{.25\parskip}%
}

\pagestyle{empty}

% Command for printing skill progress bars

% Command for printing skill progress bars
\newcommand\programming[1]{ 
  \renewcommand{\programming}{
    \begin{tikzpicture}
      \foreach [count=\i] \x/\y in {#1}{
        \draw[fill=maingray,maingray] (0,\i) rectangle (5,\i+0.4);
        \draw[fill=white,mainblue](0,\i) rectangle (\y,\i+0.4);
        \node [above right] at (0,\i+0.4) {\x};
      }
    \end{tikzpicture}
  }
}
\newcommand\projects[1]{ 
	\renewcommand{\projects}{
		{#1}
	}
}


%%%%%%%%%%%%%%%%%%%%
% List environment %
%%%%%%%%%%%%%%%%%%%%

\setlength{\tabcolsep}{0pt}
\newenvironment{entrylist}{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}
}
\renewcommand{\bfseries}{\headingfont\color{headercolor}}
\newcommand{\entry}[4]{%
  #1&\parbox[t]{11.8cm}{%
    \textbf{#2}%
    \hfill%
    {\footnotesize\addfontfeature{Color=pblue} #3}\\%
    #4\vspace{\parsep}%
  }\\}


%%%%%%%%%%%%%%
% Side block %
%%%%%%%%%%%%%%

\RequirePackage[absolute,overlay]{textpos}
\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{1cm}



\newcommand{\profilesection}[2]{\vspace{8pt}{\color{black!80} \Large \textbf{ #1} \rule[0.15\baselineskip]{#2}{1pt}}}



% Define custom comYmands for CV info
\newcommand{\cvlinkedin}[1]{\renewcommand{\cvlinkedin}{#1}}
\newcommand{\cvmail}[1]{\renewcommand{\cvmail}{#1}}
\newcommand{\cvnumberphone}[1]{\renewcommand{\cvnumberphone}{#1}}
\newcommand{\cvaddress}[1]{\renewcommand{\cvaddress}{#1}}
\newcommand{\aboutme}[1]{\renewcommand{\aboutme}{#1}}

\newenvironment{aside}{%
  \let\oldsection\section
  \renewcommand{\section}[1]{
    \par\vspace{\baselineskip}{\Large\headingfont\color{pblue} ##1}
  }
  \begin{textblock}{3.6}(2.0, 0.55)
  \begin{flushright}
  \obeycr
}{%
  \restorecr
  \end{flushright}
  \end{textblock}
  \let\section\oldsection
}
\newenvironment{aside2}{%
  \let\oldsection\section
  \renewcommand{\section}[1]{
    \par\vspace{2cm}{\Large\headingfont\color{pblue} ##1}
    \vspace{0.5cm}
  }
  \begin{textblock}{3.2}(1.5, 3.55)
  \begin{flushleft}
  \obeycr
}{%
  \restorecr
  \end{flushleft}
  \end{textblock}
  \let\section\oldsection
}
%----------------------------------------------------------------------------------------
%  SIDEBAR LAYOUT
%----------------------------------------------------------------------------------------
\newcommand{\makeprofile}{
  \begin{tikzpicture}[remember picture,overlay]
      \node [rectangle, fill=sidecolor, anchor=north, minimum width=9cm, minimum height=\paperheight+1cm] (box) at (-5cm,2.5cm){};
  \end{tikzpicture}

  %------------------------------------------------
}
%%%%%%%%%%%%%%%%
% Bibliography %
%%%%%%%%%%%%%%%%

\RequirePackage[style=verbose, maxnames=99, sorting=ydnt]{biblatex}

\DeclareFieldFormat[article]{title}{#1\par}
\DeclareFieldFormat[inproceedings]{title}{#1\par}
\DeclareFieldFormat[misc]{title}{#1\par}
\DeclareFieldFormat[report]{title}{#1\par}

\DeclareBibliographyDriver{article}{%
  \printfield{title}%
  \newblock%
  \printnames{author}%
  \par%
  \newblock%
  {%
    \footnotesize\addfontfeature{Color=lightgray}\itshape%
    \usebibmacro{journal+issuetitle}%
    \setunit{\space}%
    \printfield{pages}%
    \newunit%
    \printlist{publisher}%
    \setunit*{\addcomma\space}%
    \printfield{year}%
    \newunit%
  }
  \par\vspace{0.3\baselineskip}
}

\DeclareBibliographyDriver{inproceedings}{%
  \printfield{title}%
  \newblock%
  \printnames{author}%
  \par%
  \newblock%
  {%
    \footnotesize\addfontfeature{Color=lightgray}%
    \printfield{booktitle}%
    \setunit{\addcomma\space}%
    \printfield{year}%
    \setunit{\addcomma\space}%
    \printlist{location}%
    \newunit%
  }
  \par\vspace{0.3\baselineskip}
}

\DeclareBibliographyDriver{misc}{%
  \printfield{title}%
  \newblock%
  \printnames{author}%
  \par%
  \newblock%
  {%
    \footnotesize\addfontfeature{Color=lightgray}\itshape%
    \printfield{booktitle}%
    \setunit*{\addcomma\space}%
    \printfield{note}%
    \setunit*{\addcomma\space}%
    \printfield{year}%
    \setunit{\addcomma\space}%
    \printlist{location}%
    \newunit%
  }
  \par\vspace{0.3\baselineskip}
}

\DeclareBibliographyDriver{report}{%
  \printfield{title}%
  \newblock%
  \printnames{author}%
  \par%
  \newblock%
  {%
    \footnotesize\addfontfeature{Color=lightgray}\itshape%
    \printfield{type}%
    \setunit{\space}%
    \printfield{number}%
    \setunit{\addcomma\space}%
    \printfield{year}%
    \newunit%
  }
  \par\vspace{0.3\baselineskip}
}

\DeclareNameFormat{author}{%
  \small\addfontfeature{Color=lightgray}%
  \ifblank{##3}{}{##3\space}#1%
  \ifthenelse{\value{listcount}<\value{liststop}}
    {\addcomma\space}
    {}%
}

\newcommand{\printbibsection}[2]{
  \begin{refsection}
    \nocite{*}
    \printbibliography[sorting=chronological, type={#1}, title={#2}, heading=subbibliography]
  \end{refsection}
}

\DeclareSortingScheme{chronological}{
  \sort[direction=descending]{\field{year}}
  \sort[direction=descending]{\field{month}}
}



%%%%%%%%%%%%%%%%
% Other tweaks %
%%%%%%%%%%%%%%%%

\RequirePackage[left=6.1cm,top=2cm,right=1.5cm,bottom=2.5cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}
