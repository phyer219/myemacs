;; 修改启动时 minibuffer 显示的信息. 参考:
;; https://emacs.stackexchange.com/questions/432/how-to-change-default-minibuffer-message
(defun display-startup-echo-area-message ()
  (message "刷新插件安装源 %i 次, 新增插件 %i 个" number-of-refresh
	 number-of-package-add))

(provide 'init-show-message)
