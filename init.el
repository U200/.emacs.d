(require 'package)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gun/")
			 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

;; Load and enable theme
(load-theme 'ample t t)
(enable-theme 'ample)

;; Set emacs backupfile dir
(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))

;; Show linenum
;; (setq linum-format "%3d ")
;; (global-linum-mode t)

;; Set frame size
(setq default-frame-alist
      '((height . 35)(width . 100)))

;; Font config
(add-to-list 'default-frame-alist
      '(font . "Source Code Pro-16"))

;; Hide various bar
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; Hide startup message
(setq inhibit-startup-message t)

;; Mute bellring
(setq ring-bell-function 'ignore)

;; Display time
(display-time-mode 1)

;; Highlight current line
(global-hl-line-mode 1)




;; Bracket auto complete
(electric-pair-mode t)

;; Auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
(ac-config-default)


;; Set C-mode offset
(setq c-basic-offset 4)

;; Auto enable web-mode by *.jsp
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
