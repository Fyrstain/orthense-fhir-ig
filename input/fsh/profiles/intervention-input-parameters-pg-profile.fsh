Profile: InterventionInputParametersPgProfile
Parent: InterventionInputParametersBaseProfile
Id: InterventionInputParametersPgProfile
Title: "Profil d'Entrée des Paramètres d'Intervention - PG"
Description: "Profil d'Entrée des Paramètres d'Intervention - PG. Quand la valeur est une arthroplastie du genou, les autres paramètres, notamment la description des implants, doivent suivre ce profil."



* parameter[typeProcedure].valueCodeableConcept = SCT#19063003

* obeys pe-requires-implants-count
* obeys pe-requires-implants-type

// Contrainte sur les implants PG
* parameter[implants] 3..5