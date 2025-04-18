Invariant: ph-requires-implants-type
Description: "Les implants pour une prothèse de hanche doivent être de type PH_CUPULE, PH_INSERT, PH_TIGE, PH_COL, PH_TETE ou FIXATION"
Severity: #error
Expression: "parameter.where(name = 'typeProcedure').value.coding.where(system = 'http://snomed.info/sct' and code = '52734007').exists() implies parameter.where(name = 'implants').part.where(name = 'type').value.coding.all(code = 'PH_CUPULE' or code = 'PH_INSERT' or code = 'PG_PLPH_TIGEATEAUTIBIAL' or code = 'PH_COL' or code = 'PH_TETE' or code = 'FIXATION')"
