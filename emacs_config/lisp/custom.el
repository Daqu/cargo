;; custom emacs

;; close startup screen
(setq inhibit-startup-screen t)

;; edit config conviently
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
