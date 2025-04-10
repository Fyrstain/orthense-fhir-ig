Invariant: nir-regex
Description: "NIR doit correspondre au format NIR Français"
Severity: #error
Expression: "$this.matches('^[12][0-9]{2}(0[1-9]|1[0-2])(2[AB]|[0-9]{2})[0-9]{3}[0-9]{3}[0-9]{2}$')"

Invariant: rpps-regex
Description: "RPPS doit correspondre au format RPPS Français"
Severity: #error
Expression: "$this.matches('^[0-9]{11}$')"

Invariant: finess-regex
Description: "Finess Géo doit correspondre au format Finess Géo Français"
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

* obeys pg-requires-3-to-5-implants
* obeys pg-requires-implants-type

// ---- Slicing des paramètres par nom ----
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed // Autorise d'autres paramètres non définis ici (peut être #closed)

// ---- Définition des slices pour chaque paramètre ----

// Paramètre 'nir'
* parameter contains nir 1..1
* parameter[nir].name = #nir (exactly)
* parameter[nir].value[x] only string
* parameter[nir].value[x] 1..1 
* parameter[nir].valueString obeys nir-regex

// Paramètre 'rpps'
* parameter contains rpps 1..1
* parameter[rpps].name = #rpps (exactly)
* parameter[rpps].value[x] only string
* parameter[rpps].value[x] 1..1
* parameter[rpps].valueString obeys rpps-regex

// Paramètre 'finessGeographique'
* parameter contains finessGeographique 1..1
* parameter[finessGeographique].name = #finessGeographique (exactly)
* parameter[finessGeographique].value[x] only string
* parameter[finessGeographique].value[x] 1..1
* parameter[finessGeographique].valueString obeys finess-regex

* parameter contains lateralite 0..1
* parameter[lateralite].name = #lateralite (exactly)
* parameter[lateralite].value[x] only CodeableConcept
* parameter[lateralite].value[x] 0..1 // Rendre la valeur optionnelle 
* parameter[lateralite].valueCodeableConcept from LateraliteVS (required) 

// Paramètre 'dateIntervention'
* parameter contains dateIntervention 1..1
* parameter[dateIntervention].name = #dateIntervention (exactly)
* parameter[dateIntervention].value[x] only dateTime
* parameter[dateIntervention].value[x] 1..1

// Paramètre 'typeProcedure'
* parameter contains typeProcedure 1..1
* parameter[typeProcedure].name = #typeProcedure (exactly)
* parameter[typeProcedure].value[x] only CodeableConcept
* parameter[typeProcedure].value[x] 1..1 
* parameter[typeProcedure].valueCodeableConcept from RegistreVS (required) 
* parameter[typeProcedure].valueCodeableConcept ^short = "Ex: PG. Quand la valeur est 'PG', les autres paramètres, notamment la description des implants, doivent suivre le profil intervention-input-parameters-pg-profile"

* parameter contains implants 0..*
* parameter[implants].name = #implants (exactly)
  // ---- Slicing des parts de l'implant par nom ----
* parameter[implants].part ^slicing.discriminator.type = #value
* parameter[implants].part ^slicing.discriminator.path = "name"
* parameter[implants].part ^slicing.rules = #open // Ou #closed si la liste est fixe

  // ---- Définition des parts pour chaque implant ----
* parameter[implants].part contains fournisseur 0..1 and udi 1..1 and lot 1..1 and reference 0..1 and type 1..1 and description 0..1

  // Part 'fournisseur'
* parameter[implants].part[fournisseur].name = #fournisseur (exactly)
* parameter[implants].part[fournisseur].value[x] only string
* parameter[implants].part[fournisseur].value[x] 1..1 

  // Part 'udi'
* parameter[implants].part[udi].name = #udi (exactly)
* parameter[implants].part[udi].value[x] only string
* parameter[implants].part[udi].value[x] 1..1

  // Part 'lot'
* parameter[implants].part[lot].name = #lot (exactly)
* parameter[implants].part[lot].value[x] only string
* parameter[implants].part[lot].value[x] 1..1

  // Part 'reference'
* parameter[implants].part[reference].name = #reference (exactly)
* parameter[implants].part[reference].value[x] only string
* parameter[implants].part[reference].value[x] 1..1 

// Part 'type' (avec binding général)
* parameter[implants].part[type].name = "type" (exactly)
* parameter[implants].part[type].value[x] only CodeableConcept
* parameter[implants].part[type].value[x] 1..1
* parameter[implants].part[type].valueCodeableConcept from ImplantTypeVS (required)

  // Part 'description'
* parameter[implants].part[description].name = #description (exactly)
* parameter[implants].part[description].value[x] only string
* parameter[implants].part[description].value[x] 1..1 
