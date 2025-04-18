// Exemple de réponse en cas d'erreur interne (HTTP 500)
Instance: AssocierImplantsRegistreResponse500Example
InstanceOf: Parameters
Usage: #example
Title: "Exemple de réponse - Erreur interne serveur"
Description: "Exemple de réponse en cas d'erreur interne du serveur (HTTP 500)"

* parameter[0].name = "result"
* parameter[0].resource.resourceType = "OperationOutcome"
* parameter[0].resource.issue[0].severity = #error
* parameter[0].resource.issue[0].code = #exception
* parameter[0].resource.issue[0].diagnostics = "Une erreur interne s'est produite lors du traitement de la requête. Veuillez réessayer ultérieurement."

// Exemple de réponse en cas de limitation de débit (HTTP 429)
Instance: AssocierImplantsRegistreResponse429Example
InstanceOf: Parameters
Usage: #example
Title: "Exemple de réponse - Limitation de débit"
Description: "Exemple de réponse en cas de dépassement du nombre d'appels autorisés (HTTP 429)"

* parameter[0].name = "result"
* parameter[0].resource.resourceType = "OperationOutcome"
* parameter[0].resource.issue[0].severity = #error
* parameter[0].resource.issue[0].code = #throttled
* parameter[0].resource.issue[0].diagnostics = "Le nombre maximum d'appels autorisés (5 par seconde) a été dépassé. Veuillez réduire la fréquence de vos appels."

// Exemple de réponse en cas de données manquantes (HTTP 400)
Instance: AssocierImplantsRegistreResponse400Example
InstanceOf: Parameters
Usage: #example
Title: "Exemple de réponse - Données manquantes"
Description: "Exemple de réponse en cas de données manquantes ou incorrectes (HTTP 400)"

* parameter[0].name = "result"
* parameter[0].resource.resourceType = "OperationOutcome"
* parameter[0].resource.issue[0].severity = #error
* parameter[0].resource.issue[0].code = #required
* parameter[0].resource.issue[0].diagnostics = "Le patient avec le NIR spécifié n'existe pas dans le registre."
* parameter[0].resource.issue[1].severity = #error
* parameter[0].resource.issue[1].code = #required
* parameter[0].resource.issue[1].diagnostics = "Le chirurgien avec le NIR spécifié n'existe pas dans le registre."
* parameter[0].resource.issue[2].severity = #error
* parameter[0].resource.issue[2].code = #required
* parameter[0].resource.issue[2].diagnostics = "L'établissement avec le FINESSGEO spécifié n'existe pas dans le registre."
* parameter[0].resource.issue[3].severity = #error
* parameter[0].resource.issue[3].code = #required
* parameter[0].resource.issue[3].diagnostics = "Le type procédure spécifié n'existe pas dans le registre."

// Exemple de réponse en cas d'appairage impossible (HTTP 422)
Instance: AssocierImplantsRegistreResponse422Example
InstanceOf: Parameters
Usage: #example
Title: "Exemple de réponse - Appairage impossible"
Description: "Exemple de réponse en cas d'impossibilité d'apparier la procédure (HTTP 422)"

* parameter[0].name = "result"
* parameter[0].resource.resourceType = "OperationOutcome"
* parameter[0].resource.issue[0].severity = #error
* parameter[0].resource.issue[0].code = #processing
* parameter[0].resource.issue[0].diagnostics = "Impossible de trouver une procédure correspondante dans le registre pour le patient, le chirurgien, l'établissement, la date et le type d'intervention spécifiés."

// Exemple de réponse en cas de succès (HTTP 200)
Instance: AssocierImplantsRegistreResponse200Example
InstanceOf: Parameters
Usage: #example
Title: "Exemple de réponse - Succès"
Description: "Exemple de réponse en cas de succès de l'appairage (HTTP 200)"

* parameter[0].name = "result"
* parameter[0].resource.resourceType = "OperationOutcome"
* parameter[0].resource.issue[0].severity = #information
* parameter[0].resource.issue[0].code = #informational
* parameter[0].resource.issue[0].diagnostics = "Les implants ont été associés avec succès à la procédure dans le registre."

* parameter[1].name = "idRegistre"
* parameter[1].valueIdentifier.system = "https://registres.renacot.org/procedure"
* parameter[1].valueIdentifier.value = "RENACOT-2025-12345"