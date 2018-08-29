;; http://wiki-eng.cisco.com/engwiki/CiscoEmacsFaq
;; cisco c style
;; have to make sure (global-set-key "\t" 'tab-to-tab-stop) is not in this file
(setq c-basic-offset 4)
(setq c-cleanup-list (quote (brace-else-brace brace-elseif-brace brace-catch-brace)))
(setq c-comment-continuation-stars "* ")
(setq c-default-style "user")
(setq c-hanging-comment-ender-p nil)
(setq c-hanging-comment-starter-p nil)
(setq c-indent-comments-syntactically-p t)
(setq c-label-minimum-indentation 0)

(defvar cisco-c-style
  '(
    (local-set-key "\C-m" 'newline-and-indent)
    (indent-tabs-mode               . t)  ;;this is original
    ;;(indent-tabs-mode               . nil)  ;;this keep ken from complaining
    (c-basic-offset                 . 4)
    (c-block-comments-indent-p      . t)
    (c-comment-only-line-offset     . 0)
    (c-echo-syntactic-information-p . nil)
    (c-hanging-comment-ender-p      . t)
    (c-recognize-knr-p              . t) ; use nil if only have ANSI prototype
    (c-tab-always-indent            . t)
    (comment-column                 . 40)
    (comment-end                    . " */")
    (comment-multi-line             . t)
    (comment-start                  . "/* ")
    (c-offsets-alist                . ((knr-argdecl-intro   . +)
                                       (case-label          . 0)
                                       (knr-argdecl         . 0)
                                       (label               . 0)
                                       (statement-case-open . +)
                                       (statement-cont      . +)
                                       (substatement-open   . 0))))
  "cisco c-style for cc-mode")

(add-hook 'c-mode-common-hook
          '(lambda ()
             (c-add-style "CISCO" cisco-c-style)
             (if (> emacs-major-version 19)  ;;function changed after 19
                 (c-set-style "CISCO")
       (set-c-style "CISCO"))))

(add-hook 'c-mode-common-hook
  (lambda()
    (local-set-key  (kbd "C-c o") 'ff-find-other-file)))
