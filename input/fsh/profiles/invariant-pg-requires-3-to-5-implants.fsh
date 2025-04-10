Invariant: pg-requires-3-to-5-implants
Description: "Si typeProcedure = PG, alors implants doit comporter entre 3 et 5 éléments"
Severity: #error
Expression: "parameter.where(name = 'typeProcedure').value.coding.where(system = 'http://orthense.fr/fhir/CodeSystem/RegistreCS' and code = 'PG').exists() implies parameter.where(name = 'implants').count() >= 3 and parameter.where(name = 'implants').count() <= 5"
