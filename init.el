(package-initialize)

(setq custom-file  "~/.emacs.d/var/custom" )
   

(setq package-enable-at-startup nil)

(setq package-archives '(("gnu"       . "https://elpa.gnu.org/packages/")
			 ("melpa"     . "https://melpa.org/packages/")
			 ("org"       . "http://orgmode.org/elpa/")
			 ))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

(use-package no-littering :ensure t)

;;used in debugging
;;(use-package evil :ensure t :config (evil-mode 1))
;;(setq debug-on-error t)
(use-package org :ensure org-plus-contrib)

(require 'ob-tangle)


(org-babel-load-file
 (expand-file-name "emacs-init.org"
		   user-emacs-directory))
