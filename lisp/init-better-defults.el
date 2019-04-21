;;------------------------------------------------------------------------------
;; 不自动保存
(setq make-backup-files nil)
;;------------------------------------------------------------------------------
;; 设置数学显示
;;(add-hook 'org-mode-hook
;;	  (lambda () (set-input-method "TeX")))
;;(add-hook 'LaTeX-mode-hook
;;	  (lambda () (set-input-method "TeX")))
;;------------------------------------------------------------------------------
;; 拼写检查
(setq-default ispell-program-name "aspell")
(ispell-change-dictionary "american" t)
(add-hook 'org-mode-hook
	  (lambda () (ispell-minor-mode 1)))
;;------------------------------------------------------------------------------
;; 自动换行
(add-hook 'hack-local-variables-hook
	  (lambda () (auto-fill-mode 1)))
;;------------------------------------------------------------------------------
;;org-mode中latex高亮
(setq org-highlight-latex-and-related '(latex))
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
;;------------------------------------------------------------------------------
;;org-mode 语法高亮
(setq org-src-fontify-natively t)
;;------------------------------------------------------------------------------
(provide 'init-better-defults)
