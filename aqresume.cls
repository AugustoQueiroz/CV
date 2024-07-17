\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aqresume}[2024/07/16 Personal Resume Document Class]

\RequirePackage[a4paper, tmargin=0.75in, bmargin=0.75in, lmargin=1in, rmargin=1in]{geometry}

\RequirePackage{xcolor}
\RequirePackage{setspace}
\RequirePackage{hyperref}
\RequirePackage{multicol}

\RequirePackage{fontspec}
\setmainfont[
    BoldFont={NotoSans-Bold.ttf},
    ItalicFont={NotoSans-Italic-VariableFont_wdth,wght.ttf}
]{NotoSans-VariableFont_wdth,wght.ttf}

\RequirePackage{fontawesome}

\pagenumbering{gobble}

\RequirePackage{enumitem}
\setlist[itemize]{leftmargin=*,labelsep=4mm}
\renewcommand\labelitemi{\small$\bullet$}

\RequirePackage{titlesec}
\titleformat{\section}
    {\setmainfont{Alata-Regular.ttf}\Large\raggedright\bfseries}
    {}{0em}
    {}
    []
\titleformat{\subsection}
    {\raggedright}
    {}{0em}
    {}
    []

\newcommand{\name}[1]{%
    {\setmainfont{Alata-Regular.ttf}\LARGE\raggedright\bfseries #1}%
}

\newcommand{\position}[1]{%
    {\setmainfont{Alata-Regular.ttf}\setlength{\parskip}{4pt}\Large\raggedright\bfseries\textcolor{gray}{#1}}%
}

\newcommand{\tagline}[1]{%
    {\setlength{\parskip}{8pt}\normalsize\raggedright\itshape #1}%
}

\newcommand{\contact}[5]{%
    {
        \setlength{\parskip}{4pt}\normalsize\raggedright {\small\faPhone} #1 \textbar{} {\small\faEnvelope} #2\\
        {\small\faGlobe} \url{#3} \textbar{} {\small\faLinkedin} \href{https://linkedin.com/in/#4}{/#4} \textbar{} {\small\faGithub} \href{https://github.com/#5}{#5}
    }
}

\newcommand{\cvsubsection}[4]{%
    \subsection[#1]{\textbf{#1 \textbar{}  \textcolor{gray}{#2}} \hfill \textit{\normalsize \textcolor{gray}{#3}}}
    % TODO - Put this behind if/else
    \begin{itemize}
    \setlength{\itemsep}{0pt}
    #4
    \end{itemize}
}
