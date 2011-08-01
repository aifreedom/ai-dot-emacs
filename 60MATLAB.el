;;===========================================================================
;;	MATLAB
;;==============================
(setq auto-mode-alist (cons '("\\.m$" . matlab-mode) auto-mode-alist))
(autoload 'matlab-mode "~/.elisp/matlab/matlab" "Enter Matlab mode." t)
(autoload 'matlab-shell "~/.elisp/matlab/matlab" "Interactive Matlab mode." t)


(defun my-matlab-mode-hook ()
  (setq matlab-function-indent t)	; if you want function bodies indented
  (setq fill-column 76)			; where auto-fill should wrap
  (font-lock-mode 1)
  (turn-on-auto-fill))
(setq matlab-mode-hook 'my-matlab-mode-hook)

(defun my-matlab-shell-mode-hook ()
  (setq matlab-function-indent t)	; if you want function bodies indented
  (setq fill-column 76)			; where auto-fill should wrap
  (font-lock-mode 1))
(setq matlab-shell-mode-hook 'my-matlab-shell-mode-hook)