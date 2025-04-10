Invariant: pe-requires-4-to-5-implants
Description: "Une prothèse d'épaule doit avoir entre 4 et 5 implants"
Severity: #error
Expression: "parameter.where(name = 'implants').count() >= 4 and parameter.where(name = 'implants').count() <= 5"