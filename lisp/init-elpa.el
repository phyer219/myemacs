(require 'package)
(require 'cl-lib)

;; tuna 的镜像比 emacs-china 快很多
(setq package-archives'(("gun" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
	                ("melpha" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;; 此变量用来标记是否刷新过安装包. 默认为 't, 为没有刷新
(setq pkg-not-refresh 't)


(defun require-package (pkg)
  (or (package-installed-p pkg)
      (and (if pkg-not-refresh (progn(package-refresh-contents) (setq pkg-not-refresh 'nil))) 't) 
      (package-install pkg)))

(provide 'init-elpa)

