;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname reacteur) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ----------------------------------------------------------------------
;; Définitions de données

;; Une Criticité est un Booléen.
;; interprétation : si le réacteur est dans un état de criticité ou non

;; Une Température est un Nombre.
;; interprétation : degrés Kelvin

;; Neutrons est un Nombre.
;; interprétation : neutrons émis par seconde

;; ----------------------------------------------------------------------
;; Constantes

(define TEMP-MAX 700)
(define NEUTRONS-MIN 500)
(define PRODUIT-MAX 50000)

;; ----------------------------------------------------------------------
;; Fonctions auxiliaires

;; Température -> Booléen
;; Détermine si la température donnée est critique.
;; étant donné : 500, attend : #true
;; étant donné : 800, attend : #false
;; étant donné : 700, attend : #false
(define (temp-critique? temp)
  (< temp TEMP-MAX))

;; Tests

(temp-critique? 500)
(temp-critique? 800)
(temp-critique? 700)

;; Neutrons -> Booléen
;; Détermine si la quantité de neutrons donnée est critique.
;; étant donné : 200, attend : #false
;; étant donné : 600, attend : #true
;; étant donné : 500, attend : #false
(define (neutrons-critique? neutrons)
  (> neutrons NEUTRONS-MIN))

;; Tests

(neutrons-critique? 200)
(neutrons-critique? 600)
(neutrons-critique? 500)

;; Température Neutrons -> Booléen
;; Détermine si le produit de la température et de la quantité de
;; neutrons données est critique.
;; étant donné : 1 10000, attend : #true
;; étant donné : 2 50000, attend : #false
;; étant donné : 2 25000, attend : #false
(define (produit-critique? temp neutrons)
  (< (* temp neutrons) PRODUIT-MAX))

;; Tests

(produit-critique? 1 10000)
(produit-critique? 2 50000)
(produit-critique? 2 25000)

;; ----------------------------------------------------------------------
;; Fonction principale


;; Température Neutrons -> Booléen
;; Détermine si le réacteur est critique étant donné sa température
;; et la quantité de neutrons par seconde.
;; étant donné : 800 200, attend : #false
;; étant donné : 50 550,  attend : #true
(define (critique? temp neutrons)
  (and (temp-critique? temp)
       (neutrons-critique? neutrons)
       (produit-critique? temp neutrons)))

;; Tests

(critique? 800 200)
(critique? 50 550)




















