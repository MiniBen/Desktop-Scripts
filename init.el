(require 'package)
(add-to-list 'package-archives
	       '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
	       '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(require 'evil)
(evil-mode 1)

(load-theme 'zenburn t)

(tool-bar-mode -1)

(menu-bar-mode -1)

(scroll-bar-mode -1)

(set-frame-parameter (selected-frame) 'alpha '(85 50))
(add-to-list 'default-frame-alist '(alpha 85 50))

(require 'ido)
(ido-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("158ca85e9f3eacdcbfc43163200b62c900ae5f64ba64819dbe4b27655351c051" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
