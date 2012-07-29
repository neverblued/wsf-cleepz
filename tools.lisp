;; (c) Дмитрий Пинский <demetrius@neverblued.info>
;; Допускаю использование и распространение согласно
;; LLGPL -> http://opensource.franz.com/preamble.html

(in-package #:wsf-cleepz)

(defun view-docroot/ (&rest relative-path-chunks)
  (parse-view-file (apply #'docroot/ relative-path-chunks)))
