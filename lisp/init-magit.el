(unless (package-installed-p 'magit)
  (package-install 'magit))

(require 'magit)

(provide 'init-magit)
