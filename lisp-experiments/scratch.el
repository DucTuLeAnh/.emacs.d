(require 'json)
(require 'url)


(defun fetch-json-sync (url)
  "Fetch JSON from URL synchronously and return it as an Emacs Lisp data structure."
  (with-current-buffer (url-retrieve-synchronously url)
    (goto-char url-http-end-of-headers) 
    (json-parse-buffer :object-type 'alist)))

(defmacro -> (x &optional form &rest more)
  "Thread X through FORM and MORE in a thread-first style."
  (if (null form)
      x
    `(-> , (if (sequencep form)
               (append (list (car form) x) (cdr form))
             (list form x))
           ,@more)))

(defmacro ->> (x &optional form &rest more)
  "Thread X through FORM and MORE in a thread-last style."
  (if (null form)
      x
    `(->> , (if (sequencep form)
		(append (list (car form)) (cdr form) (list x))
	      (list form x))
            ,@more)))

(setq download-base-url "https://melpa.org/packages/")

(setq test-response
      (fetch-json-sync "https://melpa.org/archive.json"))

(pp  (alist-get 'wilt test-response))

(defun number-array-to-version (m-version-array)
  (let* ((majorv (number-to-string (aref m-version-array 0)))
	 (patchv (number-to-string (aref m-version-array 1))))

    (concat majorv "." patchv)))

(defun retrieve-download-urls (dep)
  (let* ((varr (alist-get 'ver dep))
	 (version-string (number-array-to-version varr))

	 )
    version-string
    ))

(->> (alist-get 'ac-dcd test-response)
     (alist-get 'deps)
     )


(alist-get 'auto-complete test-response)
(alist-get 'ac-dcd test-response)


(setq test-dep-list
      (->> (alist-get 'ac-dcd test-response)
	   (alist-get 'deps)
	   ))


(defun construct-download-url (dep)
  (let* ((dependencies (alist-get 'deps dep)))))


(defun find-deps (dependency)
  (mapcar (lambda (dep) (car dep)) test-dep-list))

(defun to-empty-list (response)
  (if (eq response :null)
      nil
    response))





(defun fad (root-dep)
  (let* ((local-dependencies (->> (alist-get root-dep test-response)
				  (alist-get 'deps)
				  (to-empty-list)))
	 )


    (if (not local-dependencies)
	(list root-dep)
      (mapcan (lambda (dep) (car dep)) local-dependencies)
      
      )))


(defun fad2 (root-dep)
  (let* ((local-dependencies (->> (alist-get root-dep test-response)
				  (alist-get 'deps)
				  (to-empty-list)))
	 )


    (if (not local-dependencies)
	(list root-dep)
      (append  (mapcan (lambda (dep) (fad2 (car dep))) local-dependencies) (mapcar (lambda (dep) (car dep)) local-dependencies))
      
      )))

(setq test-response
      (fetch-json-sync "https://melpa.org/archive.json"))

(fad2 'ac-dcd)

(delete-dups  (fad2 'ac-dcd))
(fad2 'ac-dcd)
(fad2 'ac-dcd)


(setq test-alist '((f . [1 1]) (flycheck . [1 2])))

(->> (alist-get 'ac-dcd test-response)
     (alist-get 'deps)
     (to-empty-list)
     (mapcan (lambda (dep) (car dep))))



(setq myliest(->> (alist-get 'ac-dcd test-response)
		  (alist-get 'deps)
		  (to-empty-list)
		  ))


(setq tl  (->> (alist-get (car (car myliest)) test-response)
	       (alist-get 'deps)
	       (to-empty-list)
	       ))

(setq al '((a b) (b d)))

(mapcan (lambda (d) (list  (car d))) al)



(list (car (car myliest)))


(car (car myliest))





(mapcan (lambda (x)

	  (->> (alist-get x test-response)
	       (alist-get 'deps)
	       (to-empty-list)

	       )) 's)








(defun retrieve-download-version (dependency)
  (alist-get 'ver dependency))

;; test functions
(->>  (alist-get 'auto-complete test-response)
      (retrieve-download-version))



(defun find-dependency-download-version (dependency-name)

  (let* ((archive-info (alist-get dependency-name test-response))
	 (download-version (retrieve-download-version archive-info))
	 (download-version-str (number-array-to-version download-version))
	 (dependency-name-str (symbol-name dependency-name)))

    (concat "https://melpa.org/packages" dependency-name-str "-" download-version-str ".tar")))


(find-dependency-download-version 'ac-dcd)


(find-deps 'ac-dcd)

(mapcar (lambda (dep) (find-dependency-download-version dep)) (find-deps 'ac-dcd))

;;; so retrieving a dependencies download links is solved
;;; the next step is to implement the querying of walking down the tree


