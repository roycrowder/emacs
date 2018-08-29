;; Load init files
(load "~/.emacs.d/emacs-init-defaults.el")
(load "~/.emacs.d/emacs-init-general.el")
(load "~/.emacs.d/emacs-init-keymap.el")
(load "~/.emacs.d/emacs-init-modes.el")
(load "~/.emacs.d/emacs-init-rfc-viewer.el")
(load "~/.emacs.d/emacs-init-browser-select.el")
(load "~/.emacs.d/emacs-init-shell.el")
(load "~/.emacs.d/emacs-init-keybindings.el")
(load "~/.emacs.d/emacs-init-cscope.el")
(load "~/.emacs.d/emacs-init-cstyle.el")
(load "~/.emacs.d/emacs-init-copypaste.el")
(load "~/.emacs.d/emacs-init-kmacros.el")
(load "~/.emacs.d/emacs-init-deft.el")
(load "~/.emacs.d/emacs-init-org-mode.el")

;; SLIME
(setq inferior-lisp-program "/usr/local/bin/sbcl")

;; Wand
;;(require 'wand)
;;(global-set-key (kbd "<M-return>") 'wand:execute)
;;(global-set-key (kbd "<M-mouse-1>") 'wand:execute)

;;(wand:add-rule-by-pattern :match "\\$ "
;;                          :capture :after
;;                          :action popup-shell-command)

;; Dired
(package-initialize)
(require 'dired+)
;;(setq dired-use-ls-dired nil)

;; Ispell Program
(setq-default ispell-program-name "/opt/local/bin/aspell")

;; Auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.elisp//ac-dict")
(ac-config-default)

;; ELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(comint-buffer-maximum-size 20000)
 '(comint-completion-addsuffix t)
 '(comint-get-old-input (lambda nil "") t)
 '(comint-input-ignoredups t)
 '(comint-input-ring-size 5000)
 '(comint-prompt-read-only nil)
 '(comint-scroll-show-maximum-output t)
 '(comint-scroll-to-bottom-on-input t)
 '(comint-scroll-to-botton-on-output nil)
 '(cscope-program "/opt/local/bin/cscope")
 '(custom-enabled-themes (quote (ample)))
 '(custom-safe-themes
   (quote
    ("1d10043a0318d90a71cfa1f7e6b3b67f77c16ff9854f35a5b8722d87cb74f580" default)))
 '(erc-modules
   (quote
    (autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring services smiley stamp track)))
 '(erc-nick "rocrowde")
 '(erc-nickserv-alist (quote ((ASIG nil nil "NickServ" "identify" t nil nil))))
 '(erc-nickserv-passwords (quote ((ASIG (("rocrowde" . "Cr0$$0v3r"))))))
 '(fci-rule-color "#073642")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(jabber-account-list
   (quote
    (("rocrowde@chattaboogie.asig.cisco.com"
      (:password . "R0fl$tOmp3r")
      (:network-server . "chattaboobie.asig.cisco.com")
      (:port . 5222)
      (:connection-type . starttls)))))
 '(jabber-backlog-days 0.0)
 '(jabber-backlog-number 0)
 '(markdown-command "/usr/local/bin/markdown")
 '(org-agenda-custom-commands
   (quote
    (("d" todo "DELEGATED" nil)
     ("c" todo "DONE|DEFERRED|CANCELLED" nil)
     ("w" todo "WAITING" nil)
     ("W" agenda ""
      ((org-agenda-ndays 21)))
     ("A" agenda ""
      ((org-agenda-skip-function
        (lambda nil
          (org-agenda-skip-entry-if
           (quote notregexp)
           "\\=.*\\[#A\\]")))
       (org-agenda-ndays 1)
       (org-agenda-overriding-header "Today's Priority #A tasks: ")))
     ("u" alltodo ""
      ((org-agenda-skip-function
        (lambda nil
          (org-agenda-skip-entry-if
           (quote scheduled)
           (quote deadline)
           (quote regexp)
           "
]+>")))
       (org-agenda-overriding-header "Unscheduled TODO entries: "))))))
 '(org-agenda-files (quote ("~/Documents/notes/todo.org")))
 '(org-agenda-ndays 7)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-start-on-weekday nil)
 '(org-deadline-warning-days 14)
 '(org-default-notes-file "~/Documents/notes/notes.org")
 '(org-fast-tag-selection-single-key (quote expert))
 '(org-remember-store-without-prompt t)
 '(org-remember-templates
   (quote
    ((116 "* TODO %?
  %u" "~/Documents/notes/todo.org" "Tasks")
     (110 "* %u %?" "~/Documents/notes/notes.org" "Notes"))))
 '(org-reverse-note-order t)
 '(package-selected-packages
   (quote
    (terraform-mode yaml-mode tuareg smart-mode-line slime obsidian-theme markdown-mode magit json-mode ir-black-theme inkpot-theme http-twiddle haml-mode gandalf-theme fill-column-indicator dired+ deft dash coffee-mode calmer-forest-theme ample-theme)))
 '(protect-buffer-bury-p nil t)
 '(remember-annotation-functions (quote (org-remember-annotation)))
 '(remember-handler-functions (quote (org-remember-handler))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
;; User-setting area is below this line.

;; Tramp Settings
(require 'tramp)
(set-default 'tramp-auto-save-directory "C:/Users/roy3/AppData/Local/Temp")
(setq tramp-default-method "plink")
