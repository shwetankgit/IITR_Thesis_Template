
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{iitrdiss}[IIT Roorkee]

\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Load the class.
    \LoadClass[12pt,a4paper]{report}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Geometry and page layout
\RequirePackage[a4paper,left=1in,right=0.8in,top=1in,bottom=1in,
                headsep=15pt]{geometry}[2022]
\parskip 12pt

\renewcommand{\@pnumwidth}{2.5em}
%\renewcommand{\@tocrmarg}{2.5em}
\RequirePackage{graphicx}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Using setspace to do the single/double spacing.  Setspace also
%% makes all tables and figures have single spacing automatically.
\RequirePackage{setspace} 
% \RequirePackage{atbeginend} % used to redefine the list environs
\setstretch{1.5}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% The figure captioning is done correctly via the hang option.
%%\RequirePackage[hang]{caption2}  -> TeX generates error
\RequirePackage[hang]{caption}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Other useful macros.  Many of these are modifications from newdiss.cls

\def\department#1{\gdef\@department{#1}}

\let\@program\relax
\def\program#1{\def\@program{#1}}

\let\@entrynumber\relax
\def\entrynumber#1{\def\@entrynumber{#1}}

\def\monthDefined#1{\gdef\@monthDefined{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The title page

\def\maketitle{%
  \pagenumbering{roman}
  \thispagestyle{empty}
  \newpage
  \null
  \setcounter{page}{0}
  \parskip=0pt
  \begin{center}%
  \let \footnote \thanks
  \vglue 0in % this makes top margin 2in
  \vskip -5ex%
    {\Large \bf \expandafter{\@title} \par}%
    \vskip 8ex%
    {\normalsize
         {\bf A THESIS }\par
         \vskip 8ex%
          {\normalsize \em Submitted in partial fulfillment of the \\ requirements for the award of the degree \\ 
          \vskip 6ex%
          of \par}
          \vskip 6ex%
         {\bf DOCTOR OF PHILOSOPHY \par}
         \vskip 6ex%
         {\normalsize \em in \par}
         \vskip 6ex%
         {\bf \@department \par}
         \vskip 6ex%
          {\normalsize \em by \par}
          \vskip 6ex%
         {\bf \@author\par\par}
         \vskip 2ex%
         \vskip 4ex%
    }
  \end{center}%

  \centerline{\includegraphics[height=1.7in,width=1.7in, keepaspectratio]{iitr_logo.jpg}}
  \vspace*{0.15in}
  \begin{center}
    %{\bf \large Department Of \@department\par}
    {\bf DEPARTMENT OF \@department}\\
    {\bf INDIAN INSTITUTE OF TECHNOLOGY ROORKEE}\\
    {\bf ROORKEE - 247667 (INDIA)}
    \vglue 0.50em
    {\bf \@monthDefined, \yearDefined }\par
  \end{center}
  \parskip 8pt
}

\def\titlepage{\newpage\thispagestyle{empty}\c@page\z@}
\def\endtitlepage{\newpage}


   % COPYRIGHT
   %
   \def\copyrightpage{
   \clearpage
   }
   
   \def\certificate{%% A preliminary chapter
     \clearpage
     \setcounter{page}{0}
   }
   

   % ACKNOWLEDGEMENTS
   %
   \def\acknowledgements{\chapter*{\centerline{ACKNOWLEDGEMENTS}}
     \addcontentsline{toc}{chapter}{ACKNOWLEDGEMENTS}
     \vskip -10pt
     \setcounter{page}{1}
   }

   % ABSTRACT
   %   - this produces pages suitable for an Abstract
   \def\abstract{\chapter*{\centerline{ABSTRACT}}
   \addcontentsline{toc}{chapter}{ABSTRACT}
   \vskip -50pt
   }


   % Makes the chapter heading
   \def\@makechapterhead#1{%
     {\parindent \z@ \raggedright \normalfont
       \ifnum \c@secnumdepth >\m@ne
       \begin{center}
         \Large\bfseries \@chapapp\space \thechapter
       \end{center}
       \par\nobreak
       \vskip 20pt  
       \fi
       \interlinepenalty\@M
       \Large \bf
       \begin{center}
         #1\par\nobreak      
       \end{center}
       \vskip 20pt  
       \thispagestyle{empty}
     }}

   % Makes the chapter heading for \chapter* commands
   \def\@makeschapterhead#1{% 
     \vspace*{25pt}%    
     {\parindent \z@ \raggedright
       \normalfont
       \interlinepenalty\@M
       \Large \bfseries #1\par\nobreak
       \vskip 20pt  
     }}


   %LIST OF PAPERS
   \def\listofpapers{
           \normalbaselines
           \chapter*{\centerline{LIST OF PUBLICATIONS}}
           \addcontentsline{toc}{chapter}{LIST OF PUBLICATIONS}
   }
