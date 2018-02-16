;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

;(add-to-list 'load-path "~/.emacs.d/vendor/benchmark-init-el")
;(require 'benchmark-init-loaddefs)
;(benchmark-init/activate)


(setq package-enable-at-startup nil)
(setq inhibit-startup-buffer-menu t)
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message "lmohseni")
(setq initial-buffer-choice t)
(setq initial-scratch-message ":D")
(setq load-prefer-newer t)
(setq visible-bell t)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)


(setq package-archives '(("gnu"       . "https://elpa.gnu.org/packages/")
			 ("melpa"     . "https://melpa.org/packages/")
			 ("org"       . "http://orgmode.org/elpa/")
			 ))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(setq use-package-enable-imenu-support t)
(eval-when-compile
  (require 'use-package))
;(setq use-package-always-defer t)
(require 'diminish)
(require 'bind-key)

(bind-key "C-c h b" #'describe-personal-keybindings)


;(use-package no-littering :ensure t)
(use-package evil :ensure t :config (evil-mode 1))
(use-package org :ensure org-plus-contrib)

(use-package better-defaults :ensure t :defer t )


(require 'ob-tangle)
;(setq debug-on-error t)
(org-babel-load-file
 (expand-file-name "emacs-init.org"
                   user-emacs-directory))
(put 'narrow-to-page 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "acad73ae74b280b29809d10cda2e8f9015cfb007a00fadee55b85861c7c5b99e" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "c5a886cc9044d8e6690a60f33db45506221aa0777a82ad1f7fe11a96d203fa44" "cab317d0125d7aab145bc7ee03a1e16804d5abdfa2aa8738198ac30dc5f7b569" "7e376fb329a0e46a04e8285b0e45199a083f98c69b0e1039ec1cb1d366e66e9c" default)))
 '(package-selected-packages
   (quote
    (slime solarized-theme boron-theme minimal-theme hydandata-light-theme monochrome-theme exwm-x image+ exwm evil-magit dired-k soft-morning-theme tide ob-ipython jedi js2-mode rainbow-delimiters paredit meghanada cider clojure-mode dired+ dumb-jump which-key sentence-navigation recursive-narrow projectile persistent-scratch paradox keyfreq page-break-lines use-package org-plus-contrib markdown-mode magit helm-gtags helm-descbinds helm-ag helm-ack git-gutter-fringe general flycheck evil emojify elfeed-org elfeed-goodies diminish bind-map better-defaults auctex ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
