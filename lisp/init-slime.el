(unless (package-installed-p 'slime)
  (package-install 'slime))

(unless (package-installed-p 'paredit)
  (package-install 'paredit))

(require 'slime)
(setq inferior-lisp-program "/usr/local/bin/sbcl")

(require 'paredit)
(add-hook 'emacs-lisp-mode-hook       'enable-paredit-mode)
(add-hook 'lisp-mode-hook             'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'scheme-mode-hook           'enable-paredit-mode)



(provide 'init-slime)
