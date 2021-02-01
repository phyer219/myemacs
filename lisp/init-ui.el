;;; 将一p些交换界面的设置存在此文件
;;; 比如括号显示

;; 启动时的宽和高, 启动时的宽和高
(set-frame-width (selected-frame) 85)
;;(set-frame-height (selected-frame) 33)
;; 启动时全屏
;; (setq initial-frame-alist (quote ((fullscreen . maximized))))
;; 启动时不显示工具栏
(tool-bar-mode -1)
;; 启动时不显示文件滑动控件
(scroll-bar-mode -1)
;; 启动时显示行号
(global-linum-mode 1)
;; 启动时显示列号
(column-number-mode 1)
;; 启动时不显示欢迎界面
(setq inhibit-splash-screen 1)

;; 安装并加载主题
;; (require-package 'monokai-theme)
(require-package 'atom-one-dark-theme)
(load-theme 'atom-one-dark t)

;; 显示 trailing whitespace 也就是行尾无意义的空格.
;; 参考:
;; https://emacs.stackexchange.com/questions/21863/how-can-i-visualize-trailing-whitespace-like-this
;; purcell 的配置在 int-whitespace.el 中.
(setq-default show-trailing-whitespace t)

;; 括号高亮
;; highlight-parenthese
(require-package 'highlight-parentheses)
;; highlight-parentheses 开启
(require 'highlight-parentheses)
(global-highlight-parentheses-mode 1)

;; 将分页符 page break (ASCII ^L) 显示成横线
;; emacs 中 C-q C-l 即可插入分页符
;; https://www.emacswiki.org/emacs/PageBreaks
(require-package 'page-break-lines)
(require 'page-break-lines)
(global-page-break-lines-mode)

;; 标尺竖线.
;; https://emacs.stackexchange.com/questions/147/how-can-i-get-a-ruler-at-column-80

;; 方案1: 参考 purcell init-editing-utils.el
;;(setq-default indicate-buffer-boundaries 'left)
;;(setq-default display-fill-column-indicator-character ?\u254e)
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)

;; 方案2:
;; (require-package 'fill-column-indicator)
;; (require 'fill-column-indicator)
;;(fci-mode)

(provide 'init-ui)
