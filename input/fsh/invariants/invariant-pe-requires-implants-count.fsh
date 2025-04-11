Invariant: pe-requires-implants-count
Description: "Une prothèse d'épaule doit avoir entre 4 et 5 implants"
Severity: #error
Expression: "parameter.where(name = 'implants').count() >= 4 and parameter.where(name = 'implants').count() <= 5"