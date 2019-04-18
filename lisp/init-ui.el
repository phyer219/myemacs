
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

;; 不显示欢迎界面
(setq inhibit-splash-screen 1)
;; 开启 org-mode 的缩进
(add-hook 'org-mode-hook 'org-indent-mode)
;;------------------------------------------------------------------------------
(provide 'init-ui)


