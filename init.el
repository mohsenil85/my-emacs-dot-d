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

(require 'use-package)


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
