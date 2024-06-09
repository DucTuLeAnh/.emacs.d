(unless (package-installed-p 'lsp-mode)
  (package-install 'lsp-mode))

(setq lsp-keymap-prefix "C-c l")
;;(setq xref-auto-jump-to-first-xref t)
(require 'lsp-mode)


(require 'dap-mode)

(dap-mode 1)
;; The modes below are optional
(dap-ui-mode 1)
;; enables mouse hover support
(dap-tooltip-mode 1)
;; use tooltips for mouse hover
;; if it is not enabled `dap-mode' will use the minibuffer.
(tooltip-mode 1)
;; displays floating panel with debug buttons
;; requies emacs 26+
(dap-ui-controls-mode 1)

(require 'dap-node)

(dap-node-setup)

(require 'dap-chrome)
(dap-chrome-setup)



(provide 'init-lsp)
