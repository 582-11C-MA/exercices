;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname efficacite) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ------------------------------------------------------------------------------
;; Classes de données

;; Une Efficacité est un Nombre entre 0 et 100.
;; interprétation : pourcentage d'efficacité du réacteur

;; Une Catégorie est une des Chaînes suivantes :
;; - "vert" interprétation : efficacité de 80 ou plus
;; - "orange" interprétation : efficacité inférieure à 80, mais d'au moins 60
;; - "rouge" interprétation : efficacité inférieure à 60, mais d'au moins 30
;; - "noir" interprétation : efficacité inférieure à 30

;; Un Voltage est un Nombre.
;; interprétation : voltage du réacteur

;; Un Courant est un Nombre.
;; interprétation : courant du réacteur

;; Une Puissance est un Nombre.
;; interprétation : puissance du réacteur

;; ------------------------------------------------------------------------------
;; Fonctions auxiliaires

;; Voltage Courant Puissance -> Efficacité
;; Calcule l'efficacité du réacteur.
(define (efficacité voltage courant puissance-max)
  (* (/ (puissance-générée voltage courant) puissance-max)
     100))

;; Voltage Courant -> Puissance
;; Calcule la puissance que génère le réacteur.
(define (puissance-générée voltage courant)
  (* voltage courant))

;; Efficacité -> Booléen
;; Détermine si l'efficacité donnée est dans la catégorie "vert".
(define (vert? efficacité)
  (>= efficacité 80))

;; Efficacité -> Booléen
;; Détermine si l'efficacité donnée est dans la catégorie "orange".
(define (orange? efficacité)
  (and (< efficacité 80)
       (>= efficacité 60)))

;; Efficacité -> Booléen
;; Détermine si l'efficacité donnée est dans la catégorie "rouge".
(define (rouge? efficacité)
  (and (< efficacité 60)
       (>= efficacité 30)))

;; Efficacité -> Booléen
;; Détermine si l'efficacité donnée est dans la catégorie "noir".
(define (noir? efficacité)
  (< efficacité 30))

;; Efficacité -> Catégorie
;; Détermine la catégorie correspondant à l'efficacité donnée.
(define (catégorie efficacité)
  (cond ((vert? efficacité) "vert")
        ((orange? efficacité) "orange")
        ((rouge? efficacité) "rouge")
        ((noir? efficacité) "noir")))
  
;; ------------------------------------------------------------------------------
;; Fonction principale

;; Voltage Courant Puissance -> Catégorie
;; Calcule l'efficacité du réacteur et retourne la catégorie associée.
(define (catégorie-efficacité voltage courant puissance-max)
  (catégorie (efficacité voltage courant puissance-max)))

(check-expect (catégorie-efficacité 200 50 15000) "orange")

