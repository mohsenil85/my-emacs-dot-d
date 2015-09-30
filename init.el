;(custom-set-variables
; ;; custom-set-variables was added by Custom.
; ;; If you edit it by hand, you could mess it up, so be careful.
; ;; Your init file should contain only one such instance.
; ;; If there is more than one, they won't work right.
; '(custom-safe-themes
;   (quote
;    ("a33ccce31f398f812561d4b0a9f7a2b7038197b722abc278f50d80f3566a0fdf" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" default))))
;(custom-set-faces
; ;; custom-set-faces was added by Custom.
; ;; If you edit it by hand, you could mess it up, so be careful.
; ;; Your init file should contain only one such instance.
; ;; If there is more than one, they won't work right.
; )
(require 'ob-tangle)
(setq debug-on-error t)
(org-babel-load-file
 (expand-file-name "emacs-init.org"
                   user-emacs-directory))
