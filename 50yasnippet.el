(add-to-list 'load-path
                  (concat elisp-home "/yasnippet-0.6.1c"))

(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory (concat elisp-home "/yasnippet-0.6.1c/snippets"))

