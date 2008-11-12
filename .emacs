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

;; Shift-arrow keys to change windows
(windmove-default-keybindings)

;; Recursive file find (awesome)
(add-to-list 'load-path "~/.site-lisp")
(require 'find-recursive)

;; Zenburn color scheme (for those late nights)
;; (require 'zenburn)
;; (zenburn)

;;  Predictive abbreviations
;;  http://homepages.cs.ncl.ac.uk/phillip.lord/download/emacs/pabbrev.el
(add-to-list 'load-path "~/.site-lisp/el")
(require 'pabbrev)
(global-pabbrev-mode t)

;; Interactive Do: included in emacs
(require 'ido)
(ido-mode t)

;; Never type 'yes' or 'no' again!!
(defalias 'yes-or-no-p 'y-or-n-p)

;; Org-mode
(add-to-list 'load-path "~/.site-lisp/org/lisp")
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-hide-leading-stars t)

;; yasnippet
;; http://code.google.com/p/yasnippet/
(add-to-list 'load-path "~/.site-lisp/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.site-lisp/yasnippet/snippets")

;; Erlang mode
(add-to-list 'load-path "/opt/local/lib/erlang/lib/tools-2.6.1/emacs/")
(require 'erlang-start)

;; Save desktop layout on launch and before quit
(desktop-save-mode 1)

;; RHTML from Rinari
(add-to-list 'load-path "~/.site-lisp/rhtml/")
(require 'rhtml-mode)

;; Redefine auto-mode for ERB files
(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))
;; For some rake files
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rfpdf$" . ruby-mode))

;; Trying to get reasonable behavior out of MULE
(setq default-input-method "MacOSX") 
(prefer-coding-system       'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)

;; Ri for Emacs *Broken, needs help
;; (setq ri-ruby-script "~/.site-lisp/ri-emacs-0.2.3/ri-emacs.rb")
;; (autoload 'ri "~/.site-lisp/ri-emacs-0.2.3/ri-ruby.el" nil t)

;; Git
(require 'git)
(require 'git-blame)
;; Gitsum
(add-to-list 'load-path "~/.site-lisp/gitsum/")
(require 'gitsum)

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
