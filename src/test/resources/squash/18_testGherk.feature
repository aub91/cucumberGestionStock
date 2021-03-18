# Automation priority: null
# Test case importance: LOW
# language: en
Feature: testGherk

	Scenario Outline: testGherk
		Given j'ai 1 lot de marchandises
		And j'en récupère 2 autres
		And je dois ajouter des <element>
		And je détermine sa quantité
		When je l'ajoute à mon stock
		Then je dois avoir un minimum de marchandises

		@JDD_Coffres
		Examples:
		| element |
		| "Coffres" |

		@JDD_Echelle
		Examples:
		| element |
		| "Echelles" |

		@JDD_Planches
		Examples:
		| element |
		| "Planches" |