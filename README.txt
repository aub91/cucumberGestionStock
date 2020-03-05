Ce projet est en Cucumber/Gherkin et peut être exécuté sans interface graphique avec un lien TM-TF.
Le .feature est en français, pour une version anglaise se reporter à l'autre projet disponible.
Les principaux mots-clés ont été inclus à l'exception du "Rule" qui a été ajouté dans Gherkin 6
et les DocStrings qui ne sont pas accepté dans cette version de Cucumber/Gherkin.

Feature : Seul le plan du scénario avec l'élément "Planches" a une assertionFailure. Les autres sont des tests OK.

# language: fr

@MainFct
Fonctionnalité: Gestion de stock

# Equivalent d'un BeforeEach
  Contexte:
    Etant donné que j'ai 1 lot de marchandises
    Et que j'en récupère 2 autres

    # Scénario unique
    Scénario: Aucun ajout
      Quand je compte la totalité du stock
      Alors j'ai au moins 2 lots de marchandise en stock

    # Boucle sur les valeurs dans Exemples
    Plan du scénario: Ajout de stock
      Etant donné que je dois ajouter des <élément>
      Et que je détermine sa quantité
      Quand je l'ajoute à mon stock
      Alors je dois avoir un minimum de marchandises

      Exemples:
      | élément |
      | "Echelles" |
      | "Coffres" |
      | "Planches" |

Technologies :

JUnit 4
Cucumber 4
Dépendance Squash TF Gherkin plugin 1.2.0-RELEASE
