;;;;导入CEDET的各个插件
;; ---------------------------------------
;; Load CEDET
(add-to-list 'load-path (concat elisp-home "/cedet-1.0pre6/semantic"))
(add-to-list 'load-path (concat elisp-home "/cedet-1.0pre6/eieio"))
(add-to-list 'load-path (concat elisp-home "/cedet-1.0pre6/speedbar"))
(add-to-list 'load-path (concat elisp-home "/ecb-2.32"))
(load-file (concat elisp-home "/cedet-1.0pre6/common/cedet.el"))

;; Enabling various SEMANTIC minor modes.  See semantic/INSTALL for more ideas.
;; Select one of the following:

;; * This enables the database and idle reparse engines
;;(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
(semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as the nascent intellisense mode
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-guady-code-helpers)

;; * This turns on which-func support (Plus all other code helpers)
;; (semantic-load-enable-excessive-code-helpers)

;; This turns on modes that aid in grammar writing and semantic tool
;; development.  It does not enable any other features such as code
;; helpers above.
;; (semantic-load-enable-semantic-debugging-helpers)
;; ---------------------------------------


(global-ede-mode 1)                      ; Enable the Project management system
(global-srecode-minor-mode 1)            ; Enable template insertion menu
;;(semantic-add-system-include "" 'c++-mode)

;;;; 配置 Emacs Code Browser
(require 'ecb)
(setq ecb-options-version "2.32")
;;;;配置Sementic的检索范围

;;(setq semanticdb-project-roots 
;;	  (list
;;      (expand-file-name "/")))

(setq semanticdb-search-system-databases t)
;; (setq semanticdb-default-save-directory "~/.semanticdb/")

(add-hook 'c-mode-common-hook
          (lambda ()
            (setq semanticdb-project-system-databases
                  (list (semanticdb-create-database
                           semanticdb-new-database-class
                           "/usr/include")))))
