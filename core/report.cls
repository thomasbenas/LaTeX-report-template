%general config
\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt]{article}
\ProvidesClass{core/report}


%list of packages
\RequirePackage{tikz}% utile pour dessiner en LaTeX
\RequirePackage{graphicx}% utile pour les images
\RequirePackage{fancyhdr}% utile pour le style du document (header, footer)
\RequirePackage{lastpage}% donne la dernière page
\RequirePackage{etoolbox}% quelques outils utiles à d'autres packages
\RequirePackage[T1]{fontenc}% lettre en petit capitale
\RequirePackage[french]{babel}% support du français
\RequirePackage[utf8]{inputenc}% utf-8
\RequirePackage{geometry}% configuration du layout (marges etc)
\RequirePackage[explicit]{titlesec}% style des titres
\RequirePackage{xcolor}% couleurs personalisées
\RequirePackage{lipsum}% génére du texte pour les exemples
\RequirePackage{changepage}% permet de définir des marges à un élément (entre autre)
\RequirePackage{eso-pic}% quelques outils utiles à d'autres packages
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
\rfoot{\thepage \hspace{1pt} / \pageref{LastPage}}


%style toc
\hypersetup{
    colorlinks=true, 
    linktoc=all,     
    linkcolor=black,
}

%style section
\renewcommand*\thesection{\arabic{section}}

\titleformat{\section}[hang]{\bfseries\sffamily\scshape}%
{\colorbox{mainColor}{%
           \raisebox{0pt}[12pt][3pt]{ \makebox[20pt]{% height, width
                \fontfamily{phv}\selectfont\color{textColorHeader}{\thesection}}
            }}}%
{12pt}%
{ \color{mainColor}#1
%
}
\titlespacing*{\section}{0pt}{10mm}{5mm}


%style subsection
\renewcommand*\thesubsection{\arabic{section}. \arabic{subsection}}


\titleformat{\subsection}[hang]{\bfseries\sffamily\scshape}%
{\colorbox{mainColor}{%
           \raisebox{0pt}[12pt][3pt]{ \makebox[30pt]{% height, width
                \fontfamily{phv}\selectfont\color{textColorHeader}{\thesubsection}}
            }}}%
{12pt}%
{ \color{mainColor}#1
%
}
\titlespacing*{\subsection}{0pt}{10mm}{5mm}

%style subsection
\renewcommand*\thesubsubsection{\arabic{section}. \arabic{subsection}. \arabic{subsubsection}}

\titleformat{\subsubsection}[hang]{\bfseries\sffamily\scshape}%
{\colorbox{mainColor}{%
           \raisebox{0pt}[12pt][3pt]{ \makebox[40pt]{% height, width
                \fontfamily{phv}\selectfont\color{textColorHeader}{\thesubsubsection}}
            }}}%
{12pt}%
{ \color{mainColor}#1
%
}
\titlespacing*{\subsubsection}{0pt}{10mm}{5mm}


\makeatother
