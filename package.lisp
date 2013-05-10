;; (c) Дмитрий Пинский <demetrius@neverblued.info>
;; Допускаю использование и распространение согласно
;; LLGPL -> http://opensource.franz.com/preamble.html

(defpackage #:wsf-cleepz
  (:use #:cl #:blackjack #:wsf #:cleepz)
  (:export
                                        ; api
   #:view-server #:view-home #:view/
                                        ; misc
   #:with-view-server #:view-docroot/))
