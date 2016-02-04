;;; my-slime.el --- Slime configuration.
;;; Commentary:
;; Configure slime.

;;; Code:

(require-packages '(slime))

(setq inferior-lisp-program "sbcl")
(setq slime-default-lisp 'sbcl)

(provide 'my-slime)

;;; my-slime.el ends here.
