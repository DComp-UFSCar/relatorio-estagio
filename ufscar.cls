\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufscar}[2015/06/23 Template UFSCar relatorio]

\def\@@ptsize{12pt}
\DeclareOption{10pt}{\def\@@ptsize{10pt}}
\DeclareOption{11pt}{\def\@@ptsize{11pt}}
\DeclareOption{12pt}{\def\@@ptsize{12pt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4, \@@ptsize]{article}

\RequirePackage{etoolbox}
\RequirePackage[brazilian]{babel}
\RequirePackage[utf8]{inputenc}

\RequirePackage{indentfirst}

\RequirePackage{helvet}
\renewcommand{\familydefault}{\sfdefault}

\RequirePackage{geometry}
\geometry{margin=1in, bottom=2.5in}

\RequirePackage{setspace}
\doublespacing

\RequirePackage{titlesec}
\titleformat{\section}
  {\normalfont\bfseries}{\thesection.}{1em}{}[{\titlerule[0.8pt]}]
\titleformat{\subsection}
  {\normalfont\bfseries}{\thesubsection}{1em}{}

\RequirePackage{tocloft}
\renewcommand{\cftsecfont}{}
\renewcommand{\cftdotsep}{0.5}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\pagestyle{fancy}

\lhead{}
\chead{%
  \includegraphics[width=2.8cm]{assets/logo}\\%
  \textbf{\footnotesize UNIVERSIDADE FEDERAL DE SÃO CARLOS (UFSCar) – SOROCABA}\\%
  \footnotesize Departamento de Computação (DComp)\\%
  Estágio Supervisionado em Ciência da Computação%
}
\rhead{}

\setlength\headheight{108pt}
\renewcommand{\headrulewidth}{0pt}

\lfoot{}
\rfoot{\thepage}
\cfoot{\data}

\fancypagestyle{coverstyle}
{
  \lfoot{}
  \rfoot{}
  \cfoot{}
}

\renewcommand{\contentsname}{}

\addto\captionsbrazilian{%
  \renewcommand{\contentsname}%
    {\normalfont\bfseries Conteúdo}%
}

\newcommand{\conteudo}{\tableofcontents\thispagestyle{coverstyle}\newpage}

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
