;; make emacs compatible in different platform

;; judge whether in windows or not
(defun windows-nt?()
  (if
      (equal "windows-nt" (symbol-name system-type))
      1 nil))

;; set font if in windows (emacs 25.1 will be slow if font is not be 宋体)
(if
    (windows-nt?)
    (set-default-font"-outline-宋体-normal-normal-normal-*-20-*-*-*-p-*-iso8859-1"))

(provide 'compat)
