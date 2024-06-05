# Exercice : Pigiste

Pour cet exercice, on vous demande d'écrire un programme pour aider
Clara, une pigiste, à communiquer avec ses client·es sur le prix de
certains projets. Assignez chacun des messages suivants à une variable
de sortie dont le nom correspond au type de message.

Comme pour l'exercice précédent, veuillez identifier les variables
d'entrée, les valeurs auxiliaires, ainsi que les variables de sortie.

## Taux journalier

Un client contacte Clara pour se renseigner sur son taux journalier,
mais celle-ci connaît seulement son taux horaire, qui est de 75$. Clara
travaille normalement 8 heures par jours. Écrivez les variables et
l'expression qui permet à Clara d'envoyer le message suivant : 

    Bonjour ! Mon taux journalier est de <taux>$.

Assurez-vous, pour cette tâche et les suivantes, qu'il est facile de
changer les données sans avoir à modifier tout le code.

## Budget fixe

Le jour suivant, une chef de projet propose à Clara de travailler sur un
projet dont le budget est fixe. Étant donné un budget fixe de 20,000$ et
le même tarif horaire, aidez Clara à calculer le nombre de jours qu'elle
peut travailler avant que le budget soit épuisé. Le résultat doit être
un nombre entier. Utilisez la procédure `floor` pour arrondir
au-dessous. Le message à envoyer est le suivant :

    Bonjour ! Avec un budget de <budget>$, je pourrai être à votre
    service pendant <nombre-de-jour> jours.

## Rabais

Pour les projets qui s'étendent sur plusieurs mois, Clara offre un
rabais pour chaque mois complet. Les jours restants sont facturés au
tarif journalier standard. Chaque mois compte 22 jours de travail
facturables. Étant donné un nombre de jours (par exemple, 120) et un
taux de réduction de 15%, aidez Clara à envoyer le message suivant : 

    Bonjour <nom-du-client>. Pour un projet qui s'échelonne sur environ
    <nombre-de-mois> mois, mon cachet serait de <total>$, incluant un
    escompte de <valeur-du-rabais>$ (<taux-de-rabais>%).
