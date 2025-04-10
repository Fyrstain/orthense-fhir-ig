Instance: associer-implants-registre-pe
InstanceOf: OperationDefinition
Usage: #definition
Title: "Associer les implants au registre (PE)"
Description: "Opération permettant d'envoyer les données relatives à une intervention de prothèse d'épaule"


* status = #draft
* kind = #operation
* affectsState = true
* code = #associer-implants-registre-pg 
* id = "associer-implants-registre-pe"
* name = "AssocierImplantsRegistrePE"
* status = #draft
* kind = #operation
* code = #envoyer-donnees-intervention-pe
* resource[0] = #Parameters
* system = false
* type = true
* instance = false

* inputProfile = Canonical(InterventionInputParametersPEProfile)
* outputProfile = Canonical(OperationOutcome)