#|
  Aileen Benedict | 12/02/2016
  Take Home Final Part | Problem 1

  Let f(0) = 0;f(1) = 7;f(n) = f(n-2)+3f(n-1) for n > 1.
  Create a Common Lisp program to compute f(n) for n = 1,2,3,...,30.
  Run it. Submit the program and a few points about problems you encountered
  in Common Lisp, as well as a screen shot.
|#

(defun potato_butt (n)
  (if (= n 0) ;ISSUE: I accidentally put (n = 0) here at first
    0
    (if (= n 1) ;ISSUE: I accidentally put (n = 2) here at first :')
    7
      (+ (potato_butt (- n 2))
         (* 3 (potato_butt (- n 1)))))))

;;Prints the value of f(n) in the format (n answer)
;;from n = 1 to n = 30
(princ
  (loop for x from 1 to 30
  for y = (potato_butt x)
  collect (list x y))) ;ISSUE: I tried to put (princ ..) here instead of
                       ;at the top. Was also missing the 'collect...' part
