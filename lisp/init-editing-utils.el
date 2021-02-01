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

;; 类似 ace-jump-mode
(require-package 'avy)
(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-'") 'avy-goto-char-2)
(global-set-key (kbd "M-g f") 'avy-goto-line)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "M-g e") 'avy-goto-word-0)

;; 将分页符 page break (ASCII ^L) 显示成横线
;; emacs 中 C-q C-l 即可插入分页符
;; https://www.emacswiki.org/emacs/PageBreaks
(require-package 'page-break-lines)
(require 'page-break-lines)
(global-page-break-lines-mode)

;; 快速切换窗口的插件
(require-package 'switch-window)
(require 'switch-window)
(global-set-key (kbd "C-x o") 'switch-window)
(global-set-key (kbd "C-x 1") 'switch-window-then-maximize)
(global-set-key (kbd "C-x 2") 'switch-window-then-split-below)
(global-set-key (kbd "C-x 3") 'switch-window-then-split-right)
(global-set-key (kbd "C-x 0") 'switch-window-then-delete)

(global-set-key (kbd "C-x 4 d") 'switch-window-then-dired)
(global-set-key (kbd "C-x 4 f") 'switch-window-then-find-file)
(global-set-key (kbd "C-x 4 m") 'switch-window-then-compose-mail)
(global-set-key (kbd "C-x 4 r") 'switch-window-then-find-file-read-only)

(global-set-key (kbd "C-x 4 C-f") 'switch-window-then-find-file)
(global-set-key (kbd "C-x 4 C-o") 'switch-window-then-display-buffer)

(global-set-key (kbd "C-x 4 0") 'switch-window-then-kill-buffer)

;; 选区扩展工具
(require-package 'expand-region)
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
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

;;-----------------------------------------------------------------------------
;; 语法检查
(require-package 'flycheck)
;; 打开 flychek-mode 关了, 感觉不好用
;;(global-flycheck-mode 1)
;;-----------------------------------------------------------------------------

(provide 'init-editing-utils)
