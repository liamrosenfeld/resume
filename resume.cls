\ProvidesClass{resume}[Resume Class]

%-----------------------------
%	Page Settings
%-----------------------------
\LoadClass[10pt,letterpaper]{article}
\usepackage[left=0.5 in,top=0.5in,right=0.5 in,bottom=0.5in]{geometry}

\usepackage[parfill]{parskip}    % Remove paragraph indentation
\usepackage{array}               % Required for boldface (\bf and \bfseries) tabular columns
\usepackage[hidelinks]{hyperref} % Remove box around links

\pagestyle{empty} % Suppress page numbers

%-----------------------------
%	White space
%-----------------------------
\def\namesize{\LARGE} % Size of the name at the top of the document
\def\sectionlineskip{\medskip} % The space above the horizontal line for each section 
\def\nameskip{\medskip} % The space after your name at the top
\def\sectionskip{\medskip} % The space after the heading section

%-----------------------------
%	Heading
%-----------------------------
% Setting Name
\def \@name {}
\def \name#1{\def\@name{#1}}

\def \contactSep {$\diamond$} % Set contact separator to a diamond

% Setting Contacts
\def \@contact {}
\def \contact#1{\def\@contact{#1}}

% Style Contacts
\def \printcontact {
  \begingroup
    \def \\ {\contactSep\ }
    \centerline{\@contact}
  \endgroup
  \par
}

% Style Name
\def \printname {
  \begingroup
    \hfil{{\namesize\bf \@name}}\hfil
    \nameskip\break
  \endgroup
}

% Print Heading
\let\ori@document=\document
\renewcommand{\document}{
    \ori@document  % Begin document
    \printname % Print the name specified with \name
    \printcontact
}

%-----------------------------
%   Content Section
%-----------------------------
% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
  \sectionskip
  \MakeUppercase{\bf #1} % Section title
  \sectionlineskip
  \hrule % Horizontal line
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{0em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}
