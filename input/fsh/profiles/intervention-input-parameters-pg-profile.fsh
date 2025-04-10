Profile: InterventionInputParametersPgProfile
Parent: InterventionInputParametersBaseProfile
Id: InterventionInputParametersPgProfile
Title: "Profil d'Entrée des Paramètres d'Intervention - PG"
Description: "Profil d'Entrée des Paramètres d'Intervention - PG. Quand la valeur est 'PG', les autres paramètres, notamment la description des implants, doivent suivre le profil intervention-input-parameters-pg-profile."
* ^experimental = true
* ^status = #draft

// Contrainte sur le type de procédure
* parameter[typeProcedure].valueCodeableConcept = RegistreCS#PG

// Contrainte sur les implants PG
* parameter[implants] 3..5