;(princ (numberp "oop")) ;prints nil
;(princ (symbolp "apodsf"))
;(princ (symbolp #\A)) ;i think #\ makes it a character??
                      ; guess it's still not a symbol ;-;
                      ; what is a symbol!?!?
;others include zerop, oddp, evenp
;equal, eq, eql, equalp <- all the same\
;but use 'equal' anyways

(define (poop n) (* n 2))

(loop for i from 1 to 30
  for y = (poop i)
  collect y)
