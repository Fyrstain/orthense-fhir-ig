Invariant: rpps-regex
Description: "RPPS doit correspondre au format RPPS Français"
Severity: #error
Expression: "$this.matches('^[0-9]{11}$')"