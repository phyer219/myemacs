;; 将 lisp 文件夹添加到路径中.
;; 注意: (expand "path" "default") 的结果是 default/path.
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; custom-set-variables 是一个 emacs 自动存储交互界面设置的地方文件. 为了避免
;; Git 经常产生变动, 所以设置将 custom-set-variables 默认存储到 custom.el, 然后
;; 将 custom.el 添加到 .gitignore 中去.
;; https://stackoverflow.com/questions/5052088/what-is-custom-set-variables-and-faces-in-my-emacs
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;; 载入的文件
(require 'init-elpa)			; 设置软件源, 定义 require-package 函数.
(require 'init-ui)			; ui 相关的插件和一些设置
(require 'init-input-operation)		; 输入命令的插件(which-key, ivy...)
(require 'init-input-text)		; 输入文本的插件(补全, 拼写检查...)
(require 'init-editing-utils)		; 编辑相关设置和插件
(require 'init-better-defults)		; 调整一些默认行为的访华团
;;(require 'init-fortran)                 ; fortran 现在不能用了, 待修复
(require 'init-latex)			; latex 的相关设置
(require 'init-org-mode)		; org-mode 的相关设置
(require 'latex-pretty-symbols)		; 将一些数学符号直接显示
(require 'init-waka-time-mode)		; waka-time 是一个统计使用时间的插件
(require 'init-python)			; python 的相关设置
(require 'init-show-message)		; 启动时 minibuffer 显示的信息


