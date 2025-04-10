Invariant: ph-requires-implants-type
Description: "Les implants pour une prothèse de hanche doivent être de type PH_CUPULE, PH_INSERT, PH_TIGE, PH_COL, PH_TETE ou FIXATION"
Severity: #error
Expression: "parameter.where(name = 'typeProcedure').value.coding.where(system = 'http://orthense.fr/fhir/CodeSystem/RegistreCS' and code = 'PH').exists() implies parameter.where(name = 'implants').part.where(name = 'type').value as CodeableConcept exists(c | c.code in {'PH_CUPULE', 'PH_INSERT', 'PH_TIGE', 'PH_COL', 'PH_TETE', 'FIXATION'})"