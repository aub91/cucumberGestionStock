# language: en
Feature: gherk

	Scenario Outline: gherk
		Given j'ai 1 lot de marchandises
		And j'en récupère 2 autres
		And je dois ajouter des <element>
		And je détermine sa quantité
		When je l'ajoute à mon stock
		Then je dois avoir un minimum de marchandises

		@JDD1
		Examples:
		| element |
		| "Echelles" |

		@JDD2
		Examples:
		| element |
		| "Coffres" |

		@JDD3
		Examples:
		| element |
		| "Planches" |