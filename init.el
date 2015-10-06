(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b9183de9666c3a16a7ffa7faaa8e9941b8d0ab50f9aaba1ca49f2f3aec7e3be9" "4d80487632a0a5a72737a7fc690f1f30266668211b17ba836602a8da890c2118" "afc220610bee26945b7c750b0cca03775a8b73c27fdca81a586a0a62d45bbce2" "ac2b1fed9c0f0190045359327e963ddad250e131fbf332e80d371b2e1dbc1dc4" "4af6fad34321a1ce23d8ab3486c662de122e8c6c1de97baed3aa4c10fe55e060" "a33ccce31f398f812561d4b0a9f7a2b7038197b722abc278f50d80f3566a0fdf" default)))
 '(default-frame-alist (quote ((nil) (top . 1) (left . 1))))
 '(org-hide-leading-stars t)
 '(org-show-hierarchy-above (quote ((default . t))))
 '(org-show-siblings (quote ((default) (isearch) (bookmark-jump)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'ob-tangle)
(setq debug-on-error t)
(org-babel-load-file
 (expand-file-name "emacs-init.org"
                   user-emacs-directory))
(put 'narrow-to-page 'disabled nil)
