;;; my-sass.el --- All about sass
;;; Commentary:
;; Configure everything about sass

;;; Code:

(require-package 'sass-mode)

(require 'sass-mode)

(push '("\\.scss$" . sass-mode) auto-mode-alist)
(push '("\\.sass$" . sass-mode) auto-mode-alist)

(provide 'my-sass)

;;; my-sass.el ends here
