(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(doom-modeline doom-themes vterm magit treemacs eglot which-key company vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(set-frame-font "DejaVu Sans Mono 12" nil t)
(load-theme 'doom-one t)

(setq
 inhibit-startup-screen t
 
 make-backup-files nil
 initial-scratch-message nil

 ring-bell-function 'ignore
 )

(tab-bar-mode 1)
(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)
(electric-pair-mode 1)
(vertico-mode 1)
(global-company-mode 1)
(which-key-mode 1)
(doom-modeline-mode 1)

(blink-cursor-mode 0)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(global-set-key (kbd "C-c t") 'treemacs)
(global-set-key (kbd "C-c v") 'vterm)

(require 'org)
(add-to-list 'org-latex-packages-alist
             '("AUTO" "babel" t ("pdflatex" "xelatex" "lualatex")))
(add-to-list 'org-latex-packages-alist
             '("AUTO" "polyglossia" t ("xelatex" "lualatex")))
