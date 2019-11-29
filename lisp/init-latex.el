;;compile
;; 小技巧 M-x describe-key <RET> C-c C-c 可以查看快捷键对应的命令
(defun quick-latex ()
  "A quick latex"
  (interactive)
  (save-buffer)
  (TeX-command-menu "LaTeX"))
;;Short key F9
(global-set-key [(control c) (c)] 'quick-latex)

(provide 'init-latex)
