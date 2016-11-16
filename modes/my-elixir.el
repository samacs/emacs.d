;;; my-elixir.el --- Setup for elixir
;;; Commentary:
;; Configure environment for elixir programming

;;; Code:

(require-packages '(elixir-mode alchemist))

;; Elixir
(require 'elixir-mode)
(require 'alchemist)

(add-hook 'elixir-mode 'alchemist-mode)
(add-hook 'elixir-mode 'autocomplete-mode)

(provide 'my-elixir)

;;; my-elixir.el ends here
