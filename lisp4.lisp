;; just defining some quick regression code

 (setf m (list 1.0 2.0 3.0 4.0))

(defun mean (x) (/ (sump x 1) (length x)))

(defun sump (x p) 
  (if 
   (null x)
      0 
      (+ (expt (car x) p) (sump (cdr x) p))
      )
)


(defun sd (x)
  (sqrt 
   (/ 
   (- (sump x 2)
      (/ (expt (sump x 1) 2) (length m))
      )
   (- (length x) 1)
   )
   )
  )


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

;; regression through the origin



(defun rto (y x)
  (if 
   (not (equal (length x) (length y))) 
   nil
   (/ (ip x y) (ip x x))
    )
  )


(setf y '(21.0 21.0 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 17.8 16.4 17.3 15.2 10.4 10.4 14.7 32.4 30.4 33.9 21.5 15.5 15.2 13.3 19.2 27.3 26.0 30.4 15.8 19.7 15.0 21.4))

(setf x `(2.620 2.875 2.320 3.215 3.440 3.460 3.570 3.190 3.150 3.440 3.440 4.070 3.730 3.780 5.250 5.424 5.345 2.200 1.615 1.835 2.465 3.520 3.435 3.840 3.845 1.935 2.140 1.513 3.170 2.770 3.570 2.780))

(rto y x)

(defun demean (x)
  (minus x (mean x))
)

(defun minus (x val)
  (if (null x) 
      nil
      (cons (- (car x) val) (minus (cdr x) val))
      )
)



