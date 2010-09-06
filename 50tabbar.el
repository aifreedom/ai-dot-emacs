(require 'tabbar)
(tabbar-mode)
(global-set-key (quote [s-up]) (quote tabbar-forward-group))
(global-set-key (quote [s-down]) (quote tabbar-backward-group))
;;(global-set-key [(control shift tab)] 'tabbar-backward)
;;(global-set-key [(control tab)]       'tabbar-forward)
(global-set-key (quote [s-left]) (quote tabbar-backward))
(global-set-key (quote [s-right]) (quote tabbar-forward)) ;; tabbar
