;;; my-sass.el --- All about sass
;;; Commentary:
;; Configure everything about sass

;;; Code:

(require-package 'sass-mode 'less-css-mode)

(require 'sass-mode)
(require 'less-css-mode)

(push '("\\.scss$" . sass-mode) auto-mode-alist)
(push '("\\.sass$" . sass-mode) auto-mode-alist)

(push '("\\.less$" . less-css-mode) auto-mode-alist)

(provide 'my-sass)

;;; my-sass.el ends here
