
;; loaded by default now
;; (load "~/quicklisp/setup.lisp")


;;(ql:quickload "cls")
(ql:register-local-projects)
(ql:quickload :cls)
(ql:quickload :lisp-matrix)


(defparameter *start* 1)
(defparameter *end* 10)
 
(do ((i *start* (+ i 1)))
    ((> i *end*))
  (format t "~A ~A~%" i (* i i)))

(defvar x 4)

(defun odd (x)
  (if (oddp x)
      'odd-number
      'even-number))
