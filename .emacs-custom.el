(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(abbrev-mode nil)
 '(auto-coding-alist (quote (("\\.\\(arc\\|zip\\|lzh\\|lha\\|zoo\\|[jew]ar\\|xpi\\|exe\\)\\'" . no-conversion) ("\\.\\(ARC\\|ZIP\\|LZH\\|LHA\\|ZOO\\|[JEW]AR\\|XPI\\|EXE\\)\\'" . no-conversion) ("\\.\\(sx[dmicw]\\|odt\\|tar\\|tgz\\)\\'" . no-conversion) ("\\.\\(gz\\|Z\\|bz\\|bz2\\|gpg\\)\\'" . no-conversion) ("\\.\\(jpe?g\\|png\\|gif\\|tiff?\\|p[bpgn]m\\)\\'" . no-conversion) ("\\.pdf\\'" . no-conversion) ("/#[^/]+#\\'" . raw-text))))
 '(auto-coding-regexp-alist (quote (("^BABYL OPTIONS:[ 	]*-\\*-[ 	]*rmail[ 	]*-\\*-" . no-conversion) ("\\`\xfe\xff" . utf-16be-with-signature) ("\\`\xff\xfe" . utf-16le-with-signature) ("\\`\xef\xbb\xbf" . utf-8-unix) ("\\`Ã¢" . utf-8-unix))))
 '(css-indent-offset 2)
 '(display-battery-mode t)
 '(display-time-day-and-date nil)
 '(display-time-mail-file (quote none))
 '(display-time-mode t)
 '(enable-multibyte-characters t)
 '(file-coding-system-alist (quote (("\\.\\(html.erb\\|erb\\|js.rjs\\|builder\\|rhtml\\|rxml\\|rjs\\|haml\\|liquid\\|mab\\)$" utf-8 . utf-8) ("Rakefile$" utf-8 . utf-8) ("\\.rake$" utf-8 . utf-8) ("\\.dz\\'" no-conversion . no-conversion) ("\\.g?z\\(~\\|\\.~[0-9]+~\\)?\\'" no-conversion . no-conversion) ("\\.tgz\\'" no-conversion . no-conversion) ("\\.tbz\\'" no-conversion . no-conversion) ("\\.bz2\\(~\\|\\.~[0-9]+~\\)?\\'" no-conversion . no-conversion) ("\\.Z\\(~\\|\\.~[0-9]+~\\)?\\'" no-conversion . no-conversion) ("\\.elc\\'" emacs-mule . emacs-mule) ("\\.utf\\(-8\\)?\\'" . utf-8) ("\\(\\`\\|/\\)loaddefs.el\\'" raw-text . raw-text-unix) ("\\.tar\\'" no-conversion . no-conversion) ("\\.po[tx]?\\'\\|\\.po\\." . po-find-file-coding-system) ("\\.\\(tex\\|ltx\\|dtx\\|drv\\)\\'" . latexenc-find-file-coding-system) ("" undecided))))
 '(font-lock-global-modes t)
 '(global-font-lock-mode t)
 '(global-pabbrev-mode t)
 '(grep-command "grep -nH -e")
 '(grep-template "grep <C> -nH -e <R> <F>")
 '(indent-tabs-mode nil)
 '(indicate-buffer-boundaries (quote left))
 '(indicate-empty-lines t)
 '(inhibit-eol-conversion nil)
 '(inhibit-startup-screen t)
 '(javascript-indent-level 2)
 '(only-global-abbrevs nil)
 '(org-agenda-files (quote ("~/Documents/dealerflow/notes.org")))
 '(pabbrev-minimal-expansion-p t)
 '(paren-match-face (quote paren-face-match-light))
 '(paren-sexp-mode t)
 '(recentf-mode t)
 '(ruby-deep-arglist (quote f))
 '(ruby-electric-newline-before-closing-bracket t)
 '(save-abbrevs nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(standard-indent 2)
 '(tab-width 2)
 '(text-mode-hook (quote (text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(vc-directory-exclusion-list (quote ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "{arch}" "log" "doc" "rails")))
 '(vc-dired-recurse nil)
 '(vc-dired-terse-display nil)
 '(vc-handled-backends (quote (RCS CVS SCCS Git Hg Arch MCVS)))
 '(vc-keep-workfiles t)
 '(version-control nil)
 '(winner-mode t nil (winner)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :family "apple-Monaco"))))
 '(erb-comment-delim-face ((t (:inherit erb-delim-face :foreground "darkgreen" :weight bold))))
 '(erb-comment-face ((t (:inherit erb-face :foreground "darkgreen"))))
 '(erb-delim-face ((t (:background "snow2" :weight bold))))
 '(erb-face ((t (:background "snow2"))))
 '(erb-out-delim-face ((t (:inherit erb-delim-face :foreground "pink4"))))
 '(flymake-errline ((((class color)) (:background "pink1"))))
 '(flymake-warnline ((((class color)) (:background "lightblue2"))))
 '(ido-first-match ((t (:foreground "blue"))))
 '(ido-only-match ((((class color)) (:foreground "firebrick"))))
 '(ido-subdir ((((min-colors 88) (class color)) (:foreground "darkgreen"))))
 '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) nil)))
 '(mumamo-background-chunk-submode ((nil (:background "gray34"))))
 '(yaml-tab-face ((((class color)) (:background "red" :inverse-video unspecified)))))
