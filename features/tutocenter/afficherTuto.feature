Feature: Afficher un tutoriel
    Afin de pouvoir apprendre 2-3 bricoles
    En tant qu'utilisateur
    Je souhaite pouvoir lire un tuto

    Background:
    Given un utilisateur
    Given un tutocenter pour cet utilisateur
    Given une categorie pour cette utilisateur nommee "minecraft"

    Scenario: Affichage correct d'un tuto
      Given un tutoriel dans cette categorie avec le titre "comment biker ?" et contenu "bop bop bop bop"
      When je visite la page du tutoriel nomme "comment-biker"
      Then je devrais voir afficher "bop bop bop bop"

    Scenario: Titre du tuto vide
      When je visite la page du tutoriel nomme ""
      #Pas moyen de tester la redirection donc je test l'affichage d'un élément unique présent sur la page d'accueil
      #d'un tutocenter
      Then je devrais voir afficher "Voir les"

    Scenario: Tutoriel non trouvé
      When je visite la page du tutoriel nomme "dsfklmdsfzer"
      Then je devrais voir afficher "erreur 404"