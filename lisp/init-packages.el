
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives'(("gun" . "http://elpa.emacs-china.org/gnu/")
			  ("melpha" . "http://elpa.emacs-china.org/melpa/"))))


(require 'cl)
(defvar my/packages '(
		      ;; --- Auto-completion ---
		      company
		      ;; --- Some themes ---
		      monokai-theme
		      atom-one-dark-theme
		      ;; 它不算最著名的一个、但却是一个替代 Ido-mode 的好选择：Smex 可以优雅的替代普通的M-x提示符，灵感大部分来自于 Ido-mode。
		      ;; 它也给调用M-x后输入的命令带来了同样的交互搜索能力。它简单而有效，是一个为常用操作提升效率的最好方法。
		      smex
		      ;; 括号自动配对的插件
		      smartparens
		      ;; 打开文件时的提示
		      ivy
		      ;; 搜索的插件
		      swiper
		      ;; 打开文件的更多选项
		      counsel
		      ;; 语法检查
		      flycheck
		      ;; 文件管理器
		      neotree
		      ;; 显示图片图标
		      ;; In order for the icons to work it is very important that you install the Resource Fonts included in this package,
		      ;; they are available in the fonts directory.
		      ;; You can also install the latest fonts for this package in the (guessed?) based on the OS by calling the following function;
		      ;; M-x all-the-icons-install-fonts
		      all-the-icons
		      ;; 图标主题
		      spaceline-all-the-icons
		      ;; 提供 use-package 函数, 不知道还有什么其它功能
		      use-package
		      ;; Auctex 插件
		      auctex
		      ;; cdlatex 插件. 需要前置插件 Auctex
		      cdlatex
		      ;; 字体
		      cnfonts
		      ;; org-mode 的图标
		      org-bullets
		      ;; markdown-mode
		      markdown-mode
		      ;; major mode for julia
		      julia-mode
		      ;; julia repl
		      julia-repl
		      ) "Default packages." )

(setq package-selected-packages my/packages)

(defun my/packages-installed-p()
  "Flycheck 非得让我加说明不行."
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))
;;------------------------------------------------------------------------------
;; 开启全局自动补全
(global-company-mode)
;;------------------------------------------------------------------------------
;; 加载主题
(load-theme 'atom-one-dark t)
;;------------------------------------------------------------------------------
;; smex 设置. 来自 smex 在 github 上的推荐设置
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
					; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;;------------------------------------------------------------------------------
;; smartparen设置. 来自 smex 在 github 上的推荐设置
(require 'smartparens-config)
;; Always start smartparens mode in js-mode.
;;(add-hook 'js-mode-hook #'smartparens-mode)

;; 我还是让它永远开启吧!
;; 参考自: https://www.reddit.com/r/emacs/comments/3e7uys/how_do_i_enable_smartparens_mode_on_startup/
;; 中文帮助: https://github.com/lujun9972/emacs-document/blob/master/emacs-common/Smartparens%E7%94%A8%E6%B3%95%E8%AF%A6%E8%A7%A3.org
(smartparens-global-mode t)
;;------------------------------------------------------------------------------
;; 开启 ivy-mode
;; 更多配置在 ivy 的 github: https://github.com/abo-abo/swiper/tree/302d23fff1bfd68b6d3de497a1af7a27baa771cb
(ivy-mode 1)
;;------------------------------------------------------------------------------
;; swiper
;; swiper 需要先启动 ivy-mode. 上面已经开启.
;; 配置参考自: https://www.youtube.com/watch?v=AaUlOH4GTCs
(global-set-key "\C-s" 'swiper)
;;------------------------------------------------------------------------------
;; 打开 counsel-mode
;; 更多打开选项 M-o
(counsel-mode 1)
;;------------------------------------------------------------------------------
;; 打开 flychek-mode
(global-flycheck-mode 1)
;;------------------------------------------------------------------------------
;; neotree 配置
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;;(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;;------------------------------------------------------------------------------
;; all-the-icons 配置. 参考自 github
;; 和 http://www.fidding.me/article/49
(require 'all-the-icons)
(setq inhibit-compacting-font-caches t)
(setq neo-theme 'icons)
;;(all-the-icons-octicon "file-binary")  ;; GitHub Octicon for Binary File
;;(all-the-icons-faicon  "cogs")         ;; FontAwesome icon for cogs
;;(all-the-icons-wicon   "tornado")      ;; Weather Icon for tornado
;;------------------------------------------------------------------------------
;; all-the-icons 图标主题
;; 严重拖慢开启速度, 所以关了.
;;(require 'spaceline-all-the-icons)
;(use-package spaceline-all-the-icons)
;;(use-package spaceline-all-the-icons 
;;  :after spaceline
;;  :config (spaceline-all-the-icons-theme))
;;------------------------------------------------------------------------------
;;用xetex编译,以支持中文
(setq-default TeX-engine 'xetex)
;;------------------------------------------------------------------------------
;; 打开 cdlatex
;; 参考自 github 和 https://orgmode.org/manual/CDLaTeX-mode.html
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
;;------------------------------------------------------------------------------
;; 字体设置
(require 'cnfonts)
;; 让 cnfonts 随着 Emacs 自动生效。
 (cnfonts-enable)
;; 让 spacemacs mode-line 中的 Unicode 图标正确显示。
(cnfonts-set-spacemacs-fallback-fonts)
;;------------------------------------------------------------------------------
;; org-bullets 的配置
;; 参考自 org-bullets 的 github
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;;------------------------------------------------------------------------------
;; julia mode 的配置
(add-to-list 'load-path "path-to-julia-mode")
(require 'julia-mode)
;;------------------------------------------------------------------------------
;; julia-repl 的配置
(add-to-list 'load-path "path-to-julia-repl")
(require 'julia-repl)
(add-hook 'julia-mode-hook 'julia-repl-mode) ;; always use minor mode
;;------------------------------------------------------------------------------
(provide 'init-packages)
;;; init-packages.el ends here
