Invariant: pe-requires-implants-type
Description: "Les implants pour une prothèse d'épaule doivent être de type PE_TIGE_HUMERALE, PE_TETE_HUMERALE, PE_GLENOIDE, PE_INSERT_GLENOIDIEN ou FIXATION"
Severity: #error

Expression: "parameter.where(name = 'typeProcedure').value.coding.where(system = 'http://orthense.fr/fhir/CodeSystem/RegistreCS' and code = 'PH').exists() implies parameter.where(name = 'implants').part.where(name = 'type').value as CodeableConcept exists(c | c.code in {'PE_TIGE_HUMERALE', PE_TETE_HUMERALE','PE_GLENOIDE', 'PE_INSERT_GLENOIDIEN', 'FIXATION'})"