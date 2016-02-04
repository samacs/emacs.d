;;; my-rust.el --- Setup Rust language.
;;; Commentary:
;; Configure Rust language

;;; Code:

(require-packages '(rust-mode))

;; Rust
(require 'rust-mode)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages") t)
(package-initialize)

(push '("\\.rs" . rust-mode) auto-mode-alist)

(provide 'my-rust)

;;; my-rust.el ends here
