#lang racket

;A cons pair of two numbers 
(cons 2 3)
;A list of 3 numbers, using only the cons function. 
(cons 1 (cons 2 (cons 3 empty)))
;A list containing a string, a number and a nested list of three numbers,
;using only the cons function.
(cons "banana" (cons 4 (cons(cons 1 (cons 2 (cons 3 empty))) empty)))
;A list containing a string, a number and a nested list of three numbers,
;using only the list function.
(list "banana" '(1 2 3) '(2))
;A list containing a string, a number and a nested list of three numbers,
;using only the append function.
(append '("banana") '(6) '((4 5 6))) 
