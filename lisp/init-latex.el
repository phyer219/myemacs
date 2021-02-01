;;compile
;; Auctex 插件
(require-package 'auctex)
;; cdlatex 插件. 需要前置插件 Auctex
(require-package 'cdlatex)


;------------------------------------------------------------------------------
;;用xetex编译,以支持中文
(setq-default TeX-engine 'xetex)
;;------------------------------------------------------------------------------
;; 打开 cdlatex
;; 参考自 github 和 https://orgmode.org/manual/CDLaTeX-mode.html
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
;;------------------------------------------------------------------------------


;; 小技巧 M-x describe-key <RET> C-c C-c 可以查看快捷键对应的命令
;; (defun quick-latex ()
;;   "A quick latex"
;;   (interactive)
;;   (save-buffer)
;;   (TeX-command-menu "LaTeX"))
;; ;;Short key F9
;; (global-set-key [(control c) (c)] 'quick-latex)

(provide 'init-latex)
