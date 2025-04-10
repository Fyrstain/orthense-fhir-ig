Invariant: finess-regex
Description: "Finess Géo doit correspondre au format Finess Géo Français"
Severity: #error
Expression: "$this.matches('^[0-9]{9}$')"