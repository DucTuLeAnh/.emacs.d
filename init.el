; add lisp directory to load path to be able to require all it's scripts
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))



(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                		 ("org" . "https://orgmode.org/elpa/")
                		 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))




;; init lisp directory

(require 'init-defaults)
(require 'init-evil)

