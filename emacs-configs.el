;;
;; Configuring Emacs the way I like it
;;

;; MacPorts env for OS X
(when (equal system-type 'darwin)
  (setenv "PATH" (concat "/opt/local/bin:/usr/local/bin:" (getenv "PATH")))
  (push "/opt/local/bin" exec-path))

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

;; Never type 'yes' or 'no' again!!
(defalias 'yes-or-no-p 'y-or-n-p)

;; Converts Command to the meta key
(setq mac-command-modifier 'meta)

;; Convenient Keybindings
;; Putting rgrep close at hand (don't really need center line in window)
(global-set-key "\M-r" 'rgrep)
(global-set-key "\C-\M-j" 'join-line)

;; Save desktop layout on launch and before quit
(desktop-save-mode 1)

;; Trying to get reasonable behavior out of MULE
;; (setq default-input-method "MacOSX")
(prefer-coding-system       'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)

;; Pair skeletons for common symbol parings
;;  Consider changing this for lots of writing of non-programming stuff (maybe)
(setq skeleton-pair-on-word t
      skeleton-pair t)
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)

;; For inserting HTML tags using Emacs built-in stuff
;; TODO: Consider making one that can also wrap a region
;; FIXME: Broken on self-closing tags, and also doesn't work for inserting closing tags
(define-skeleton insert-html-tag
  "Inserts an HTML tag"
  nil
  '(setq str (skeleton-read "Tag: "))
  >"<"str">"-"</"str">")

;; Only run above in RHTML mode
(add-hook 'rhtml-mode-hook
          (lambda ()
            (local-set-key (kbd "C-<") 'insert-html-tag)))
