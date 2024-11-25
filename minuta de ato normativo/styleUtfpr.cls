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

%Não cria um capítulo em nova página
\makeatletter
\patchcmd{\chapter}{\if@openright\cleardoublepage\else\clearpage\fi}{}{}{}
\makeatother

% Formato dos capítulos
\titleformat{\chapter}[display]
{\normalfont\bfseries\filcenter}{CAPÍTULO \thechapter}{0.5ex}{\uppercase}
\titlespacing{\chapter}{0pt}{50pt}{20pt} % Espaçamento antes e depois do título

%Define os artigos
\newlist{myarticles}{enumerate}{1}
\setlist[myarticles]{label=\textbf{Art. \arabic*} -}

% Formato das seções
\titleformat{\section}[display]
{\small\bfseries\filcenter}{Seção \thesection}{0.5ex}{}
\titlespacing{\section}{0pt}{50pt}{20pt} % Espaçamento antes e depois do título