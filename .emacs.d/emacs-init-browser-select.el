(defun browse-url-with-firefox2 (url)
  (interactive)
  (let ()
    (cond
     ((string-equal system-type "windows-nt") ; Windows
      (shell-command (concat "firefox file://" buffer-file-name))
      )
     ((string-equal system-type "gnu/linux")
      (shell-command (concat "firefox file://" buffer-file-name))
      )
     ((string-equal system-type "darwin") ; Mac
      (shell-command (concat "open -a Firefox.app " url))
       ) )
    ))

;; Setting fc-choose-browser
(defun fc-choose-browser (url &rest args)
  (interactive "sURL: ")
  (if (y-or-n-p "Use external browser? ")
      (browse-url-with-firefox2 url)
    (w3m-browse-url url)))
