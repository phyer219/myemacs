;; 安装并选择主题
(require-package 'monokai-theme)
(require-package 'atom-one-dark-theme)
  
(load-theme 'atom-one-dark t)
;;------------------------------------------------------------------------------
;; 括号自动配对的插件
(require-package 'smartparens)
;; smartparen设置. 来自 smex 在 github 上的推荐设置
(require 'smartparens-config)
;; Always start smartparens mode in js-mode.
;;(add-hook 'js-mode-hook #'smartparens-mode)

;; 我还是让它永远开启吧!
;; 参考自: https://www.reddit.com/r/emacs/comments/3e7uys/how_do_i_enable_smartparens_mode_on_startup/
;; 中文帮助: https://github.com/lujun9972/emacs-document/blob/master/emacs-common/Smartparens%E7%94%A8%E6%B3%95%E8%AF%A6%E8%A7%A3.org
(smartparens-global-mode t)
;;------------------------------------------------------------------------------
;; 它也给调用M-x后输入的命令带来了同样的交互搜索能力。它简单而有效，是一个为常用操作提升效率的最好方法。
(require-package 'smex)
;; smex 设置. 来自 smex 在 github 上的推荐设置
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
					; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;;------------------------------------------------------------------------------
;; 打开文件时的提示
(require-package 'ivy)
;; 开启 ivy-mode
;; 更多配置在 ivy 的 github: https://github.com/abo-abo/swiper/tree/302d23fff1bfd68b6d3de497a1af7a27baa771cb
(ivy-mode 1)
;;------------------------------------------------------------------------------



;; 启动时全屏
;; (setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 不显示工具栏
(tool-bar-mode -1)
;; 如何查看 function tool-bar-mode 的值对应的设置?
;; C-h C-f a-function RET

;; 不显示文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)
;; 显示列号
(column-number-mode 1)
;; 不显示欢迎界面
(setq inhibit-splash-screen 1)
;; 开启 org-mode 的缩进
(add-hook 'org-mode-hook 'org-indent-mode)
;;------------------------------------------------------------------------------
(provide 'init-ui)


