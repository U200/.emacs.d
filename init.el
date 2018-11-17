(require 'package)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gun/")
			 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

;; 共享系统剪贴板
(setq x-select-enable-clipboard t)

;; 加载并启用ample主题
(load-theme 'ample t t)
(enable-theme 'ample)

;; 设置emacs自动备份目录
(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))

;; 设置初始启动大小
(setq default-frame-alist
      '((height . 25)(width . 80)))

;; 设置字体
(add-to-list 'default-frame-alist
      '(font . "Source Code Pro-18"))

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

;; 打开*.jsp文件时自动启用web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))

;; 彩虹模式
(add-to-list 'load-path "/home/libohan/.emacs.d/packages/rainbow-mode-1.0")
(require 'rainbow-mode)
