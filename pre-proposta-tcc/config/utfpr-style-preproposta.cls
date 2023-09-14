%Classe e versão

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{config/utfpr-style-preproposta}[2023 TSI fabioe]

%% Carrega a classe de base
\LoadClass[12pt,a4paper,oneside]{article}	% oneside na final


\input{./config/pacotex.sty}

% Dimensões da página e margens
\RequirePackage{ifthen}
\RequirePackage{geometry}
%\RequirePackage{./config/options}
\geometry{a4paper}
\geometry{right=2.5cm,left=3cm,top=3cm,bottom=2.5cm}
\geometry{bindingoffset=1cm}

\newcommand{\leftindent}{15mm}		% indentação das entradas
\newcommand{\dotspacing}{0.75pc}	% espaçamento dos pontinhos
\newcommand{\linespacing}{0.75ex}


% ajustar formato dos títulos nas seções

\RequirePackage[explicit]{titlesec}

\newcommand{\numberspacing}{1.5ex}	% espaço entre número e título


\titleformat{name=\section}[block]
{\large\bfseries}
{}
{0pt}
{#1}
\titlespacing{\section}{0pt}{\baselineskip}{12pt}


% ajusta alguns espaçamentos
\titlespacing*{name=\chapter}			{0pt}{0pt}{30pt}
\titlespacing*{name=\chapter,numberless}	{0pt}{0pt}{30pt}

% permite subsubsections
\setcounter{secnumdepth}{0}


% ajustar formato das entradas nas listas de figuras e tabelas

\titlecontents{figure}
[\leftindent]
{\normalfont\normalsize}
{\contentslabel{\leftindent}}
{}
{\titlerule*[\dotspacing]{.}\contentspage}
[\vspace{\linespacing}]

\titlecontents{table}
[\leftindent]
{\normalfont\normalsize}
{\contentslabel{\leftindent}}
{}
{\titlerule*[\dotspacing]{.}\contentspage}
[\vspace{\linespacing}]


% indentar o primeiro parágrafo (português) em 15mm
\setlength{\parindent}{1,25cm} %recúo de parágrafo
\RequirePackage{indentfirst}
\RequirePackage{enumitem}
\setlist[1]{leftmargin=\parindent}
\setlist[2]{leftmargin=0.5\parindent}

% ajustes nas legendas de tabelas e figuras
\RequirePackage{caption} 
\captionsetup{skip=10pt}		% mais espaço entre legenda e tabela
\captionsetup{font=footnotesize}	% fonte menor para as legendas
\captionsetup{font+=singlespacing}	% legendas em espaço simples


% relaxar o espaçamento entre caracteres; segundo o manual
% http://texdoc.net/texmf-dist/doc/latex/l2tabu-english/l2tabuen.pdf,
% \sloppy não deve ser usado, ao invés disso usar estes parâmetros:
\tolerance 1414
\hbadness 1414
\emergencystretch 1.5em
\hfuzz 0.3pt
\widowpenalty=10000
\vfuzz \hfuzz
\raggedbottom

% impedir linhas órfãs/viúvas (linhas isoladas no início/fim de uma página)
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty 10000
\raggedbottom

% evitar quebra de footnotes em mais de uma página
\interfootnotelinepenalty=1000

% CONTROLE DE NUMERAÇÃO DE PÁGINAS

% formatação de cabeçalho e %rodapé
\RequirePackage{fancyhdr}
\setlength{\headheight}{15pt}

% sem linhas separadoras para cabeçalho e rodapé
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}


% Remove o retângulo vermelho indicando link

\hypersetup{
	linkbordercolor={white}, % define a cor do retângulo como branco (ou outra cor de sua escolha)
	pdfborderstyle={/S/U/W 0}, % remove a borda do link
}


% define o estilo de página do preâmbulo (páginas iniciais) do documento
\fancypagestyle{frontmatter}{
	\fancyhf{}
}

% define o estilo de página do corpo do documento (capítulos)
\fancypagestyle{mainmatter}{
	\fancyhf{}
	\onehalfspacing % espaçamento 1,5
%	\if@twoside
%	\fancyhead[LE,RO]{\footnotesize\thepage}
%	\else
%	\fancyhead[R]{\footnotesize\thepage}
%	\fi
}

% define o estilo default "plain" como nulo nas páginas iniciais (frontmatter)
% e igual a mainmatter no corpo do documento (para por números de página na
% primeira página de cada capítulo).
\fancypagestyle{plain}{
	\fancyhf{}
%	\if@mainmatter
%	\if@twoside
%	\fancyhead[LE,RO]{\footnotesize\thepage}
%	\else
%	\fancyhead[R]{\footnotesize\thepage}
%	\fi
%	\fi
}


%Variáveis
\def\curso#1{\gdef\@curso{#1}}
\def\cidade#1{\gdef\@cidade{#1}}
\def\profTitulo#1{\gdef\@profTitulo{#1}}
\def\orientador#1{\gdef\@orientador{#1}}
\def\titulo#1{\gdef\@titulo{#1}}


\makeatletter
\newcommand{\ano}[1][\@empty]{%
	\ifx#1\@empty
	\def\anovalor{\the\year}%
	\else
	\def\anovalor{#1}%
	\fi
}
\makeatother

\newcommand{\postexto}{	
	Eita coisa doida
}

%Pré-texto
\newcommand{\pretexto}{	

	\pagestyle{frontmatter}
	\include{text/pre-textuais/cover}	
	\newgeometry{right=2.5cm,left=2.5cm,top=2.5cm,bottom=2.5cm}
	
}

% ajustes dos apêndices (título e sumário)

% https://stackoverflow.com/questions/717316/how-to-make-appendix-appear-in-toc-in-latex, adaptado

