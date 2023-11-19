(unless (package-installed-p 'evil)
  (package-install 'evil))


(unless (package-installed-p 'undo-tree)
  (package-install 'undo-tree))
(require 'undo-tree)
(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))

;; custom evil settings must be set before evil loads
(setq evil-want-C-u-scroll t)
(setq evil-undo-system 'undo-tree)


(require 'evil)
(evil-mode 1)
(global-undo-tree-mode 1)
(evil-set-initial-state 'xref--xref-buffer-mode 'emacs)

(provide 'init-evil)
