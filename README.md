# LaTex-start
My personal set of files to start a LaTeX document

## UML

### Code :

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
  ![code pascal](https://github.com/akgx99/LaTex-start/blob/master/img/uml.png)
  
## Highlighting code

```LATEX
 \lstinputlisting[language=Pascal]{source.p}
```

![code pascal](https://github.com/akgx99/LaTex-start/blob/master/img/code_pascal.png)

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

![code pascal](https://github.com/akgx99/LaTex-start/blob/master/img/code_pascal.png)

## CSV --> LaTeX table

```CSV
number, product
1, apple
2, banana
```

```LATEX
\csvautotabular{inc/numberAndProduct.csv}
```
![Image of CSV-->table](https://github.com/akgx99/LaTex-start/blob/master/img/table.png)
