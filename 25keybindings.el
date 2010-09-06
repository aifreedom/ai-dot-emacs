;; Costomized key bindings
;; Effective Emacs
(global-set-key "\C-x\C-y" 'execute-extended-command)
(global-set-key "\C-c\C-y" 'execute-extended-command)
;; (global-set-key "\C-c\C-j" 'set-mark-command)
(global-set-key "\C-c\C-f" 'ido-find-file)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
;; (global-set-key "\C-c\C-k" 'kill-region)

(global-set-key "\r" 'newline-and-indent)
(global-set-key (kbd "C-`") (quote shell)) ;; 绑定C-`到shell

(global-set-key (kbd "C-c t") 'twit-show-recent-tweets)
(global-set-key (kbd "C-c a") 'twit-show-at-tweets)
(global-set-key (kbd "C-c w") 'twit-post)

(global-set-key (kbd "C-c g") 'gnus)

(windmove-default-keybindings 'meta)
