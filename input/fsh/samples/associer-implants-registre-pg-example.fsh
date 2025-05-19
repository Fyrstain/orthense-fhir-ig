Instance: AssocierImplantsProcedurePGExample
InstanceOf: InterventionInputParametersBaseProfile
Usage: #example
Title: "Exemple de déclaration d'intervention chirurgicale - Prothèse de Genou"
Description: "Exemple d'utilisation de l'opération associer-implants-registre pour déclarer une arthroplastie totale de genou droit"

* id = "AssocierImplantsProcedurePGExample"

* parameter[nir].name = "nir"
* parameter[nir].valueString = "197012A12345678"

* parameter[rpps].name = "rpps"
* parameter[rpps].valueString = "00011223344"

* parameter[finessGeographique].name = "finessGeographique"
* parameter[finessGeographique].valueString = "987654321"

* parameter[dateIntervention].name = "dateIntervention"
* parameter[dateIntervention].valueDateTime = "2025-03-15"

* parameter[typeProcedure].name = "typeProcedure"
* parameter[typeProcedure].valueCodeableConcept = SCT#19063003 "Arthroplasty of knee"

* parameter[lateralite].name = "lateralite"
* parameter[lateralite].valueCodeableConcept = LateraliteCS#DROITE

// Premier implant - Composant fémoral
* parameter[implants][0].name = "implants"
* parameter[implants][0].part[fournisseur].name = "fournisseur"
* parameter[implants][0].part[fournisseur].valueString = "Stryker Orthopaedics"

* parameter[implants][0].part[udi].name = "udi"
* parameter[implants][0].part[udi].valueString = "(01)00844588003288(17)250315(10)A213B456"

* parameter[implants][0].part[lot].name = "lot"
* parameter[implants][0].part[lot].valueString = "A213B456"

* parameter[implants][0].part[reference].name = "reference"
* parameter[implants][0].part[reference].valueString = "TRIATHLON-TS-F4"

* parameter[implants][0].part[type].name = "type"
* parameter[implants][0].part[type].valueCodeableConcept = ImplantTypeCS#PG_FEMORAL "Composant fémoral"

* parameter[implants][0].part[description].name = "description"
* parameter[implants][0].part[description].valueString = "Composant fémoral Triathlon taille 4"

// Deuxième implant - Base tibiale
* parameter[implants][1].name = "implants"
* parameter[implants][1].part[fournisseur].name = "fournisseur"
* parameter[implants][1].part[fournisseur].valueString = "Stryker Orthopaedics"

* parameter[implants][1].part[udi].name = "udi"
* parameter[implants][1].part[udi].valueString = "(01)00844588003295(17)250315(10)A213B457"

* parameter[implants][1].part[lot].name = "lot"
* parameter[implants][1].part[lot].valueString = "A213B457"

* parameter[implants][1].part[reference].name = "reference"
* parameter[implants][1].part[reference].valueString = "TRIATHLON-TS-T3"

* parameter[implants][1].part[type].name = "type"
* parameter[implants][1].part[type].valueCodeableConcept = ImplantTypeCS#PG_BASETIBIALE "Base tibiale"

* parameter[implants][1].part[description].name = "description"
* parameter[implants][1].part[description].valueString = "Base tibiale Triathlon taille 3"

// Troisième implant - Plateau tibial
* parameter[implants][2].name = "implants"
* parameter[implants][2].part[fournisseur].name = "fournisseur"
* parameter[implants][2].part[fournisseur].valueString = "Stryker Orthopaedics"

* parameter[implants][2].part[udi].name = "udi"
* parameter[implants][2].part[udi].valueString = "(01)00844588003296(17)250315(10)A213B458"

* parameter[implants][2].part[lot].name = "lot"
* parameter[implants][2].part[lot].valueString = "A213B458"

* parameter[implants][2].part[reference].name = "reference"
* parameter[implants][2].part[reference].valueString = "TRIATHLON-PE-10MM"

* parameter[implants][2].part[type].name = "type"
* parameter[implants][2].part[type].valueCodeableConcept = ImplantTypeCS#PG_PLATEAUTIBIAL "Plateau tibial"

* parameter[implants][2].part[description].name = "description"
* parameter[implants][2].part[description].valueString = "Plateau tibial Triathlon taille 3 10mm"