Instance: associer-implants-registre-ph
InstanceOf: OperationDefinition
Usage: #definition
Title: "Associer les implants au registre (PH)"
Description: "Opération permettant à un établissement d'associer les implants à une intervention. 
Pour les prothèses de hanche (PH), la requête doit également se conformer au profil InterventionInputParametersPhProfile"

* id = "associer-implants-registre-ph"
* name = "AssocierImplantsRegistrePH"
* status = #draft
* kind = #operation
* affectsState = true
* code = #associer-implants-registre-ph
* system = true
* type = false
* instance = false

* inputProfile = Canonical(InterventionInputParametersPhProfile)
* outputProfile = Canonical(OperationOutcome)