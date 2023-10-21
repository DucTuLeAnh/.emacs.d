(unless (package-installed-p 'treemacs)
  (package-install 'treemacs))

(require 'treemacs)

(provide 'init-treemacs)
