;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pigiste) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ======================================================================
;; Taux journalier

;; ----------------------------------------------------------------------
;; Valeurs d'entrée

(define workhours-per-day 8)
(define hourly-rate 100)

;; ----------------------------------------------------------------------
;; Variables auxiliaires

(define day-rate (* hourly-rate workhours-per-day))

;; ----------------------------------------------------------------------
;; Valeurs de sortie

(define day-rate-message
  (string-append "Bonjour ! Mon taux journalier est de "
                 (number->string day-rate)
                 "$."))

;; ======================================================================
;; Budget fixe

;; ----------------------------------------------------------------------
;; Valeurs d'entrée

(define budget 20000)

;; ----------------------------------------------------------------------
;; Variables auxiliaires

(define days-available (floor (/ budget day-rate)))

;; ----------------------------------------------------------------------
;; Valeurs de sortie

(define budget-message
  (string-append "Bonjour. Avec un budget de "
                 (number->string budget)
                 ", je pourrai être à votre service pendant "
                 (number->string days-available)
                 " jours."))

;; ======================================================================
;; Rabais

;; ----------------------------------------------------------------------
;; Valeurs d'entrée

(define workdays 120)
(define discount-rate 15)
(define workdays-per-month 22)
(define client-name "Rudeus")

;; ----------------------------------------------------------------------
;; Variables auxiliaires

(define months-of-work (floor (/ 120 22)))
(define remaining-days (remainder workdays workdays-per-month))
(define fee-months (* workdays-per-month months-of-work day-rate))
(define discount (* fee-months (/ discount-rate 100)))
(define fee-months-discounted (- fee-months discount))
(define fee-remaining-days (* remaining-days day-rate))
(define fee-total (+ fee-months-discounted remaining-days))

;; ----------------------------------------------------------------------
;; Valeurs de sortie

(define discount-message
  (string-append "Bonjour "
                 client-name
                 ". Pour un projet qui s'échelonne sur environ "
                 (number->string months-of-work)
                 " mois, mon cachet serait de "
                 (number->string fee-total)
                 "$, incluant un rabais de "
                 (number->string discount)
                 "$ ("
                 (number->string discount-rate)
                 "%)."))
                 









