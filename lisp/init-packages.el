;; Adding a package source
;; https://www.emacswiki.org/emacs/InstallingPackages


;; CommonLispForEmacs
;; https://www.emacswiki.org/emacs/CommonLispForEmacs
;; https://stackoverflow.com/questions/30847443/emacs-symbols-function-definition-is-void-loop 
(require 'cl-lib)

;; 添加一个 global 变量, 它是一个列表, 其中包含了需要安装的包.
;; https://stackoverflow.com/questions/3855862/setq-and-defvar-in-lisp
(defvar my/packages '(
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
;;用xetex编译,以支持中文
(setq-default TeX-engine 'xetex)
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
-

(provide 'init-packages)
;;; init-packages.el ends here


