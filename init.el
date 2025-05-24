; add lisp directory to load path to be able to require all it's scripts
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;;(setq custom-file "~/.emacs.d/custom.el")
;;(load custom-file)

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                		 ("org" . "https://orgmode.org/elpa/")
                		 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))


;; init lisp directory
(require 'init-defaults)
(require 'init-projectile)
(require 'init-counsel)
(require 'init-org)
(require 'init-magit)
(require 'init-which-key)
(require 'init-web-mode)
(require 'init-company)
(require 'init-lisp-configs)
(require 'init-lsp)
(require 'init-vterm)
