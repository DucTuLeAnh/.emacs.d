(unless (package-installed-p 'lsp-mode)
  (package-install 'lsp-mode))

(setq lsp-keymap-prefix "C-c l")
(setq xref-auto-jump-to-first-xref t)
(require 'lsp-mode)

(provide 'init-lsp)
