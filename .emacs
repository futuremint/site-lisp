;; Custom 'customizations' file
(setq custom-file "~/.emacs-custom.el")
(load custom-file)

;; Enable mouse wheel scrolling
(mouse-wheel-mode 1)
;; Enable code highlighting everywhere
(global-font-lock-mode 1)
;; Turn on filesets
(filesets-init)
;; Turn on icomplete-mode
(icomplete-mode 1)

;; Shortcut keys from http://steve.yegge.googlepages.com/effective-emacs
;;  C-x C-m and C-c C-m mapped ot M-x
;error! (global-set-key "\C-x\C-m" execute-extended-command)
;(global-set-key "\C-c\C-m" execute-extended-command)
;;  Backspace becomes M-backspace

(add-to-list 'load-path "~/.site-lisp")
(require 'snippet)
(require 'find-recursive)
;; (require 'zenburn)
;; (zenburn)
(require 'two-mode-mode)

;; Factor emacs package
(load-file "~/Desktop/factor/misc/factor.el")
(setq factor-binary "~/Desktop/factor")
(setq factor-image "~Desktop/factor.image")


;; Simple Lisp Files
;;  Predictive abbreviations
;;  http://homepages.cs.ncl.ac.uk/phillip.lord/download/emacs/pabbrev.el
(add-to-list 'load-path "~/.site-lisp/el")
(require 'pabbrev)

;; Interactive Do: included in emacs
(require 'ido)
(ido-mode t)

;; Erlang mode
(add-to-list 'load-path "/opt/local/lib/erlang/lib/tools-2.6.1/emacs/")
(require 'erlang-start)

;; Save desktop layout on launch and before quit
(desktop-save-mode 1)

;; ECB requirements

;These lines are required for ECB
;; (add-to-list 'load-path "~/.site-lisp/cedet-1.0pre4/common")
;; (add-to-list 'load-path "~/.site-lisp/cedet-1.0pre4/eieio")
;; (add-to-list 'load-path "~/.site-lisp/cedet-1.0pre4/speedbar")
;; (add-to-list 'load-path "~/.site-lisp/cedet-1.0pre4/semantic")
(require 'cedet)
;; (require 'semantic-load)
;; (setq semantic-load-turn-everything-on t)

; This installs ecb - it is activated with M-x ecb-activate
;; (add-to-list 'load-path "~/.site-lisp/ecb-2.32")
;; (require 'ecb-autoloads)

;; Local copy of nXhtml
;; (load-library "autostart")

;; RHTML from Rinari
(add-to-list 'load-path "~/.site-lisp/rhtml/")
(require 'rhtml-mode)

;; Rails minor mode
;; (add-to-list 'load-path "~/.site-lisp/emacs-rails")
(require 'rails)

;; From http://www.blik.it/2007/03/22/better-rhtml-mode-for-emacs/
(add-hook 'rhtml-mode-hook
          (lambda ()
            (two-mode-mode)
            (message "My rhtml-mode customizations loaded")))
(add-hook 'html-mode-hook
          (lambda ()
            (rails-minor-mode)
            (message "My html-mode customizations loaded")))
;; Redefine auto-mode for ERB files
(setq auto-mode-alist  (cons '("\.erb$" . rhtml-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\.rhtml$" . rhtml-mode) auto-mode-alist))

;; Ri for Emacs
;; (setq ri-ruby-script "~/.site-lisp/ri-emacs-0.2.3/ri-emacs.rb")
;; (autoload 'ri "~/.site-lisp/ri-emacs-0.2.3/ri-ruby.el" nil t)

;; Git
(require 'git)

(server-start)

;; "Turn off backups" mode
(define-minor-mode sensitive-mode
  "For sensitive files like password lists.
It disables backup creation and auto saving.

With no argument, this command toggles the mode.
Non-null prefix argument turns on the mode.
Null prefix argument turns off the mode."
  ;; The initial value.
  nil
  ;; The indicator for the mode line.
  " Sensitive"
  ;; The minor mode bindings.
  nil
  (if (symbol-value sensitive-mode)
      (progn
	;; disable backups
	(set (make-local-variable 'backup-inhibited) t)	
	;; disable auto-save
	(if auto-save-default
	    (auto-save-mode -1)))
    ;resort to default value of backup-inhibited
    (kill-local-variable 'backup-inhibited)
    ;resort to default auto save setting
    (if auto-save-default
	(auto-save-mode 1))))
(global-set-key "\C-x\C-b" sensitive-mode)
(tool-bar-mode)
(mac-toggle-max-window)