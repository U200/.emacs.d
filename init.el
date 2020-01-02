(require 'package)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gun/")
			 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

;; 共享系统剪贴板
(setq x-select-enable-clipboard t)

;; 加载并启用zenburn主题
(load-theme 'zenburn t t)
(enable-theme 'zenburn)

;; 设置emacs自动备份目录
(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))

;; 设置初始启动大小
;; (setq default-frame-alist '((height . 30)(width . 80)))

;; 设置字体
(add-to-list 'default-frame-alist '(font . "SimSun-18"))


;; 隐藏工具栏 菜单栏 滚动条
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; 禁止开始界面
(setq inhibit-startup-message t)

;; 禁止系统声音
(setq ring-bell-function 'ignore)

;; 显示时间
(display-time-mode 1)

;; 高亮当前行
(global-hl-line-mode 1)

;; 括号自动补全
(electric-pair-mode t)

;; 根据字典自动补全
(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
(ac-config-default)

;; 设置C-mode4个缩进
(setq c-basic-offset 4)

(add-hook 'go-mode-hook
	  (lambda ()
	    (setq tab-width 4)))
