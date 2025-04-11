// ValueSet pour les types de procédure
ValueSet: RegistreVS
Id: RegistreVS
Title: "ValueSet - Types de Procédure d'Intervention"
Description: "Ensemble des codes SNOMED CT valides pour les procédures d'arthroplasties de la hanche, du genou et de l'épaule."
* ^experimental = true
* ^status = #draft
* ^url = "https://fhir.orthense.com/ValueSet/RegistreVS"

// Codes SNOMED CT spécifiques pour THA, TKA et arthroplastie d'épaule
* SCT#52734007 "Total hip replacement procedure (procedure)" 
* SCT#609588000 "Total knee replacement procedure (procedure)" 
* SCT#397956004 "Prosthetic arthroplasty of shoulder joint (procedure)"
