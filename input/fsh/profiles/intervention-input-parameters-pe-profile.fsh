Profile: InterventionInputParametersPEProfile
Parent: InterventionInputParametersBaseProfile
Id: InterventionInputParametersPEProfile
Title: "d'Entrée des Paramètres d'Intervention - PE"
Description: "Définit la structure et les contraintes pour les paramètres d'entrée spécifiques à une intervention de prothèse d'épaule"

* obeys pe-requires-implants-count
* obeys pe-requires-implants-type

// Contrainte sur les implants PG
* parameter[implants] 4..5
* parameter[typeProcedure].valueCodeableConcept = SCT#239468007

* parameter contains peType 0..1
* parameter[peType].name = #peType (exactly)
* parameter[peType].value[x] only CodeableConcept
* parameter[peType].value[x] 0..1 // Rendre la valeur optionnelle 
* parameter[peType].valueCodeableConcept from PETypeVS (required)