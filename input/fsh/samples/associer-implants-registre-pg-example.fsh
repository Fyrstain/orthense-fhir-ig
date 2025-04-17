Instance: AssocierImplantsProcedurePGExample
InstanceOf: Parameters
Usage: #example
Title: "Exemple de déclaration d'intervention chirurgicale - Prothèse de Genou"
Description: "Exemple d'utilisation de l'opération associer-implants-registre pour déclarer une arthroplastie totale de genou droit"

* id = "AssocierImplantsProcedurePGExample"

* parameter[0].name = "nir"
* parameter[0].valueString = "1234567890123"

* parameter[1].name = "rpps"
* parameter[1].valueString = "10012345678"

* parameter[2].name = "finessGeographique"
* parameter[2].valueString = "310780259"

* parameter[3].name = "dateIntervention"
* parameter[3].valueDateTime = "2025-03-15"

* parameter[4].name = "typeProcedure"
* parameter[4].valueCodeableConcept = SCT#19063003 "Arthroplasty of knee"

* parameter[5].name = "lateralite"
* parameter[5].valueCodeableConcept = LateraliteCS#DROITE

// Premier implant - Composant fémoral
* parameter[6].name = "implants"
* parameter[6].part[0].name = "fournisseur"
* parameter[6].part[0].valueString = "Stryker Orthopaedics"

* parameter[6].part[1].name = "udi"
* parameter[6].part[1].valueString = "(01)00844588003288(17)250315(10)A213B456"

* parameter[6].part[2].name = "lot"
* parameter[6].part[2].valueString = "A213B456"

* parameter[6].part[3].name = "reference"
* parameter[6].part[3].valueString = "TRIATHLON-TS-F4"

* parameter[6].part[4].name = "type"
* parameter[6].part[4].valueCodeableConcept = ImplantTypeCS#PG_FEMORAL "Composant fémoral"

* parameter[6].part[5].name = "description"
* parameter[6].part[5].valueString = "Composant fémoral Triathlon taille 4"

// Deuxième implant - Base tibiale
* parameter[7].name = "implants"
* parameter[7].part[0].name = "fournisseur"
* parameter[7].part[0].valueString = "Stryker Orthopaedics"

* parameter[7].part[1].name = "udi"
* parameter[7].part[1].valueString = "(01)00844588003295(17)250315(10)A213B457"

* parameter[7].part[2].name = "lot"
* parameter[7].part[2].valueString = "A213B457"

* parameter[7].part[3].name = "reference"
* parameter[7].part[3].valueString = "TRIATHLON-TS-T3"

* parameter[7].part[4].name = "type"
* parameter[7].part[4].valueCodeableConcept = ImplantTypeCS#PG_BASETIBIALE "Base tibiale"

* parameter[7].part[5].name = "description"
* parameter[7].part[5].valueString = "Base tibiale Triathlon taille 3"

// Troisième implant - Plateau tibial
* parameter[8].name = "implants"
* parameter[8].part[0].name = "fournisseur"
* parameter[8].part[0].valueString = "Stryker Orthopaedics"

* parameter[8].part[1].name = "udi"
* parameter[8].part[1].valueString = "(01)00844588003296(17)250315(10)A213B458"

* parameter[8].part[2].name = "lot"
* parameter[8].part[2].valueString = "A213B458"

* parameter[8].part[3].name = "reference"
* parameter[8].part[3].valueString = "TRIATHLON-PE-10MM"

* parameter[8].part[4].name = "type"
* parameter[8].part[4].valueCodeableConcept = ImplantTypeCS#PG_PLATEAUTIBIAL "Plateau tibial"

* parameter[8].part[5].name = "description"
* parameter[8].part[5].valueString = "Plateau tibial Triathlon taille 3 10mm"