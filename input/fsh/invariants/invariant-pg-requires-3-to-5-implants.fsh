Invariant: pg-requires-3-to-5-implants
Description: "Une prothèse de genou doit avoir entre 3 et 5 implants"
Severity: #error
Expression: "parameter.where(name = 'implants').count() >= 3 and parameter.where(name = 'implants').count() <= 5"
