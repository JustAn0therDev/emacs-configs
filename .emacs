(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(wombat))
 '(custom-safe-themes
   '("19e390918f5e517e84511806e80ea7d7b61644aea9274f6025b98f1e5860e0bb" "1f41003d15882fb766c120ee9763299d6958ba663b4631e01e215cc11171c228" default))
 '(package-selected-packages
   '(magit csharp-mode vue-html-mode typescript-mode python-mode json-mode importmagic import-js go-mode)))
 (setq-default indent-tabs-mode nil)
 (setq-default tab-width 4)
 (setq indent-line-function 'insert-tab)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-hook 'after-init-hook (lambda () (load-theme 'naysayer)))
(setq create-lockfiles nil)
