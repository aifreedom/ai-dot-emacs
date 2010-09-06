(require 'jabber)
(setq jabber-account-list '(("magicet@gmail.com" 
  (:network-server . "talk.google.com")
  (:connection-type . ssl))))

(setq jabber-alert-message-wave "/usr/share/sounds/purple/receive.wav")
(setq jabber-alert-presence-wave "/usr/share/sounds/purple/login.wav")
(setq jabber-alert-presence-hooks '(jabber-message-wave
				   jabber-message-echo ))
(setq jabber-alert-message-hooks '(jabber-message-wave
				   jabber-message-echo ))

