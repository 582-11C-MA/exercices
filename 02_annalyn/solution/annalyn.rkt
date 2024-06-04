;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname annalyn) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ----------------------------------------------------------------------
;; Valeurs d'entrée

(define knight-awake? #false)
(define archer-awake? #false)
(define prisoner-awake? #false)
(define dog-present? #false)

;; ----------------------------------------------------------------------
;; Variables auxiliaires

(define one-kidnapper-awake? (or knight-awake? archer-awake?))
(define kidnappers-asleep? (and (not knight-awake?) (not archer-awake?)))

;; ----------------------------------------------------------------------
;; Valeurs de sortie

(define fast-attack? (not knight-awake?))
(define spy? one-kidnapper-awake?)
(define signal? (and prisoner-awake? (not archer-awake?)))
(define free-prisoner?
  (or (and dog-present? (not archer-awake?))
      (and (not dog-present?)
           prisoner-awake?
           kidnappers-asleep?)))