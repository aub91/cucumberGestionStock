# langue: fr
Fonctionnalité: gherk

	Plan du scénario: gherk
		Étant donné que j'ai 1 lot de marchandises
		Et j'en récupère 2 autres
		Et je dois ajouter des <element>
		Et je détermine sa quantité
		Quand je l'ajoute à mon stock
		Alors je dois avoir un minimum de marchandises

		@JDD1
		Exemples:
		| element |
		| "Echelles" |

		@JDD2
		Exemples:
		| element |
		| "Coffres" |

		@JDD3
		Exemples:
		| element |
		| "Planches" |