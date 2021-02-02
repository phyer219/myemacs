;;; 定义一些安装插件相关的函数

(require 'package)
(require 'cl-lib)

;; tuna 的镜像比 emacs-china 快很多
(setq package-archives'(("gun" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
	                ("melpha" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;; 此变量用来标记是否刷新过安装包. 默认为 't, 为没有刷新
(setq pkg-not-refresh 't)

;; 计数刷新了几次安装源, 安装了几个插件
(setq number-of-refresh 0)
(setq number-of-package-add 0)

;; 利用 lisp 逻辑运算得到结果就不再对后面的表达式求值的特性.
;; 此函数的逻辑:
;; 如果 (package-installed-p pkg) 为真, 就不再运行 or 语句内的其它表达式, 因为整
;; 个 or 语句一定为真.
;; 如果 (package-installed-p pkg) 为假, 就运行内部的 and 语句.
;; 内部 and 语句 首只先执行 if, 如果没有刷新过安装包, 就刷新, 并且标记已经刷新过.
;; 因为内部 and 语句最后有一个 'nil, 所以此内部 and 语句的最终结果一定为假.
;; 继续执行 (package-install pkg), 完成安装.
(defun require-package (pkg)
  "如果 pkg 没有被安装, 就安装它"
  (or (package-installed-p pkg)
      (and (if pkg-not-refresh
	       (progn(package-refresh-contents)
		     (setq pkg-not-refresh 'nil)
		     (setq number-of-refresh (+ number-of-refresh 1))))
	   'nil)
      (progn (package-install pkg)
	     (setq number-of-package-add (+ number-of-package-add 1)))))

(provide 'init-elpa)

