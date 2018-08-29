(let ((map (if (boundp 'input-decode-map)
               input-decode-map function-key-map)))
  (define-key map (kbd "RET") [return])

  (define-key map "[OA" (kbd "<C-up>"))
  (define-key map "[OB" (kbd "<C-down>"))
  (define-key map "[OC" (kbd "<C-right>"))
  (define-key map "[OD" (kbd "<C-left>"))

  (define-key map "[A" (kbd "<C-up>"))
  (define-key map "[B" (kbd "<C-down>"))
  (define-key map "[C" (kbd "<C-right>"))
  (define-key map "[D" (kbd "<C-left>"))

  (define-key map "OA" (kbd "<M-up>"))
  (define-key map "OB" (kbd "<M-down>"))
  (define-key map "OC" (kbd "<M-right>"))
  (define-key map "OD" (kbd "<M-left>"))

  (define-key map "[OA" (kbd "<M-C-up>"))
  (define-key map "[OB" (kbd "<M-C-down>"))
  (define-key map "[OC" (kbd "<M-C-right>"))
  (define-key map "[OD" (kbd "<M-C-left>"))

  (define-key map "[[17~" (kbd "<C-f6>"))
  (define-key map "[[18~" (kbd "<C-f7>"))
  (define-key map "[[19~" (kbd "<C-f8>"))
  (define-key map "[[20~" (kbd "<C-f9>"))
  (define-key map "[[21~" (kbd "<C-f10>"))
  (define-key map "[[23~" (kbd "<C-f11>"))
  (define-key map "[[24~" (kbd "<C-f12>"))

  (define-key map "\e[1~" [home])
  (define-key map "\e[4~" [end])
  (define-key map "\e\e[1~" [M-home])
  (define-key map "\e\e[4~" [M-end])
)

;; Magit keymap
(global-set-key "\C-xg" 'magit-status)

;; Org mode keymap
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; Goto-line keymap
(global-set-key "\C-cg" 'goto-line)

(defun match-paren (arg)
  "Jump to the matching parenthesis"
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (message "No match"))))

;; End of M-5 matching brace code
(global-set-key "\M-5" 'match-paren)
