(defun recentf-open-files-compl ()
  (interactive)
  (let* ((all-files recentf-list)
	 (tocpl (mapcar (function 
			 (lambda (x) (cons (file-name-nondirectory x) x))) all-files))
	 (prompt (append '("File name: ") tocpl))
	 (fname (completing-read (car prompt) (cdr prompt) nil nil)))
    ;;    (find-file (cdr (assoc-ignore-representation fname tocpl))))) 
    (find-file (cdr (assoc-string fname tocpl))))) 
(setq recentf-max-saved-items 50)
(global-set-key [(control x)(control r)] 'recentf-open-files-compl) ;;绑定C-x C-r到recentf上    
(global-set-key (kbd "C-c C-r") 'recentf-open-files-compl) ;;绑定C-c C-r到recentf上


(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1))))) ;;括号匹配
(global-set-key "%" 'match-paren)

(defun wy-go-to-char (n char)
  "Move forward to Nth occurence of CHAR.
Typing `wy-go-to-char-key' again will move forwad to the next Nth
occurence of CHAR."
  (interactive "p\ncGo to char: ")
  (search-forward (string char) nil nil n)
  (while (char-equal (read-char)
		     char)
    (search-forward (string char) nil nil n))
  (setq unread-command-events (list last-input-event)))
(define-key global-map (kbd "C-c f") 'wy-go-to-char) ;; go-to-char, 向后找字符

(defun ska-point-to-register()
  "Store cursorposition _fast_ in a register. 
Use ska-jump-to-register to jump back to the stored 
position."
  (interactive)
  (setq zmacs-region-stays t)
  (point-to-register 8))

(defun ska-jump-to-register()
  "Switches between current cursorposition and position
that was stored with ska-point-to-register."
  (interactive)
  (setq zmacs-region-stays t)
  (let ((tmp (point-marker)))
    (jump-to-register 8)
    (set-register 8 tmp)))
(global-set-key [(control ?\.)] 'ska-point-to-register)
(global-set-key [(control ?\,)] 'ska-jump-to-register)


(defun ai-indent-or-complete ()
  (interactive)
  (if (looking-at "\\>")
      (hippie-expand nil)
    (indent-for-tab-command)))
(global-set-key [(control tab)] 'ai-indent-or-complete)

(autoload 'senator-try-expand-semantic "senator")

(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list 
      '(senator-try-expand-semantic
	try-expand-dabbrev
	try-expand-dabbrev-visible
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-expand-all-abbrevs
	try-expand-list
	try-expand-line
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol)) ;;hippie-expand自动补全

;;search variables by value
(defun ai-search-variables-by-value (r)
  (interactive "MSearch variable match this regex :")
  (with-output-to-temp-buffer "*Help*"
    (with-current-buffer (get-buffer "*Help*")
      (princ "Variables value matches ")
      (let ((p (point)))
        (princ (format "%s :\n\n" r))
        (add-text-properties
         p (point)
         (list
          'face 'bold)))
      (mapatoms
       (lambda (s)
         (if (and (boundp s)
                  (stringp (symbol-value s))
                  (string-match r (symbol-value s)))
             (progn
               (let ((p (point))
                     (map (make-sparse-keymap)))
                 (define-key map [mouse-1]
                   (lambda (event)
                     (interactive "e")
                     (save-excursion
                       (mouse-set-point event)
                       (describe-variable 
                        (intern (get-text-property (point) 'symname))))))
                 (princ (symbol-name s))
                 (add-text-properties
                  p (point)
                  (list
                   'symname (symbol-name s)
                   'face 'button
                   'mouse-face 'highlight
                   'keymap map))
                 (princ "\n")
                 (princ (concat (symbol-value s) "\n\n"))
                 ))))))
    (help-setup-xref (list #'my-search-variables-by-value r)
                     (interactive-p))
    (print-help-return-message)))
(global-set-key (kbd "C-c s") 'ai-search-variables-by-value)

(defun ai-insert-date ()
  (interactive)
  (insert (format-time-string "%B %d, %Y" (current-time))))
(global-set-key (kbd "C-c d") 'ai-insert-date)

(defun count-words-region (beginning end)
       "Print number of words in the region."
       (interactive "r")
       (message "Counting words in region ... ")

     ;;; 1. Set up appropriate conditions.
       (save-excursion
         (let ((count 0))
           (goto-char beginning)

     ;;; 2. Run the while loop.
           (while (and (< (point) end)
                       (re-search-forward "\\w+\\W*" end t))
             (setq count (1+ count)))

     ;;; 3. Send a message to the user.
           (cond ((zerop count)
                  (message
                   "The region does NOT have any words."))
                 ((= 1 count)
                  (message
                   "The region has 1 word."))
                 (t
                  (message
                   "The region has %d words." count))))))

;; -- define a new command to join multiple lines together --
(defun join-lines () (interactive)
  (setq fill-column 100000)
  (fill-paragraph nil)
  (setq fill-column 70))
