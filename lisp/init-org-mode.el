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

;; org 手册中的推荐设置
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
;; capture templates
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
	 "* TODO %?\n %i\n %a")
	("d" "Diary" plain (file+datetree "~/org/diary.org")
	 "天气: %^{天气|睛|多云|阴} Entered on %U\n%?")
	("j" "Journal" entry (file+datetree "~/org/journal.org")
	 "* %?\nEntered on %U\n %i\n %a")))
; 将~/org/todo.org替换为todo.org实际路径
(setq org-agenda-files (list org-directory))
(setq org-default-notes-file (concat org-directory "/notes.org"))

;; 与 avy-goto (ace jump) 的快捷键冲突了, 所以关闭此快捷键.
;; https://emacs.stackexchange.com/questions/7546/disable-org-mode-keyboard-shortcuts
(eval-after-load 'org
  (progn
    (define-key org-mode-map (kbd "C-'") nil)))

(provide 'init-org-mode)
