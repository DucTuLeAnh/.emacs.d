(unless (package-installed-p 'slime)
  (package-install 'slime))

(require 'slime)
(setq inferior-lisp-program "/usr/local/bin/sbcl")

(provide 'init-slime)
