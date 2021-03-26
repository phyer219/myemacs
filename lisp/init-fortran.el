;;; init-fortran.el --- Fortran mode set.
;;; To bind a key in a mode, you need to wait for the mode to be
;;; loaded before defining the key. One could require the mode, or use
;;; eval-after-load
;;; https://stackoverflow.com/questions/5500035/set-custom-keybinding-for-specific-emacs-mode
;;; Commentary:

;;; Code:

(defun f90-quick-compile ()
  "A quick compile funciton for Fortran."
  (interactive)
  (compile (concat
	    "gfortran " (buffer-name (current-buffer)) " -o a.out && ./a.out")))


(defun set-fortran-key ()
  "Set key map in 'f90-mode'."
  (define-key f90-mode-map (kbd "C-c C-c") 'f90-quick-compile))


(add-hook 'f90-mode-hook 'set-fortran-key)


(provide 'init-fortran)

;;; init-fortran.el ends here
