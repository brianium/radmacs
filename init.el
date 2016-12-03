;;;;
;; Packages
;;;;
(require 'package)

(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

;; Adds an emacs vendor directory for manually placing .el files
(add-to-list 'load-path "~/.emacs.d/vendor")

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;; Define all the packages I use for emacs
(defvar my-packages
  '(paredit
    clojure-mode
    clojure-mode-extra-font-locking
    cider
    company
		dash
		epl
		pkg-info
		queue
		seq
		spinner
    multiple-cursors
    neotree))

;; Get all the packages!
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Adds /usr/local/bin to exec path so terminal can find my executables
(setq exec-path (append exec-path '("/usr/local/bin")))

;;;;
;; Customization
;;;;

;; Add the customization directory to the load path so subsequent `load`
;; calls know where to look
(add-to-list 'load-path "~/.emacs.d/customizations")

(load "ui.el")
(load "editing.el")
(load "clojure.el")
(load "files.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("68f7a53f5f1a8d30e5cd2d119fe6ecddb081bfe61bc427ca20eefd0abfada488" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (dash paredit neotree multiple-cursors company clojure-mode-extra-font-locking cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
