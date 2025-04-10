Invariant: pg-requires-implants-type
Description: "Si typeProcedure = PG, alors implants.part[type] doit être FEMORAL, TIBIAL ou INSERT"
Severity: #error
Expression: "parameter.where(name = 'typeProcedure').value.coding.where(system = 'http://orthense.fr/fhir/CodeSystem/RegistreCS' and code = 'PG').exists() implies parameter.where(name = 'implants').part.where(name = 'type').value as CodeableConcept exists(c | c.code in {'FEMORAL', 'TIBIAL', 'INSERT'})"
