# Exercice 11: Les conditionnels

En PHP, ont utilise la notation entre crochets pour accéder à un
caractère spécifique d'une chaîne de caractères.

```php
<?php
echo "abc"[0]; // => a
```

Le nombre entre crochets correspond à la position du caractère
recherché. Comme dans Racket, la position de premier caractère est 0. Si
la position est négative, alors celle-ci est calculée à partir de la fin
de la chaîne.

```php
<?php
echo "abc"[-1]; // => c
```

Pour obtenir plusieurs caractères, on utilise la fonction native
`substr`, laquelle prend comme arguments la chaîne de caractères
originale, la position du premier caractère à inclure dans la nouvelle
chaîne, puis le nombre de caractères à inclure dans la nouvelle chaîne.

```php
<?php 
echo substr("abc", 1, 2); // => "bc"
```

Si le nombre de caractères est omis, la chaîne produite inclura tous les
caractères à partir de la position donnée jusqu'à la fin de la chaîne
originale.

```php
<?php 
echo substr("abc", 1); // => "bc"
```

Si le nombre de caractère est négatif, alors ce même nombre de
caractères sera omis du résultat, en partant de la fin de la chaîne.

```php
<?php
echo substr("abc", 0, -1); // => "ab"
```

## Instructions

Créer un programme qui, étant donné un mot dans le terminal, affiche ce
mot au pluriel selon les règles établis dans l'exercice 4.
