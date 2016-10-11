;(load "quicklisp.lisp")
; (quicklisp-quickstart:install) 

(load "~/quicklisp/setup.lisp")
(ql:quickload "cl-csv")
(ql:quickload 'read-csv)
(defparameter *mtcars* nil)

(setf *mtcars* (cl-csv:read-csv #P"mtcars.csv"))


