(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("ac2b1fed9c0f0190045359327e963ddad250e131fbf332e80d371b2e1dbc1dc4" "a33ccce31f398f812561d4b0a9f7a2b7038197b722abc278f50d80f3566a0fdf" default)))
 '(eclim-executable
   (quote
    ("/opt/homebrew-cask/Caskroom/eclipse-jee/4.5/Eclipse.app/Contents/Eclipse/eclim")))
 '(exec-path
   (quote
    ("/Users/lmohseni/.rvm/gems/ruby-2.1.2/bin" "/Users/lmohseni/.rvm/gems/ruby-2.1.2@global/bin" "/Users/lmohseni/.rvm/rubies/ruby-2.1.2/bin" "/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/opt/X11/bin" "/usr/texbin" "/Users/lmohseni/.rvm/bin" "/opt/homebrew-cask/Caskroom/emacs-mac/emacs-24.5-z-mac-5.11/Emacs.app/Contents/MacOS/libexec" "/opt/homebrew-cask/Caskroom/emacs-mac/emacs-24.5-z-mac-5.11/Emacs.app/Contents/MacOS/bin" "/Users/lmohseni/.bin")))
 '(org-agenda-files
   (quote
    ("~/org/work.org" "/Users/lmohseni/org/organizer.org" "/Users/lmohseni/org/someday.org" "/Users/lmohseni/org/workflow.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "pale goldenrod")))))
(require 'ob-tangle)
(setq debug-on-error t)
(org-babel-load-file
 (expand-file-name "emacs-init.org"
                   user-emacs-directory))
(put 'narrow-to-page 'disabled nil)
