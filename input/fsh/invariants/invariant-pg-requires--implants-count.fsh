Invariant: pg-requires-implants-count
Description: "Une prothèse de genou doit avoir entre 3 et 5 implants"
Severity: #error
Expression: "parameter.where(name = 'typeProcedure').value.coding.where(system = 'http://snomed.info/sct' and code = '19063003').exists() implies (parameter.where(name = 'implants').count() >= 3 and parameter.where(name = 'implants').count() <= 5)"
