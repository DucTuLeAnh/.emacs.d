(unless (package-installed-p 'dockerfile-mode)
  (package-install 'dockerfile-mode))

(require 'dockerfile-mode)


(unless (package-installed-p 'docker-compose-mode)
  (package-install 'docker-compose-mode))

(require 'docker-compose-mode)
