Profile: InterventionInputParametersPhProfile
Parent: InterventionInputParametersBaseProfile
Id: InterventionInputParametersPhProfile
Title: "Profil d'Entrée des Paramètres d'Intervention - PH"
Description: "Profil d'Entrée des Paramètres d'Intervention - PH. Quand la valeur est 'PH', les autres paramètres, notamment la description des implants, doivent suivre le profil intervention-input-parameters-ph-profile."

// Contrainte sur le type de procédure
* parameter[typeProcedure].valueCodeableConcept = RegistreCS#PH

// Contrainte sur les implants PH
* parameter[implants] 2..6