(package-initialize)

(let ((temp-custom (make-temp-file "~/.emacs.d/custom")))
  (setq custom-file temp-custom )
  (add-hook 'kill-emacs-hook
	    '(lambda () (delete-file custom-file)))
  )

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

;;(use-package no-littering :ensure t)
;;(use-package evil :ensure t :config (evil-mode 1))
(use-package org :ensure org-plus-contrib)

(require 'ob-tangle)

;(setq debug-on-error t)

(org-babel-load-file
 (expand-file-name "emacs-init.org"
		   user-emacs-directory))
(put 'narrow-to-page 'disabled nil)

;;(require 'exwm)
;;(require 'exwm-config)
;;(exwm-config-default)
;;(require 'exwm-systemtray)
;;(exwm-systemtray-enable)

; (setq mouse-autoselect-window t
 ;     focus-follows-mouse t  )


