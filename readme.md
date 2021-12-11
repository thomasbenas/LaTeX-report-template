# LaTeX-modern-document
LaTeX-start est un template LaTeX pour créer des rapports à l'allure professionnelle rapidement et sans efforts.

# preview

| page de garde  | exemple de page |
| :------------------: | :------------------: |
| [![A custom title page](examples/cover-page.png)](examples/document.pdf) | [![A basic example page](examples/page.png)](examples/document.pdf) |

# Dépendances
* Un environnement LaTeX fonctionnel (TeXLive par exemple).

# Quick start
Pour utiliser ce document il suffit tout d'abord de le personnaliser selon votre convenance via le fichier `config.tex`, puis de le compiler :

## En ligne de commande
* vous pouvez compiler votre document avec la commande `pdflatex [nomdudoc].tex`.

## Avec un IDE / logiciel
* VS code (avec l'extension LaTeX Workshop) ;
* TeXMaker
* Lyx
* ...

## Avec OverLeaf
* Créer un compte (si vous n'en avez pas)
* Ouvrez un nouveau projet
* Importer **tout** (sauf le *readme*, le *.gitignore* et le dossier *examples*) les fichiers de ce repo sur overleaf
* *Enjoy !* 

# Elements personalisables et fonctionnalités du template

## Personnlisation

Depuis le fichier `config.tex` vous pouvez personnaliser : 
* La couleur principale du document
* La couleur du texte sur le header
* Les éléments de la page de garde (auteur, titre, date, logo, fond de page, ...)
* L'image d'en-tête des pages

## Fonctionalités

* Page de garde personnalisable
* Style épuré (en-tête de couleur, typo moderne)
* Trois niveaux de numérotation (I, 1, a)
* Numérotation automatique des pages
* Affichage stylisé du code (surlignement des mots clés)
* Utilisation de "TextBox" (cf la documentation du https://mirrors.ircam.fr/pub/CTAN/graphics/awesomebox/awesomebox.pdf)

# Licence

Ce projet est sous licence libre MIT, plus d'info sur la licence ici :
https://github.com/akgx99/LaTex-start/blob/master/LICENSE

# Remarques et idées

Pour toutes questions ou remarques relatives à ce template vous pouvez me contacter via l'adresse mail suivante : thomas@benas.fr.
