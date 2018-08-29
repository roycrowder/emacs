;; ===== General Setup =====
(setq transient-mark-mode t)
(setq delete-key-deletes-forward t)
(setq-default show-trailing-whitespace t)
(add-to-list 'load-path "~/.elisp")

;; Remove the \ when wrapping text
(set-display-table-slot standard-display-table 'wrap ?\ )
