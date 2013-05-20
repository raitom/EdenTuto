Feature: Affichage de la liste des categories
  Afin de pouvoir naviguer dans les tutoriels et ne pas mourrir idiot
  En tant qu'utilisateur
  Je souhaite pouvoir acceder aux differentes categories de tutoriels

  Scenario: Affichage des categories
    Given un utilisateur
      Given un tutocenter pour cet utilisateur
      Given une categorie pour cette utilisateur nommee "minecraft"
    When quand je visite la page d'index du tutocenter
    Then je devrais voir afficher "minecraft"

