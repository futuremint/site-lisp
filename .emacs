(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
;; In Emacs 27 package-initialize has already been called in early-init
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (typescript-mode . prettier-js)))

(add-hook 'typescript-mode-hook #'setup-tide-mode)

(use-package js-mode
  :hook ((js-mode . setup-tide-mode)))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))

(add-hook 'pythom-mode-hook 'company-mode)

;; display line numbers in all programming modes
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; enable typescript-tslint checker
;; (flycheck-add-mode 'typescript-tslint 'web-mode)

(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
			  ("C-c p" . projectile-command-map)))

(use-package treemacs-projectile
  :after treemacs projectile
  :ensure t)

(use-package treemacs-magit
  :after treemacs magit
  :ensure t)

(when (equal system-type 'darwin)
  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
  (setenv "PATH" (concat "~/.cargo/bin:" (getenv "PATH")))
  (push "~/.cargo/bin" exec-path)
  (push "/usr/local/bin" exec-path))

(setq custom-file "~/.emacs.d/emacs-custom.el")
(load-file custom-file)

(toggle-scroll-bar -1)

(windmove-default-keybindings)
(display-time-mode)
