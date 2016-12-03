;;;;
;; Multiple cursors
;;;;
(require 'multiple-cursors)
(global-set-key (kbd "C-c m c") 'mc/edit-lines)

;;;;
;; Company for auto complete
;;;;

(global-company-mode)


;;;;
;; Paredit
;;;;
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)

;; configure those parens

;; highlight matching parens, brackets, braces, etc...
(show-paren-mode 1)
