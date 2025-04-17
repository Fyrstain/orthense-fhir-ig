// ValueSet pour les types de procédure
ValueSet: ProcedureVS
Id: ProcedureVS
Title: "ValueSet - Types de Procédure d'Intervention"
Description: "Ensemble des codes SNOMED CT valides pour les procédures d'arthroplasties de la hanche, du genou et de l'épaule."
* ^experimental = true
* ^status = #draft
* ^url = "https://fhir.orthense.com/ValueSet/ProcedureVS"

// Codes SNOMED CT spécifiques pour THA, TKA et arthroplastie d'épaule
* SCT#47458005 "Arthroplasty of the hip" 
* SCT#19063003 "Arthroplasty of knee" 
* SCT#239468007 "Arthroplasty of shoulder"
