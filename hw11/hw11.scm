(define (find s predicate)
  (cond ((null? s) #f)
        ((predicate (car s)) (car s))
        (else (find (cdr-stream s) predicate))
  )
)

(define (scale-stream s k)
  (if (null? s)
      nil
      (cons-stream (* k (car s)) (scale-stream (cdr-stream s) k))
  )
)

(define (member? x y)
      (cond ((null? y) #f)
            ((eq? x (car y)) #t)
            (else (member? x (cdr-stream y))))
)

(define (has-cycle s)
  (define (seen? seen-list x)
    (cond ((null? x) #f)
          ((member? (car x) seen-list) #t)
          (else (seen? (append seen-list (cons (car x) nil)) (cdr-stream x)))
    )
  )
  (seen? () s)
)


(define (has-cycle-constant s)
  'YOUR-CODE-HERE
)
