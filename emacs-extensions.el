;; 
;; Extensions that make Emacs work... better (I think)
;; 

;; Recursive file find (awesome)
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
(setq ido-enable-flex-matching t)

;; Clean the buffer list at midnight
(require 'midnight)

;; yasnippet
;; http://code.google.com/p/yasnippet/
(add-to-list 'load-path "~/.site-lisp/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.site-lisp/yasnippet/snippets")
 
;; Redefine auto-mode for ERB files
(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))
;; For some rake files
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rfpdf$" . ruby-mode))

;; Smooth Scrolling ... awesome!
(require 'smooth-scrolling)

;; Ri for Emacs *Broken, needs help
;; (setq ri-ruby-script "~/.site-lisp/ri-emacs-0.2.3/ri-emacs.rb")
;; (autoload 'ri "~/.site-lisp/ri-emacs-0.2.3/ri-ruby.el" nil t)
