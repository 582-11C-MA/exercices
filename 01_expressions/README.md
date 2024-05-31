# Exercice 1 : Les expressions

Pour cette exercice, on vous demande d'évaluer manuellement les
expressions suivantes étape par étape. À chaque étape, indiquez le
résultat des sous-expressions à l'aide d'une barre verticale (`|`). Voir
l'exemple ci-dessous. 

```racket
(+ (* 5 5) (+ (* 3 (/ 12 4)) 4))
    |               |
(+  25     (+ (* 3  3) 4))
               |
(+  25     (+  9 4))
            |
(+ 25       13)
 |
 38
```

Lorsque vous avez évalué l'expression entière par vous-même, vérifiez
que votre résultat est correct en exécutant l'expression dans DrRacket.
Sauvegardez le devoir dans un fichier texte.

## Astuce

Si vous êtes bloqué·es, utilisez le débogueur de DrRacket.

## Expressions

### 1.

```racket
(+ 2 (+ 3 4))
```

### 2.

```racket
(+ 2 (+ (* 3 3) 4))
```

### 3.

```racket
(+ 1 2 3 4 5 6 7 8 9 0)
```

### 4.

```racket
(* 1 2 3 4 5 6 7 8 9 0)
```

### 5.

```racket
(/ (+ 10 (- 5)) (* (- 10 4 ) (/ (+ 2 6) (* 3 4))))
```
