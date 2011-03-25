(setq c-default-style
      '((java-mode . "java") (awk-mode . "awk") (other . "k&r")))

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (eval-after-load "semantic-c"
	      '(dolist (d (list
			   "/usr/include/c++/4.3"
			   "/usr/include/c++/4.3/i486-linux-gnu"
			   "/usr/include/c++/4.3/backward"
			   "/usr/local/include"
			   "/usr/lib/gcc/i486-linux-gnu/4.3.2/include"
			   "/usr/lib/gcc/i486-linux-gnu/4.3.2/include-fixed"
			   "/usr/include"
			  ))
		 (semantic-add-system-include d)))

	    ;;(eval-after-load "semantic-complete"
	      ;;'(setq semantic-complete-inline-analyzer-displayor-class
		;;     semantic-displayor-ghost)) ;;; 这是补全弹出方式.

	    ;;(local-set-key (kbd "M-/") 'semantic-complete-analyze-inline)
	    ;;(local-set-key "." 'semantic-complete-self-insert)
	    ;;(local-set-key ">" 'semantic-complete-self-insert)
	    (setq tab-width 4 indent-tabs-mode nil)
	    (define-key c-mode-base-map [(f7)] 'compile)
	    (define-key c-mode-base-map [(f9)] 'gdb)
	    (define-key c-mode-base-map [(f11)] 'ecb-activate)	    
	    (define-key c-mode-map [return] 'newline-and-indent)	    
	    (define-key c-mode-base-map (kbd "C-c i") 'insert-include-guard)
	    (c-toggle-hungry-state)
;;	    (define-key c-mode-map [(f7)] 'c-set-compile-command)
;;	    (define-key c++-mode-map [(f7)] 'c++-set-compile-command)
;;	    (define-key c++-mode-map (kbd "C-c u") 'c++-set-compile-command)
;;	    (define-key c-mode-map (kbd "C-c u") 'c-set-compile-command)
	    (c-set-style "k&r")
	    (imenu-add-menubar-index) ;;在菜单中加入当前Buffer的函数索引
	  ))

;; 给一个 C 的例子就知道怎么写了, 注意 set 之后的部分
(defun c-set-compile-command ()
 (interactive)
 (set (make-local-variable 'compile-command) (concat "gcc " (buffer-name (current-buffer)) " -g -ggdb -lm -o " (file-name-sans-extension (buffer-name (current-buffer))))))

(defun c++-set-compile-command ()
 (interactive)
 (set (make-local-variable 'compile-command) (concat "g++ " (buffer-name (current-buffer)) " -g -ggdb -o " (file-name-sans-extension (buffer-name (current-buffer))))))

(defun java-set-compile-command ()
 (interactive)
 (set (make-local-variable 'compile-command) (concat "javac " (buffer-name (current-buffer)))))


;; (defun c++-set-compile-command ()
;;   (interactive)
;;   (setq compile-command (concat "g++ " (buffer-name (current-buffer)) " -g -ggdb -o " (file-name-sans-extension (buffer-name (current-buffer))))))

(defun set-compile-command()
  (interactive)
  (set 'ext (file-name-extension buffer-file-name))
  (cond ((equal ext "c") (c-set-compile-command))
	;; ((equal ext "h") (set-header-compile-command))
	((equal ext "cpp") (c++-set-compile-command))
	((equal ext "java") (java-set-compile-command))
	;; ((equal ext "tex") (set-tex-compile-command))
	(t (set (make-local-variable 'compile-command) ""))))

;; 在这里加一个 find-file-hook, 然后直接把 compile 绑到 f9, 当然键你可以随便选了..
(add-hook 'find-file-hook 'set-compile-command)

(defun ai-compile()
  (interactive)
  (set-compile-command)
  (compile))

;; (defun c-set-compile-command ()
;;   (interactive)
;;   (setq compile-command (concat "gcc " (buffer-name (current-buffer)) " -g -ggdb -lm -o " (file-name-sans-extension (buffer-name (current-buffer))))))

(defun insert-include-guard ()
  (interactive)
  (setq file-macro
	(concat
	 "_"
	 (replace-regexp-in-string "\\." "_"
				   (upcase (file-name-nondirectory buffer-file-name)))
	 ))
  (setq guard-begin (concat "#ifndef " file-macro "\n"
			    "#define " file-macro "\n\n"))
  (setq guard-end
	(concat "\n\n#endif\n"))
  (setq position (point))
  (goto-char (point-min))
  (insert guard-begin)
  (goto-char (point-max))
  (insert guard-end)
  (goto-char (+ position (length guard-begin))))
