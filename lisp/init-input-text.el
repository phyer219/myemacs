;; 待整理
;; 语法检查
(require-package 'flycheck)
;; 打开 flychek-mode 关了, 感觉不好用
;;(global-flycheck-mode 1)

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


(provide 'init-input-text)
