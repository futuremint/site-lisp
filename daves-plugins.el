;; Flips quote characters from ' to "
(defun flip-quote-char (c)
  "Returns the 'opposite' quote character"
  (cond
   ((eq c ?') ?\")
   ((eq c ?\") ?')
   (c)))

(defun flip-quote-string-chars ()
  "Flip quote marks when point is in a string"
  (interactive)
  (save-excursion
    ;; Should check if we're inside a string
    ;; This has problems with nested "''" pairs
    ;; Consider using the font-lock
    (skip-syntax-backward "^['\"]")
    (let ((quo 
           (flip-quote-char (char-after (- (point) 1)))))
      (delete-char -1)
      (insert-char quo 1)
      ;; Right quo
      (skip-syntax-forward "^['\"]")
      (delete-char 1)
      (insert-char quo 1)
      )))

(global-set-key (kbd "C-'") 'flip-quote-string-chars)
