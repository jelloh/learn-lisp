;so comments use semi colons. this is gnna take some time
;to get used to.
;Tutorial: https://www.youtube.com/watch?v=OoVBKQRijko

;"Hello there!" ;this is a string
;#(0  1  "Hi" 10.3 #\Z) ;this is a vector
;you can have as many spaces b/w elements in a vector

;LISP stands for "list processing". woah
;so, commenting all the above stuff out to continue to rest of tutorial

;() <=> nil ;empty list(?)
;(0 1 2) ;this is a list
;first argument stands for the name of the function...
;so with this, it evaluates 1, evaluates 2, and then goes to evaluates
;the 0 function (which doesn't actually exist. just for example's sake)

;(princ "Hello world!") ;this is another function
;where 'princ' actually does sometohing

;to run this in command prompt now...
;1. first use 'cd' and go to the current directory (where the file is)
;2. type in 'sbcl' to open up the steel bank lisp stuff
;3. type (load "Tutorial1.lisp") and hit enter
;4. it will run through the code line-by-line and say T or nil at the end
;   depending on whether or not the run was successful
;   also note that anything other than 'nil' can stand for True/success

;is true
(if (= (+ 2 4) (* 2 3))  ;our condition
  (princ "Potato") ;if true
  (princ "Nope!")) ;if false

;is true
(if 5
  (princ "omg")
  (princ "poop"))

;is false. prints "poop"
(if nil
  (princ "omg")
  (princ "poop"))

;is false. () also counts as 'nil'
(if ()
  (princ "omg")
  (princ "poop"))
