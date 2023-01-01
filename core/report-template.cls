%general config
\NeedsTeXFormat{LaTeX2e}
\LoadClass[a4paper, 12pt]{article}
\ProvidesClass{core/report-template}
\hbadness=99999 % disallow most of "underfull \hbox" soft warring 

\RequirePackage[utf8]{inputenc}% utf-8
\RequirePackage{awesomebox}% beautifull boxes
\RequirePackage{csvsimple} % table from csv
\RequirePackage{graphicx}% for images

\RequirePackage{core/packages/style/code}
\RequirePackage{core/packages/style/font}
\RequirePackage{core/packages/style/fancy}
\RequirePackage{core/packages/style/header}
\RequirePackage{core/packages/style/page_numbering}
\RequirePackage{core/packages/style/section}
\RequirePackage{core/packages/style/cover-page}
\RequirePackage{core/packages/layout}
\RequirePackage{core/packages/biblio}

