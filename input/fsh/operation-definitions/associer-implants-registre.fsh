// Définition de l'Opération via une Instance
Instance: associer-implants-registre // L'ID de l'instance (correspond à l'ID de la ressource)
InstanceOf: OperationDefinition        // Spécifie le type de ressource FHIR
Usage: #definition                   // Indique que c'est une définition (pas un exemple)
Title: "Associer les implants à une procédure chirurgicale orthopédique"
Description: "Opération permettant à un établissement d'envoyer les détails d'une intervention. 

Pour les prothèses de genou (PG), la requête doit se conformer au profil InterventionInputParametersPGProfile 
et inclure les implants spécifiques à ce type d'intervention.

Pour les prothèses de hanche (PH), la requête doit se conformer au profil InterventionInputParametersPHProfile
et inclure les implants spécifiques à ce type d'intervention.

Pour les prothèses d'épaule (PE), la requête doit se conformer au profil InterventionInputParametersPEProfile
et inclure les implants spécifiques à ce type d'intervention.

Le profil appliqué dépend de la valeur du paramètre typeProcedure.

Note: Le registre Renacot évolue continuellement et de nouvelles procédures peuvent être ajoutées à l'avenir. Elles feront l'objet de mise à jour spécifiques dans ce guide d'implémentation avec le soucis affirmé de garantir la compatibilité ascendante."

* id = "associer-implants-registre" // Définit explicitement l'ID de la ressource
* name = "AssocierImplantsRegistre" // Le 'name' de l'OperationDefinition
* status = #draft
* kind = #operation
* affectsState = true
* code = #associer-implants-registre // Le 'code' de l'OperationDefinition
* system = true
* type = false
* instance = false

* inputProfile = Canonical(InterventionInputParametersBaseProfile) //Canonical($PROF_PARAMS_BASE)
* outputProfile = Canonical(OperationOutcome)

// Définition des paramètres (utilisation d'index [0], [1], ... pour les listes dans les instances FSH)
* parameter[0].name = #nir
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "Numéro d'Identification au Répertoire (NIR) du patient."
* parameter[0].type = #string

* parameter[1].name = #rpps
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "Numéro du Répertoire Partagé des Professionnels de Santé (RPPS) du praticien principal."
* parameter[1].type = #string

* parameter[2].name = #finessGeographique
* parameter[2].use = #in
* parameter[2].min = 1
* parameter[2].max = "1"
* parameter[2].documentation = "Numéro FINESS géographique de l'établissement où a eu lieu l'intervention."
* parameter[2].type = #string

* parameter[3].name = #dateIntervention
* parameter[3].use = #in
* parameter[3].min = 1
* parameter[3].max = "1"
* parameter[3].documentation = "Date de l'intervention chirurgicale."
* parameter[3].type = #dateTime

* parameter[4].name = #typeProcedure // Attention: ce paramètre s'appelle maintenant 'typeProcedure' dans l'OpDef
* parameter[4].use = #in
* parameter[4].min = 1
* parameter[4].max = "1"
* parameter[4].documentation = "Type d'intervention réalisée. Détermine les implants attendus." // Mise à jour doc
* parameter[4].type = #CodeableConcept
* parameter[4].binding.strength = #required
* parameter[4].binding.valueSet = Canonical(ProcedureVS)

* parameter[5].name = #lateralite
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Latéralité de l'intervention (ex: droite, gauche, bilatérale)."
* parameter[5].type = #CodeableConcept
* parameter[5].binding.strength = #required
* parameter[5].binding.valueSet = Canonical(LateraliteVS) //Canonical($VS_LATERALITE) // Binding général

* parameter[6].name = #implants
* parameter[6].use = #in
* parameter[6].min = 1
* parameter[6].max = "*"
* parameter[6].documentation = "Liste des dispositifs médicaux implantables utilisés lors de l'intervention."
  // Les 'part' définissent la structure de chaque item dans la liste 'implants' (indexation imbriquée)
* parameter[6].part[0].name = #fournisseur
* parameter[6].part[0].use = #in
* parameter[6].part[0].min = 0
* parameter[6].part[0].max = "1"
* parameter[6].part[0].documentation = "Nom ou identifiant du fournisseur de l'implant."
* parameter[6].part[0].type = #string

* parameter[6].part[1].name = #udi
* parameter[6].part[1].use = #in
* parameter[6].part[1].min = 1
* parameter[6].part[1].max = "1"
* parameter[6].part[1].documentation = "Identifiant Unique du Dispositif (UDI)."
* parameter[6].part[1].type = #string

* parameter[6].part[2].name = #lot
* parameter[6].part[2].use = #in
* parameter[6].part[2].min = 1
* parameter[6].part[2].max = "1"
* parameter[6].part[2].documentation = "Numéro de lot ou de série de l'implant."
* parameter[6].part[2].type = #string

* parameter[6].part[3].name = #reference
* parameter[6].part[3].use = #in
* parameter[6].part[3].min = 0
* parameter[6].part[3].max = "1"
* parameter[6].part[3].documentation = "Référence catalogue du fabricant pour l'implant."
* parameter[6].part[3].type = #string

* parameter[6].part[4].name = #type
* parameter[6].part[4].use = #in
* parameter[6].part[4].min = 1
* parameter[6].part[4].max = "1"
* parameter[6].part[4].documentation = "Type spécifique de l'implant."
* parameter[6].part[4].type = #CodeableConcept
* parameter[6].part[4].binding.strength = #required
* parameter[6].part[4].binding.valueSet = Canonical(ImplantTypeVS)  //Canonical($VS_IMPLANT_TYPES) // Binding général

* parameter[6].part[5].name = #description
* parameter[6].part[5].use = #in
* parameter[6].part[5].min = 0
* parameter[6].part[5].max = "1"
* parameter[6].part[5].documentation = "Description textuelle libre de l'implant si nécessaire."
* parameter[6].part[5].type = #string

// Paramètre de sortie
* parameter[7].name = #result
* parameter[7].use = #out
* parameter[7].min = 1
* parameter[7].max = "1"
* parameter[7].type = #OperationOutcome
* parameter[8].documentation = """
Contient les informations de succès ou d'erreur de l'opération, dont :
- le statut (HTTP 200, 400, 422, 429, 500)
- les détails des erreurs (le cas échéant)
"""

// En cas de succès, identifiant RENACOT
* parameter[8].name = #idRegistre
* parameter[8].use = #out
* parameter[8].min = 0
* parameter[8].max = "1"
* parameter[8].type = #Identifier
* parameter[8].documentation = "Identifiant unique généré par le registre RENACOT lors d’un appairage réussi. Utilisable pour l’archivage dans le système local."