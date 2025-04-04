// ValueSet pour les types de procédure
ValueSet: RegistreVS
Id: RegistreVS
Title: "ValueSet - Types de Procédure d'Intervention"
Description: "Ensemble des codes valides pour identifier le type de procédure."
* ^status = #draft
* include codes from system RegistreCS // Inclut tous les codes du CodeSystem local
// cant manage to use ALIAS here "Resolved value "$BASE_URL/CodeSystem/intervention-type" is not a valid URI."
// * include codes from system $CS_INTERVENTION_TYPES // Inclut tous les codes du CodeSystem local
