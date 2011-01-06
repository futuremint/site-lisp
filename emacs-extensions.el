;; 
;; Extensions that make Emacs work... better (I think)
;; 

;; Recursive file find (awesome)
(require 'find-recursive)

;;  Predictive abbreviations
;;  http://homepages.cs.ncl.ac.uk/phillip.lord/download/emacs/pabbrev.el
(add-to-list 'load-path "~/.site-lisp/el")
(require 'pabbrev)
(global-pabbrev-mode t)

;; Zenburn (for those late nights)
;; (require 'zenburn)
;; (zenburn)

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