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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (highlight-indentation company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
