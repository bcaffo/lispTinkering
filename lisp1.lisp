

(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

(guess-my-number)

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number)
)

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number)
)

(defparameter *small* 1)
(defparameter *big* 100)



(defun guess-my-number ()
  (setf (round (float (/ (+ *small* *big*) 2))))
  (*guess*)
)

(defun smaller ()
  (setf 
)
