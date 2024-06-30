;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname conception) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ------------------------------------------------------------------------------

;; Une Lettre est une Chaîne de 1 caractère.
;; interprétation : lettre de l'alphabet latin

;; Une Voyelle est une Lettre parmis les suivantes :
;; - "a"
;; - "e"
;; - "i"
;; - "o"
;; - "u"
;; - "y"
;; interprétation : voyelle

;; Lettre -> Booléen
;; Détermine si la lettre donnée est une voyelle.
(define (voyelle? lettre)
  (or (string=? lettre "a")
      (string=? lettre "e")
      (string=? lettre "i")
      (string=? lettre "o")
      (string=? lettre "u")
      (string=? lettre "y")))

(check-expect (voyelle? "a") #true)
(check-expect (voyelle? "e") #true)
(check-expect (voyelle? "i") #true)
(check-expect (voyelle? "o") #true)
(check-expect (voyelle? "u") #true)
(check-expect (voyelle? "y") #true)
(check-expect (voyelle? "b") #false)

;; ------------------------------------------------------------------------------

;; Une Année est une Nombre.
;; interprétation : année

;; Année -> Booléen
;; Détermine si l'année donnée est bissextile.
(define (bissextile? année)
  (or (and (= (modulo année 4) 0)
           (not (= (modulo année 100) 0)))
      (= (modulo année 400) 0)))

(check-expect (bissextile? 2020) #true)
(check-expect (bissextile? 2016) #true)
(check-expect (bissextile? 2012) #true)
(check-expect (bissextile? 2021) #false)
(check-expect (bissextile? 2022) #false)
(check-expect (bissextile? 2023) #false)

;; ------------------------------------------------------------------------------

;; Un TypeTriangle est une Chaîne parmis les suivantes :
;; - "équilatéral"
;; - "isocèle"
;; - "scalène"
;; interprétation : type de triangle

;; Nombre Nombre Nombre -> TypeTriangle
;; Détermine quel est le type du triangle correspondant aux côtés donnés.
(define (type-triangle côté-1 côté-2 côté-3)
  (cond ((and (= côté-1 côté-2) (= côté-2 côté-3)) "équilatéral")
        ((or (= côté-1 côté-2) (= côté-1 côté-3) (= côté-2 côté-3)) "isocèle")
        (else "scalène")))

(check-expect (type-triangle 1 1 1) "équilatéral")
(check-expect (type-triangle 2 2 1) "isocèle")
(check-expect (type-triangle 1 2 3) "scalène")

;; ------------------------------------------------------------------------------

;; Une Consonne est une Lettre qui n'est pas une Voyelle.
;; interprétation : consonne

;; Lettre -> Booléen
;; Détermine si la lettre donnée est une consonne.
(define (consonne? lettre)
  (not (voyelle? lettre)))

(check-expect (consonne? "e") #false)
(check-expect (consonne? "b") #true)

;; ------------------------------------------------------------------------------

;; Une Main est un Nombre.
;; interprétation : total de point pour une main de cartes

;; Main Main -> Main
;; Détermine la main gagnante parmis les deux mains données.
(define (vingt-et-un main-1 main-2)
  (cond ((> main-1 21) main-2)
        ((> main-2 21) main-1)
        ((> main-1 main-2) main-1)
        ((> main-2 main-1) main-2)))

(check-expect (vingt-et-un 21 32) 21)
(check-expect (vingt-et-un 20 18) 20)
(check-expect (vingt-et-un 14 18) 18)










  