
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
(require 'init-editing-utils)

(require 'init-better-defults)
(require 'init-ui)
(require 'init-packages)
(require 'init-fortran)
(require 'init-latex)
(require 'latex-pretty-symbols)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company monokai-theme atom-one-dark-theme smex smartparens ivy swiper counsel flycheck neotree all-the-icons spaceline-all-the-icons use-package auctex cdlatex cnfonts org-bullets markdown-mode julia-mode julia-repl highlight-parentheses elpy ein wakatime-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
