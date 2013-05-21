;; (c) Дмитрий Пинский <demetrius@neverblued.info>
;; Допускаю использование и распространение согласно
;; LLGPL -> http://opensource.franz.com/preamble.html

(in-package #:wsf-cleepz)

(defun view-docroot/ (&rest relative-path-chunks)
  (parse-view-file (apply #'docroot/ relative-path-chunks)))

(defparameter view-home
  (user-homedir-pathname))

(defgeneric view-home (server))

(defmethod view-home (this)
  (pathname (join (server-pathname this) "/")))

(defmacro with-view-server (this &body body)
  `(let ((view-home (view-home ,this)))
     ,@body))

(defun view/ (&rest relative-path-chunks)
  (parse-view-file (apply #'join `(,view-home ,@relative-path-chunks))))

(defclass view-server (docroot-server) ())

(defmethod respond ((this view-server) request)
  (with-view-server this
    (call-next-method)))
