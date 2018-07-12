(require 'cask "~/.emacs.d/.cask/26.1/elpa/cask-20180626.1249/cask.el")
(cask-initialize)

;; bind-key
(require 'bind-key)

;; init-loader.el
(require 'init-loader)
;; logを表示させない
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits")
