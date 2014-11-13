; LISP Homework 5 by Joe Ferrucci


; =========================
; ======   PART 1   =======
; =========================
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


; MapCar (INVALID)
(defun double-mapcar (y)
    (cond
        ((listp y)
            (apply 'append (mapcar (lambda (x) (cons x (list x))) y))
        )
        (t nil)
    )
)

; =========================
; ======   PART 2   =======
; =========================
(defun rdouble (y)
    (cond
        ((null y) nil)
        ((not (listp y)) nil)
        ((listp (car y)) (cons (rdouble (car y)) (rdouble (cdr y))))
        (t (cons (car y) (cons (car y) (rdouble (cdr y)))))
    )
)


; =========================
; ======   PART 3   =======
; =========================
(defun my-mapcar (fun l1 l2)
    (cond
        ((null l1) nil)
        ((null l2) nil)
        ((not (listp l1)) nil)
        ((not (listp l2)) nil)
        (t (cons (funcall fun (car l1) (car l2)) (my-mapcar fun (cdr l1) (cdr l2))))
    )
)




; =========================
; ======   PART 4   =======
; =========================




; =========================
; ======   PART 5   =======
; =========================



