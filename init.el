
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
(require 'init-org-mode)
(require 'latex-pretty-symbols)
(require 'init-waka-time-mode)
(require 'init-python)
;;(require 'init-packages)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(wakatime-mode which-key use-package spaceline-all-the-icons smex smartparens org-bullets neotree monokai-theme markdown-mode julia-repl julia-mode highlight-parentheses flycheck elpy ein counsel cnfonts cdlatex auctex atom-one-dark-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
