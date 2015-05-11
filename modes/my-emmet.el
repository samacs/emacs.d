;;; my-emmet-mode.el --- Emmet mode
;;; Commentary:
;; Emmet mode.

;;; Code:

(require-packages '(emmet-mode))

(require 'emmet-mode)

(setq emmet-indentation 2)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)
(define-key emmet-mode-keymap (kbd "C-j") nil)
(define-key emmet-mode-keymap (kbd "<C-return>") nil)
(define-key emmet-mode-keymap (kbd "C-c i") 'emmet-expand-line)


;; Auto-pairs
(setq web-mode-extra-auto-pairs
  '(
    ("angular"    . (("{{ " " }}")))
    ("asp"        . (("<% " " %>")))
    ("aspx"       . (("<% " " %>")
                     ("<%=" "%>")
                     ("<%#" "%>")
                     ("<%$" "%>")
                     ("<%@" "%>")
                     ("<%:" "%>")
                     ("<%-" "- " " --%>")))
    ("blade"      . (("{{ " " }}")
                     ("{{-" "- " " --}}")))
    ("django"     . (("{{ " " }}")
                     ("{% " " %}")
                     ("{# " " #}")))
    ("erb"        . (("<% " " %>")
                     ("<%=" "%>")
                     ("<%#" "%>")))
    ("freemarker" . (("<% " " %>")
                     ("${ " " }")
                     ("[% " " %]")
                     ("[# " " #]")
                     ("[#-" "- " " --]")))
    ("jsp"        . (("<% " " %>")
                     ("<%-" "- " " %>")
                     ("<%=" "%>")
                     ("<%!" "%>")
                     ("<%@" "%>")
                     ("${ " " }")))
    ("html"        . (("<" ">")))
    ("mason"      . (("<% " " %>")))
    ("php"        . (("<?p" "hp " " ?>")
                     ("<? " " ?>")
                     ("<?=" "?>")))
    ("underscore" . (("<% " " %>")))
    (nil          . (("<!-" "- " " -->")))
    )
)

(provide 'my-emmet)

;;; my-emmet.el ends here
