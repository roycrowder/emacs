;; ===== Markdown Mode =====
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; ===== AppleScript Mode =====
(autoload 'applescript-mode "applescript-mode"
   "Major mode for editing AppleScript source." t)
(add-to-list 'auto-mode-alist '("\\.applescript$" . applescript-mode))

;; ===== Perl Mode =====
(defalias 'perl-mode 'cperl-mode)
(setq cperl-invalid-face (quote off))
(setq cperl-highlight-variables-indiscriminately t)
(setq cperl-hairy t)

;; ===== Org Mode =====
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; ===== JSP Mode =====
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . java-mode))
