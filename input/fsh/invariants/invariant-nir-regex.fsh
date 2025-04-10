Invariant: nir-regex
Description: "NIR doit correspondre au format NIR Français"
Severity: #error
Expression: "$this.matches('^[12][0-9]{2}(0[1-9]|1[0-2])(2[AB]|[0-9]{2})[0-9]{3}[0-9]{3}[0-9]{2}$')"