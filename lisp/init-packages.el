;; Adding a package source
;; https://www.emacswiki.org/emacs/InstallingPackages


;; CommonLispForEmacs
;; https://www.emacswiki.org/emacs/CommonLispForEmacs
;; https://stackoverflow.com/questions/30847443/emacs-symbols-function-definition-is-void-loop 
(require 'cl-lib)

;; 添加一个 global 变量, 它是一个列表, 其中包含了需要安装的包.
;; https://stackoverflow.com/questions/3855862/setq-and-defvar-in-lisp
(defvar my/packages '(
		      ;; 搜索的插件
		      swiper
		      ;; 打开文件的更多选项
		      counsel
		      ;; 语法检查
		      flycheck
		      ;; 文件管理器
		      neotree
		      spaceline-all-the-icons
		      ;; org-mode 的图标
		      org-bullets
		      ;; markdown-mode
		      markdown-mode
		      ;; major mode for julia
		      julia-mode
		      ;; julia repl
		      julia-repl
		      ;; highlight-parenthese
		      highlight-parentheses
		      ;; python 插件
		      elpy
		      ;; ein 插件. jupyter notebook 支持
		      ein
		      ;; wakatime 插件
		      wakatime-mode
		      ) "将用户想要安装的包放入此列表." )

;; package-selected-packages 是 package.el 中的一个变量, This variable was
;; introduced, or its default value was changed, in version 25.1 of Emacs. 
(setq package-selected-packages my/packages)

(defun my/packages-installed-p()
  "如果想要安装包列表都已经安装, 返回真, 否则返回假. "
  (cl-loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (cl-return nil)
	   finally (cl-return t)))

;; 当列表中的包没有被全部安装时, 就输出提示 Refreshing ...
 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))





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
;; 打开 flychek-mode 关了, 感觉不好用
;;(global-flycheck-mode 1)
;;------------------------------------------------------------------------------
;; neotree 配置
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;;(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;;------------------------------------------------------------------------------
;;------------------------------------------------------------------------------
;;用xetex编译,以支持中文
(setq-default TeX-engine 'xetex)
;;------------------------------------------------------------------------------
;; 打开 cdlatex
;; 参考自 github 和 https://orgmode.org/manual/CDLaTeX-mode.html
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
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
;; highlight-parentheses 开启
(require 'highlight-parentheses)
(global-highlight-parentheses-mode 1)
;;------------------------------------------------------------------------------
;;(elpy-enable)
;;------------------------------------------------------------------------------
;; 打开 wakatime
;; 貌似还得 pip install wakatime 才行
(global-wakatime-mode 1)
;;------------------------------------------------------------------------------

(provide 'init-packages)
;;; init-packages.el ends here


