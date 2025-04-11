Profile: InterventionInputParametersPEProfile
Parent: InterventionInputParametersBaseProfile
Id: InterventionInputParametersPEProfile
Title: "Profil des Paramètres d'Entrée pour Prothèse d'Épaule"
Description: "Définit la structure et les contraintes pour les paramètres d'entrée spécifiques à une intervention de prothèse d'épaule"

* parameter[typeProcedure].valueCodeableConcept = RegistreCS#PE

* obeys pe-requires-implants-count
* obeys pe-requires-implants-type

// Contrainte sur les implants PG
* parameter[implants] 4..5