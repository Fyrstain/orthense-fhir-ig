Instance: AssocierImplantsProcedurePHExample
InstanceOf: Parameters
Usage: #example
Title: "Exemple de déclaration d'intervention chirurgicale - Prothèse de Hanche"
Description: "Exemple d'utilisation de l'opération associer-implants-registre pour déclarer une arthroplastie totale de hanche gauche"

* id = "AssocierImplantsProcedurePHExample"

* parameter[0].name = "nir"
* parameter[0].valueString = "2234567890123"

* parameter[1].name = "rpps"
* parameter[1].valueString = "10012345679"

* parameter[2].name = "finessGeographique"
* parameter[2].valueString = "310780260"

* parameter[3].name = "dateIntervention"
* parameter[3].valueDateTime = "2025-03-20"

* parameter[4].name = "typeProcedure"
* parameter[4].valueCodeableConcept = SCT#47458005 "Arthroplasty of the hip"

* parameter[5].name = "lateralite"
* parameter[5].valueCodeableConcept = LateraliteCS#GAUCHE

// Premier implant - Cupule
* parameter[6].name = "implants"
* parameter[6].part[0].name = "fournisseur"
* parameter[6].part[0].valueString = "Zimmer Biomet"

* parameter[6].part[1].name = "udi"
* parameter[6].part[1].valueString = "(01)00844588003301(17)250320(10)A213C456"

* parameter[6].part[2].name = "lot"
* parameter[6].part[2].valueString = "A213C456"

* parameter[6].part[3].name = "reference"
* parameter[6].part[3].valueString = "G7-CUP-54"

* parameter[6].part[4].name = "type"
* parameter[6].part[4].valueCodeableConcept = ImplantTypeCS#PH_CUPULE "Cupule"

* parameter[6].part[5].name = "description"
* parameter[6].part[5].valueString = "Cupule G7 taille 54mm"

// Deuxième implant - Insert
* parameter[7].name = "implants"
* parameter[7].part[0].name = "fournisseur"
* parameter[7].part[0].valueString = "Zimmer Biomet"

* parameter[7].part[1].name = "udi"
* parameter[7].part[1].valueString = "(01)00844588003302(17)250320(10)A213C457"

* parameter[7].part[2].name = "lot"
* parameter[7].part[2].valueString = "A213C457"

* parameter[7].part[3].name = "reference"
* parameter[7].part[3].valueString = "G7-INSERT-54-32"

* parameter[7].part[4].name = "type"
* parameter[7].part[4].valueCodeableConcept = ImplantTypeCS#PH_INSERT "Insert"

* parameter[7].part[5].name = "description"
* parameter[7].part[5].valueString = "Insert G7 taille 54mm diamètre interne 32mm"

// Troisième implant - Tige fémorale
* parameter[8].name = "implants"
* parameter[8].part[0].name = "fournisseur"
* parameter[8].part[0].valueString = "Zimmer Biomet"

* parameter[8].part[1].name = "udi"
* parameter[8].part[1].valueString = "(01)00844588003303(17)250320(10)A213C458"

* parameter[8].part[2].name = "lot"
* parameter[8].part[2].valueString = "A213C458"

* parameter[8].part[3].name = "reference"
* parameter[8].part[3].valueString = "TAPERLOC-STEM-5"

* parameter[8].part[4].name = "type"
* parameter[8].part[4].valueCodeableConcept = ImplantTypeCS#PH_TIGE "Tige fémorale"

* parameter[8].part[5].name = "description"
* parameter[8].part[5].valueString = "Tige fémorale Taperloc taille 5"

// Quatrième implant - Tête fémorale
* parameter[9].name = "implants"
* parameter[9].part[0].name = "fournisseur"
* parameter[9].part[0].valueString = "Zimmer Biomet"

* parameter[9].part[1].name = "udi"
* parameter[9].part[1].valueString = "(01)00844588003304(17)250320(10)A213C459"

* parameter[9].part[2].name = "lot"
* parameter[9].part[2].valueString = "A213C459"

* parameter[9].part[3].name = "reference"
* parameter[9].part[3].valueString = "BIOLOX-HEAD-32-M"

* parameter[9].part[4].name = "type"
* parameter[9].part[4].valueCodeableConcept = ImplantTypeCS#PH_TETE "Tête fémorale"

* parameter[9].part[5].name = "description"
* parameter[9].part[5].valueString = "Tête fémorale Biolox 32mm col M"