(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

(setq-default
 flycheck-disabled-checkers
 (append flycheck-disabled-checkers
	 '(javascript-jshint)))

;; use eslint with js2-mode
(flycheck-add-mode 'javascript-eslint 'js2-mode)

;; use eslint with jsx files
(flycheck-add-mode 'javascript-eslint 'rjsx-mode)

;; customize flycheck temp file prefix
(setq-default flycheck-temp-prefix ".flycheck")

;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(json-jsonlist)))

;; C-c ! l -- see full list of errors in a buffer
;; C-c ! n -- next error
;; C-c ! p -- previous error
