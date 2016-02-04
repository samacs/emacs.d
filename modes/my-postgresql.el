;;; my-postgresql.el --- PostgreSQL configuration.
;;; Commentary:
;; Configure Emacs to connect to PostgreSQL
;; database engines.

;;; Code:

(setq sql-postgres-login-params
      '((user :default "dub5")
        (database :default "dub5_staging")
        (server :default "pruebitas")
        (port :default 5555)))

(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

(setq sql-connection-alist
      '((dub5-staging (sql-product 'postgres)
                      (sql-port 5555)
                      (sql-server "localhost")
                      (sql-user "dub5")
                      (sql-database "dub5_staging"))
        (dub5-development (sql-product 'postgres)
                          (sql-port 5454)
                          (sql-server "localhost")
                          (sql-user "vagrant")
                          (sql-database "dub5_development"))))

(defun dub5-staging ()
  (interactive)
  (my-sql-connect 'postgres 'dub5-staging))

(defvar my-sql-servers-list
  '(("Dub5 Staging" dub5-staging))
  "Alist of server name and the function to connect.")

(defun my-sql-connect-server (func)
  "Connect to the input server the FUNC in using my-sql-servers-list."
  (interactive
   (helm-comp-read "Select server: " my-sql-servers-list))
  (funcall func))

(defun my-sql-connect (product connection)
  ;; Load the passwords file.
  (require 'my-passwords "my-passwords.el.gpg")

  ;; Update the password associated to the sql-connection-alist.
  (let ((connection-info (assoc connection sql-connection-alist))
        (sql-password (car (last (assoc connection my-sql-passwords)))))
    (delete sql-password connection-info)
    (nconc connection-info `((sql-password ,sql-password)))
    (setq sql-connection-alist (assq-delete-all connection sql-connection-alist))
    (add-to-list 'sql-connection-alist connection-info))

  ;; Remember to set the sql-product, otherwise, it will fail for the
  ;; first time you call the function
  (setq sql-product product)
  (if current-prefix-arg
      (sql-connect connection connection)
    (sql-connect connection)))

(provide 'my-postgresql)

;;; my-postgresql.el ends here
