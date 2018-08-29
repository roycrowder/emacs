(require 'easymenu)
(eval-when-compile (require 'cl))

(defun igg1-chomp (str)
      "Chomp leading and tailing whitespace from STR."
      (replace-regexp-in-string (rx (or (: bos (* (any " \t\n")))
                                        (: (* (any " \t\n")) eos)))
                                ""
                                str))

(defun igg1-parse-command (command)
  (let (response chomped)
    (setq chomped (igg1-chomp command))
    (save-match-data
      (and (string-match "^\\$\s*\\(.+\\)$" chomped)
           (setq call (match-string 1 chomped))
           (setq response (shell-command-to-string call))
           (forward-line 1)
           (insert response))
      (or (string-match "^\\|\s*\\(.+\\)$" chomped)
          (setq call (match-string 1 chomped))
          ))))

(defun igg1-grab-command ()
  (interactive)
  (let (p1 p2 cp my-line)
    (setq p1 (line-beginning-position))
    (setq p2 (line-end-position))
    (setq cp (point))
    (setq my-line (buffer-substring-no-properties p1 p2))
    (igg1-parse-command my-line)
    (goto-char cp)))

(defvar igg1-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "ESC <return>") 'igg1-grab-command)
    map)
  "Keymap for Igg1 minor mode.")

(define-minor-mode igg1-mode
  "Attempt at something like Xiki in Lisp"
  :lighter " igg1"
  :keymap 'igg1-mode-map)

