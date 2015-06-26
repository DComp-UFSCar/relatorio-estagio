\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufscar}[2015/06/26 Template UFSCar relatorio]

% Personal data

\input{seus-dados}

% Packages

\LoadClass[a4, 12pt]{article}
\RequirePackage[brazilian]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{helvet}
\RequirePackage{indentfirst}
\RequirePackage{etoolbox}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}

% Document structure

\doublespacing
\renewcommand{\familydefault}{\sfdefault}
\pagestyle{fancy}
\geometry{margin=1in, bottom=2.5in}
\AtBeginDocument {\capa\conteudo}
\AtEndDocument {\assinaturas}

% Sections

\titleformat{\section}
  {\normalfont\bfseries}{\thesection.}{1em}{}[{\titlerule[0.8pt]}]
\titleformat{\subsection}
  {\normalfont\bfseries}{\thesubsection}{1em}{}

% Header and footer

\setlength\headheight{108pt}
\renewcommand{\headrulewidth}{0pt}

\lhead{}
\chead{%
  \includegraphics[width=2.8cm]{assets/logo}\\%
  \textbf{\footnotesize UNIVERSIDADE FEDERAL DE SÃO CARLOS (UFSCar) – SOROCABA}\\%
  \footnotesize Departamento de Computação (DComp)\\%
  Estágio Supervisionado em Ciência da Computação%
}
\rhead{}

\lfoot{}
\rfoot{\thepage}
\cfoot{\data}

\fancypagestyle{coverstyle}
{
  \lfoot{}
  \rfoot{}
  \cfoot{}
}

% Summary

\addto\captionsbrazilian{%
  \renewcommand{\contentsname}%
    {\normalfont\bfseries Conteúdo}%
}

\newcommand{\conteudo}{\tableofcontents\thispagestyle{coverstyle}\newpage}

\renewcommand{\cftsecfont}{}
\renewcommand{\cftdotsep}{0.5}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

% Signatures

\newcommand{\assinaturas}{\newpage\section{Assinaturas}%
\begin{center}%
\vspace{2cm}%
\line(1,0){250}\\%
\emph{Assinatura do Estagiário}\\%
\emph{\aluno}%
\end{center}%
\begin{center}%
\vspace{2cm}%
\line(1,0){250}\\%
\emph{Assinatura do supervisor do estágio na concedente}\\%
\emph{\supervisorNome\enskip(\supervisorCargo)}%
\end{center}%
\begin{center}%
\vspace{2cm}%
\line(1,0){250}\\%
\emph{Assinatura do supervisor do estágio na UFSCar}\\%
\emph{\professorNome\enskip(\professorCargo)}%
\end{center}}

% Cover page

\newcommand{\capa}{\vspace*{10cm}%
\begin{flushright}%
\footnotesize%
\textbf{Aluno:} \aluno\\%
\textbf{Supervisor na UFSCar – Sorocaba:} \professorNome\\%
\textbf{Supervisor na Concedente:} \supervisorNome\\%
\textbf{Empresa:} \empresa\\%
\textbf{Período de estágio:} \periodo\\%
\textbf{Disciplina(s):} \disciplinas%
\end{flushright}%
\vspace{1cm}%
\begin{center}%
\footnotesize%
\ifdef{\relatorioFinal}
  {\textbf{RELATÓRIO PARCIAL [\quad] \hspace{1cm} RELATÓRIO FINAL [ X ]}\\}%
  {\textbf{RELATÓRIO PARCIAL [ X ] \hspace{1cm} RELATÓRIO FINAL [\quad]}\\}%
\vspace{1cm}%
\footnotesize%
\textbf{APROVADO [\quad] \hspace{1.5cm} REPROVADO [\quad] \hspace{1.5cm} AJUSTES [\quad]}%
\end{center}%
\thispagestyle{coverstyle}%
\newpage}
