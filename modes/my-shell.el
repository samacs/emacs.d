;;; my-shell.el --- Configure shell mode
;;; Commentary:
;;; Configure shell mode to use --login.

;;; Code:

(setq explicit-shell-file-name "/bin/bash")
(setq shell-file-name "bash")
(setq explicit-bash-args '("--login" "-i"))
(setenv "SHELL" shell-file-name)
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)

(provide 'my-shell)

;;; my-shell.el ends here
