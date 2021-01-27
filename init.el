
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;;(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; 选择用哪一个 python 解释器
;; (setq python-shell-interpreter "/opt/anaconda/bin/python3.7")

(require 'init-better-defults)
(require 'init-ui)
(require 'init-packages)
(require 'init-fortran)
(require 'init-latex)
(require 'latex-pretty-symbols)
