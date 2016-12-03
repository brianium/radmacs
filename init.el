;;;;
;; Packages
;;;;
(require 'package)

(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

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
    multiple-cursors
    all-the-icons
    neotree))

;; Get all the packages!
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Adds an emacs vendor directory for manually placing .el files
(add-to-list 'load-path "~/.emacs.d/vendor")

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
