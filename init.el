(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Info-additional-directory-list
   (quote
    ("/usr/local/share/info" "/usr/local/Cellar/emacs-mac/emacs-24.5-z-mac-5.11/share/info/emacs
")))
 '(custom-safe-themes
   (quote
    ("9d7e517b49068e9fef941fe4083ad3d2a4b040895dca5175b84be48739689707" "4af6fad34321a1ce23d8ab3486c662de122e8c6c1de97baed3aa4c10fe55e060" "ac2b1fed9c0f0190045359327e963ddad250e131fbf332e80d371b2e1dbc1dc4" "a33ccce31f398f812561d4b0a9f7a2b7038197b722abc278f50d80f3566a0fdf" default)))
 '(eclim-executable
   (quote
    ("/opt/homebrew-cask/Caskroom/eclipse-jee/4.5/Eclipse.app/Contents/Eclipse/eclim")))
 '(elfeed-feeds nil)
 '(erc-modules
   (quote
    (autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring services stamp track)))
 '(erc-nick "lmohseni")
 '(exec-path
   (quote
    ("/Users/lmohseni/.rvm/gems/ruby-2.1.2/bin" "/Users/lmohseni/.rvm/gems/ruby-2.1.2@global/bin" "/Users/lmohseni/.rvm/rubies/ruby-2.1.2/bin" "/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/opt/X11/bin" "/usr/texbin" "/Users/lmohseni/.rvm/bin" "/opt/homebrew-cask/Caskroom/emacs-mac/emacs-24.5-z-mac-5.11/Emacs.app/Contents/MacOS/libexec" "/opt/homebrew-cask/Caskroom/emacs-mac/emacs-24.5-z-mac-5.11/Emacs.app/Contents/MacOS/bin" "/Users/lmohseni/.bin")))
 '(git-gutter:window-width -1)
 '(global-git-gutter-mode t)
 '(global-highlight-changes-mode nil)
 '(global-page-break-lines-mode t)
 '(helm-gtags-prefix-key "")
 '(helm-locate-command "mdfind %s %s")
 '(magit-log-arguments (quote ("--graph" "--color" "--decorate" "-n256")))
 '(org-agenda-custom-commands
   (quote
    (("x" "daily " tags "inbox"
      ((org-agenda-overriding-header "inbox")
       (org-agenda-include-diary t)
       (org-deadline-warning-days 10)))
     ("n" "Agenda and all TODO's"
      ((agenda "" nil)
       (alltodo "" nil))
      nil))) t)
 '(org-agenda-files (quote ("~/org/work.org" "~/org/organizer.org")))
 '(projectile-global-mode t)
 '(projectile-mode-line (quote (:eval (format " %s" (projectile-project-name)))))
 '(projectile-switch-project-action (quote helm-projectile-find-file)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(git-gutter:separator ((t (:foreground "deep sky blue" :weight bold))))
 '(helm-source-header ((t (:weight bold :height 1.1))))
 '(powerline-active2 ((t (:background "grey40" :foreground "PaleGreen1")))))
(require 'ob-tangle)
;;(setq debug-on-error t)
(org-babel-load-file
 (expand-file-name "emacs-init.org"
                   user-emacs-directory))
(put 'narrow-to-page 'disabled nil)
(put 'downcase-region 'disabled nil)
