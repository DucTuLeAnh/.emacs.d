(unless (package-installed-p 'lsp-mode)
  (package-install 'lsp-mode))

(require 'lsp-mode)
(setq lsp-keymap-prefix "C-c l")

(provide 'init-lsp)
