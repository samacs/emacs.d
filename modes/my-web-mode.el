;;; my-web-mode.el --- Web mode
;;; Commentary:
;; Web mode for templated html

;;; Code:

(require-packages '(web-mode sass-mode rainbow-mode autopair recentf))

(require 'autopair)
(autopair-global-mode)
(require 'web-mode)
(require 'rainbow-mode)
(require 'auto-complete-config)

(ac-config-default)

(add-hook 'css-mode-hook (lambda () (rainbow-mode 1)))
(add-hook 'html-mode-hook (lambda () (rainbow-mode 1)))
(add-hook 'sass-mode-hook (lambda () (rainbow-mode 1)))
(diminish 'rainbow-mode)

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 4)
(setq web-mode-enable-auto-closing t)
(setq web-mode-enable-auto-pairing t)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
;;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . predictive-mode))

;; Autocomplete
(add-hook  'web-mode-hook  'auto-complete-mode)
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'css-mode)
(add-to-list 'ac-modes 'js2-mode)

;;; (autoload 'predictive-mode "predictive" "predictive" t)
;;; (set-default 'predictive-auto-add-to-dict t)

(provide 'my-web-mode)

;;; my-web-mode.el ends here
