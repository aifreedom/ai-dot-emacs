(add-to-list 'load-path (concat elisp-home "/jflex"))

(autoload 'jflex-mode "jflex-mode" nil t)
; (autoload 'flex-mode "flex-mode" nil t)
(setq auto-mode-alist (cons '("\\(\\.flex\\|\\.jflex\\)\\'" . jflex-mode)
                            auto-mode-alist))