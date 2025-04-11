// CodeSystem pour les types d'implants (local)
CodeSystem: ImplantTypeCS
Id: implant-types
Title: "CodeSystem - Types d'Implants"
Description: "Système de codes locaux définissant les types de dispositifs médicaux implantables."
* ^caseSensitive = true
* ^content = #complete

// ============================================================================
// IMPLANTS COMMUNS
// ============================================================================
* #FIXATION "Vis et autres éléments de fixation (ciments)"


// ============================================================================
// IMPLANTS PROTHÈSE DE GENOU (PG)
// ============================================================================
* #PG_FEMORAL "Composant fémoral" "Prothèse de Genou - Composant fémoral"

// PG - Composant tibial
* #PG_BASETIBIALE "Base tibiale" "Prothèse de Genou - Base tibiale"
* #PG_PLATEAUTIBIAL "Plateau tibial" "Prothèse de Genou - Plateau tibial"

// PG - Autres composants
* #PG_PATELLAIRE "Composant patellaire" "Prothèse de Genou - Composant patellaire"


// ============================================================================
// IMPLANTS PROTHÈSE DE HANCHE (PH)
// ============================================================================
// PH - Acétabulum (partie cotyloïde)
* #PH_CUPULE "Cupule" "Prothèse de Hanche - Cupule"
* #PH_INSERT "Inserts" "Prothèse de Hanche - Inserts"
* #PH_ANNEAU "Anneau de soutien" "Prothèse de Hanche - Anneau de soutien"

// PH - Fémur (partie fémorale)
* #PH_TIGE "Tige fémorale" "Prothèse de Hanche - Tige fémorale"
* #PH_COL "Col fémoral" "Prothèse de Hanche - Col fémoral"
* #PH_TETE "Tête fémorale" "Prothèse de Hanche - Tête fémorale"


// ============================================================================
// IMPLANTS PROTHÈSE D'ÉPAULE (PE)
// ============================================================================
// PE - Composant huméral
* #PE_TIGE_HUMERALE "Tige humérale" "Prothèse d'Épaule - Tige humérale"
* #PE_TETE_HUMERALE "Tête humérale" "Prothèse d'Épaule - Tête humérale"

// PE - Composant glénoïdien
* #PE_GLENOIDE "Composant glénoïdien" "Prothèse d'Épaule - Composant glénoïdien"
* #PE_INSERT_GLENOIDIEN "Insert glénoïdien" "Prothèse d'Épaule - Insert glénoïdien"