(unless (package-installed-p 'which-key)
  (package-install 'which-key))

(require 'which-key)
(which-key-mode)

(provide 'init-which-key)
