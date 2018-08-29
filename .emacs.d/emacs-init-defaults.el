;; Turn on save place so that when opening a file, the cursor will be at the las
;; position
(require 'saveplace)
(setq save-place-file (concat user-emacs-directory "saveplace.el"))
(setq-default save-place t)

(setq-default
 ;; we usually want a final newline...
 require-final-newline 'ask
 ;; No, please, no tabs in my programs!
 indent-tabs-mode nil
 ;; If you don't know, just give me text-mode
 default-major-mode 'text-mode
 ;; I don't like emacs destroying my window setup
 even-window-heights nil
 ;; Same here
 resize-mini-windows nil
 ;; Two spaces after a colon is wrong[tm] in german.  There's even a
 ;; DIN for that... (DIN 5008)
 sentence-end-double-space nil
 ;; No am/pm here
 display-time-24hr-format t
 ;; Use w3m for URLs
 browse-url-browser-function 'fc-choose-browser
 ;; A tab is 2 spaces is 2 spaces is 2 spaces
 default-tab-width 2
 ;; Scrolling is moving the document, not moving my eyes
 scroll-preserve-screen-position 'keep
 ;; My email address
 user-mail-address "rocrowde@cisco.com"
 ;; I kinda know my emacs
 inhibit-startup-message t
 ;; context is nicer to read
 diff-switches "-c"
 ;; nice comment format
 comment-style 'extra-line
 ;; case insensitivity for the masses!
 case-fold-search t
 read-file-name-completion-ignore-case t
 completion-ignore-case t
 ;; Don't show a cursor in other windows
 cursor-in-non-selected-windows nil
 ;; A wide characters ask for a wide cursor
 x-stretch-cursor t
 ;; Don't highlight stuff that I can click on all the time. I don't click
 ;; anyways.
 mouse-highlight 1
 )

;; ===== Set standard indent to 2 rather than 4 ====
(setq standard-indent 2)

;; ===== Line by line scrolling =====
(setq scroll-step 1)

;; ===== Turn off tab character =====
(setq-default indent-tabs-mode nil)

;; ===== Support Wheel Mouse Scrolling =====
;;(mouse-wheel-mode t)

;; ===== Prevent Emacs from making backup files =====
(setq make-backup-files nil)
(setq auto-save-default nil)

;; ===== Enable Line and Column Numbering =====
(line-number-mode t)
(column-number-mode t)

;; ===== Set the fill column =====
(setq-default fill-column 72)

;; ===== Turn on AutoFill mode automatically in all modes =====
(setq auto-fill-mode 1)

;; ===== Yes/no questions are lame... =====
(defalias 'yes-or-no-p 'y-or-n-p)

;; ===== Always update timestamps on writing
(add-hook 'before-save-hook 'time-stamp)

;; Have TAB expand in M-:
(define-key read-expression-map (kbd "TAB") #'lisp-complete-symbol)

;; But I like syntax highlighting
(global-font-lock-mode t)

;; ===== Display time =====
(display-time)

;; ===== Do random numbers =====
(random t)

;; Show me your parens!
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

;; Sometimes, Emacs fucks up my window config.
;; Let me fix it easily.
(winner-mode 1)

;; Oh, and I want useful mouse selection.
;;(mouse-sel-mode 1)
