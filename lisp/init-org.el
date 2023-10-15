(unless (package-installed-p 'org)
  (package-install 'org))

(require 'org)

(provide 'init-org)
