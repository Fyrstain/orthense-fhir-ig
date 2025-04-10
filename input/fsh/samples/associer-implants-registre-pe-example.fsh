Instance: AssocierImplantsProcedurePEExample
InstanceOf: Parameters
Usage: #example
Title: "Exemple de déclaration d'intervention chirurgicale - Prothèse d'Épaule"
Description: "Exemple d'utilisation de l'opération SurgicalProcedureOperation pour déclarer une arthroplastie totale d'épaule droite"

* id = "AssocierImplantsProcedurePEExample"

* parameter[0].name = "identifiantsPartiesPrenantes"
* parameter[0].part[0].name = "nir"
* parameter[0].part[0].valueIdentifier.system = "http://france.fr/nir"
* parameter[0].part[0].valueIdentifier.value = "3234567890123"

* parameter[0].part[1].name = "rpps"
* parameter[0].part[1].valueIdentifier.system = "https://annuaire.sante.fr/rpps" 
* parameter[0].part[1].valueIdentifier.value = "10012345680"

* parameter[0].part[2].name = "finessGeo"
* parameter[0].part[2].valueIdentifier.system = "https://finess.sante.gouv.fr"
* parameter[0].part[2].valueIdentifier.value = "310780261"

* parameter[1].name = "procedureInfo"
* parameter[1].part[0].name = "dateIntervention"
* parameter[1].part[0].valueDateTime = "2025-03-25"

* parameter[1].part[1].name = "procedureType"
* parameter[1].part[1].valueCodeableConcept = #PE

* parameter[1].part[2].name = "lateralite"
* parameter[1].part[2].valueCodeableConcept = LateraliteCS#DROITE

// Premier implant - Tige humérale
* parameter[2].name = "implants"
* parameter[2].part[0].name = "UDI"
* parameter[2].part[0].valueIdentifier.system = "https://ec.europa.eu/tools/eudamed"
* parameter[2].part[0].valueIdentifier.value = "(01)00844588003401(17)250325(10)A213D456"

* parameter[2].part[1].name = "fournisseur"
* parameter[2].part[1].valueString = "Wright Medical"

* parameter[2].part[2].name = "reference" 
* parameter[2].part[2].valueString = "BLUEPRINT-STEM-4"

* parameter[2].part[3].name = "lot"
* parameter[2].part[3].valueString = "A213D456"

* parameter[2].part[4].name = "description"
* parameter[2].part[4].valueString = "Tige humérale Blueprint taille 4"

* parameter[2].part[5].name = "implantType"
* parameter[2].part[5].valueCodeableConcept.coding.system = Canonical(ImplantTypeCS)
* parameter[2].part[5].valueCodeableConcept.coding.code = #PE_TIGE_HUMERALE
* parameter[2].part[5].valueCodeableConcept.coding.display = "Tige humérale"

// Deuxième implant - Tête humérale
* parameter[3].name = "implants"
* parameter[3].part[0].name = "UDI"
* parameter[3].part[0].valueIdentifier.system = "https://ec.europa.eu/tools/eudamed"
* parameter[3].part[0].valueIdentifier.value = "(01)00844588003402(17)250325(10)A213D457"

* parameter[3].part[1].name = "fournisseur"
* parameter[3].part[1].valueString = "Wright Medical"

* parameter[3].part[2].name = "reference"
* parameter[3].part[2].valueString = "BLUEPRINT-HEAD-44"

* parameter[3].part[3].name = "lot"
* parameter[3].part[3].valueString = "A213D457"

* parameter[3].part[4].name = "description"
* parameter[3].part[4].valueString = "Tête humérale Blueprint 44mm"

* parameter[3].part[5].name = "implantType"
* parameter[3].part[5].valueCodeableConcept.coding.system = Canonical(ImplantTypeCS)
* parameter[3].part[5].valueCodeableConcept.coding.code = #PE_TETE_HUMERALE
* parameter[3].part[5].valueCodeableConcept.coding.display = "Tête humérale"

// Troisième implant - Composant glénoïdien
* parameter[4].name = "implants"
* parameter[4].part[0].name = "UDI"
* parameter[4].part[0].valueIdentifier.system = "https://ec.europa.eu/tools/eudamed"
* parameter[4].part[0].valueIdentifier.value = "(01)00844588003403(17)250325(10)A213D458"

* parameter[4].part[1].name = "fournisseur"
* parameter[4].part[1].valueString = "Wright Medical"

* parameter[4].part[2].name = "reference"
* parameter[4].part[2].valueString = "BLUEPRINT-GLEN-3"

* parameter[4].part[3].name = "lot"
* parameter[4].part[3].valueString = "A213D458"

* parameter[4].part[4].name = "description"
* parameter[4].part[4].valueString = "Composant glénoïdien Blueprint taille 3"

* parameter[4].part[5].name = "implantType"
* parameter[4].part[5].valueCodeableConcept.coding.system = Canonical(ImplantTypeCS)
* parameter[4].part[5].valueCodeableConcept.coding.code = #PE_GLENOIDE
* parameter[4].part[5].valueCodeableConcept.coding.display = "Composant glénoïdien"