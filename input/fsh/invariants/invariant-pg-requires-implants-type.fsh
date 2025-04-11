Invariant: pg-requires-implants-type
Description: "Les implants pour une prothèse de genou doivent être de type PG_FEMORAL, PG_BASETIBIALE, PG_PLATEAUTIBIAL, PG_PATELLAIRE ou FIXATION"
Severity: #error
Expression: "parameter.where(name = 'typeProcedure').value.coding.where(system = 'http://snomed.info/sct' and code = '609588000').exists() implies parameter.where(name = 'implants').part.where(name = 'type').value as CodeableConcept exists(c | c.code in {'PG_FEMORAL', 'PG_BASETIBIALE', 'PG_PLATEAUTIBIAL', 'PG_PATELLAIRE', 'FIXATION'})"