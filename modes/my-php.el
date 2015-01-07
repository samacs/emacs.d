;;; my-php.el --- All about PHP
;;; Commentary:
;; Configure everything about PHP

;;; Code:

(require-packages '(php-mode flymake-php flymake-easy))

(require 'php-mode)
(require 'flymake-php)
(push '("\\.php$" . php-mode) auto-mode-alist)
(push '("\\.phtml$" . php-mode) auto-mode-alist)
(add-hook 'php-mode-hook 'flymake-php-load)

;; Toggle between PHP & HTML Helper mode.
(defun toggle-php-html-mode ()
  (interactive)
  "Toggle mode between PHP & HTML Helper modes"
  (cond ((string= mode-name "HTML Helper")
         (php-mode))
        ((string= mode-name "PHP")
         (html-helper-mode))))

(global-set-key [f5] 'toggle-php-html-mode)

;;; my-php.el ends here.
