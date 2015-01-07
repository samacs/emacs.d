;;; my-rvm.el --- RVM mode
;;; Commentary:
;; Integrate RVM with emacs

;;; Code:

(require-packages '(rvm))

(require 'rvm)
(rvm-use-default)

(provide 'my-rvm)

;;; my-rvm.el ends here
