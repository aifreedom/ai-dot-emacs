(global-set-key (kbd "C-c m") 'message-mail)
(global-set-key (kbd "C-x m") 'message-mail)

;(setq nnimap-split-inbox '("INBOX"))
;;(setq nnimap-split-rule 'nnmail-split-fancy)
(setq starttls-use-gnutls t)
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials '(("smtp.gmail.com" 587 "magicet@gmail.com" "myx4tovim"))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)

(setq send-mail-function 'smtpmail-send-it      
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials '(("smtp.gmail.com" 587 "magicet@gmail.com" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
     smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)