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
    ("ac2b1fed9c0f0190045359327e963ddad250e131fbf332e80d371b2e1dbc1dc4" "a33ccce31f398f812561d4b0a9f7a2b7038197b722abc278f50d80f3566a0fdf" default)))
 '(eclim-executable
   (quote
    ("/opt/homebrew-cask/Caskroom/eclipse-jee/4.5/Eclipse.app/Contents/Eclipse/eclim")))
 '(elfeed-feeds
   (quote
    ("http://pragmaticemacs.com/feed/" "http://www.skyandtelescope.com/astronomy-news/observing-news/feed/" "http://www.skyandtelescope.com/astronomy-news/feed/" "http://planet.lisp.org/rss20.xml" "http://www.npr.org/rss/rss.php?id=2" "http://www.npr.org/rss/rss.php?id=1003" "http://www.npr.org/rss/rss.php?id=1004" "http://www.npr.org/rss/rss.php?id=1001" "http://feeds.feedburner.com/43Folders" "http://feeds.feedburner.com/37signals/beMH" "http://feeds.feedburner.com/techcrunch" "http://lisptips.com/rss" "http://www.digitaltrends.com/podcasts/feed/" "http://www.digitaltrends.com/computing/feed/" "http://www.digitaltrends.com/cool-tech/feed/")))
 '(exec-path
   (quote
    ("/Users/lmohseni/.rvm/gems/ruby-2.1.2/bin" "/Users/lmohseni/.rvm/gems/ruby-2.1.2@global/bin" "/Users/lmohseni/.rvm/rubies/ruby-2.1.2/bin" "/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/opt/X11/bin" "/usr/texbin" "/Users/lmohseni/.rvm/bin" "/opt/homebrew-cask/Caskroom/emacs-mac/emacs-24.5-z-mac-5.11/Emacs.app/Contents/MacOS/libexec" "/opt/homebrew-cask/Caskroom/emacs-mac/emacs-24.5-z-mac-5.11/Emacs.app/Contents/MacOS/bin" "/Users/lmohseni/.bin")))
 '(global-highlight-changes-mode nil)
 '(global-hl-line-mode t)
 '(helm-locate-command "mdfind %s %s")
 '(org-agenda-custom-commands
   (quote
    (("x" "daily " tags "inbox"
      ((org-agenda-overriding-header "inbox")
       (org-agenda-include-diary t)
       (org-deadline-warning-days 10)))
     ("n" "Agenda and all TODO's"
      ((agenda "" nil)
       (alltodo "" nil))
      nil))))
 '(org-agenda-files nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "pale goldenrod"))))
 '(hl-line ((t nil))))
(require 'ob-tangle)
;;(setq debug-on-error t)
(org-babel-load-file
 (expand-file-name "emacs-init.org"
                   user-emacs-directory))
(put 'narrow-to-page 'disabled nil)
