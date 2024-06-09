(unless (package-installed-p 'org)
  (package-install 'org))

(require 'org)

(defun show-agenda-files ()
  (interactive)
  (message "%s" (org-agenda-files)))

(global-set-key (kbd "C-c l") 'show-agenda-files)


(provide 'init-org)
