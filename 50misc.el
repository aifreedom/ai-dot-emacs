(setq visible-bell 1) (setq ring-bell-function 'ignore) ;; 关闭出错时的提示声


(setq default-major-mode 'text-mode) ;; 把缺省的major mode设置成为text-mode
(add-hook 'text-mode-hook 'text-mode-hook-identify)
(add-hook 'text-mode-hook 'turn-off-auto-fill)


(setq mouse-yank-at-point t) ;;不要在鼠标点击的那个地方插入剪贴板内容
(setq kill-ring-max 200) ;;用一个很大的 kill ring
(setq default-fill-column 70) ;;把 fill-column 设为 70
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*") ;;设置 sentence-end 可以识别中文标点
(setq adaptive-fill-regexp "[ \t]+\\|[ \t]*\\([0-9]+\\.\\|\\*+\\)[ \t]*") ;;fill时自动识别前缀
(setq sentence-end-double-space nil) ;;不用在 fill 时在句号后插入两个空格
(setq enable-recursive-minibuffers t) ;;可以递归的使用 minibuffer
(setq scroll-margin 3
      scroll-conservatively 10000) ;;防止页面滚动时跳动
(show-paren-mode t)
(setq show-paren-style 'parentheses) ;;括号匹配时显示另外一边的括号
(mouse-avoidance-mode 'animate) ;;光标靠近鼠标指针时, 让鼠标指针自动让开
(setq frame-title-format "%b@emacs") ;;在标题栏显示buffer的名字
(which-function-mode) ;;在状态条上显示当前光标在哪个函数体内部

(setq version-control nil)
(setq kept-new-versions 3)
(setq delete-old-versions t)
(setq kept-old-versions 2)
(setq dired-kept-versions 1) ;;设置备份时的版本控制
(setq column-number-mode t)

(setq line-number-mode t) ;;显示行列号
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time) ;;显示时间

;;(fset 'yes-or-no-p 'y-or-n-p) ;;用y/n代替yes/no

(global-font-lock-mode t) ;;打开语法高亮

;; (setq browse-url-browser-function 'browse-url-firefox)
;; change the default browser to firefox

(put 'upcase-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)


(setq ecb-options-version "2.32")
(setq speedbar-frame-parameters (quote ((minibuffer) (width . 20) (border-width . 0) (menu-bar-lines . 0) (tool-bar-lines . 0) (unsplittable . t) (set-background-color "black"))))

(ansi-color-for-comint-mode-on) ;; shell color

(setq safe-local-variable-values '((todo-categories "OJ" "Reading") (TeX-header-end . "% End-Of-Header$") (TeX-trailer-start . "% Start-Of-Trailer$")))

;; (add-hook 'emacs-lisp-mode-hook
;; 	  (lambda ()
;; 	    (define-key emacs-lisp-mode-map [(f7)] 'eval-current-buffer)
;; 	    (define-key emacs-lisp-mode-map [(f9)] 'byte-compile-file)))



; (transient-mark-mode 1)  ; Now on by default: makes the region act quite like the text "highlight" in many apps.
; (setq shift-select-mode t) ; Now on by default: allows shifted cursor-keys to control the region.
(setq mouse-drag-copy-region nil)  ; stops selection with a mouse being immediately injected to the kill ring
(setq x-select-enable-primary nil)  ; stops killing/yanking interacting with primary X11 selection
(setq x-select-enable-clipboard t)  ; makes killing/yanking interact with clipboard X11 selection
;; these will probably be already set to these values, leave them that way if so!
; (setf interprogram-cut-function 'x-select-text)
; (setf interprogram-paste-function 'x-cut-buffer-or-selection-value)
; You need an emacs with bug #902 fixed for this to work properly. It has now been fixed in CVS HEAD.
; it makes "highlight/middlebutton" style (X11 primary selection based) copy-paste work as expected
; if you're used to other modern apps (that is to say, the mere act of highlighting doesn't
; overwrite the clipboard or alter the kill ring, but you can paste in merely highlighted
; text with the mouse if you want to)
(setq select-active-regions t) ;  active region sets primary X11 selection
(global-set-key [mouse-2] 'mouse-yank-primary)  ; make mouse middle-click only paste from primary X11 selection, not clipboard and kill ring.
;; with this, doing an M-y will also affect the X11 clipboard, making emacs act as a sort of clipboard history, at
;; least of text you've pasted into it in the first place.
(setq yank-pop-change-selection t)  ; makes rotating the kill ring change the X11 clipboard.