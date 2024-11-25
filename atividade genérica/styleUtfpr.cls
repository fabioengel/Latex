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
\def\disciplina#1{\gdef\@disciplina{#1}}
\def\atividade#1{\gdef\@atividade{#1}}
\def\entrega#1{\gdef\@entrega{#1}}

\newcommand{\test}[2]{(#1, #2)}