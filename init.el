;; (expand "path" "default") 的结果是 default/path.
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(wakatime-mode which-key use-package spaceline-all-the-icons smex smartparens org-bullets neotree monokai-theme markdown-mode julia-repl julia-mode highlight-parentheses flycheck elpy ein counsel cnfonts cdlatex auctex atom-one-dark-theme))
 '(wakatime-cli-path "/home/zqw/.local/bin/wakatime")
 '(wakatime-python-bin nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
