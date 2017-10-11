;; make emacs compatible in different platform

;; judge whether in windows or not
(defun windows-nt?()
  (if
      (equal "windows-nt" (symbol-name system-type))
      1 nil))

(if
    (windows-nt?)
    (
;; 引用中文字体插件
(require 'cnfonts)
;; 让 cnfonts 随着 Emacs 自动生效。
(cnfonts-enable)
;; 让 spacemacs mode-line 中的 Unicode 图标正确显示。
(cnfonts-set-spacemacs-fallback-fonts)
     ))


(provide 'compat)
