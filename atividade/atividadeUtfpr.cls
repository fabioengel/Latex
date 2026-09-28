\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atividadeUtfpr}[2026/09/28 Template de atividades UTFPR]

\LoadClass[12pt,a4paper]{article}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazil]{babel}
\RequirePackage{lmodern}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{xcolor}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{microtype}
\RequirePackage{dirtree}
\RequirePackage{tcolorbox}
\tcbuselibrary{listings,skins}


\geometry{
    left=2.2cm,
    right=2.2cm,
    top=2.0cm,
    bottom=2.2cm,
    headheight=16pt
}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0.6em}

\definecolor{utfprgreen}{RGB}{0,102,51}
\definecolor{utfpryellow}{RGB}{255,204,0}
\definecolor{darkgray}{RGB}{55,55,55}
\definecolor{lightgray}{RGB}{242,242,242}

% ============================================================
% Terminal
% ============================================================

\lstdefinestyle{terminalstyle}{
	basicstyle=\ttfamily\small,
	columns=fullflexible,
	keepspaces=true,
	showstringspaces=false,
	breaklines=true,
	breakatwhitespace=false,
	frame=leftline,
	framesep=5pt,
	xleftmargin=8pt,
	rulecolor=\color{utfprgreen}
}

\lstdefinestyle{outputstyle}{
	basicstyle=\ttfamily\small,
	columns=fullflexible,
	keepspaces=true,
	showstringspaces=false,
	breaklines=true,
	breakatwhitespace=false,
	frame=leftline,
	framesep=5pt,
	xleftmargin=8pt,
	rulecolor=\color{gray!45}
}

\lstnewenvironment{terminal}
{\lstset{style=terminalstyle,language=sh}}
{}

\lstnewenvironment{saida}
{\lstset{style=outputstyle}}
{}

\def\professor#1{\gdef\@professor{#1}}
\def\disciplina#1{\gdef\@disciplina{#1}}
\def\atividade#1{\gdef\@atividade{#1}}


\def\@professor{}
\def\@disciplina{}
\def\@atividade{}
\def\@entrega{}

% Cabeçalho das páginas seguintes
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\small\textcolor{black}{\textbf{\@disciplina}}}
\fancyhead[R]{\small\textcolor{darkgray}{\@atividade}}
\fancyfoot[C]{\small\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\headrule}{%
    {\color{utfpryellow}\hrule width\headwidth height 1.2pt}%
}

% Seções
\titleformat{\section}
  {\Large\bfseries\color{black}}
  {\thesection}
  {0.7em}
  {}
  [\vspace{0.15em}\color{utfpryellow}\titlerule]

\titleformat{\subsection}
  {\large\bfseries\color{black}}
  {\thesubsection}
  {0.6em}
  {}

\titlespacing*{\section}{0pt}{2.0ex plus .5ex minus .2ex}{1.0ex}
\titlespacing*{\subsection}{0pt}{1.5ex plus .3ex minus .2ex}{0.6ex}

\setlist[itemize]{topsep=3pt,itemsep=2pt,parsep=0pt}
\setlist[enumerate]{topsep=3pt,itemsep=2pt,parsep=0pt}

\hypersetup{
    colorlinks=true,
    linkcolor=utfprgreen,
    urlcolor=blue,
    citecolor=utfprgreen
}

% Cabeçalho inicial
\newcommand{\cabecalhoAtividade}{%
    \thispagestyle{empty}

    \noindent
    \begin{tabularx}{\textwidth}{@{}p{2.2cm}X p{2.7cm}@{}}
        \centering
        \includegraphics[height=1.65cm]{fig/brasao.pdf}
        &
        \centering
        \begin{minipage}{\linewidth}
            \centering
            \scriptsize Ministério da Educação\\[2pt]
            \textbf{\small Universidade Tecnológica Federal do Paraná}\\[2pt]
            \scriptsize UTFPR -- \textit{Campus} Toledo\\[2pt]
            \scriptsize Tecnologia em Sistemas para Internet
        \end{minipage}
        &
        \raggedleft
        \includegraphics[height=1.35cm]{fig/utfpr.pdf}
    \end{tabularx}

    \vspace{0.20cm}

    \noindent
    {\color{black}\rule{\textwidth}{2pt}}

    \vspace{-0.65cm}

    \noindent
    {\color{utfpryellow}\rule{\textwidth}{2.0pt}}

    \begin{center}
        {\Large\bfseries\color{black}\@atividade}
    \end{center}


    \noindent
    \begin{tabularx}{\textwidth}{@{}>{\bfseries}l X >{\bfseries}l X@{}}
        Professor: & \@professor &
        Disciplina: & \@disciplina \\
    \end{tabularx}

    %\vspace{0.45cm}
    \noindent{\color{lightgray}\rule{\textwidth}{0.8pt}}
    \vspace{0.2cm}

    \pagestyle{fancy}
}

\newcommand{\destaque}[1]{%
    \par\medskip
    \noindent
    \colorbox{lightgray}{%
        \parbox{\dimexpr\textwidth-2\fboxsep\relax}{#1}%
    }
    \par\medskip
}

\endinput
