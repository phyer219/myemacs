;;; org-mode 的相关设置和插件

;; 设置数学显示
;;(add-hook 'org-mode-hook
;;	  (lambda () (set-input-method "TeX")))
;;(add-hook 'LaTeX-mode-hook
;;	  (lambda () (set-input-method "TeX")))

;; org-mode 的图标
(require-package 'org-bullets)

;; org-bullets 的配置
;; 参考自 org-bullets 的 github
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;; 开启 org-mode 的缩进
(add-hook 'org-mode-hook 'org-indent-mode)

;;org-mode中latex高亮
(setq org-highlight-latex-and-related '(latex))
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)

;;org-mode 语法高亮
(setq org-src-fontify-natively t)

;;能够在 org-mode 中运行 python
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(provide 'init-org-mode)
