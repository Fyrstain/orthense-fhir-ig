Invariant: nir-regex
Description: "NIR must match the French NIR format"
Severity: #error
Expression: "$this.matches('^[12][0-9]{2}(0[1-9]|1[0-2])(2[AB]|[0-9]{2})[0-9]{3}[0-9]{3}[0-9]{2}$')"

Invariant: rpps-regex
Description: "RPPS must match the French RPPS format"
Severity: #error
Expression: "$this.matches('^[0-9]{11}$')"

Invariant: finess-regex
Description: "NIR must match the French NIR format"
Severity: #error
Expression: "$this.matches('^[0-9]{9}$')"



// Profil de Base pour les Paramètres d'Entrée
Profile: InterventionInputParametersBaseProfile
Id: InterventionInputParametersBaseProfile
Parent: Parameters
Title: "Profil de Base pour les Paramètres d'Entrée de l'Intervention"
Description: "Définit la structure et les contraintes de base pour les paramètres d'entrée de l'opération $envoyer-donnees-intervention. Ce profil est abstrait."
* ^status = #draft
* ^abstract = true // Profil de base, non utilisable directement

// ---- Slicing des paramètres par nom ----
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed // Autorise d'autres paramètres non définis ici (peut être #closed)

// ---- Définition des slices pour chaque paramètre ----

// Paramètre 'nir'
* parameter contains nir 1..1
* parameter[nir].name = #nir (exactly)
* parameter[nir].value[x] only string
* parameter[nir].value[x] 1..1 // Rendre la valeur obligatoire explicitement
* parameter[nir].valueString obeys nir-regex

// Paramètre 'rpps'
* parameter contains rpps 1..1
* parameter[rpps].name = #rpps (exactly)
* parameter[rpps].value[x] only string
* parameter[rpps].value[x] 1..1
* parameter[rpps].valueString obeys rpps-regex
// * parameter[rpps].documentation = "..." // Supprimé

// Paramètre 'finessGeographique'
* parameter contains finessGeographique 1..1
* parameter[finessGeographique].name = #finessGeographique (exactly)
* parameter[finessGeographique].value[x] only string
* parameter[finessGeographique].value[x] 1..1
* parameter[finessGeographique].valueString obeys finess-regex

* parameter contains lateralite 0..1
* parameter[lateralite].name = #lateralite (exactly)
* parameter[lateralite].value[x] only CodeableConcept
* parameter[lateralite].value[x] 0..1 // Rendre la valeur obligatoire explicitement
* parameter[lateralite].valueCodeableConcept from https://fhir.orthense.com/ValueSet/LateraliteVS (required) 

// Paramètre 'dateIntervention'
* parameter contains dateIntervention 1..1
* parameter[dateIntervention].name = #dateIntervention (exactly)
* parameter[dateIntervention].value[x] only dateTime
* parameter[dateIntervention].value[x] 1..1 // Rendre la valeur obligatoire explicitement
// * parameter[dateIntervention].documentation = "..." // Supprimé

// Paramètre 'typeProcedure'
* parameter contains typeProcedure 1..1
* parameter[typeProcedure].name = #typeProcedure (exactly)
* parameter[typeProcedure].value[x] only CodeableConcept
* parameter[typeProcedure].value[x] 1..1 // Rendre la valeur obligatoire explicitement
* parameter[typeProcedure].valueCodeableConcept from https://fhir.orthense.com/ValueSet/RegistreVS (required) 

* parameter[typeProcedure].valueCodeableConcept ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* parameter[typeProcedure].valueCodeableConcept ^extension[=].valueString = "When typeProcedure is PG, use profile https://fhir.orthense.com/StructureDefinition/intervention-input-parameters-pg-profile"

// * parameter[typeProcedure].valueCodeableConcept from $VS_INTERVENTION_TYPES (required) 
// * parameter[typeProcedure].documentation = "..." // Supprimé

// Paramètre 'implants' (liste, 0 à *)
* parameter contains implants 0..*
* parameter[implants].name = #implants (exactly)
// * parameter[implants].documentation = "..." // Supprimé
  // ---- Slicing des parts de l'implant par nom ----
* parameter[implants].part ^slicing.discriminator.type = #value
* parameter[implants].part ^slicing.discriminator.path = "name"
* parameter[implants].part ^slicing.rules = #open // Ou #closed si la liste est fixe

  // ---- Définition des parts pour chaque implant ----
* parameter[implants].part contains fournisseur 0..1 and udi 1..1 and lot 1..1 and reference 0..1 and type 1..1 and description 0..1

  // Part 'fournisseur'
* parameter[implants].part[fournisseur].name = #fournisseur (exactly)
* parameter[implants].part[fournisseur].value[x] only string
* parameter[implants].part[fournisseur].value[x] 1..1 // Rendre la valeur obligatoire explicitement si min=1 pour la part
// * parameter[implants].part[fournisseur].documentation = "..." // Supprimé

  // Part 'udi'
* parameter[implants].part[udi].name = #udi (exactly)
* parameter[implants].part[udi].value[x] only string
* parameter[implants].part[udi].value[x] 1..1
// * parameter[implants].part[udi].value[x] ^pattern = "..." // Appliquer pattern ici si besoin pour UDI
// * parameter[implants].part[udi].documentation = "..." // Supprimé

  // Part 'lot'
* parameter[implants].part[lot].name = #lot (exactly)
* parameter[implants].part[lot].value[x] only string
* parameter[implants].part[lot].value[x] 1..1
// * parameter[implants].part[lot].documentation = "..." // Supprimé

  // Part 'reference'
* parameter[implants].part[reference].name = #reference (exactly)
* parameter[implants].part[reference].value[x] only string
* parameter[implants].part[reference].value[x] 1..1 // Rendre la valeur obligatoire explicitement si min=1 pour la part
// * parameter[implants].part[reference].documentation = "..." // Supprimé

  // Part 'type' (avec binding général)
// * parameter[implants].part[type].name = "type" (exactly)
// * parameter[implants].part[type].value[x] only CodeableConcept
// * parameter[implants].part[type].value[x] 1..1
// * parameter[implants].part[type].valueCodeableConcept from $VS_IMPLANT_TYPES (required)
// * parameter[implants].part[type].documentation = "..." // Supprimé

  // Part 'description'
* parameter[implants].part[description].name = #description (exactly)
* parameter[implants].part[description].value[x] only string
* parameter[implants].part[description].value[x] 1..1 // Rendre la valeur obligatoire explicitement si min=1 pour la part
// * parameter[implants].part[description].documentation = "..." // Supprimé


// // Profil Spécifique pour les Procédures Orthopédiques
// Profile: InterventionInputParametersOrthoProfile
// Id: InterventionInputParametersOrthoProfile
// Parent: InterventionInputParametersBaseProfile // Hérite du profil de base
// Title: "Profil Spécifique pour les Paramètres d'Entrée d'une Intervention Orthopédique"
// Description: "Profil contraignant les paramètres pour une intervention de type orthopédique, notamment les types d'implants autorisés."
// * ^url = $PROF_PARAMS_ORTHO
// * ^version = "1.0.0"
// * ^status = #draft
// * ^abstract = false // Ce profil est concret

// // Contrainte: Le type de procédure DOIT être ORTHO pour ce profil
// // On utilise une contrainte sur le code ET le système pour être précis
// * parameter[typeProcedure].valueCodeableConcept.coding ^slicing.discriminator.type = #value
// * parameter[typeProcedure].valueCodeableConcept.coding ^slicing.discriminator.path = "system"
// * parameter[typeProcedure].valueCodeableConcept.coding ^slicing.rules = #open
// * parameter[typeProcedure].valueCodeableConcept.coding contains procTypeCoding 1..1
// * parameter[typeProcedure].valueCodeableConcept.coding[procTypeCoding].system = $CS_INTERVENTION_TYPES (exactly)
// * parameter[typeProcedure].valueCodeableConcept.coding[procTypeCoding].code = #ORTHO (exactly)

// // Contrainte: Redéfinition du ValueSet pour le type d'implant autorisé en ortho
// // Cible la part 'type', puis sa valeur CodeableConcept
// // * parameter[implants].part[type].valueCodeableConcept from $VS_ORTHO_IMPLANT_TYPES (required) // Change le binding

// // // Optionnel: Rendre la référence catalogue obligatoire pour l'ortho
// // * parameter[implants].part[reference] 1..1 // Rend la part 'reference' obligatoire
// // * parameter[implants].part[reference].value[x] 1..1 // Assurer que la valeur est présente si la part l'est

