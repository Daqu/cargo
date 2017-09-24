;; about edit

;; hightlight indentation
(require 'highlight-indentation)
(set-face-background 'highlight-indentation-face "#EEE8AA")
;;(set-face-background 'highlight-indentation-current-column-face "blue")
(add-hook 'c-mode-common-hook 'highlight-indentation-mode)
(add-hook 'emacs-lisp-mode-hook 'highlight-indentation-mode)
(add-hook 'python-mode-hook 'highlight-indentation-mode)

;; highlight current line
(global-hl-line-mode t)

;; show line number
(global-linum-mode t)

;; activate company-mode
(global-company-mode t)

(provide 'edit)
