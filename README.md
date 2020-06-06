# LaTex-start

## introduction


## Dépendances
- Un environnement LaTeX

## Quick start
Pour compiler et éditer votre document, seuls les éléments suivants vous seront utiles :
- start.tex
- assets/ 
- core/

Ensuite vous pouvez soit utiliser un IDE LaTeX et compiler directement **start.tex** ou bien vous placez dans le dossier contenant votre document et exécuter la commande suivante :

`pdflatex start.tex`

À la suite de quoi devrait être généré un fichier **.pdf** du même nom.

### Configuration du document

Le document se configure à l'aide du fichier `config.tex`. 

Vous pouvez changer facilement différents éléments du document :
- Le titre 
- L'auteur 
- L'année d'édition 
- La couleur principale 
- Le fond de la page de garde
- L'image d'en-tête des documents

## Liste des "fonctionnalités"
- page de garde
- Mise en forme moderne du code
- Mise en page esthétique avec bandeau de couleur
- Table des matières automatique
- Prise en charge du français

- Représentation soignée de diagramme UML

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
  ![code pascal](https://github.com/akgx99/LaTex-start/blob/master/assets/img/readMeImg/uml.png)
  
  
-  Mise en forme et coloration syntaxique du code

```LATEX
 \lstinputlisting[language=Pascal]{source.p}
```

![code pascal](https://github.com/akgx99/LaTex-start/blob/master/assets/img/readMeImg/code_pascal.png)

ou

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

![code pascal](https://github.com/akgx99/LaTex-start/blob/master/assets/img/readMeImg/code_pascal.png)

- Possibilité de générer des tableau à partir d'un fichier CSV

```CSV
number, product
1, apple
2, banana
```

```LATEX
\csvautotabular{inc/numberAndProduct.csv}
```
![Image of CSV-->table](https://github.com/akgx99/LaTex-start/blob/master/assets/img/readMeImg/table.png)

- Insérer des info box visuelle bien pratique

```LATEX
\begin{info}
	Une info.
\end{info}

\begin{warning}
	Une info.
\end{warning}

\begin{advice}
	Une info.
\end{advice}
```
![Image of CSV-->table](https://github.com/akgx99/LaTex-start/blob/master/assets/img/readMeImg/info_box.png)

- Mise en forme de commande Bash etc.
```LATEX
\begin{commandshell}
	cd truc
\end{commandshell}
```

**attention** pour utiliser ceci, il faut changer le style de mise en forme du code de la manière suivante dans **begin.tex** :
```LATEX
\lstset{style=codeBloc} % for command shell display only
%\lstset{style=mystyle} % normal code display
```

![Commande Bash etc.](https://github.com/akgx99/LaTex-start/blob/master/assets/img/readMeImg/bash_command.png)


## Notes

- Pensez à bien compiler deux fois de suite (des problèmes de *box overflow* avec certains éléments)