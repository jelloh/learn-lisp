;https://www.youtube.com/watch?v=pOQPR8MXX3M
;12/02/2016

(let (var)
  (princ var)) ; => NIL because var = NIL

(let ((x 5) (y 3))
  (princ x)
  (terpi) ;newline ~ same as (princ #\newline)
  (princ y)
  (+ x y))
; => whole thing equals 8 because that last line (+ x y) determines
; the whole thing's end value

(let (var (x 3) (y 7))
  (princ (* x y))
  var)
; => end value is NIL again

(let ((x 5) (y x))
  ... )
; => this gives an ERROR because X cannot be 'seen' from Y
; everything in those ( )'s happens in parallel kind of
; x and y are declared at the same time

(let* ((x 5) (y x))
  ... )
; => this is allowed because let* makes it run sequentially
; rather than in parallel

;;setq allows you to set a variable to a value
(let (x)
  (setq x 5)) ;example: sets x to 5

;;Prints nil then sets x to 5 and prints.. other stuff (quoting tutorial guy)
(let (x)
  (princ x) ;prints NIL
  (terpri)
  (setq x 5)
  (princ x) ;prints 5
  (+ 1332 x)) ; entire thing evaluates to 1337

;;wow. just learned that convention is to use two semicolons
;;when commenting above a whole chunk of code

;;;omg and 3 are used to comment big modules of code
;;;;"4 is just heresy.. four has its uses but......"

#| omg big
comments
block
comments
wow
learning new things
|#

#| defun stands for "define function"
   takes in 3 parts: name of the function, parameters(?), body(??)
   the very last line is what the function comes out to equal
|#
;;Computes x^2 (originally called 'square')
(defun squash (x)
  (princ x) ;can add as many extra lines in the body as you want
  (* x x))

(defun mult (x y)
  (* x y))
