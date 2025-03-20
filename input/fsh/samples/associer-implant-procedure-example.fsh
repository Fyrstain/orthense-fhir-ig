Instance: SurgicalProcedureExample
InstanceOf: Parameters
Usage: #example
Title: "Exemple de déclaration d'intervention chirurgicale"
Description: "Exemple d'utilisation de l'opération SurgicalProcedureOperation pour déclarer une arthroplastie totale de genou droit"

* language = #fr-FR

* parameter[0].name = "identifiantsPartiesPrenantes"
* parameter[0].part[0].name = "nir"
* parameter[0].part[0].valueIdentifier.system = "http://france.fr/nir"
* parameter[0].part[0].valueIdentifier.value = "1234567890123"

* parameter[0].part[1].name = "rpps"
* parameter[0].part[1].valueIdentifier.system = "https://annuaire.sante.fr/rpps" 
* parameter[0].part[1].valueIdentifier.value = "10012345678"

* parameter[0].part[2].name = "finessGeo"
* parameter[0].part[2].valueIdentifier.system = "https://finess.sante.gouv.fr"
* parameter[0].part[2].valueIdentifier.value = "310780259"

* parameter[1].name = "procedureInfo"
* parameter[1].part[0].name = "dateIntervention"
* parameter[1].part[0].valueDateTime = "2025-03-15"

* parameter[1].part[1].name = "procedureType"
* parameter[1].part[1].valueCodeableConcept = $sct#398010007 "Prosthetic arthroplasty of hip"


// Premier implant - Composant fémoral
* parameter[2].name = "implants"
* parameter[2].part[0].name = "UDI"
* parameter[2].part[0].valueIdentifier.system = "http://hl7.org/fhir/NamingSystem/udi"
* parameter[2].part[0].valueIdentifier.value = "(01)00844588003288(17)250315(10)A213B456"

* parameter[2].part[1].name = "fournisseur"
* parameter[2].part[1].valueString = "Stryker Orthopaedics"

* parameter[2].part[2].name = "reference" 
* parameter[2].part[2].valueString = "TRIATHLON-TS-F4"

* parameter[2].part[3].name = "lot"
* parameter[2].part[3].valueString = "A213B456"

* parameter[2].part[4].name = "description"
* parameter[2].part[4].valueString = "Composant fémoral Triathlon taille 4"

* parameter[2].part[5].name = "implantType"
* parameter[2].part[5].valueCodeableConcept.coding.system = "https://fhir.orthense.com/CodeSystem/ImplantComponentTypes"
* parameter[2].part[5].valueCodeableConcept.coding.code = #femoral-component
* parameter[2].part[5].valueCodeableConcept.coding.display = "Composant fémoral"

// Deuxième implant - Plateau tibial
* parameter[3].name = "implants"
* parameter[3].part[0].name = "UDI"
* parameter[3].part[0].valueIdentifier.system = "http://hl7.org/fhir/NamingSystem/udi"
* parameter[3].part[0].valueIdentifier.value = "(01)00844588003295(17)250315(10)A213B457"

* parameter[3].part[1].name = "fournisseur"
* parameter[3].part[1].valueString = "Stryker Orthopaedics"

* parameter[3].part[2].name = "reference"
* parameter[3].part[2].valueString = "TRIATHLON-TS-T3"

* parameter[3].part[3].name = "lot"
* parameter[3].part[3].valueString = "A213B457"

* parameter[3].part[4].name = "description"
* parameter[3].part[4].valueString = "Plateau tibial Triathlon taille 3"

* parameter[3].part[5].name = "implantType"
* parameter[3].part[5].valueCodeableConcept.coding.system = "https://fhir.orthense.com/CodeSystem/ImplantComponentTypes"
* parameter[3].part[5].valueCodeableConcept.coding.code = #tibial-base
* parameter[3].part[5].valueCodeableConcept.coding.display = "Plateau tibial"

// Troisième implant - Insert en polyéthylène
* parameter[4].name = "implants"
* parameter[4].part[0].name = "fournisseur"
* parameter[4].part[0].valueString = "Stryker Orthopaedics"

* parameter[4].part[1].name = "reference"
* parameter[4].part[1].valueString = "TRIATHLON-PE-10MM"

* parameter[4].part[2].name = "lot"
* parameter[4].part[2].valueString = "A213B458"

* parameter[4].part[3].name = "description"
* parameter[4].part[3].valueString = "Insert en polyéthylène Triathlon 10mm"

* parameter[4].part[4].name = "implantType"
* parameter[4].part[4].valueCodeableConcept.coding.system = "https://fhir.orthense.com/CodeSystem/ImplantComponentTypes"
* parameter[4].part[4].valueCodeableConcept.coding.code = #polyethylene-insert
* parameter[4].part[4].valueCodeableConcept.coding.display = "Insert en polyéthylène"


// Sample response (in a separate instance)
Instance: SurgicalProcedureExampleResponse
InstanceOf: Parameters
Usage: #example
Title: "Exemple de réponse à une déclaration d'intervention chirurgicale"
Description: "Exemple de réponse générée par l'opération SurgicalProcedureOperation"

* parameter[0].name = "operationOutcome"
* parameter[0].resource.resourceType = "OperationOutcome"
* parameter[0].resource.issue.severity = #information
* parameter[0].resource.issue.code = #informational
* parameter[0].resource.issue.diagnostics = "Les implants ont été associés avec succès"
* parameter[0].resource.issue.details.coding.system = "https://fhir.orthense.com/CodeSystem/operation-outcomes"
* parameter[0].resource.issue.details.coding.code = #procedure-updated
* parameter[0].resource.issue.details.coding.display = "Procédure mise à jour avec succès"

* parameter[1].name = "procedureReference"
* parameter[1].valueReference.reference = "Procedure/874586798456"
* parameter[1].valueReference.type = "Procedure"

// Define aliases to external code systems at the top of the file
Alias: $sct = http://snomed.info/sct