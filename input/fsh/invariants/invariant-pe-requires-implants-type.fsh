Invariant: pe-requires-implants-type
Description: "Les implants pour une prothèse d'épaule doivent être de type PE_TIGE_HUMERALE, PE_TETE_HUMERALE, PE_GLENOIDE, PE_INSERT_GLENOIDIEN ou FIXATION"
Severity: #error
Expression: "parameter.where(name = 'typeProcedure').value.coding.where(system = 'http://snomed.info/sct' and code = '397956004').exists() implies parameter.where(name = 'implants').part.where(name = 'type').value.coding.all(code = 'PE_TIGE_HUMERALE' or code = 'PE_TETE_HUMERALE' or code = 'PE_INSERT_GLENOIDIEN' or code = 'FIXATION')"
