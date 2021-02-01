;;-----------------------------------------------------------------------------
;; lsp 的 python 服务
(require-package 'use-package)
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred
;;-----------------------------------------------------------------------------
;; 选择用哪一个 python 解释器
;; (setq python-shell-interpreter "/opt/anaconda/bin/python3.7")
;;-----------------------------------------------------------------------------
;; projectile. elpy 会用到
(require-package 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;;-----------------------------------------------------------------------------
;; company-jedi. https://github.com/emacsorphanage/company-jedi
;; NOTE: Please do not install 'jedi' package for company users. You should
;; install only company-jedi.
;; (require-package 'company-jedi)
;; (defun my/python-mode-hook ()
;;   (add-to-list 'company-backends 'company-jedi))

;; (add-hook 'python-mode-hook 'my/python-mode-hook)
;;-----------------------------------------------------------------------------

;; python 插件
;; elpy 的一些用法参考 doc
;; https://elpy.readthedocs.io/en/latest/quickstart.html
(require-package 'elpy)
(elpy-enable)
;;-----------------------------------------------------------------------------
(provide 'init-python)
