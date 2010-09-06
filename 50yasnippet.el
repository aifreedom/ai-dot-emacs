(add-to-list 'load-path
                  "~/.elisp/yasnippet-0.6.1c")

(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.elisp/yasnippet-0.6.1c/snippets")

