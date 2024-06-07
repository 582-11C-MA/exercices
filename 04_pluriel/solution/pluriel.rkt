;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pluriel) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ----------------------------------------------------------------------
;; Valeurs d'entrée

(define word "pomme")

;; ----------------------------------------------------------------------
;; Variables auxiliaires

(define word-length (string-length word))
(define last-2-letters (substring word (- word-length 2)))
(define last-letter (substring last-2-letters 1))
(define truncated-word (substring word 0 (- word-length 2)))

(define al/il? (or (string=? last-2-letters "al")
                   (string=? last-2-letters "il")))

(define au/eu/ou? (or (string=? last-2-letters "au")
                      (string=? last-2-letters "eu")
                      (string=? last-2-letters "ou")))

(define s/x/z? (or (string=? last-letter "s")
                   (string=? last-letter "x")
                   (string=? last-letter "z")))

;; ----------------------------------------------------------------------
;; Valeurs de sortie
                   
(define plural
  (cond (al/il? (string-append truncated-word "ux"))
        (au/eu/ou? (string-append word "x"))
        (s/x/z? word)
        (else (string-append word "s"))))




