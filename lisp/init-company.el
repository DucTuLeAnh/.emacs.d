
(unless (package-installed-p 'company)
  (package-install 'company))

(require 'company)
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)

(provide 'init-company)
