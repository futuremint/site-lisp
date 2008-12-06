(add-to-list 'load-path "~/.site-lisp")
;; Configuration of emacs itself
(load "emacs-configs")
;; My ELisp
(load "daves-plugins")
;; Extra/modified modes
(load "extra-modes")
;; ELisp that enhances emacs
(load "emacs-extensions")
;; One emacs... many clients.
(server-start)