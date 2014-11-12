; LISP Homework 5 by Joe Ferrucci

; Recursive
(defun double-recursive (y)
    (cond
        ((null y) nil)
        ((listp y) 
            (append (list (car y)) (list (car y)) (double-recursive (cdr y)))
        )
        (t nil)
    )
)


; Iterative
(defun double-iterative (y)
    (setq i 0)
    (setq new ())
    (cond
        ((listp y)
            (do 
                ()
                ((= i (length y)) new)
                (setq curr (list (nth i y)))
                (setq new (append new curr))
                (setq new (append new curr))
                (setq i (+ 1 i))
            )
        )
    )
)


; MapCar
(defun double-mapcar (y)
    (setq new ())
    (cond
        ((listp y)
            (mapcar
                (lambda (x)
                    (setq new (append new (list x) (list x))))
                y
            )
        )
    )
    new
)





(do 
    (
        (i (length x) (- i 1))
        ; (y 1 (* y 2))
    )
    ((< i 1) nil)
    (print x)
)

