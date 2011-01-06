;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

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
