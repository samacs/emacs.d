;;; my-liquid.el --- Liquid templating syntax support.
;;; Commentary:
;; Add support for Liquid template syntax.

;;; Code:

(require-packages '(liquid-mode))

;; Liquid
(require 'liquid-mode)
(push '("*.liquid" . liquid-mode) auto-mode-alist)

(provide 'my-liquid)

;;; my-liquid.el ends here
