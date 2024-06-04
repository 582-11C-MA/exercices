# Exercice : L'infiltration d'Annalyn

Pour cet exercice, vous devez implémenter la logique d'un jeu RPG. Le
personnage principal du jeu est Annalyn, une fille courageuse avec un
chien de compagnie féroce. Malheureusement, alors qu'Annalyn et son ami
Amiel cueillent des baies dans la forêt, Amiel est kidnappé par des
brigands. Après avoir suivi la piste de son ami, Annalyn découvre le
camps dans lequel ce dernier est emprisonné. Le camps est gardé par deux
ravisseurs : un chevalier et un archer. Le jeu consiste à trouver une
façon pour Annalyn de libérer son ami.

Annalyn peut entreprendre quatre actions selon l'état dans lequel se
trouvent son chien de compagnie, Amiel, le chevalier et l'archer.

-   Attaque rapide : Une attaque rapide est possible seulement si le
    chevalier dort, car il lui faut du temps pour mettre son armure, ce
    qui le rend vulnérable.

-   Espionner : Annalyn peut espionner les ravisseurs seulement si au
    moins l'un d'eux est éveillé. Sinon, espionner est une perte de
    temps.

-   Signaler Amiel : Annalyn peut signalé Amiel en utilisant des sons
    d'oiseaux seulement si Amiel est éveillé et si l'archer dort.
    L'archer est formé au signalement par sons d'oiseaux. Il pourrait
    donc intercepter le message.

-   Libérer Amiel : Annalyn peut essayer de se faufiler dans le camp
    pour libérer Amiel. Cette action est toutefois risquée, et ne peut
    réussir que de deux manières. 

    -   Si le chien d'Annalyn est présent, Annalyn peut sauver Amiel,
        mais seulement si l'archer dort. Le chevalier a peur des chiens,
        et l'archer n'aura pas le temps de se préparer avant qu'Annalyn
        et Amiel ne puissent s'échapper. 

    -   Si le chien d'Annalyn n'est pas là, Annalyn et Amiel doivent
        être très discrets. Annalyn peut libérer Amiel seulement si
        celui-ci est éveillé et si les deux ravisseurs dorment. Si Amiel
        dort, il pourrait être surpris par l'apparition soudaine
        d'Annalyn, et réveiller accidentellement le chevalier et
        l'archer.

L'exercice consiste, en premier lieu, à représenter l'état dans lequel
se trouve, à un moment donnée, le chien, Amiel, le chevalier, et
l'archer. Puis, selon l'état des personnages, déterminer lesquelles des
actions sont présentement possibles.

## Tester votre solution

Voici quelques résultats auxquels on s'attend.

-   Si tout le monde est éveillé et que le chien est présent, Annalyn
    peut seulement espionner.
-   Si le chevalier est le seul à dormir et que le chien est présent,
    Annalyn peut faire une attaque rapide et espionner.
-   Si les deux ravisseurs dorment et que le chien est présent, toutes
    les actions sont possibles sauf espionner.
-   Si tout le monde dort et que le chien est présent, Annalyn peut
    faire une attaque rapide ou libérer Amiel.
-   Si tout le monde dort, mais que le chien est absent, Annalyn peut
    seulement faire une attaque rapide.

## Valeurs d'entrée, variables auxiliaires, valeurs de sortie

Dans votre programme, utilisez les commentaires (`;`) pour identifier
les choses suivantes :

-   Les valeurs d'entrée, c'est-à-dire les variables dont il est
    possible de changer la valeur « manuellement ».
-   Les variables auxiliaires, c'est-à-dire les variables utilisées pour
    simplifier d'autres expressions.
-   Les valeurs de sortie, c'est-à-dire les variables dont la valeur
    représente la « solution » du problème.

Vous pouvez utilisez le gabarit suivant.

```racket
;; ----------------------------------------------------------------------
;; Valeurs d'entrée

...

;; ----------------------------------------------------------------------
;; Variables auxiliaires

...

;; ----------------------------------------------------------------------
;; Valeurs de sortie

...
```
