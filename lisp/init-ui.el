;;; 将一p些交换界面的设置存在此文件
;;; 比如括号显示

;; https://cloud.tencent.com/developer/ask/105836
;; 默认左右分屏
(setq split-width-threshold 1)

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
;; 设置字体大小
(set-face-attribute 'default (selected-frame) :height 120)

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
;;(require-package 'highlight-parentheses)
;; highlight-parentheses 开启
;;(require 'highlight-parentheses)
;;(global-highlight-parentheses-mode 1)

;; 彩虹括号
(require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)


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
(add-hook 'org-mode-hook 'display-fill-column-indicator-mode)

;; 方案2:
;; (require-package 'fill-column-indicator)
;; (require 'fill-column-indicator)
;;(fci-mode)

;; lsp 更好的ui
;; (require-package 'lsp-ui) 有点乱, 还是不要了

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack Nerd Font Mono" :foundry "SRC" :slant normal :weight normal :height 143 :width normal)))))

(provide 'init-ui)
