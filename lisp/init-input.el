;; 拼写检查
(setq-default ispell-program-name "aspell")
(ispell-change-dictionary "american" t)
(add-hook 'org-mode-hook
	  (lambda () (ispell-minor-mode 1)))

;; 自动换行 (80字符)
(add-hook 'hack-local-variables-hook
	  (lambda () (auto-fill-mode 1)))
(setq-default fill-column 80)

;; 自动补全插件
(require-package 'company)
(global-company-mode)

(provide 'init-input)
