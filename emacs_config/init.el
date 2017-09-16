;; daqu'config for emacs

;; modularize entry

(package-initialize)

(add-to-list 'load-path' "~/.emacs.d/lisp/")

;; edit config conviently
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; package management
;; ------------------
(require 'init-packages)
(require 'compat)
(require 'file)
(require 'edit)



;; -----------------end---------------------
