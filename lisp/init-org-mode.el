;; org-mode 的图标
(require-package 'org-bullets)
;;------------------------------------------------------------------------------
;; org-bullets 的配置
;; 参考自 org-bullets 的 github
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))



(provide 'init-org-mode)
