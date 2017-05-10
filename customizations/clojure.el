;;;;
;; Cider
;;;;
(require 'cider)

;; Configure cider with figwheel
(setq cider-cljs-lein-repl
      "(do (require 'figwheel-sidecar.repl-api)
           (figwheel-sidecar.repl-api/start-figwheel!)
           (figwheel-sidecar.repl-api/cljs-repl))")

;; Keyboard shortcuts

;; For when the repl has too much stuff in it :(
(global-set-key (kbd "C-c x") 'cider-repl-clear-buffer)

;; Configure cider eldoc
(add-hook 'cider-mode-hook #'eldoc-mode)
(add-hook 'cider-repl-mode-hook #'eldoc-mode)

;;;;
;; Clojure mode
;;;;

;; clojure indenting - prevents "crazy" indenting
(setq clojure-defun-style-default-indent t)
(setq clojure-indent-style :always-indent)
