(unless (package-installed-p 'counsel)
  (package-install 'counsel))

(require 'counsel)
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(setq counsel-ag-base-command "ag -u --nocolor --nogroup %s")
;; setup counsel key bindings
(global-set-key (kbd "C-c s") 'counsel-ag)


(provide 'init-counsel)
