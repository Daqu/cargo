;; daqu'config for emacs

;; modularize entry

(package-initialize)

;; conviently find config files
(add-to-list 'load-path' "~/.emacs.d/lisp/")

;; custom config
(load "custom.el")

;; package management
;; ------------------
(require 'init-packages)
(require 'compat)
(require 'file)
(require 'edit)

;; -----------------end---------------------

