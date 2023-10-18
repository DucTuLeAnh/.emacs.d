(setq inhibit-startup-message t)

(scroll-bar-mode -1)   	 ; Disable visible scrollbar
(tool-bar-mode -1) 	 ; Disable the toolbar
(tooltip-mode -1)  	 ; Disable tooltips
(set-fringe-mode 10)   	 ; Give some breathing room
(menu-bar-mode -1)   	 ; Disable the menu bar
(column-number-mode)
(global-display-line-numbers-mode t)

(unless (package-installed-p 'dracula-theme)
  (package-install 'dracula-theme))

(load-theme 'dracula t)

(provide 'init-defaults)
