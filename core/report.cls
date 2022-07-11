%general config
\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt]{article}
\ProvidesClass{core/report}


%list of packages
\RequirePackage{tikz}% draw with LaTeX
\RequirePackage{graphicx}% for images
\RequirePackage{fancyhdr}% for layout (header, footer)
\RequirePackage{lastpage}% give the page count
\RequirePackage{etoolbox}% some tools for others packages
\RequirePackage[T1]{fontenc}% small capital letter
\RequirePackage[utf8]{inputenc}% utf-8
\RequirePackage{geometry}% layout configuration
\RequirePackage[explicit]{titlesec}% section / subsection / subsubsection style
\RequirePackage{xcolor}% custom color
\RequirePackage{hyperref}% hypertext link support
\RequirePackage{awesomebox}% beautifull boxes
\RequirePackage{lipsum}% auto genrate text
\RequirePackage{changepage}% set margin
\RequirePackage{eso-pic}% some tools for other package
\RequirePackage{csvsimple} % table from csv
\RequirePackage{booktabs} % stylization of tables
\RequirePackage{listings}% display code
\RequirePackage{lstautogobble}% remove lines count on code display
\RequirePackage{zi4}% stylization of code  
\RequirePackage{fontawesome5} % font awesome 5 support

\RequirePackage[sorting=none]{biblatex} % bibliograpy bibtex
\RequirePackage{csquotes} % usefull for bibtex

%fonts
\RequirePackage[scaled=.85]{helvet} 
\renewcommand{\familydefault}{\sfdefault}

\fontfamily{DejaVuSans}
\renewcommand{\familydefault}{\sfdefault}

%layout configuration
\usetikzlibrary{calc}
\renewcommand{\headrulewidth}{0pt}
 \geometry{
 a4paper,
 left=20mm,
 right=20mm,
 top=3.5cm,
 bottom=3cm,
 headheight=15pt,
 }

%config packages fancy
\patchcmd{\section}{\thispagestyle{plain}}{\thispagestyle{fancy}}{}{}
\pagestyle{fancy}
\fancyhf{}

%page header style
\fancyhead[C]{%
\begin{tikzpicture}[overlay, remember picture]%
    \fill[mainColor] (current page.north west) rectangle ($(current page.north east)+(0,-1in)$);
    \node[anchor=north west, text=textColorHeader, font=\scshape\large\bfseries, minimum size=1in, inner xsep=5mm] at (current page.north west) {\title};
    \node[anchor=north east, minimum size=1in, inner xsep=5mm] at (current page.north east) {\includegraphics[scale=\headerImageScale]{\headerImage}};
\end{tikzpicture}
}

%page numbering style
\rfoot{ {\small%
            \thepage \hspace{1pt} / \pageref{LastPage}%
        }% 
}
\lfoot{\copyright}

%style toc
\hypersetup{
    colorlinks=true, 
    linktoc=all,     
    linkcolor=black,
}

%style section
\renewcommand*\thesection{\roman{section}}

\titleformat{\section}[hang]{\large\sffamily\scshape}%
{\colorbox{mainColor}{%
           \raisebox{0pt}[12pt][3pt]{ \makebox[20pt]{% height, width
                \fontfamily{phv}\selectfont\color{textColorHeader}{\thesection}}
            }}}%
{12pt}%
{ \color{textColorSection}#1
%
}
\titlespacing*{\section}{0pt}{10mm}{5mm}


%style subsection
\renewcommand*\thesubsection{\arabic{subsection}}
\renewcommand*\thesubsection{\arabic{subsection})}


\titleformat{\subsection}[hang]{\large\sffamily}%
{\colorbox{mainColor}{%
           \raisebox{0pt}[12pt][3pt]{ \makebox[20pt]{% height, width
                \fontfamily{phv}\selectfont\color{textColorHeader}{\thesubsection}}
            }}}%
{12pt}%
{ \color{textColorSection}#1
%
}
\titlespacing*{\subsection}{0pt}{10mm}{5mm}

%style subsection
\renewcommand*\thesubsubsection{\normalsize\alph{subsubsection}}
\renewcommand*\thesubsubsection{\normalsize\alph{subsubsection})}

\titleformat{\subsubsection}[hang]{\large\sffamily}%
{\colorbox{mainColor}{%
           \raisebox{0pt}[12pt][3pt]{ \makebox[20pt]{% height, width
                \fontfamily{phv}\selectfont\color{textColorHeader}{\thesubsubsection}}
            }}}%
{12pt}%
{ \color{textColorSection}#1
%
}
\titlespacing*{\subsubsection}{0pt}{10mm}{5mm}


%code style
\definecolor{bluekeywords}{rgb}{0.13, 0.13, 1}
\definecolor{greencomments}{rgb}{0, 0.5, 0}
\definecolor{redstrings}{rgb}{0.9, 0, 0}
\definecolor{graynumbers}{rgb}{0.5, 0.5, 0.5}

\usepackage{listings}
\lstset{
    autogobble,
    columns=fullflexible,
    showspaces=false,
    showtabs=false,
    breaklines=true,
    showstringspaces=false,
    breakatwhitespace=true,
    escapeinside={(*@}{@*)},
    commentstyle=\color{greencomments},
    keywordstyle=\color{bluekeywords},
    stringstyle=\color{redstrings},
    numberstyle=\color{graynumbers},
    basicstyle=\ttfamily\footnotesize,
    frame=l,
    framesep=12pt,
    xleftmargin=12pt,
    tabsize=4,
    captionpos=b
}

%add of user info
\input{config.tex}

\hypersetup{pdfborder=0 0 0}
\makeatother
