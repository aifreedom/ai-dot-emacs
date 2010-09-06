;; AUCTeX
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(defun ai-auctex ()
  (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t;
%`xelatex%(mode)%' %t" TeX-run-TeX nil t))  ;; 这里我编译了两次TeX文件
 (setq TeX-command-default "XeLaTeX")  ;; 设定默认编译命令为XeLaTeX
 (setq TeX-save-query nil)  ;; 保存之前不询问
 (setq TeX-show-compilation t))  ;; 在新窗口显示编译过程

(add-hook 'LaTeX-mode-hook 'ai-auctex)
(setq TeX-output-view-style '(("^dvi$nnnnnnn" ("^landscape$" "^pstricks$\\|
^pst-\\|^psfrag$") "%(o?)dvips -t landscape
%d -o && gv %f") ("^dvi$" "^pstricks$\\|^pst-
\\|^psfrag$" "%(o?)dvips %d -o && gv %f") ("^dvi$" ("^a4\\(?:dutch\\|paper\\|wide\\)\\|
sem-a4$" "^landscape$") "%(o?)xdvi %dS -paper
a4r -s 0 %d") ("^dvi$" "^a4\\(?:dutch\\|paper
\\|wide\\)\\|sem-a4$" "%(o?)xdvi %dS -paper
a4 %d") ("^dvi$" ("^a5\\(?:comb\\|paper\\)$" "^landscape$") "%(o?)xdvi %dS -paper a5r -s
0 %d") ("^dvi$" "^a5\\(?:comb\\|paper\\)$" "%(o?)xdvi %dS -paper a5 %d") ("^dvi$" "^b5paper$" "%(o?)xdvi %dS -paper b5 %d") ("^dvi$" "^letterpaper$" "%(o?)xdvi %dS -paper
us %d") ("^dvi$" "^legalpaper$" "%(o?)xdvi
%dS -paper legal %d") ("^dvi$" "^executivepaper$" "%(o?)xdvi %dS -paper 7.25x10.5in %d") ("^dvi$" "." "%(o?)xdvi %dS %d") ("^pdf$" "." "evince %o %(outpage)") ("^html?$" "." "netscape
%o")))
(setq safe-local-variable-values '((TeX-header-end . "% End-Of-Header$") (TeX-trailer-start . "% Start-Of-Trailer$")))
