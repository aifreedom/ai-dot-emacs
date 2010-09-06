(add-to-list 'load-path "~/.elisp/unicad-1.1.6-beta")
(require 'unicad)

(let ((l '(chinese-gb2312
	   gb18030-2-byte
	   gb18030-4-byte-bmp
	   gb18030-4-byte-ext-1
	   gb18030-4-byte-ext-2
	   gb18030-4-byte-smp)))
  (dolist (elt l)
    (map-charset-chars #'modify-category-entry elt ?|)
    (map-charset-chars
     (lambda (range ignore) 
       (set-char-table-range char-width-table range 2))
     elt)))
