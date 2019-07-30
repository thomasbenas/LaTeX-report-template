# LaTex-start
My personal set of files to start a LaTeX document

## UML

### Code :

```LATEX
\begin{figure}[h]

	\begin{tikzpicture}

	  \begin{class}[text width=8cm]{ClassName}{0,0}
	    \attribute{name : attribute type}
	    \attribute{name : attribute type = default value}
	
	    \operation{name(parameter list) : type of value returned}
	    % virtual operation
	    \operation[0]{name(parameters list) : type of value returned}
	  \end{class}

	\end{tikzpicture}
  ```
## Highlighting code

```LATEX
 \lstinputlisting[language=Pascal]{source.p}
```

![Image of UML](https://github.com/akgx99/LaTex-start/blob/master/img/code.png)

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

![Image of UML](https://github.com/akgx99/LaTex-start/blob/master/img/code.png)
