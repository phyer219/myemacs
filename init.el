
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;;(package-initialize)
;; (expand "path" "default") 的结果是 default/path.
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; 选择用哪一个 python 解释器
;; (setq python-shell-interpreter "/opt/anaconda/bin/python3.7")

(require 'init-elpa)
(require 'init-company)
(require 'init-editing-utils)

(require 'init-better-defults)
(require 'init-ui)

;;(require 'init-fortran)
(require 'init-latex)
;;(require 'latex-pretty-symbols)
;;(require 'init-packages)


