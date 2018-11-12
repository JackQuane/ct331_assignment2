#lang racket
(provide tree)
(provide left-child)
(provide right-child)
(provide value)
(provide traverse)

(define tree '((5 6 3) 4 (3 9 2)))



(define (left-child tree)
  (car tree)
)

(define (right-child tree)
  (caddr tree)
)

(define (value tree)
  (cadr tree)
)

(define (traverse tree) 
(append(traverse(car tree)) (list(cadr tree)) (traverse(caddr tree)))

  )

(traverse(tree))

