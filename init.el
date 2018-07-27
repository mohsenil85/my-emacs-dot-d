(package-initialize)

(let ((temp-custom (make-temp-file "~/.emacs.d/custom")))
  (setq custom-file temp-custom )
  (add-hook 'kill-emacs-hook
	    '(lambda () (delete-file custom-file)))
  )

(setq package-enable-at-startup nil)
(setq inhibit-startup-buffer-menu t)
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message "lmohseni")
(setq initial-buffer-choice t)
(setq initial-scratch-message ":D")
(setq load-prefer-newer t)
(setq visible-bell t)
; (setq mouse-autoselect-window t
 ;     focus-follows-mouse t  )
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)


(setq package-archives '(("gnu"       . "https://elpa.gnu.org/packages/")
			 ("melpa"     . "https://melpa.org/packages/")
			 ("org"       . "http://orgmode.org/elpa/")
			 ))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


;;;(setq use-package-enable-imenu-support t)
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

;;(require 'exwm)
;;(require 'exwm-config)
;;(exwm-config-default)
;;(require 'exwm-systemtray)
;;(exwm-systemtray-enable)

