;;; my-ruby.el --- All about Ruby
;;; Commentary:
;; Configure everything about Ruby

;;; Code:

(require-packages '(ruby-end rinari rbenv ruby-tools))

;; Ruby
(require 'ruby-mode)

(require 'ruby-end)
(require 'rubocop)

(push '("Gemfile" . ruby-mode) auto-mode-alist)
(push '("Gemfile.lock" . ruby-mode) auto-mode-alist)
(push '("Rakefile" . ruby-mode) auto-mode-alist)
(push '("Capfile" . ruby-mode) auto-mode-alist)
(push '("\\.rake" . ruby-mode) auto-mode-alist)
(push '("\\.gemspec" . ruby-mode) auto-mode-alist)
(setq ruby-insert-encoding-magic-comment nil)

(add-hook 'ruby-mode-hook #'rubocop-mode)

(setq ruby-end-insert-newline t)

;; Ruby Version Manager
;; (require 'rbenv)
;; (rbenv-use-global)



;; Ruby tools
(require 'ruby-tools)

(provide 'my-ruby)

;;; my-ruby.el ends here
