Scrap 1: ----Dark Trader


    Il est possible de faire le programme en n'allant que sur une seule URL. C'est un bon moyen pour faire un programme rapide car ne chargeant pas 2000 pages HTML.
    Tout se jouera sur la rédaction d'un XPath pertinent et précis qui extrait juste ce qu'il faut d'éléments HTML. Puis un bon traitement de ces éléments pour en extraire les 2 infos dont tu as besoin : le nom des crypto et leur cours.
    Un programme qui scrappe sans rien te dire, c'est non seulement nul mais en plus, tu ne sais pas s'il marche, s'il tourne en boucle ou s’il attend que ton wifi fonctionne. Mets des puts dans ton code pour que ton terminal affiche quelque chose à chaque fois qu'il a pu récupérer une donnée. Comme ça tu vois ton scrappeur qui fonctionne et avec des mots qui apparaissent tout seul sur ton terminal, tu vas donner l'impression que t'es un hacker. Stylaï.
    Pense à bien nommer tes variables pour ne pas te perdre ! Par exemple, quand tu as un array, nomme-le crypto_name_array ou à minima mets son nom au pluriel crypto_nameS. Sinon tu vas oublier que c'est un array et tu vas tenter des .text dessus alors qu'il faut bosser avec un .each.
    Rappel: un hash s’initialise avec result = Hash.new et on y stocke des infos avec result['ta_key'] = 'ta_value'
    N'hésite pas à découper ton programme en plusieurs étapes simples et dont le fonctionnement est facile à vérifier. Par exemple : 1) Isoler les éléments HTML qui vont bien, 2) En extraire le texte et mettre ça dans un hash, 3) Réorganiser ce hash dans un array de plusieurs mini-hash comme demandé.
    Même si ça n'est pas le chemin le plus court, l'essentiel est que chaque petite étape te fasse avancer et qu'à chaque fois tu te dises "ok, étape 1), ça fonctionne nickel - pas de bug. Passons à la suite".



Scrap 2: ----Mairie christmas

Décomposons le programme en 2 sous-problème simples:

    Tu dois être capable d'obtenir un e-mail de mairie à partir de la page de cette dernière (pas en partant du listing complet des mairies). Fais d'abord une méthode get_townhall_email(townhall_url) qui récupère l’e-mail d'une mairie à partir de l'URL de mairies, par exemple celle de Avernes.
    Une fois que tu sais le faire pour une mairie, tu vas vouloir industrialiser et répéter ça sur tout l'annuaire du Val d'Oise. La prochaine étape est de coder une méthode get_townhall_urls qui récupère les URLs de chaque ville du Val d'Oise.

Quand tu es assez sûr que chaque méthode marche séparément, tu as juste à imbriquer les deux et à toi la gloire.

Pour les tests, ce sera la même chose que pour l'exercice précédent mais appliqué aux deux méthodes : des tests de fonctionnement de base et des tests de cohérence du
résultat.

Scrap 3: ----Cher député 

Maintenant, fini de se faire mâcher le travail par tes gentils formateurs de THP. Tu dois récupérer la liste complète des députés de France ainsi que leurs adresses e-mail. Cherche par toi-même le site le plus aisé à scrapper et stocke les informations extraites dans une array de hashs selon ce format (un peu différent des exercices précédents) : 
