Invariant: ph-requires-2-to-6-implants
Description: "Une prothèse de hanche doit avoir entre 2 et 6 implants"
Severity: #error
Expression: "parameter.where(name = 'implants').count() >= 2 and parameter.where(name = 'implants').count() <= 6"