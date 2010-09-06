(add-to-list 'load-path (concat elisp-home "/auto-complete-1.3"))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (concat elisp-home "/auto-complete-1.3/ac-dict"))
(ac-config-default)
(ac-ropemacs-initialize)

 