# Automation priority: null
# Test case importance: Low
# language: en
Feature: testGherkBDD

	Scenario Outline: testGherkBDD
		Given j'ai 1 lot de marchandises
		And j'en récupère 2 autres
		And je dois ajouter des <element>
		And je détermine sa quantité
		When je l'ajoute à mon stock
		Then je dois avoir un minimum de marchandises

		@Coffres
		Examples:
		| element |
		| "Coffres" |

		@Echelles
		Examples:
		| element |
		| "Echelles" |

		@Planches
		Examples:
		| element |
		| "Planches" |