Instance: AssocierImplantsProcedurePEExample
InstanceOf: Parameters
Usage: #example
Title: "Exemple de déclaration d'intervention chirurgicale - Prothèse d'Épaule"
Description: "Exemple d'utilisation de l'opération associer-implants-registre pour déclarer une arthroplastie totale d'épaule droite"

* id = "AssocierImplantsProcedurePEExample"

* parameter[0].name = "nir"
* parameter[0].valueString = "3234567890123"

* parameter[1].name = "rpps"
* parameter[1].valueString = "10012345680"

* parameter[2].name = "finessGeographique"
* parameter[2].valueString = "310780261"

* parameter[3].name = "dateIntervention"
* parameter[3].valueDateTime = "2025-03-25"

* parameter[4].name = "typeProcedure"
* parameter[4].valueCodeableConcept = SCT#239468007 "Arthroplasty of shoulder"

* parameter[5].name = "lateralite"
* parameter[5].valueCodeableConcept = LateraliteCS#DROITE

// Premier implant - Tige humérale
* parameter[6].name = "implants"
* parameter[6].part[0].name = "fournisseur"
* parameter[6].part[0].valueString = "Wright Medical"

* parameter[6].part[1].name = "udi"
* parameter[6].part[1].valueString = "(01)00844588003401(17)250325(10)A213D456"

* parameter[6].part[2].name = "lot"
* parameter[6].part[2].valueString = "A213D456"

* parameter[6].part[3].name = "reference"
* parameter[6].part[3].valueString = "BLUEPRINT-STEM-4"

* parameter[6].part[4].name = "type"
* parameter[6].part[4].valueCodeableConcept = ImplantTypeCS#PE_TIGE_HUMERALE "Tige humérale"

* parameter[6].part[5].name = "description"
* parameter[6].part[5].valueString = "Tige humérale Blueprint taille 4"

// Deuxième implant - Tête humérale
* parameter[7].name = "implants"
* parameter[7].part[0].name = "fournisseur"
* parameter[7].part[0].valueString = "Wright Medical"

* parameter[7].part[1].name = "udi"
* parameter[7].part[1].valueString = "(01)00844588003402(17)250325(10)A213D457"

* parameter[7].part[2].name = "lot"
* parameter[7].part[2].valueString = "A213D457"

* parameter[7].part[3].name = "reference"
* parameter[7].part[3].valueString = "BLUEPRINT-HEAD-44"

* parameter[7].part[4].name = "type"
* parameter[7].part[4].valueCodeableConcept = ImplantTypeCS#PE_TETE_HUMERALE "Tête humérale"

* parameter[7].part[5].name = "description"
* parameter[7].part[5].valueString = "Tête humérale Blueprint 44mm"

// Troisième implant - Composant glénoïdien
* parameter[8].name = "implants"
* parameter[8].part[0].name = "fournisseur"
* parameter[8].part[0].valueString = "Wright Medical"

* parameter[8].part[1].name = "udi"
* parameter[8].part[1].valueString = "(01)00844588003403(17)250325(10)A213D458"

* parameter[8].part[2].name = "lot"
* parameter[8].part[2].valueString = "A213D458"

* parameter[8].part[3].name = "reference"
* parameter[8].part[3].valueString = "BLUEPRINT-GLEN-3"

* parameter[8].part[4].name = "type"
* parameter[8].part[4].valueCodeableConcept = ImplantTypeCS#PE_GLENOIDE "Composant glénoïdien"

* parameter[8].part[5].name = "description"
* parameter[8].part[5].valueString = "Composant glénoïdien Blueprint taille 3"