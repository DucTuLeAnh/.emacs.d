(unless (package-installed-p 'slime)
  (package-install 'slime))

(unless (package-installed-p 'paredit)
  (package-install 'paredit))

(unless (package-installed-p 'aggressive-indent)
  (package-install 'aggressive-indent))


(unless (package-installed-p 'rainbow-delimiters)
  (package-install 'rainbow-delimiters))

(require 'slime)
(setq inferior-lisp-program "/usr/local/bin/sbcl")

(require 'paredit)
(add-hook 'emacs-lisp-mode-hook       'enable-paredit-mode)
(add-hook 'lisp-mode-hook             'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'scheme-mode-hook           'enable-paredit-mode)

(require 'rainbow-delimiters)
(add-hook 'emacs-lisp-mode-hook       'rainbow-delimiters-mode)

(require 'aggressive-indent)
(add-hook 'emacs-lisp-mode-hook       'aggressive-indent-mode)



(provide 'init-lisp-configs)
