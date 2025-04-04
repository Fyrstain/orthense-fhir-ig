* title = "Associer les implants à une procédure chirurgicale orthopédique"
* status = #active
* kind = #operation
* code = #associer-implants-procedure
* system = false
* type = true
* instance = false
* resource[0] = #Procedure
* affectsState = true
* comment = "Cette opération permet aux établissements de santé d'associer les informations liées au implants en orthopédie, contribuant ainsi au registre national des implants orthopédiques."
// Lien vers la documentation d'authentification
* description = "Cette opération permet d'associer les implants utilisés lors d'une intervention chirurgicale orthopédique à un enregistrement dans le registre Renacot. Elle est destinée aux établissements de santé et aux professionnels de santé impliqués dans la gestion des implants orthopédiques.

Cette opération est essentielle pour garantir la traçabilité des implants et améliorer la sécurité des patients. C'est de plus un gain de temps pour les équipes médicales qui se voient ainsi délestées de cette tache et assure une conformité native aux exigences réglementaires liée au registre des implants orthopédiques. 

En décrivant les parties prenantes, la procédure chirurgicale et les implants utilisés, cette opération facilite la gestion des données cliniques et contribue à l'amélioration continue de la qualité des soins.

Cette opération nécessite une authentification via le protocole OAuth2.0. Les utilisateurs doivent obtenir un jeton d'accès valide pour effectuer cette opération. Le jeton doit être inclus dans l'en-tête de la requête HTTP sous la forme : `Authorization: Bearer {token}`.

Voir la documentation complète sur [l'authentification API](auth-client-credentials.html)."

* comment = "#### Exemples :
Des exemples de requêtes et de réponses sont fournis ci dessous pour illustrer l'utilisation de cette opération.

  - [Requête](Parameters-AssocierImplantsProcedureExample.html)
  - [Réponse](Parameters-AssocierImplantsProcedureResponseExample.html)"

// Required Input Parameters - Patient et Intervenant Information
* parameter[0].name = #identifiantsPartiesPrenantes
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].type = #Parameters
* parameter[0].documentation = "Informations d'identification du patient et des intervenants"

* parameter[0].part[0].name = #nir
* parameter[0].part[0].use = #in
* parameter[0].part[0].min = 1
* parameter[0].part[0].max = "1"
* parameter[0].part[0].type = #Identifier
* parameter[0].part[0].documentation = "NIR du patient (Numéro d'Identification au Répertoire) - Identifiant unique du patient"

* parameter[0].part[1].name = #rpps
* parameter[0].part[1].use = #in
* parameter[0].part[1].min = 1
* parameter[0].part[1].max = "1"
* parameter[0].part[1].type = #Identifier
* parameter[0].part[1].documentation = "RPPS du chirurgien - Identifiant unique du professionnel de santé"

* parameter[0].part[2].name = #finessGeo
* parameter[0].part[2].use = #in
* parameter[0].part[2].min = 1
* parameter[0].part[2].max = "1"
* parameter[0].part[2].type = #Identifier
* parameter[0].part[2].documentation = "FINESS géographique de l'établissement de santé"

// Procedure Information
* parameter[1].name = #procedureInfo
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].type = #Parameters
* parameter[1].documentation = "Informations sur l'intervention chirurgicale"

* parameter[1].part[0].name = #dateIntervention
* parameter[1].part[0].use = #in
* parameter[1].part[0].min = 1
* parameter[1].part[0].max = "1"
* parameter[1].part[0].type = #date
* parameter[1].part[0].documentation = "Date de l'intervention chirurgicale"

* parameter[1].part[1].name = #procedureType
* parameter[1].part[1].use = #in
* parameter[1].part[1].min = 1
* parameter[1].part[1].max = "1"
* parameter[1].part[1].type = #CodeableConcept
* parameter[1].part[1].documentation = "Code SNOMED CT pour l'intervention (Ex: Arthroplastie totale du genou ou de la hanche)"
* parameter[1].part[1].binding.strength = #required
* parameter[1].part[1].binding.valueSet = "https://fhir.orthense.com/ValueSet/RegistresRenacot_ProcedureCodes"

* parameter[1].part[2].name = #cote
* parameter[1].part[2].use = #in
* parameter[1].part[2].min = 0
* parameter[1].part[2].max = "1"
* parameter[1].part[2].type = #CodeableConcept
* parameter[1].part[2].documentation = "Code SNOMED CT décrivant le côté opéré"
* parameter[1].part[2].binding.strength = #required
* parameter[1].part[2].binding.valueSet = "https://fhir.orthense.com/ValueSet/RegistresRenacot_Side"


// Implants Array (Repeating Complex Structure)
* parameter[2].name = #implants
* parameter[2].use = #in
* parameter[2].min = 1
* parameter[2].max = "*"
* parameter[2].type = #Parameters
* parameter[2].documentation = "Liste des implants utilisés lors de l'intervention"

// Implant Details as Sub-Parameters
* parameter[2].part[0].name = #UDI
* parameter[2].part[0].use = #in
* parameter[2].part[0].min = 0
* parameter[2].part[0].max = "1"
* parameter[2].part[0].type = #Identifier
* parameter[2].part[0].documentation = "Identifiant unique de l'implant (UDI) si disponible"

* parameter[2].part[1].name = #fournisseur
* parameter[2].part[1].use = #in
* parameter[2].part[1].min = 1
* parameter[2].part[1].max = "1"
* parameter[2].part[1].type = #string
* parameter[2].part[1].documentation = "Fournisseur de l'implant"

* parameter[2].part[2].name = #reference
* parameter[2].part[2].use = #in
* parameter[2].part[2].min = 1
* parameter[2].part[2].max = "1"
* parameter[2].part[2].type = #string
* parameter[2].part[2].documentation = "Référence du modèle de l'implant"

* parameter[2].part[3].name = #lot
* parameter[2].part[3].use = #in
* parameter[2].part[3].min = 1
* parameter[2].part[3].max = "1"
* parameter[2].part[3].type = #string
* parameter[2].part[3].documentation = "Numéro de lot de l'implant"

* parameter[2].part[4].name = #description
* parameter[2].part[4].use = #in
* parameter[2].part[4].min = 0
* parameter[2].part[4].max = "1"
* parameter[2].part[4].type = #string
* parameter[2].part[4].documentation = "Description textuelle de l'implant"

* parameter[2].part[5].name = #implantType
* parameter[2].part[5].use = #in
* parameter[2].part[5].min = 1
* parameter[2].part[5].max = "1"
* parameter[2].part[5].type = #CodeableConcept
* parameter[2].part[5].documentation = "Type d'implant (ex: fémoral, tibial, insert, etc.)"
* parameter[2].part[5].binding.strength = #preferred
* parameter[2].part[5].binding.valueSet = "https://fhir.orthense.com/ValueSet/ImplantComponentTypes"

// Output parameters
* parameter[3].name = #operationOutcome
* parameter[3].use = #out
* parameter[3].min = 1
* parameter[3].max = "1"
* parameter[3].type = #OperationOutcome
* parameter[3].documentation = "Résultat de l'opération indiquant le succès ou l'échec avec détails"


* parameter[4].name = #referenceRegistre
* parameter[4].use = #out
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].type = #Identifier
* parameter[4].documentation = "Identifiant du suivi orthopédique dans le registre Renacot"

