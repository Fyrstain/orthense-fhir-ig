Instance: AssocierImplantsProcedurePEExample
InstanceOf: InterventionInputParametersPEProfile
Usage: #example
Title: "Exemple de déclaration d'intervention chirurgicale - Prothèse d'Épaule"
Description: "Exemple d'utilisation de l'opération associer-implants-registre pour déclarer une arthroplastie totale d'épaule droite"

* id = "AssocierImplantsProcedurePEExample"

* parameter[nir].name = "nir"
* parameter[nir].valueString = "2840510012345678"

* parameter[rpps].name = "rpps"
* parameter[rpps].valueString = "12345678901"

* parameter[finessGeographique].name = "finessGeographique"
* parameter[finessGeographique].valueString = "123456789"

* parameter[dateIntervention].name = "dateIntervention"
* parameter[dateIntervention].valueDateTime = "2025-03-25"

* parameter[typeProcedure].name = "typeProcedure"
* parameter[typeProcedure].valueCodeableConcept = SCT#239468007 "Arthroplasty of shoulder"

* parameter[lateralite].name = "lateralite"
* parameter[lateralite].valueCodeableConcept = LateraliteCS#DROITE

// Premier implant - Tige humérale
* parameter[implants][0].name = "implants"
* parameter[implants][0].part[fournisseur].name = "fournisseur"
* parameter[implants][0].part[fournisseur].valueString = "Wright Medical"

* parameter[implants][0].part[udi].name = "udi"
* parameter[implants][0].part[udi].valueString = "(01)00844588003401(17)250325(10)A213D456"

* parameter[implants][0].part[lot].name = "lot"
* parameter[implants][0].part[lot].valueString = "A213D456"

* parameter[implants][0].part[reference].name = "reference"
* parameter[implants][0].part[reference].valueString = "BLUEPRINT-STEM-4"

* parameter[implants][0].part[type].name = "type"
* parameter[implants][0].part[type].valueCodeableConcept = ImplantTypeCS#PE_TIGE_HUMERALE "Tige humérale"

* parameter[implants][0].part[description].name = "description"
* parameter[implants][0].part[description].valueString = "Tige humérale Blueprint taille 4"

// Deuxième implant - Tête humérale
* parameter[implants][1].name = "implants"
* parameter[implants][1].part[fournisseur].name = "fournisseur"
* parameter[implants][1].part[fournisseur].valueString = "Wright Medical"

* parameter[implants][1].part[udi].name = "udi"
* parameter[implants][1].part[udi].valueString = "(01)00844588003402(17)250325(10)A213D457"

* parameter[implants][1].part[lot].name = "lot"
* parameter[implants][1].part[lot].valueString = "A213D457"

* parameter[implants][1].part[reference].name = "reference"
* parameter[implants][1].part[reference].valueString = "BLUEPRINT-HEAD-44"

* parameter[implants][1].part[type].name = "type"
* parameter[implants][1].part[type].valueCodeableConcept = ImplantTypeCS#PE_TETE_HUMERALE "Tête humérale"

* parameter[implants][1].part[description].name = "description"
* parameter[implants][1].part[description].valueString = "Tête humérale Blueprint 44mm"

// Troisième implant - Composant glénoïdien
* parameter[implants][2].name = "implants"
* parameter[implants][2].part[fournisseur].name = "fournisseur"
* parameter[implants][2].part[fournisseur].valueString = "Wright Medical"

* parameter[implants][2].part[udi].name = "udi"
* parameter[implants][2].part[udi].valueString = "(01)00844588003403(17)250325(10)A213D458"

* parameter[implants][2].part[lot].name = "lot"
* parameter[implants][2].part[lot].valueString = "A213D458"

* parameter[implants][2].part[reference].name = "reference"
* parameter[implants][2].part[reference].valueString = "BLUEPRINT-GLEN-3"

* parameter[implants][2].part[type].name = "type"
* parameter[implants][2].part[type].valueCodeableConcept = ImplantTypeCS#PE_GLENOIDE "Composant glénoïdien"

* parameter[implants][2].part[description].name = "description"
* parameter[implants][2].part[description].valueString = "Composant glénoïdien Blueprint taille 3"

// Fourth implant - Insert glénoïdien (adding to meet the 4..5 cardinality requirement)
* parameter[implants][3].name = "implants"
* parameter[implants][3].part[fournisseur].name = "fournisseur"
* parameter[implants][3].part[fournisseur].valueString = "Wright Medical"

* parameter[implants][3].part[udi].name = "udi"
* parameter[implants][3].part[udi].valueString = "(01)00844588003404(17)250325(10)A213D459"

* parameter[implants][3].part[lot].name = "lot"
* parameter[implants][3].part[lot].valueString = "A213D459"

* parameter[implants][3].part[reference].name = "reference"
* parameter[implants][3].part[reference].valueString = "BLUEPRINT-INSERT-3"

* parameter[implants][3].part[type].name = "type"
* parameter[implants][3].part[type].valueCodeableConcept = ImplantTypeCS#PE_INSERT_GLENOIDIEN "Insert glénoïdien"

* parameter[implants][3].part[description].name = "description"
* parameter[implants][3].part[description].valueString = "Insert glénoïdien Blueprint taille 3"