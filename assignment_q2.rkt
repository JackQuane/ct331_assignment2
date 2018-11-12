#lang racket

(provide ins_beg)
(provide ins_end)
(provide cout_top_level)
(provide count_instances)
(provide count_instances_tr)
(provide count_instances_deep)

;Q2 A
(define (ins_beg el lst)
  (cons el lst)
  )

(ins_beg 'a '(b c d))
(ins_beg '(a b) '(b c d))

;Q2 B
(define (ins_end el lst)
  (append lst el)
  )

(ins_end '(a) '(b c d))
(ins_end '(a b) '(b c d))

;Q2 C
(define (cout_top_level lst)
  (if (null? lst)
  0
  (+ 1 (cout_top_level (cdr lst))))
  )

(cout_top_level '(a b h (c d)))

;Q2 D 
(define (count_instances item lst)
  (cond [(null? lst) 0] 
        [ (= item(car lst)) (+ 1 (count_instances item (cdr lst))) ]
        [else  (count_instances item (car lst))]
  )
  )

(count_instances '(a) '(a b c a))

;Q2 E 
(define (count_instances_tr item lst running_total)
  (if (item lst)
  (count_instances item (cdr lst) (+ running_total 1))
  0
  )  
)

(count_instances_tr '(a) '(a b c a))

;Q2 F 
(define (count_instances_deep item lst)

  (if (item lst)
      (+ 1 (count_instances_deep item //))
      0
      )  
  
)



