;; Set of utilities 

;; adds up a vector x with each element raised to the p power
(defun sump (x p) 
  (if 
   (null x)
      0 
      (+ (expt (car x) p) (sump (cdr x) p))
      )
)

;; defines the mean
(defun mean (x) (/ (sump x 1) (length x)))

;; sweeps a value out from a function
(defun minus (x val)
  (if (null x) 
      nil
      (cons (- (car x) val) (minus (cdr x) val))
      )
)

;; adds up a vector
(defun sum (x) (sump x 1))

;; calculates the product of two vectors
(defun prod (x y)
  (if 
   (not (equal (length x) (length y))) 
   nil
   (if  (null x)
    nil
    (cons (* (car x) (car y)) (prod (cdr x) (cdr y)))
    )
   )
)

;; inner product
(defun ip (x y)
  (sump (prod x y) 1)
)


