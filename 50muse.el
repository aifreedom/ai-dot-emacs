;;; muse-init.el --- Initialize muse-mode.
;;;; Add below to ~/.emacs config file
;(load-file "~/.emacs.d/conf/muse-init.el")
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/muse-el/experimental")
;;;; xhtml footer and header (如果你沿用emacs-wiki那样定义多个项目而不用muse子目录发布功能，注掉它）
;(load-file "~/.emacs.d/conf/muse-header-footer.el")  

(require 'muse)          ; load generic module
(require 'muse-mode nil t)     ; load authoring mode
(require 'muse-wiki nil t)     ; load Wiki support
(require 'muse-html nil t)     ; load (X)HTML publishing style
(require 'muse-colors nil t)   ; load coloring/font-lock module
;(require 'muse-blosxom)  ; load blosxom module
;(require 'muse-docbook)  ; load DocBook publishing style
(require 'muse-latex nil t)    ; load LaTeX/PDF publishing styles
;(require 'muse-texinfo)  ; load Info publishing style
;(require 'muse-xml)      ; load XML support
(require 'muse-journal)  ; load journal module
;(require 'muse-message)  ; load message support (experimental)
;(require 'muse-srctag)   ; load srctag support
(require 'muse-context)
(require 'muse-project)
(require 'outline nil t)
(require 'sgml-mode)
(require 'tp-muse-highlight nil t)
(require 'muse-latex2png)

(add-to-list 'muse-mode-hook 'footnote-mode)
(add-to-list 'muse-mode-hook 'auto-fill-mode)

(muse-derive-style "ai-xhtml" "xhtml"
		   :header "~/.muse/html/header.html"
		   :footer "~/.muse/html/footer.html"
		   )

(setq muse-project-alist
      '(("Notes" ("~/Documents/wiki/Notes" :default "index")
	 (:base "xhtml" :path "~/Documents/wiki/Notes/html")
	 (:base "pdfcjk" :path "~/Documents/wiki/Notes/pdf")
	 )
	("TOEFL Journal" ("~/Documents/TOEFL/Journal" :default "index")
	 (:base "xhtml" :path "~/Documents/TOEFL/Journal/html")
	 (:base "latexcjk" :path "~/Documents/TOEFL/Journal/latex")
	 (:base "pdfcjk" :path "~/Documents/TOEFL/Journal/pdf"))
	("WikiPlanner"
	 ("~/Plans"           ;; where your Planner pages are located
	  :default "TaskPool" ;; use value of `planner-default-page'
	  :major-mode planner-mode
	  :visit-link planner-visit-link)
	 
	 ;; This next part is for specifying where Planner pages
	 ;; should be published and what Muse publishing style to
	 ;; use.  In this example, we will use the XHTML publishing
	 ;; style.

	 (:base "planner-xhtml"
		;; where files are published to
		;; (the value of `planner-publishing-directory', if
		;;  you have a configuration for an older version
		;;  of Planner)
		:path "~/public_html/Plans"))))

(setq muse-latex2png-scale-factor 1.5)

(setq muse-latex-pdf-program "xelatex")

(setq muse-latex-header
  "\\documentclass{article}

\\usepackage{fontspec,xltxtra,xunicode}    % 这里使用 xetex 相应的宏包
\\usepackage{pstricks}
\\usepackage[dvipdfm,a4paper,
hyperindex=true,
pdfauthor=Ai.Freedom,
bookmarks=true,
bookmarksnumbered=true,
bookmarksopen=true]{hyperref}
\\usepackage{graphicx}

\\def\\museincludegraphics{%
  \\begingroup
  \\catcode`\\|=0
  \\catcode`\\\\=12
  \\catcode`\\#=12
  \\includegraphics[width=0.75\\textwidth]
}

\\setmainfont[Mapping=tex-text]{Linux Libertine O} % 英文衬线字体
\\setsansfont[Mapping=tex-text]{Linux Biolinum O} % 英文无衬线字体
\\setmonofont{Liberation Mono}
% \\setmonofont{Courier 10 Pitch} % 英文等宽字体
% \\setmonofont{DejaVu Sans Mono} % 英文等宽字体
% \\setmonofont{Courier New} % 英文等宽字体
% \\setmonofont{Bitstream Vera Sans Mono} % 英文等宽字体
% \\setmonofont{Consolas} % 英文等宽字体


\\begin{document}

\\title{<lisp>(muse-publish-escape-specials-in-string
  (muse-publishing-directive \"title\") 'document)</lisp>}
\\author{<lisp>(muse-publishing-directive \"author\")</lisp>}
\\date{<lisp>(muse-publishing-directive \"date\")</lisp>}

\\maketitle

<lisp>(and muse-publish-generate-contents
           (not muse-latex-permit-contents-tag)
           \"\\\\tableofcontents\n\\\\newpage\")</lisp>\n\n")

(setq muse-latexcjk-header
      "\\documentclass{article}

\\usepackage{fontspec,xltxtra,xunicode}
\\usepackage{pstricks}
\\usepackage[dvipdfmx,a4paper,
hyperindex=true,
backref=section,
pdftitle={<lisp>(muse-publish-escape-specials-in-string
  (muse-publishing-directive \"title\") 'document)</lisp>},
pdfauthor={<lisp>(muse-publishing-directive \"author\")</lisp>},
pdfsubject={<lisp>(muse-publish-escape-specials-in-string
  (muse-publishing-directive \"title\") 'document)</lisp>},
bookmarks=true,
bookmarksnumbered=true,
bookmarksopenlevel=1,
pdfpagemode=UseOutlines,
CJKbookmarks=true,
colorlinks=true,
citecolor=blue,
linkcolor=blue,
breaklinks=true,
pdfborder=0 0 0,
pdfstartview=FitW,
pdffitwindow=true,
linkbordercolor=white, % 链接边框设置为白色
citebordercolor=white, % 链接边框设置为白色
urlbordercolor=white]{hyperref}

\\usepackage{graphicx}

\\def\\museincludegraphics{%
  \\begingroup
  \\catcode`\\|=0
  \\catcode`\\\\=12
  \\catcode`\\#=12
  \\includegraphics[width=0.75\\textwidth]
}

\\usepackage[CJKtextspaces,CJKmathspaces,CJKchecksingle]{xeCJK}
\\setCJKmainfont[BoldFont={Adobe Heiti Std}, ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
\\setCJKmonofont{Adobe Fangsong Std}
\\xeCJKsetcharclass{\"0}{\"2E7F}{0}
\\xeCJKsetcharclass{\"2E80}{\"FFFF}{1}

\\setmainfont[Mapping=tex-text]{Linux Libertine O}
\\setsansfont[Mapping=tex-text]{Linux Biolinum O}

\\setmonofont{Courier 10 Pitch} 
\\punctstyle{quanjiao} 

\\begin{document}

\\title{<lisp>(muse-publish-escape-specials-in-string
  (muse-publishing-directive \"title\") 'document)</lisp>}
\\author{<lisp>(muse-publishing-directive \"author\")</lisp>}
\\date{<lisp>(muse-publishing-directive \"date\")</lisp>}

\\maketitle

<lisp>(and muse-publish-generate-contents
           (not muse-latex-permit-contents-tag)
           \"\\\\tableofcontents\n\\\\newpage\")</lisp>\n\n")

(setq muse-latexcjk-footer
      "\\end{document}\n")

(setq muse-publish-generate-contents t)