#|
   https://www.youtube.com/watch?v=knqTc0mBxvw
   12/02/2016
|#

(quote 5) ;prevent LISP from evaluating that form (whatever that means)
(quote #\a)
(quote #(5 0 6)) ;remember the #.. is a vector

;;me messing with stuff
(let ((x 5) (y 23))
  (princ (* x y)) ;prints 115
  (terpri)
  (princ (quote (* x y)))) ;prints (* X Y)

;you can also use a single quote as shortand for 'quote'
(princ 'x) ;same as (princ (quote x))
(princ '(0 1 2 3 4 5))

#|
;this is just an example with C... (not sure what it's an example of yet)
enum command {PRINT = 0, READ} ; note the fact that PRINT = 0 doesn't mean anything
void doCommand(enum command c){; we only use it for the values "PRINT" and "READ"
  if(c == PRINT)               ; helps make it more readable
    printf(...);               ; only using it for their names**
  else if (c == READ)
    scanf(...);
}

;;now coding the above stuff in Lisp (ish)
;;also, using a hyphen is what u dooooooo. b/c it's not case sensitive
;; doCommand is the same as docommand
(defun do-command (c) ;once again, only using c for the 'symbolic value'
  (if (eq cc 'print)  ;(whether it equals 'print' or 'read')
    (princ ...)
    (if (eq c 'read)
      (read ...))))
;;MIND BLOWNNNNNNNNNNNNNNNNN
;;random note, this is more like .equals() with Strings in java, i suppose(?)
;;also, use = if you are using numbers, and eq or eql if it's other stuff
|#

#|
  Lists are efficient data types for data.
  Good use = prototypes
  can switch to specific data types later
  (he said a lot of stuff just now. missed like half of it B).... )
|#
#|
(car list) ;return head of list
  ex.
    (car '(a b c)) => 'a
    (car '(b c))   => 'b
    (car ())       => () ;nil
(cdr list) ;return rest of list
  ex.
    (cdr '(a b c)) => (b c)
    (cdr '(b c))   => (c)
    (cdr ())       => () ;nil
|#

;Two cases:
; nil sum => 0
; a->(more numbers) => a + b + c + ... + whatever
(defun sum (list) ;assume its taking a list of numbers, called 'list'
  (if (null list)       ;null function checks to see if it's nil
    0
    (+ (car list) (sum (cdr list)))))

;;woah. he like took this chunk of code and copied/pasted it into
;;command prompt
;;and then he could write in commands to call the sum function
;;like (sum '(0 1 2 3))    which would return 6
;;and so on
