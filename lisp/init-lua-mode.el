(unless (package-installed-p 'lua-mode)
  (package-install 'lua-mode))


(require 'lua-mode)

(provide 'init-lua-mode)

