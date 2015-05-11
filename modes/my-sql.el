;;; my-sql.el --- Use Emacs as a database client
;;; Commentary:
;; Configure Emacs to connect to MySQL and PostgreSQL
;; database engines.

;;; Code:

(require-packages '(sqlup-mode emacsql))

;; SQL
(require 'sqlup-mode)

(push '("\\.sql" . sql-mode) auto-mode-alist)

(add-hook 'sql-mode-hook 'sqlup-mode)
(add-hook 'sql-interactive-mode-hook 'sqlup-mode)
(global-set-key (kbd "C-c u") 'sqlup-capitalize-keyword-keywords-in-region)

;;; my-sql.el ends
