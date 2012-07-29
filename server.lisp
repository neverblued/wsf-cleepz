;; (c) Дмитрий Пинский <demetrius@neverblued.info>
;; Допускаю использование и распространение согласно
;; LLGPL -> http://opensource.franz.com/preamble.html

(in-package #:wsf-cleepz)

(defmacro with-view-server (this &body body)
  `(let ((view-docroot (server-pathname ,this)))
     ,@body))

(defclass view-server (docroot-server) ())

(defmethod respond ((this view-server) request)
  (with-view-server this
    (call-next-method)))
