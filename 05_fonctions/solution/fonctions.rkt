;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname fonctions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ---------------------------------------------------------------------
;; 1

(define (pluriel mot) (string-append mot "s"))

(pluriel "pomme")
(pluriel "programme")

;; ---------------------------------------------------------------------
;; 2

(define (saluer nom) (string-append "Bonjour " nom " !"))

(saluer "Vicky")
(saluer "Fangfang")

;; ---------------------------------------------------------------------
;; 3

(define (juin? jour mois année) (= mois 6))

(juin? 11 6 2024)
(juin? 27 11 1992)

;; ---------------------------------------------------------------------
;; 4

(define (saluer-en-japonais heure)
  (cond ((< heure 12) "ohiyō")
        ((< heure 17) "konnichiwa")
        ((< heure 24) "konbanwa")))
  
(saluer-en-japonais 11)
(saluer-en-japonais 17)

;; ---------------------------------------------------------------------
;; 5

(define (saluer-en-anglais heure période)
  (cond ((string=? période "am") "Good morning")
        ((< heure 5) "Good afternoon")
        ((< heure 13) "Good evening")))

(saluer-en-anglais 11 "am")
(saluer-en-anglais 11 "pm")

;; ---------------------------------------------------------------------
;; 6

(define (première-lettre mot) (string-ith mot 0))

(première-lettre "Racket")
(première-lettre "crayon")

;; ---------------------------------------------------------------------
;; 7

(define (joindre-mots mot-1 mot-2)
  (string-append mot-1 "_" mot-2))

(joindre-mots "maxime" "pigeon")
(joindre-mots "benoit" "pigeon")

;; ---------------------------------------------------------------------
;; 8

(define (supprimer-caractère mot pos)
  (string-append (substring mot 0 pos) (substring mot (+ pos 1))))

(supprimer-caractère "petit" 1)
(supprimer-caractère "grand" 2)



















