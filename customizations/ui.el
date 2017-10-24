;; Get all of the icons
(require 'all-the-icons)

;;;;
;; Themes
;;;;

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; the current theme in use
(load-theme 'zenburn t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("68f7a53f5f1a8d30e5cd2d119fe6ecddb081bfe61bc427ca20eefd0abfada488" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;
;; Fonts
;;;;

(set-face-attribute 'default nil :height 190)

;;;;
;; Neotree
;;;;

(require 'neotree)

(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons))
(setq neo-autorefresh nil)
(setq neo-smartopen t)

;;;;
;; Line numbers
;;;;
(global-linum-mode 1)


;;;;
;; Lol Nyan
;;;;
(require 'nyan-mode)
(nyan-mode 1)


;;;;
;; Ewwwwww tool bar - disables tool bar
;;;;
(tool-bar-mode -1)

;;;;
;; Ewwwwww scroll bars - disable scroll bars
;;;;
(scroll-bar-mode -1)

;;;;
;; Rainbow Mode
;;;;
(define-globalized-minor-mode radmacs-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))

(radmacs-rainbow-mode 1)
