% Esta classe define o padrão para reports.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{styleUtfpr}[08/05/2023]
\LoadClass[12pt,a4paper]{report}
\input{packages}

\definecolor{yellowUtf}{RGB}{255, 204, 0}

\geometry{right=2cm,left=2cm,top=2cm,bottom=2.5cm}


\fancyhf{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\pagestyle{plain}

\def\professor#1{\gdef\@professor{#1}}
\def\curso#1{\gdef\@curso{#1}}
\def\disciplina#1{\gdef\@disciplina{#1}}
\def\avaliacao#1{\gdef\@avaliacao{#1}}
\def\data#1{\gdef\@data{#1}}



\newcommand{\info}{	
	\vspace{-0.5cm}
	\begin{center}
		\begin{table}[h] \footnotesize
			\begin{adjustwidth}{-\tabcolsep}{-\tabcolsep}
			\begin{tabular}{|p{0.2\textwidth}|p{0.4\textwidth}|p{0.37\textwidth}|}
				\hline
				{\bf Acadêmico(a)}  &    			& {\bf RA}:                                		\\ \hline               
				{\bf Disciplina} 	& \@disciplina     & \multirow{3}{*}{}{\centering \bfseries Nota da Avaliação:} 	\\ \cline{1-2}
				{\bf Professor}  	& \@professor 		&       \\ \cline{1-2}
				\multicolumn{2}{|c|}{{\bf \@avaliacao} - \@data}        &                           \\   \hline
				\multicolumn{3}{|l|}{Orientações gerais:} \\
				\multicolumn{3}{|l|}{1 - Preencha seu nome e número de registro acadêmico.}\\
				\multicolumn{3}{|l|}{2 - A interpretação é parte do processo de avaliação, não sendo permitidas consultas ou comunicação.} \\
				\multicolumn{3}{|l|}{3 - Esta avaliação deve ser preenchida à caneta.} \\\hline
			\end{tabular}
			\end{adjustwidth}
		\end{table}
	\end{center}
}
