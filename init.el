;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

;(add-to-list 'load-path "~/.emacs.d/vendor/benchmark-init-el")
;(require 'benchmark-init-loaddefs)
;(benchmark-init/activate)


(setq custom-file "~/.emacs.d/customizations.el")
(load-file custom-file)
(load-file "~/.emacs.d/recentf" )
(require 'ob-tangle)
;(setq debug-on-error t)
(org-babel-load-file
 (expand-file-name "emacs-init.org"
                   user-emacs-directory))
(put 'narrow-to-page 'disabled nil)
