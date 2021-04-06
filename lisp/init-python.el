;;; python 的相关插件和设置

;; lsp 的 python 服务
(require-package 'use-package)
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred

;; (setq python-shell-interpreter "/opt/anaconda/bin/python3.7")

;; projectile. elpy 会用到
(require-package 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; company-jedi. https://github.com/emacsorphanage/company-jedi
;; NOTE: Please do not install 'jedi' package for company users. You should
;; install only company-jedi.
;; (require-package 'company-jedi)
;; (defun my/python-mode-hook ()
;;   (add-to-list 'company-backends 'company-jedi))

;; (add-hook 'python-mode-hook 'my/python-mode-hook)

;; python 插件
;; elpy 的一些用法参考 doc
;; https://elpy.readthedocs.io/en/latest/quickstart.html
(require-package 'elpy)
(elpy-enable)

;; auto docstring
;; https://github.com/joaotavora/yasnippet
;; 模板存储于~/.emacs.d/snippets/python-mode (这样会在 python-mode 下加载这个
;; snippet)
;; elpy 也已经调用了 yasnippet 了: https://elpy.readthedocs.io/en/latest/ide.html
(require-package 'yasnippet)
;; (yas-load-directory "~/.emacs.d/snippets")
(add-hook 'python-mode-hook #'yas-minor-mode-on)

(provide 'init-python)
