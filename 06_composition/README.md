# Exercice : La composition de fonctions

Créez les fonctions principales suivantes. Assurez-vous de créer une
fonction auxiliaire pour chaque sous-tâche, et d'identifier les
constantes globales.

-   Créez une fonction qui, étant donnée un courriel et un·e
    destinataire, ajoute la salutation `"Bonjour <destinataire>,"` au
    début du courriel, et la signature `Cordialement, Manal` à la fin.
    Testez votre fonction avec les arguments `"Je serai abstente
    aujourd'hui."` et `Benoit`, ainsi que `"Je vous souhaite de belles
    vacances."` et `"Gérome"`.

-   Créez une fonction qui, étant donné une chaîne de caractère, vérifie
    si cette chaîne est une phrase ou non. Une phrase doit commencer par
    une majuscule, et se terminer par un point. La fonction native
    `string-upper-case?` retourne `#true` si tous les caractères d'une
    chaîne donnée sont en majuscule. Testez votre fonction avec une
    chaîne qui est une phrase, et une autre qui ne l'est pas.

-   Créez une fonction qui, étant donné le prix d'un billet de cinéma,
    le nombre de billets vendus pour une séance et la durée de la séance
    en minutes, retourne le profit que se fait le propriétaire. Pour
    chaque billet, 50% doit être déduit pour payer les droits du film.
    De plus, le propriétaire doit rémunérer un·e employé·e au taux
    horaire de 20$. Testez votre fonction avec les arguments `15.50`,
    `100`, et `120`, ainsi qu'avec `20.00`, `250` et `160`.

-   Créez une fonction qui, étant donné un sous-total, permet de
    calculer le total incluant les taxes. Au Québec, la taxe fédérale
    (TPS) est de 5%, et la taxe provinciale (TVQ) est de 9,975%.
    Attention, la TVQ s'applique sur le sous-total *incluant* la TPS.
    Testez votre fonction avec les arguments `2500` et `150`. Vous
    pouvez utilisez un calculateur de taxes en ligne pour valider les
    résultats.
