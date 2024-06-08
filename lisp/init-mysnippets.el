(defun extract-filename (path)
  (car
   (split-string
    (car (last (split-string path "/")))
    "\\.")))

(defun latex-compile-reload ()
  (interactive)
  (let* ((file-path (read-file-name "Compile .TEX: "))
	 (file-name (extract-filename file-path))
	 )
    (shell-command (concat "pdflatex " file-path))
    (find-file-other-window (concat file-name ".pdf"))))

(global-set-key (kbd "C-c q") 'latex-compile-reload)



(provide 'init-mysnippets)
