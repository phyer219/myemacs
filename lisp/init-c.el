;;; init-c.el --- c-mode set.
;;; To bind a key in a mode, you need to wait for the mode to be
;;; loaded before defining the key. One could require the mode, or use
;;; eval-after-load
;;; https://stackoverflow.com/questions/5500035/set-custom-keybinding-for-specific-emacs-mode
;;; Commentary:

;;; Code:

(defun c-quick-compile ()
  "在目录中运行 make 命令, 需要提前写好 makefile."
  (interactive)
  (compile "make"))


(defun set-c-key ()
  "Set key map in 'c-mode'."
  ;; (define-key c-mode-map (kbd "<f9>") 'c-quick-compile))
  (define-key c-mode-map (kbd "C-c C-c") 'c-quick-compile))


(add-hook 'c-mode-hook 'set-c-key)


(provide 'init-c)

;;; init-c.el ends here
