;; 
;; Modes and mode customizations
;; 

;; w3m configs
(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
(setq w3m-use-cookies t)

;; Org-mode
(add-to-list 'load-path "~/.site-lisp/org/lisp")
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(setq org-hide-leading-stars t)

;; Erlang mode
(add-to-list 'load-path "/opt/local/lib/erlang/lib/tools-2.6.1/emacs/")
(require 'erlang-start)

;; Steve Yegge's "JS2" mode
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; RHTML from Rinari
(add-to-list 'load-path "~/.site-lisp/rhtml/")
(require 'rhtml-mode)

;; Git
(require 'git)
(require 'git-blame)

;; Gitsum
(add-to-list 'load-path "~/.site-lisp/gitsum/")
(require 'gitsum)

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
    ;; resort to default value of backup-inhibited
    (kill-local-variable 'backup-inhibited)
    ;; resort to default auto save setting
    (if auto-save-default
        (auto-save-mode 1))))
(global-set-key "\C-x\C-b" sensitive-mode)
