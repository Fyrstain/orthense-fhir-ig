// CodeSystem pour les types d'implants (local)
CodeSystem: ImplantTypeCS
Id: implant-types
Title: "CodeSystem - Types d'Implants"
Description: "Système de codes locaux définissant les types de dispositifs médicaux implantables."
* ^caseSensitive = true
* ^content = #complete

// COMMUN
* #FIXATION "Vis d'ancrage et éléments de fixation"


// ** PG **
* #PG_FEMORAL "Composant fémoral"
// PG - Composant tibial
* #PG_BASETIBIALE "Base tibiale"
* #PG_PLATEAUTIBIAL "Plateau tibial"

* #PG_PATELLAIRE "Composant patellaire"

// ** PH **

// PH - Acétabulum (partie cotyloïde) :
* #PH_CUPULE "Cupule"
* #PH_INSERT "Inserts"

// PH - Fémur (partie fémorale) :
* #PH_TIGE "Tige fémorale"
* #PH_COL "Col fémoral"
* #PH_TETE "Tête fémorale"


// ** PE **
// PE - Composant huméral
* #PE_TIGE_HUMERALE "Tige humérale"
* #PE_TETE_HUMERALE "Tête humérale"

// PE - Composant glénoïdien
* #PE_GLENOIDE "Composant glénoïdien"
* #PE_INSERT_GLENOIDIEN "Insert glénoïdien"