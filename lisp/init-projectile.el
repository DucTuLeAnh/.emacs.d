(unless (package-installed-p 'projectile)
  (package-install 'projectile))

(require 'projectile)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'init-projectile)
