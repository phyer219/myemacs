;;compile

(defun quick-compile ()
  "A quick compile funciton for Fortran"
  (interactive)
  (compile (concat
	    "gfortran " (buffer-name (current-buffer)) " -o a.out && ./a.out")))
;;Short key F9

(global-set-key [(f9)] 'quick-compile)

;; (define-key dired-mode-map "u" 'dired-up-directory)

(provide 'init-fortran)
