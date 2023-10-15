(unless (package-installed-p 'counsel)
  (package-install 'counsel))

(require 'counsel)
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; setup counsel key bindings
(global-set-key (kbd "C-c s") 'counsel-ag)

(provide 'init-counsel)
