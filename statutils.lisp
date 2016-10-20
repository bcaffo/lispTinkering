;; requires utils.lisp to be loaded

;; subtracts the mean from every element fo the vector
(defun demean (x)
  (let (( m  (mean x) ))
    (minus x m)
  )
)

;;; is  this slower, does it recalculate mean x for each element?
; (defun demean (x)
;  (minus x (mean x))
;)

(defun cov (x y)
  (cons (sum (prod (demean x) (demean y))) (- (length x) 1))
)

;; covariance function using the shortcut formula
;; (defun cov (x y)
;;   (if (not (equal (length x) (length y)))
;;       nil
;;       (/ 
;;        (- 
;; 	(sum (prod x y)) 
;; 	(* (length x) (mean x) (mean y)))
;;        (- (length x) 1)
;;       )
;;       )
;; )




;; calculates the variance using the shortcut formula
(defun v (x) (cov x x))

;(defun v (x) (/ (sump (demean x) 2) (- (length x) 1)) )

(defun sd (x) (sqrt (v x)))

(defun cor (x y)
  (/ (/ (cov x y) (sd x)) (sd y))
)

;; regression through the origin
(defun rto (y x)
  (if 
   (not (equal (length x) (length y))) 
   nil
   (/ (ip x y) (ip x x))
    )
  )


(defun linreg_slope (x y) 
  (/ 
   (* (cor y x) (sd y)) 
   (sd x)
   )
)

(defun linreg (x y)
  (if (not (equal (length x) (length y))) nil
      (let 
       (
	
	)
	)
)
