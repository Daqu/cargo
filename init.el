;; myconfig
;; author:daqu

;; judge whether in windows or not
(defun windows-nt?()
  (if
      (equal "windows-nt" (symbol-name system-type))
      1 nil))

;; set font if in windows
(if
    (windows-nt?)
    (set-default-font"-outline-宋体-normal-normal-normal-*-20-*-*-*-p-*-iso8859-1"))

;; open configure file quickly
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; close auto save
(setq auto-save-default nil)

;; show line number
(global-linum-mode 1)

;; set china's mirror
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; make auto-compelete always works
(global-company-mode 1)

;; make plugin auto installed
;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
		      ;; --- Auto-completion ---
		      company
		      ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; ------------------------above is my config----------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
