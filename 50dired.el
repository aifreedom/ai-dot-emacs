(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top) ;;让 dired 可以递归的拷贝和删除目录
(require 'dired-x)
(global-set-key (kbd "C-x j") 'dired-jump)
(global-set-key (kbd "C-c j") 'dired-jump)
(setq dired-guess-shell-alist-user
      (list
       (list "\\.chm$" "xchm")
       (list "\\.rm$" "gmplayer")
       (list "\\.rmvb$" "gmplayer")
       (list "\\.avi$" "gmplayer")
       (list "\\.asf$" "gmplayer")
       (list "\\.wmv$" "gmplayer")
       (list "\\.htm$" "w3m")
       (list "\\.html$" "w3m")
       (list "\\.mpg$" "gmplayer")
       (list "\\.chm$" "chmsee")
      )
 ) ;;设置一些文件的默认打开方式，此功能必须在(require 'dired-x)之后 
