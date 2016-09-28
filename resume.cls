\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2016/09/26 Custom resume class]

\LoadClass{article}

\RequirePackage{titlesec}
\RequirePackage{geometry}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage[quiet]{fontspec}
\RequirePackage{fontawesome}
\RequirePackage[hidelinks,unicode]{hyperref}
\RequirePackage{setspace}


% Use to draw horizontal line with specific thickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

% Colors
\definecolor{gray}{HTML}{5D5D5D}
\definecolor{black}{HTML}{000000}
\definecolor{red}{HTML}{CC0000}
\definecolor{blue}{HTML}{0000CC}

% Fonts
\newfontfamily\PragmataPro[
  Path=fonts/,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-Bold-Italic
]{PragmataPro}

\newfontfamily\Palatino[
  Path=fonts/,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-Bold-Italic
]{Palatino}


\newfontfamily\SourceSansPro[
  Path=fonts/,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-Bold-Italic
]{SourceSansPro}


\setmainfont[
  Path=fonts/,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-Bold-Italic
]{CMConcrete}


% Separator
\newcommand{\separator}{\noindent\makebox[\linewidth]{\resizebox{0.80\linewidth}{0.8pt}{$\bullet$}}\bigskip}

% Name
\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
}

% Section
\titleformat{\section}
  {\Large\raggedright}
  {}{0em}
  {}

% Subsection
\titleformat{\subsection}
  {\raggedright}
  {}{0em}
  {}
  [\hrule height 1.0pt]

% Position
\newcommand{\position}[2]{%
  \subsection[#1]{{\bfseries #1} at #2}%
}

% Positionx
\newcommand{\positionx}[3]{%
  \subsection[#1]{{\bfseries #1} at #2 \hfill {\color{gray}\slshape #3}}%
}

% Interval
\newcommand{\interval}[2]{%
  {\small\slshape\color{gray}{%
    \begin{tabular}{c}%
      #1 \\%
      : \\%
      #2 \\%
    \end{tabular}%
  }}%
}



