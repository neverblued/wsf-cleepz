;; (c) Дмитрий Пинский <demetrius@neverblued.info>
;; Допускаю использование и распространение согласно
;; LLGPL -> http://opensource.franz.com/preamble.html

(in-package #:wsf)

(defclass view-server (docroot-server) ())

(defmethod respond ((server view-server) request)
  (let ((cleepz:view-docroot (server-pathname server)))
    (call-next-method)))

(defun view-docroot/ (&rest relative-path-chunks)
  (cleepz:parse-view-file (apply #'docroot/ relative-path-chunks)))

(export '(view-server view-docroot/))
