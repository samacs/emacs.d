;;; my-go.el --- Go language mode.
;;; Commentary:
;;; Configure Go language.

;;; Code:

(require-packages '(go-mode))

(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq eshell-path-env path-from-shell) ; For shell users
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))

(setenv "GOPATH" "$HOME/go")

(setq exec-path (cons "$GOROOT/bin" exec-path))
(add-to-list 'exec-path "$GOPATH/bin")

(defun my-go-mode-hook ()
                                        ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
                                        ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump))

(add-hook 'go-mode-hook 'my-go-mode-hook)

(require 'go-mode)

(require 'go-mode-autoloads)

(provide 'my-go.el)

;;; my-go.el ends here
