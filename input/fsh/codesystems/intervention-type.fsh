// CodeSystem pour les types de procédure (local, car pas de SNOMED)
CodeSystem: RegistreCS
Id: intervention-type
Title: "CodeSystem - Types d'intervention"
Description: "Système de codes locaux définissant les types de procédures chirurgicales associées au registre Renacot."
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* ^url = "http://fhir.orthense.fr/CodeSystem/RegistreCS"

* #PG "Prothèse de Genou"
* #PH "Prothèse de Hanche"
* #PE "Prothèse d'Epaule"
