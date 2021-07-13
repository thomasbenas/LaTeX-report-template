%general config
\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt]{article}
\ProvidesClass{core/report}

\RequirePackage{tikz}% utile pour dessiner en LaTeX
\RequirePackage{graphicx}% utile pour les images
\RequirePackage[T1]{fontenc}% lettre en petit capitale
\RequirePackage[french]{babel}% support du français
\RequirePackage[utf8]{inputenc}% utf-8
\RequirePackage{geometry}% configuration du layout (marges etc)
\RequirePackage{lipsum}% génére du texte pour les exemples
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

