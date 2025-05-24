(unless (package-installed-p 'lsp-mode)
  (package-install 'lsp-mode))
(unless (package-installed-p 'dap-mode)
  (package-install 'dap-mode))

(setq lsp-keymap-prefix "C-c l")
(global-set-key (kbd "C-.") 'lsp-find-references)
(global-set-key (kbd "C-,") 'lsp-find-definition)
;;(setq xref-auto-jump-to-first-xref t)
(require 'lsp-mode)

(require 'dap-mode)
(require 'dap-ui)
(require 'dap-mouse)

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

(add-hook 'web-mode-hook
          (lambda ()
            (run-at-time 0 nil #'lsp)))




(require 'dap-node)
(dap-node-setup)

(provide 'init-lsp)
