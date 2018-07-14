;;;;
;; Packages
;;;;
(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/"))

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
    dash
    company
    multiple-cursors
    neotree
    ace-window
    markdown-mode
    all-the-icons
    yasnippet
    clojure-snippets
    web-mode
    nyan-mode
    yaml-mode
    multi-term
    rainbow-mode
    projectile))

;; Get all the packages!
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Adds /usr/local/bin to exec path so terminal can find my executables
(setq exec-path (append exec-path '("/usr/local/bin")))

;; Fix path so .profile is used
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(if window-system (set-exec-path-from-shell-PATH))

;; Adds an emacs vendor directory for manually placing .el files
(add-to-list 'load-path "~/.emacs.d/vendor")

;;;;
;; Customization
;;;;

;; Add the customization directory to the load path so subsequent `load`
;; calls know where to look
(add-to-list 'load-path "~/.emacs.d/customizations")

(load "ui.el")
(load "editing.el")
(load "clojure.el")
(load "parens.el")
(load "files.el")
(load "windows.el")
(load "fonts.el")
(load "snippets.el")
(load "web.el")
(load "my-term.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cider-cljs-lein-repl
   "(do (require 'figwheel-sidecar.repl-api) (figwheel-sidecar.repl-api/start-figwheel!) (figwheel-sidecar.repl-api/cljs-repl))" t)
 '(custom-safe-themes
   (quote
    ("68f7a53f5f1a8d30e5cd2d119fe6ecddb081bfe61bc427ca20eefd0abfada488" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (yaml-mode web-mode dash paredit neotree multiple-cursors company clojure-mode-extra-font-locking cider)))
 '(safe-local-variable-values
   (quote
    ((cider-refresh-after-fn . "integrant.repl/resume")
     (cider-refresh-before-fn . "integrant.repl/suspend")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
