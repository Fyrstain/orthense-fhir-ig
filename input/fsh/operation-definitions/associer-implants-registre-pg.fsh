// Définition de l'Opération via une Instance
Instance: associer-implants-registre-pg // L'ID de l'instance (correspond à l'ID de la ressource)
InstanceOf: OperationDefinition        // Spécifie le type de ressource FHIR
Usage: #definition                   // Indique que c'est une définition (pas un exemple)
Title: "Associer les implants au registre (PG)"
Description: "Opération permettant à un établissement d'associer les implants à une intervention. 
Pour les prothèses de genou (PG), la requête doit également se conformer au profil InterventionInputParametersPgProfile"

* id = "associer-implants-registre-pg" // Définit explicitement l'ID de la ressource
* name = "AssocierImplantsRegistrePG" // Le 'name' de l'OperationDefinition
* status = #draft
* kind = #operation
* affectsState = true
* code = #associer-implants-registre-pg // Le 'code' de l'OperationDefinition
* system = true
* type = false
* instance = false

* inputProfile = Canonical(InterventionInputParametersPgProfile) // Profil spécifique pour PG
* outputProfile = Canonical(OperationOutcome)
