# LaTex-start

## introduction

Ce projet, est un template de document / rapport LaTeX. Je m'en sert pour rendre des documents dans le cadre de mes études. Il comprend plusieurs packages que j'utilises régulièrement, ainsi 
que quelque morceaux de code LaTeX me facilitant le travail. Il est prêt à l'emploi et personnalisable facilement.

## Dépendances
- Un environnement LaTeX

## Quick start
Pour compiler et éditer votre document, seulement les fichiers et dossiers suivants vous seront utiles :
- start.tex
- inc/ 
- img/

Ensuite vous pouvez soit utiliser un IDE LaTeX et compiler directement **start.tex** ou bien vous placez dans le dossier contenant votre document et exécuter la commande suivante :
```
pdflatex start.tex
```
A la suite de quoi devrait être générer un fichier **.pdf** du même nom.

Le document : **personnaliser_document.pdf**  permet de vous renseigner sur comment personnalisé le document.

## Liste des "fonctionnalités"
- page de garde
- Mise en forme moderne du code
- Mise en page esthétique avec bandeau de couleur
- Table des matières automatique
- Prise en charge du français

- UML

```LATEX
\begin{figure}[h]

	\begin{figure}[h]
	\begin{tikzpicture}[show background grid]
	  \begin{class}[text width=5cm]{BankAccount}{0,0}
	    \attribute{owner : String}
	    \attribute{balance : Dollars = 0}
	
	    \operation{deposit(amount : Dollars)}
	    \operation[0]{withdrawl(amount : Dollars)}
	  \end{class}
	
	  \begin{class}[text width=7cm]{CheckingAccount}{-5,-5}
	    \inherit{BankAccount}
	    \attribute{insufficientFundsFee : Dollars}
	
	    \operation{processCheck ( checkToProcess : Check )}
	    \operation{withdrawal ( amount : Dollars )}
	  \end{class}
	
	  \begin{class}[text width=7cm]{SavingsAccount}{5,-5}
	    \inherit{BankAccount}
	    \attribute{annualInteresRate : Percentage}
	
	    \operation{depositMonthlyInterest ( )}
	    \operation{withdrawal ( amount : Dollars )}
	  \end{class}
	
	\end{tikzpicture}
	\end{figure}
  ```
  ![code pascal](https://github.com/akgx99/LaTex-start/blob/master/img/readMeImg/uml.png)
  
  
-  Highlighting code

```LATEX
 \lstinputlisting[language=Pascal]{source.p}
```

![code pascal](https://github.com/akgx99/LaTex-start/blob/master/img/readMeImg/code_pascal.png)

Or

```LATEX
\begin{lstlisting}[language=Pascal] 
for i:=maxint to 0 do
begin
{ do nothing }
end;
Write('Case insensitive ');
Write('Pascal keywords.');
\end{lstlisting}
```

![code pascal](https://github.com/akgx99/LaTex-start/blob/master/img/readMeImg/code_pascal.png)

- CSV --> LaTeX table

```CSV
number, product
1, apple
2, banana
```

```LATEX
\csvautotabular{inc/numberAndProduct.csv}
```
![Image of CSV-->table](https://github.com/akgx99/LaTex-start/blob/master/img/readMeImg/table.png)

- Info box

```LATEX
\begin{info}
	Some information
\end{info}

\begin{warning}
	Some information
\end{warning}

\begin{advice}
	Some information
\end{advice}
```
![Image of CSV-->table](https://github.com/akgx99/LaTex-start/blob/master/img/readMeImg/info_box.png)
