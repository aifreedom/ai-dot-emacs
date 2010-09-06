(require 'ido)
(ido-mode t)
(setq ido-everywhere t) ;;打开ido模式

(add-to-list 'load-path "~/.elisp/htmlize-1.37")
(require 'htmlize) ;; html

;;(require 'session)
;;(add-hook 'after-init-hook 'session-initialize) ;;配置session

;;(load "desktop") 
;;(desktop-load-default) 
;;(desktop-read) ;;配置desktop

(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer) ;;调用ibuffer, 绑定按键

(add-to-list 'load-path "~/.elisp/browse-kill-ring-1.3")
(require 'browse-kill-ring)
(global-set-key [(control c)(k)] 'browse-kill-ring)
(browse-kill-ring-default-keybindings) ;; browse-kill-ring

(global-linum-mode t)
;; (require 'linum)
;; (global-linum-mode 1)

;;(require 'setnu+)

(require 'recentf)
(recentf-mode 1) ;;recentf, 最近打开的文件

(load-library "xscheme")
(show-paren-mode 1)
