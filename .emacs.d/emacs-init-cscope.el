;; Add CSCOPE.
(require 'xcscope)

;; cscope - blatently stolen from srich
(setenv "PATH" (concat (getenv "PATH") ":/opt/local/bin"))
(setq cscope-do-not-update-database t)
(defun cscope-keymap (map)
  (define-key map "\C-css" 'cscope-find-this-symbol)
  (define-key map "\C-csg" 'cscope-find-global-definition)
  (define-key map "\C-csG" 'cscope-find-global-definition-no-prompting)
  (define-key map "\C-csp" 'cscope-prev-symbol)
  (define-key map "\C-csP" 'cscope-prev-file)
  (define-key map "\C-csc" 'cscope-find-functions-calling-this-function)
  (define-key map "\C-csC" 'cscope-find-called-functions)
  (define-key map "\C-cst" 'cscope-find-this-text-string)
  (define-key map "\C-cse" 'cscope-find-egrep-pattern)
  (define-key map "\C-csf" 'cscope-find-this-file)
  (define-key map "\C-csi" 'cscope-find-files-including-file)
  (define-key map "\C-csb" 'cscope-display-buffer)
  (define-key map "\C-csB" 'cscope-display-buffer-toggle)
  (define-key map "\C-csn" 'cscope-next-symbol)
  (define-key map "\C-csN" 'cscope-next-file)
  (define-key map "\C-csp" 'cscope-prev-symbol)
  (define-key map "\C-csP" 'cscope-prev-file)
  (define-key map "\C-csu" 'cscope-pop-mark)
  (define-key map "\C-csa" 'cscope-set-initial-directory))

;; add it to the global key map.
(cscope-keymap global-map)
