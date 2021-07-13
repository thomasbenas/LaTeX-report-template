%general config
\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt]{article}
\ProvidesClass{core/report}


%list of packages
\RequirePackage{tikz}% utile pour dessiner en LaTeX
\RequirePackage{graphicx}% utile pour les images
\RequirePackage{fancyhdr}% utile pour le style du document (header, footer)
\RequirePackage[T1]{fontenc}% lettre en petit capitale
\RequirePackage[french]{babel}% support du français
\RequirePackage[utf8]{inputenc}% utf-8
\RequirePackage{geometry}% configuration du layout (marges etc)
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
\makeatother
