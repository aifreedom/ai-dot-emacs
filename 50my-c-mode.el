(defun my-c-common-mode()
  ;;  (define-key c-mode-base-map [return] 'newline-and-indent) ;;换行并缩进
  (interactive)

;;  (setq c-set-style "stroustrup")
;;  (c-toggle-auto-state) ;;输入{自动对齐

  (setq tab-width 4 indent-tabs-mode nil)
  ;; 快速编译
;;  (defun quick-compile ()
;;    "A quick compile funciton for C++"
;;    (interactive)
;;    (compile (concat "g++ " (buffer-name (current-buffer)) " -O2 -g -ggdb")))

;; 定义快捷键
  (global-set-key [(f7)] 'compile)

;;  (define-key c-mode-base-map [(tab)] 'my-indent-or-complete)
  (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)
)
(add-hook 'c-mode-common-hook 'my-c-common-mode)
