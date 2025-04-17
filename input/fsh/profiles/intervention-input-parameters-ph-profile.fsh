Profile: InterventionInputParametersPhProfile
Parent: InterventionInputParametersBaseProfile
Id: InterventionInputParametersPhProfile
Title: "Profil d'Entrée des Paramètres d'Intervention - PH"
Description: "Profil d'Entrée des Paramètres d'Intervention - PH. Quand la valeur est une arthroplastie de la hanche, les autres paramètres, notamment la description des implants, doivent suivre ce profil."

// Contrainte sur le type de procédure
* parameter[typeProcedure].valueCodeableConcept = SCT#47458005

// Contrainte sur les implants PH
* parameter[implants] 2..6