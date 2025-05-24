(unless (package-installed-p 'vterm)
  (package-install 'vterm))

(require 'vterm)
;; right now I have to manually compile emacs-libvterm and copy it into the main directory
;; from https://github.com/akermu/emacs-libvterm
;; TODO: figure out an easier way to set this up or, at least automate the build process in elisp
(add-to-list 'load-path "./emacs-libvterm")

(provide 'init-vterm)
