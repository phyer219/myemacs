;;; init-c.el --- c-mode set.
;;; To bind a key in a mode, you need to wait for the mode to be
;;; loaded before defining the key. One could require the mode, or use
;;; eval-after-load
;;; https://stackoverflow.com/questions/5500035/set-custom-keybinding-for-specific-emacs-mode
;;; Commentary:

;;; Code:

(defun c-quick-compile ()
  "A quick compile funciton for c."
  (interactive)
  (compile (concat
	    "gcc " (buffer-name (current-buffer)) " -o a.out && ./a.out")))


(defun set-c-key ()
  "Set key map in 'c-mode'."
  (message "Press F9 to compile and run.")
  (define-key c-mode-map (kbd "<f9>") 'c-quick-compile))


(add-hook 'c-mode-hook 'set-c-key)


(provide 'init-c)

;;; init-c.el ends here
