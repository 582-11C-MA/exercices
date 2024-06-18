# Exercice 6 : Le club de poésie

Un nouveau club de poésie a ouvert en ville et vous et votre ami·e
envisagez d'y assister. En raison d'incidents passés, le club a des
règles très spécifiques que vous devrez maîtriser pour entrer.

Il y a deux portes au club de poésie : une porte avant et une porte
arrière. Les deux portes sont gardées. Pour entrer, vous devrez trouver
le mot de passe du jour.

À votre arrivé au club, le gardien récitera un poème à cinq lignes, une
ligne à la fois. Pour chaque ligne, vous devez prendre en note la
première lettre si vous êtes à la porte avant ou la dernière lettre si
vous êtes à la porte arrière. Une fois les lignes du poème lues, vous
devez écrire le mot que forme les cinq lettres sur un papier, et donner
celui-ci au gardien. Si vous êtes à la porte avant, le mot doit être
écrit en majuscule (utilisez la fonction native `string-upcase`). Si
vous êtes à la porte arrière, le mot doit être écrit en minuscule
(utilisez la fonction native `string-downcase`) avec la phrase « SVP »
ajoutée à la fin.

En équipe de deux, écrivez une fonction principale qui, étant 
donné `"avant"` ou `"arrière"` ainsi que les cinq lignes du poème
*séparément*, retourne le bon mot de passe. Vous travaillerez tous 
les deux sur le même ordinateur. Une personne aura le rôle de 
« conducteur·rice » (celui ou celle qui écrit le code), et l'autre celui
de « navigateur·rice » (celui ou celle qui examine et supervise le code
écrit, en proposant des idées et en repérant les erreurs potentielles).

Testez ensuite la fonction avec le poème de Michael Lockwood suivant :

    Stands so high
    Huge hooves too
    Impatiently waits for
    Reins and harness
    Eager to leave
