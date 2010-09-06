;;; add autoload of imaxima and maxima.
(autoload 'imaxima "imaxima" "Frontend for maxima with Image support" t)
(autoload 'maxima "maxima" "Frontend for maxima" t)
;;; add autoload of imath.
(autoload 'imath-mode "imath" "Imath mode for math formula input" t)

;;; Make the line effective if you want to use maxima mode with imaxima.
(setq imaxima-use-maxima-mode-flag t)
(setq imaxima-fnt-size 'Large)

