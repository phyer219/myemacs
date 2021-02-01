;; (expand "path" "default") 的结果是 default/path.
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'init-elpa)
(require 'init-ui)
(require 'init-company)
(require 'init-editing-utils)

(require 'init-better-defults)


;;(require 'init-fortran)
(require 'init-latex)
(require 'init-org-mode)
(require 'latex-pretty-symbols)
(require 'init-waka-time-mode)
(require 'init-python)
