;; (c) Дмитрий Пинский <demetrius@neverblued.info>
;; Допускаю использование и распространение согласно
;; LLGPL -> http://opensource.franz.com/preamble.html

(defpackage #:wsf-cleepz-system
  (:use #:common-lisp #:asdf))

(in-package #:wsf-cleepz-system)

(defsystem "wsf-cleepz"
  :version "0.2"
  :depends-on (#:wsf #:cleepz)
  :serial t
  :components ((:file "package")
               (:file "server")))
