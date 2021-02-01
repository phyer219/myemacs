;; 选择用哪一个 python 解释器
;; (setq python-shell-interpreter "/opt/anaconda/bin/python3.7")

;; python 插件
;; elpy 的一些用法参考 doc
;; https://elpy.readthedocs.io/en/latest/quickstart.html
(require-package 'elpy)
(elpy-enable)
;;-----------------------------------------------------------------------------
(provide 'init-python)
