Instance: AssocierImplantsProcedurePHExample
InstanceOf: InterventionInputParametersPhProfile
Usage: #example
Title: "Exemple de déclaration d'intervention chirurgicale - Prothèse de Hanche"
Description: "Exemple d'utilisation de l'opération associer-implants-registre pour déclarer une arthroplastie totale de hanche gauche"

* id = "AssocierImplantsProcedurePHExample"

* parameter[nir].name = "nir"
* parameter[nir].valueString = "195031245678901"

* parameter[rpps].name = "rpps"
* parameter[rpps].valueString = "12345678901"

* parameter[finessGeographique].name = "finessGeographique"
* parameter[finessGeographique].valueString = "000112233"

* parameter[dateIntervention].name = "dateIntervention"
* parameter[dateIntervention].valueDateTime = "2025-03-20"

* parameter[typeProcedure].name = "typeProcedure"
* parameter[typeProcedure].valueCodeableConcept = SCT#47458005 "Arthroplasty of the hip"

* parameter[lateralite].name = "lateralite"
* parameter[lateralite].valueCodeableConcept = LateraliteCS#GAUCHE

// Premier implant - Cupule
* parameter[implants][0].name = "implants"
* parameter[implants][0].part[fournisseur].name = "fournisseur"
* parameter[implants][0].part[fournisseur].valueString = "Zimmer Biomet"

* parameter[implants][0].part[udi].name = "udi"
* parameter[implants][0].part[udi].valueString = "(01)00844588003301(17)250320(10)A213C456"

* parameter[implants][0].part[lot].name = "lot"
* parameter[implants][0].part[lot].valueString = "A213C456"

* parameter[implants][0].part[reference].name = "reference"
* parameter[implants][0].part[reference].valueString = "G7-CUP-54"

* parameter[implants][0].part[type].name = "type"
* parameter[implants][0].part[type].valueCodeableConcept = ImplantTypeCS#PH_CUPULE "Cupule"

* parameter[implants][0].part[description].name = "description"
* parameter[implants][0].part[description].valueString = "Cupule G7 taille 54mm"

// Deuxième implant - Insert
* parameter[implants][1].name = "implants"
* parameter[implants][1].part[fournisseur].name = "fournisseur"
* parameter[implants][1].part[fournisseur].valueString = "Zimmer Biomet"

* parameter[implants][1].part[udi].name = "udi"
* parameter[implants][1].part[udi].valueString = "(01)00844588003302(17)250320(10)A213C457"

* parameter[implants][1].part[lot].name = "lot"
* parameter[implants][1].part[lot].valueString = "A213C457"

* parameter[implants][1].part[reference].name = "reference"
* parameter[implants][1].part[reference].valueString = "G7-INSERT-54-32"

* parameter[implants][1].part[type].name = "type"
* parameter[implants][1].part[type].valueCodeableConcept = ImplantTypeCS#PH_INSERT "Inserts"

* parameter[implants][1].part[description].name = "description"
* parameter[implants][1].part[description].valueString = "Insert G7 taille 54mm diamètre interne 32mm"

// Troisième implant - Tige fémorale
* parameter[implants][2].name = "implants"
* parameter[implants][2].part[fournisseur].name = "fournisseur"
* parameter[implants][2].part[fournisseur].valueString = "Zimmer Biomet"

* parameter[implants][2].part[udi].name = "udi"
* parameter[implants][2].part[udi].valueString = "(01)00844588003303(17)250320(10)A213C458"

* parameter[implants][2].part[lot].name = "lot"
* parameter[implants][2].part[lot].valueString = "A213C458"

* parameter[implants][2].part[reference].name = "reference"
* parameter[implants][2].part[reference].valueString = "TAPERLOC-STEM-5"

* parameter[implants][2].part[type].name = "type"
* parameter[implants][2].part[type].valueCodeableConcept = ImplantTypeCS#PH_TIGE "Tige fémorale"

* parameter[implants][2].part[description].name = "description"
* parameter[implants][2].part[description].valueString = "Tige fémorale Taperloc taille 5"

// Quatrième implant - Tête fémorale
* parameter[implants][3].name = "implants"
* parameter[implants][3].part[fournisseur].name = "fournisseur"
* parameter[implants][3].part[fournisseur].valueString = "Zimmer Biomet"

* parameter[implants][3].part[udi].name = "udi"
* parameter[implants][3].part[udi].valueString = "(01)00844588003304(17)250320(10)A213C459"

* parameter[implants][3].part[lot].name = "lot"
* parameter[implants][3].part[lot].valueString = "A213C459"

* parameter[implants][3].part[reference].name = "reference"
* parameter[implants][3].part[reference].valueString = "BIOLOX-HEAD-32-M"

* parameter[implants][3].part[type].name = "type"
* parameter[implants][3].part[type].valueCodeableConcept = ImplantTypeCS#PH_TETE "Tête fémorale"

* parameter[implants][3].part[description].name = "description"
* parameter[implants][3].part[description].valueString = "Tête fémorale Biolox 32mm col M"