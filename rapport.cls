\LoadClass[a4paper,12pt]{report} % Classe du document

%--------------------- Packages ------------------------


\RequirePackage{titlesec} % For customizing chapter and section titles
\RequirePackage{tocloft} % For customizing the table of contents
\RequirePackage{etoolbox} % For \AtEndPreamble hook

% Make ToC show "Chapter X:" before chapter titles
\renewcommand{\cftchappresnum}{Chapter }
\renewcommand{\cftchapaftersnum}{: }
\setlength{\cftchapnumwidth}{5.5em}

% Give figure/table/listing numbers enough room in their lists so long
% captions wrap instead of overflowing into the right margin.
\setlength{\cftfignumwidth}{3em}
\setlength{\cfttabnumwidth}{3em}

% Heading for the minted list of listings
\AtEndPreamble{\renewcommand{\listoflistingscaption}{List of Listings}}


% Language handled by polyglossia in main.tex (English + French + Arabic)
% Note: inputenc and fontenc are NOT needed with XeLaTeX/LuaLaTeX
\RequirePackage{fontspec} % Font selection for XeLaTeX
\RequirePackage[section]{placeins} % For section placement
\RequirePackage{mathtools} % Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} % Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} % Pour placement d'images
\RequirePackage{graphicx} % Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} % Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{eso-pic}
\RequirePackage{nomencl}
%\makenomenclature
\RequirePackage{fancyhdr}
\RequirePackage{fancybox}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} % Configuration de la page

% Customize chapter titles to match book document class
\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\Huge}
\titlespacing*{\chapter}
  {0pt}{-10pt}{10pt}
% Place the chapter title alone on its page; content starts on the next page.
% Issued at the very start of each chapter's first section file, after titlesec
% has shipped the title, so the \clearpage reliably separates the two.
\newcommand{\chapterpagebreak}{\clearpage}

  
% Customize section titles to match book document class
\titleformat{\section}
  {\normalfont\Large\bfseries}{\thesection}{1em}{}
%-------------------- Report Information ----------------------

\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}
\newcommand{\encadrantacademique}[1]{\renewcommand{\encadrantacademique}{#1}}
\newcommand{\encadrantprofessionnel}[1]{\renewcommand{\encadrantprofessionnel}{#1}}
\newcommand{\entreprise}[1]{\renewcommand{\entreprise}{#1}}
\newcommand{\jury}[1]{\renewcommand{\jury}{#1}}
\newcommand{\datesoutenance}[1]{\renewcommand{\datesoutenance}{#1}}


\newcommand{\fairemarges}{
    \fancyhf{} %Clear Everything.
    \setlength{\headheight}{1.5cm}
    \fancyfoot[C]{\thepage} %Page Number
    \renewcommand{\headrulewidth}{1pt} %0pt for no rule, 2pt thicker etc...
    \renewcommand{\footrulewidth}{1pt}
    \renewcommand{\sectionmark}[1]{\markright{##1}} % section title only, no number
    \fancyfoot[L]{\nouppercase{\rightmark}} % BOTTOM LEFT: current section title
    \fancyfoot[R]{2025-2026} % BOTTOM RIGHT
    \fancyhead[L]{\nouppercase{\leftmark}} % TOP LEFT: current chapter
    \fancyhead[R]{} % TOP RIGHT
    \pagestyle{fancy}
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}

% Background wallpaper (optional). Replace logos/background.png with your own or comment out.
%\ThisLRCornerWallPaper{1}{logos/background.png}
	
    \centering

    % --- LOGOS BLOCK ---
    % Replace the center logo placeholder with your company/organization logo.
    \begin{minipage}{\textwidth}
        \centering
        % Le \hfill pousse les logos sur les côtés et au centre
        \raisebox{-0.05cm}{\includegraphics[width=0.18\textwidth]{logos/EnsamLogoSVGSansBg.png}}\hfill 
        \raisebox{-0.6cm}{\framebox[0.3\textwidth]{\parbox{0.28\textwidth}{\centering\vspace{0.8cm}\footnotesize Company\\Logo\vspace{0.8cm}}}}\hfill
        \includegraphics[width=0.25\textwidth]{logos/um5logo.png}
    \end{minipage}

	\par\vspace{0.8cm}
    
    {\scshape\Large Mohammed V University - Rabat \par}
	\vspace{0.2cm}
	{\scshape\large National Higher School of Arts and Crafts - Rabat \par}
	\vspace{0.45cm}

    % --- DOCUMENT TYPE ---
    {\scshape\Large \textbf{End of Studies Project Report} \par}
    \vspace{0.2cm}
    {\Large Presented for obtaining the \par}
    {\Large \textbf{State Engineer Diploma} \par}
    \vspace{0.15cm}
    {\large by \par}
    \vspace{0.15cm}
    {\large \textbf{\eleves} \par}
    \vspace{0.3cm}
    {\scshape\large Major: Digital Engineering in Data Science,\\
    Artificial Intelligence and Digital Health \par}
	\vspace{0.4cm}

    % --- PROJECT TITLE ---
    \rule{\linewidth}{0.4mm} \par \vspace{0.2cm}
	{\Large \bfseries \titre \par}
    \rule{\linewidth}{0.4mm} \par \vspace{0.5cm}

    % --- SUPERVISORS ---
    \hfill
    \begin{minipage}[t]{0.5\textwidth}
        \begin{flushleft}
        \textbf{Academic supervisor:}\par
        \vspace{0.2cm}
        \encadrantacademique
        \end{flushleft}
    \end{minipage}\hfill
    \begin{minipage}[t]{0.4\textwidth}
        \begin{flushleft}
        \textbf{Professional supervisor:}\par
        \vspace{0.2cm}
        \encadrantprofessionnel
        \end{flushleft}
    \end{minipage}
	
    \vspace{1.2cm}

    % --- JURY ---
    {\normalsize Defended on \datesoutenance\ before the Jury composed of:\par}
    \vspace{0.3cm}
    \begin{minipage}{0.85\textwidth}
        \begin{flushleft}
        \jury
        \end{flushleft}
    \end{minipage}

	\vfill
	
	{\large Academic Year 2025 - 2026\par}

\end{titlepage}
}

\newcommand{\tabledematieres}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{

}



