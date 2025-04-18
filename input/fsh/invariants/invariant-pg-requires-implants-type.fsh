// Invariant: pg-requires-implants-type
// Description: "Les implants pour une prothèse de genou doivent être de type PG_FEMORAL, PG_BASETIBIALE, PG_PLATEAUTIBIAL, PG_PATELLAIRE ou FIXATION"
// Severity: #error
// Expression: "parameter.where(name = 'typeProcedure').value.coding.where(system = 'http://snomed.info/sct' and code = '609588000').exists() implies parameter.where(name = 'implants').part.where(name = 'type').value.coding.code.all(c | code = 'PG_FEMORAL' or code = 'PG_BASETIBIALE' or code = 'PG_PLATEAUTIBIAL' or code = 'PG_PATELLAIRE' or code = 'FIXATION')"
// // XPath: "parameter[@name='typeProcedure']/value/@coding[@system='http://snomed.info/sct' and @code='609588000'] and parameter[@name='implants']/part[@name='type']/value/@coding[@code='PG_FEMORAL' or @code='PG_BASETIBIALE' or @code='PG_PLATEAUTIBIAL' or @code='PG_PATELLAIRE' or @code='FIXATION']" 
Invariant: pg-requires-implants-type
Description: "Les implants pour une prothèse de genou doivent être de type PG_FEMORAL, PG_BASETIBIALE, PG_PLATEAUTIBIAL, PG_PATELLAIRE ou FIXATION"
Severity: #error
Expression: "parameter.where(name = 'typeProcedure').value.coding.where(system = 'http://snomed.info/sct' and code = '609588000').exists() implies parameter.where(name = 'implants').part.where(name = 'type').value.coding.all(code = 'PG_FEMORAL' or code = 'PG_BASETIBIALE' or code = 'PG_PLATEAUTIBIAL' or code = 'PG_PATELLAIRE' or code = 'FIXATION' )"
