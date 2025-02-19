(unless (package-installed-p 'vterm)
  (package-install 'vterm))

(require 'vterm)

(provide 'init-vterm)
