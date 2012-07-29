;; (c) Дмитрий Пинский <demetrius@neverblued.info>
;; Допускаю использование и распространение согласно
;; LLGPL -> http://opensource.franz.com/preamble.html

(defpackage #:wsf-cleepz-system
  (:use #:common-lisp #:asdf))

(in-package #:wsf-cleepz-system)

(defsystem "wsf-cleepz"
  :description "Web Site Framework templating module"
  :version "0.1"
  :author "Дмитрий Пинский <demetrius@neverblued.info>"
  :depends-on (#:wsf #:cleepz)
  :serial t
  :components ((:file "package")
               (:file "server")
               (:file "tools")))
