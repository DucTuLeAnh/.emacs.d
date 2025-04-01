(setq inhibit-startup-message t)

(scroll-bar-mode -1)   	 ; Disable visible scrollbar
(tool-bar-mode -1) 	 ; Disable the toolbar
(tooltip-mode -1)  	 ; Disable tooltips
(set-fringe-mode 10)   	 ; Give some breathing room
(menu-bar-mode -1)   	 ; Disable the menu bar
(column-number-mode)
(global-display-line-numbers-mode t)
(set-default 'truncate-lines t)
(put 'scroll-left 'disabled nil)

(unless (package-installed-p 'dracula-theme)
  (package-install 'dracula-theme))

(load-theme 'dracula t)

(unless (package-installed-p 'expand-region)
  (package-install 'expand-region))

(require 'expand-region)

(global-set-key (kbd "C-<") 'er/expand-region)
(global-set-key (kbd "C-x r i") 'replace-rectangle)
(global-set-key (kbd "M-y") 'counsel-yank-pop)
(global-set-key (kbd "C-c r") 'query-replace)

(unless (package-installed-p 'ace-window)
  (package-install 'ace-window))

(require 'ace-window)

(global-set-key (kbd "M-o") 'ace-window)



(provide 'init-defaults)


