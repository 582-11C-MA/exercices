;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname recursivite) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Liste -> Chaîne
;; Transforme une liste de saveurs en élément <ul> HTML.
(define (créer-ul saveurs)
  (string-append "<ul>" (créer-lis saveurs) "</ul>"))

(check-expect (créer-ul (list "a" "b")) "<ul><li>a</li><li>b</li></ul>")

;; Liste -> Chaîne
;; Ajoute un balise <li> aux éléments de la liste donnée.
(define (créer-lis saveurs)
  (cond ((empty? saveurs) "")
        (else (string-append "<li>"
                             (first saveurs)
                             "</li>"
                             (créer-lis (rest saveurs))))))

;; Liste Chaîne -> Chaîne
;; Version itérative
(define (créer-ul-iter saveurs résultat)
  (cond ((empty? saveurs) (string-append "<ul>" résultat "</ul>"))
        (else (créer-ul-iter
               (rest saveurs)
               (string-append résultat "<li>" (first saveurs) "</li>")))))

;; ------------------------------------------------------------------------------

(define VOYELLES (list "a" "e" "i" "o" "u" "y"))

;; Chaîne -> Booléen
;; Détermine si la lettre donnée est une voyelle.
(define (voyelle? lettre)
  (voyelle?-aux lettre VOYELLES))

(check-expect (voyelle? "a") #true)
(check-expect (voyelle? "b") #false)

;; Ceaîne Liste -> Booléen
;; Détermine si la lettre donnée est incluse dans le liste donnée.
(define (voyelle?-aux lettre voyelles)
  (cond ((empty? voyelles) #false)
        ((string=? (first voyelles) lettre) #true)
        (else (voyelle?-aux lettre (rest voyelles)))))

;; ------------------------------------------------------------------------------

;; Liste -> Any
;; Retourne le dernier élément de la liste donnée.
(define (dernier liste)
  (cond ((empty? (rest liste)) (first liste))
        (else (dernier (rest liste)))))

(check-expect (dernier (list 1)) 1)
(check-expect (dernier (list 1 2)) 2)

;; ------------------------------------------------------------------------------

;; Nombre -> Liste
;; Construit une suite décroissante du nombre maximum donné jusqu'à 1.
(define (suite-décroissante max)
  (cond ((= max 1) (list 1))
        (else (cons max (suite-décroissante (- max 1))))))

(check-expect (suite-décroissante 3) (list 3 2 1))

;; ------------------------------------------------------------------------------

;; Nombre -> Liste
;; Construit une suite croissante de 1 au nombre maximum donné.
(define (suite-croissante max)
  (suite-croissante-aux max 1))

(check-expect (suite-croissante 3) (list 1 2 3))

;; Nombre Nombre -> Liste
;; Construit une suite croissante de 1 au nombre maximum donné.
(define (suite-croissante-aux max compteur)
  (cond ((= max compteur) (cons max '()))
        (else (cons compteur (suite-croissante-aux max (+ compteur 1))))))

;; ------------------------------------------------------------------------------

;; Liste -> Chaîne
;; Produit une chaîne avec les étapes données numérotées.
(define (numéroter étapes)
  (numéroter-aux 1 étapes))

(check-expect (numéroter (list "a" "b" "c")) "1. a 2. b 3. c")

;; Nombre Liste -> Chaîne
;; Produit une chaîne avec les étapes données numérotées.
(define (numéroter-aux compteur étapes)
  (cond ((empty? étapes) "")
        ((= (length étapes) 1) (string-append (number->string compteur)
                                              ". "
                                              (first étapes)))
        (else (string-append (number->string compteur)
                             ". "
                             (first étapes)
                             " "
                             (numéroter-aux (+ compteur 1) (rest étapes))))))




        