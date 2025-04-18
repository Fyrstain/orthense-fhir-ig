// Sample response (in a separate instance)
Instance: AssocierImplantsProcedureExampleResponse
InstanceOf: Parameters
Usage: #example
Title: "Exemple de réponse à une déclaration d'intervention chirurgicale"
Description: "Exemple de réponse générée par l'opération associer-implants-registre"

* id = "AssocierImplantsProcedureResponseExample"

* parameter[0].name = "result"
* parameter[0].resource.resourceType = "OperationOutcome"
* parameter[0].resource.issue[0].severity = #information
* parameter[0].resource.issue[0].code = #informational
* parameter[0].resource.issue[0].diagnostics = "Les implants ont été associés avec succès"

* parameter[1].name = "idRegistre"
* parameter[1].valueIdentifier.system = "https://registres.renacot.org/procedure"
* parameter[1].valueIdentifier.value = "12345"
