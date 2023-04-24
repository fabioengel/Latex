% Esta classe define o padrão para reports.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{relatorioUTFPR}[02/10/2022]
\LoadClass[12pt,a4paper,onseside]{article}
\include{packages}

%\newcommand{\name}[num]{definition}

\newcommand{\curso}[1]{
	\newcommand{\cursoNome}{#1}
}

\newcommand{\cidade}[1]{
	\newcommand{\cidadeNome}{#1}
}

\newcommand{\campus}[1]{Câmpus}

\renewcommand{\headrulewidth}{0pt}
\chead{}
\rhead{}
\cfoot{Página \thepage\ / \pageref{LastPage}}