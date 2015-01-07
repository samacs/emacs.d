;;; my-clojure.el --- Clojure mode
;;; Commentary:
;;; Configure Clojure support.

;;; Code:

(require-packages '(clojure-mode))

(require 'clojure-mode)
(push '("\\.clj" . clojure-mode) auto-mode-alist)

(provide 'my-clojure)
;;; my-clojure.el ends here
