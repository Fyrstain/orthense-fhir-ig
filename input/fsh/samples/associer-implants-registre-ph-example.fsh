Instance: AssocierImplantsProcedurePHExample
InstanceOf: Parameters
Usage: #example
Title: "Exemple de déclaration d'intervention chirurgicale - Prothèse de Hanche"
Description: "Exemple d'utilisation de l'opération SurgicalProcedureOperation pour déclarer une arthroplastie totale de hanche gauche"

* id = "AssocierImplantsProcedurePHExample"

* parameter[0].name = "identifiantsPartiesPrenantes"
* parameter[0].part[0].name = "nir"
* parameter[0].part[0].valueIdentifier.system = "http://france.fr/nir"
* parameter[0].part[0].valueIdentifier.value = "2234567890123"

* parameter[0].part[1].name = "rpps"
* parameter[0].part[1].valueIdentifier.system = "https://annuaire.sante.fr/rpps" 
* parameter[0].part[1].valueIdentifier.value = "10012345679"

* parameter[0].part[2].name = "finessGeo"
* parameter[0].part[2].valueIdentifier.system = "https://finess.sante.gouv.fr"
* parameter[0].part[2].valueIdentifier.value = "310780260"

* parameter[1].name = "procedureInfo"
* parameter[1].part[0].name = "dateIntervention"
* parameter[1].part[0].valueDateTime = "2025-03-20"

* parameter[1].part[1].name = "procedureType"
* parameter[1].part[1].valueCodeableConcept = #PH

* parameter[1].part[2].name = "lateralite"
* parameter[1].part[2].valueCodeableConcept = LateraliteCS#GAUCHE

// Premier implant - Cupule
* parameter[2].name = "implants"
* parameter[2].part[0].name = "UDI"
* parameter[2].part[0].valueIdentifier.system = "https://ec.europa.eu/tools/eudamed"
* parameter[2].part[0].valueIdentifier.value = "(01)00844588003301(17)250320(10)A213C456"

* parameter[2].part[1].name = "fournisseur"
* parameter[2].part[1].valueString = "Zimmer Biomet"

* parameter[2].part[2].name = "reference" 
* parameter[2].part[2].valueString = "G7-CUP-54"

* parameter[2].part[3].name = "lot"
* parameter[2].part[3].valueString = "A213C456"

* parameter[2].part[4].name = "description"
* parameter[2].part[4].valueString = "Cupule G7 taille 54mm"

* parameter[2].part[5].name = "implantType"
* parameter[2].part[5].valueCodeableConcept.coding.system = Canonical(ImplantTypeCS)
* parameter[2].part[5].valueCodeableConcept.coding.code = #PH_CUPULE
* parameter[2].part[5].valueCodeableConcept.coding.display = "Cupule"

// Deuxième implant - Insert
* parameter[3].name = "implants"
* parameter[3].part[0].name = "UDI"
* parameter[3].part[0].valueIdentifier.system = "https://ec.europa.eu/tools/eudamed"
* parameter[3].part[0].valueIdentifier.value = "(01)00844588003302(17)250320(10)A213C457"

* parameter[3].part[1].name = "fournisseur"
* parameter[3].part[1].valueString = "Zimmer Biomet"

* parameter[3].part[2].name = "reference"
* parameter[3].part[2].valueString = "G7-INSERT-54-32"

* parameter[3].part[3].name = "lot"
* parameter[3].part[3].valueString = "A213C457"

* parameter[3].part[4].name = "description"
* parameter[3].part[4].valueString = "Insert G7 taille 54mm diamètre interne 32mm"

* parameter[3].part[5].name = "implantType"
* parameter[3].part[5].valueCodeableConcept.coding.system = Canonical(ImplantTypeCS)
* parameter[3].part[5].valueCodeableConcept.coding.code = #PH_INSERT
* parameter[3].part[5].valueCodeableConcept.coding.display = "Inserts"

// Troisième implant - Tige fémorale
* parameter[4].name = "implants"
* parameter[4].part[0].name = "UDI"
* parameter[4].part[0].valueIdentifier.system = "https://ec.europa.eu/tools/eudamed"
* parameter[4].part[0].valueIdentifier.value = "(01)00844588003303(17)250320(10)A213C458"

* parameter[4].part[1].name = "fournisseur"
* parameter[4].part[1].valueString = "Zimmer Biomet"

* parameter[4].part[2].name = "reference"
* parameter[4].part[2].valueString = "TAPERLOC-STEM-5"

* parameter[4].part[3].name = "lot"
* parameter[4].part[3].valueString = "A213C458"

* parameter[4].part[4].name = "description"
* parameter[4].part[4].valueString = "Tige fémorale Taperloc taille 5"

* parameter[4].part[5].name = "implantType"
* parameter[4].part[5].valueCodeableConcept.coding.system = Canonical(ImplantTypeCS)
* parameter[4].part[5].valueCodeableConcept.coding.code = #PH_TIGE
* parameter[4].part[5].valueCodeableConcept.coding.display = "Tige fémorale"

// Quatrième implant - Tête fémorale
* parameter[5].name = "implants"
* parameter[5].part[0].name = "UDI"
* parameter[5].part[0].valueIdentifier.system = "https://ec.europa.eu/tools/eudamed"
* parameter[5].part[0].valueIdentifier.value = "(01)00844588003304(17)250320(10)A213C459"

* parameter[5].part[1].name = "fournisseur"
* parameter[5].part[1].valueString = "Zimmer Biomet"

* parameter[5].part[2].name = "reference"
* parameter[5].part[2].valueString = "BIOLOX-HEAD-32-M"

* parameter[5].part[3].name = "lot"
* parameter[5].part[3].valueString = "A213C459"

* parameter[5].part[4].name = "description"
* parameter[5].part[4].valueString = "Tête fémorale Biolox 32mm col M"

* parameter[5].part[5].name = "implantType"
* parameter[5].part[5].valueCodeableConcept.coding.system = Canonical(ImplantTypeCS)
* parameter[5].part[5].valueCodeableConcept.coding.code = #PH_TETE
* parameter[5].part[5].valueCodeableConcept.coding.display = "Tête fémorale"