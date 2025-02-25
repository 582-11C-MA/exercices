# Exercice : Contrats

Recopiez dans Pyret les expressions d'appel qui se trouvent ci-dessous,
et excécutez ensuite le code. Examinez les arguments donnés aux
fonctions, ainsi que le type de valeur qu'elles produisent.

Sur la ligne au-dessus de chaque expression, écrivez dans un commentaire
le contrat de la fonction appelée. Décrivez également en une phrase ce
que fait la fonction.

Par exemple :

```pyret
# num-modulo :: (num :: Number, divisor :: Number) -> Number
# Compute the remainder of num divided by divisor.
num-modulo(5, 2)
```

N'hésitez pas à jouer avec les arguments ! On vous rappelle que nous
connaîssons pour l'instant seulement trois types de valeur : `Number`
(nombre), `String` (chaîne de caractères) et `Image`.

```pyret
num-sqr(4)

num-to-string(2)

num-random(10)

string-append("a", "b")

string-length("pyret")

string-repeat("ha", 3)

string-index-of("web", "w")

string-substring("allo", 1, 3)

string-replace("😊😊🤕😊", "🤕", "😊")

string-char-at("a", 0)

ellipse(60, 30, "outline", "black")

add-line(circle(20, "outline", "maroon"), 0, 40, 40, 0, "orange")

radial-star(32, 30, 40, "outline", "black")
```
