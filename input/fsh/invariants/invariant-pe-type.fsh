Invariant: pe-requires-type
Description: "Une prothèse d'épaule doit pouvoir avoir un type de prothèse PE"
Severity: #error
Expression: "(parameter.where(name = 'peType').exists() and parameter.where(name = 'peType').count()<=1) implies parameter.where(name = 'typeProcedure').value.coding.where(system = 'http://snomed.info/sct' and code = '239468007').exists()"