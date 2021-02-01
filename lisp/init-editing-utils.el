;;------------------------------------------------------------------------------
;; 统计快捷键使用频率
;; And use keyfreq-show to see how many times you used a command.
(require-package 'keyfreq)
(require 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)
;;------------------------------------------------------------------------------
;; 命令提示
(require-package 'which-key)
(which-key-mode)
;; (add-hook 'after-init-hook 'which-key-mode)
;; (setq-default which-key-idle-delay 1.5)
;; (with-eval-after-load 'which-key
;; (diminish 'which-key-mode))
;;------------------------------------------------------------------------------
;; 搜索的插件
(require-package 'swiper)
;; swiper 需要先启动 ivy-mode. 上面已经开启.
;; 配置参考自: https://www.youtube.com/watch?v=AaUlOH4GTCs
(global-set-key "\C-s" 'swiper)
;;------------------------------------------------------------------------------
;; 打开文件的更多选项
(require-package 'counsel)
;; 打开 counsel-mode
;; 更多打开选项 M-o
(counsel-mode 1)
;;-----------------------------------------------------------------------------
;; 语法检查
(require-package 'flycheck)
;; 打开 flychek-mode 关了, 感觉不好用
;;(global-flycheck-mode 1)
;;-----------------------------------------------------------------------------


(provide 'init-editing-utils)
