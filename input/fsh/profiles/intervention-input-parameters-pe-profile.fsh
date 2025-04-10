Profile: InterventionInputParametersPEProfile
Parent: InterventionInputParametersBaseProfile
Id: InterventionInputParametersPEProfile
Title: "Profil des Paramètres d'Entrée pour Prothèse d'Épaule"
Description: "Définit la structure et les contraintes pour les paramètres d'entrée spécifiques à une intervention de prothèse d'épaule"

* parameter[typeProcedure].valueCodeableConcept = #PE
* obeys pe-requires-4-to-5-implants
* obeys pe-requires-implants-type

// Ajout du type de prothèse (anatomique/inversée)
* parameter contains peType 1..1
* parameter[peType].name = #peType (exactly)
* parameter[peType].value[x] only CodeableConcept
* parameter[peType].valueCodeableConcept from PETypeVS (required)

// La latéralité est obligatoire pour une prothèse d'épaule
* parameter[lateralite] 1..1