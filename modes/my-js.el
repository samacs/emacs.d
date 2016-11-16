;;; my-js.el --- All about JS
;;; Commentary:
;; Configure everything about JS

;;; Code:

(require-packages '(js2-mode js-comint web-beautify))

(require 'js2-mode)
(require 'web-beautify)

(add-to-list 'load-path "/home/samacs/Development/tern/emacs/")
(autoload 'tern-model "tern.el" t)

;; JS Beautify
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'json-mode
  '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'sgml-mode
  '(define-key html-mode-map (kbd "C-c b") 'web-beautify-html))

(eval-after-load 'css-mode
  '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))

(autoload 'js2-mode "js" nil t)
(push '("\\.js$" . js2-mode) auto-mode-alist)
(push '("\\.json$" . js2-mode) auto-mode-alist)
(push '("\\.es6$" . js2-mode) auto-mode-alist)
(push '("\\.gyp" . js-mode) auto-mode-alist)
(push '("\\.gypi" . js-mode) auto-mode-alist)
(add-hook 'js2-mode-hook '(lambda ()
                            (local-set-key "\C-x\C-e" 'js-send-last-sexp)
                            (local-set-key "\C-cb" 'js-send-buffer)
                            (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
                            (tern-mode t)))
;;; (add-hook 'js2-mode-hook 'flymake-jslint-load)
(add-hook 'javascript-mode-hook 'flycheck-mode)

(require 'js-comint)
(setq inferior-js-program-command "node --")

(setq js-indent-level 2)
(setq-default js2-basic-offset 2)

(provide 'my-js)

;;; my-js.el ends here
