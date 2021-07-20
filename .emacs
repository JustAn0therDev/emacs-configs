(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(wombat))
 '(custom-safe-themes
   '("3214e60cd8dc8b1efc24dff9939a94f6106ae1bf0656db6b783d6e346a1186b7" "19e390918f5e517e84511806e80ea7d7b61644aea9274f6025b98f1e5860e0bb" "1f41003d15882fb766c120ee9763299d6958ba663b4631e01e215cc11171c228" default))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(magit csharp-mode vue-html-mode typescript-mode python-mode json-mode import-js go-mode)))
 (setq-default indent-tabs-mode nil)
 (setq-default tab-width 4)
 (setq indent-line-function 'insert-tab)
 (setq-default c-basic-offset 4)
 (set-frame-font "Consolas 20" nil t)
 (set-face-attribute 'default nil :height 120)
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
(package-refresh-contents)

;; Setting themes and general configs
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") ;; this is the main path for my custom themes.
(add-hook 'after-init-hook (lambda () (load-theme 'zenburn))) ;; my main theme of use. I change the theme from time to time
;; Tells emacs not to create lockfiles. These are files that ensure that only one process is editing the file. This is not ideal because I usually have
;; more than one application open for the same file (usually an IDE and a text editor, such as Emacs).
(setq create-lockfiles nil)
(provide '.emacs)
;;; .emacs ends here
