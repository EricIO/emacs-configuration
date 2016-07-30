;; Init file ripped from https://github.com/mm--/dot-emacs
(package-initialize)
(require 'org)
(org-babel-load-file "~/.emacs.d/eric.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (annoying-arrows-mode hardcore-mode nyan-mode helm-ag ag zenburn-theme yasnippet use-package tuareg toml-mode switch-window solarized-theme rust-mode racket-mode paredit org-plus-contrib multiple-cursors markdown-mode magit load-dir lfe-mode js2-mode jedi idris-mode hy-mode helm-projectile haskell-mode handlebars-mode go-mode flycheck-color-mode-line expand-region etags-table esup erlang elm-mode debbugs dart-mode ctags csharp-mode cider avy auto-compile alchemist))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
