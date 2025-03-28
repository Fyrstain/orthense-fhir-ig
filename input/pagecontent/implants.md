
#### Introduction
Le registre national des implants en orthopédie est un outil essentiel pour garantir la traçabilité des dispositifs médicaux et améliorer la sécurité des patients. L'alimentation de ce registre via FHIR (Fast Healthcare Interoperability Resources) permet aux établissements de santé d'automatiser ce processus, réduisant ainsi la charge administrative et libérant du temps pour les soignants.

Cette page détaille le processus d'implémentation FHIR pour l'alimentation de ce registre, en exposant les raisons de cette démarche, les étapes techniques à suivre, les erreurs courantes et les informations de retour obtenues.

#### Pourquoi alimenter le registre ?

##### Sécurité des patients
Le principal objectif de l'alimentation du registre est d'assurer la traçabilité des implants utilisés. Cela permet d'identifier rapidement un implant spécifique en cas de problème, facilitant ainsi la gestion des risques et la prise de décisions cliniques.

##### Conformité réglementaire
L'alimentation automatique du registre via FHIR garantit la conformité aux exigences légales et réglementaires concernant la traçabilité des dispositifs médicaux.

##### Gain de temps pour les soignants
L'automatisation de l'intégration des données dans le registre permet de réduire la saisie manuelle, libérant ainsi du temps pour les soignants. Cela contribue également à réduire les erreurs humaines liées à la transcription des informations.

#### Comment ça marche ?

##### Étape 1 : Collecte des données
Une partie des données essentielles pour le registre orthopédique concerne la description des implants, telles que leur type, numéro de série, fabricant etc... Ces informations sont déjà collectées au sein du SIH des établissements. 

##### Étape 2 : Format FHIR
Ces données collectées sont ensuite converties en un format compatible avec FHIR. Le format FHIR standardise les informations et permet une communication fluide entre les systèmes. Une `OperationDefinition` dédiée [Associer les implants à une procédure chirurgicale orthopédique](associer-implant-procedure-operation)permet de faire remonter au registre une `procédure` chirurgicale éligible au registre Renacot (Prothèse de genou, Prothèse de hanche, Prothèse d'épaule, cf. le `ValueSet` correspondant [RegistresRenacot_ProcedureCodes](RegistresRenacot_ProcedureCodes.html))

##### Étape 3 : Transmission au registre
Une fois les données formatées, elles sont envoyées au registre national via une API FHIR décrite par l'`OperationDefinition` mentionnée ci dessus. Cette API assure la mise à jour en temps réel des informations relatives aux implants.

##### Étape 4 : Authentification OAuth2 - Client Credentials
Avant la transmission des données, une authentification OAuth2 est effectuée via le flux *Client Credentials*. Cela permet de s'assurer que l'application envoyant les données est autorisée à accéder et modifier les informations dans le registre national. Cette étape permet de garantir la sécurité et la conformité du processus.

##### Étape 5 : Confirmation de réception
Le registre renvoie une confirmation de réception des données ainsi que, le cas échéant, un code d'erreur en cas de problème. Ces informations de retour permettent de suivre l'état de l'opération et de corriger rapidement les erreurs éventuelles. En cas de succès une confirmation de type 

#### Cas de succès

En cas de succès, l'API renvoie une ressource `OperationOutcome` contenant un statut de réussite. Ce statut est généralement indiqué par le code 0 (ou un autre code de succès approprié selon le contexte), et un message explicite confirmant que l'opération a été réalisée avec succès.

En complément du message de succès, l'API retourne également un identifiant unique (identifier) lié au registre RENACOT. Cet identifiant permet à l'établissement de lier cette opération à la contribution dans le registre national des implants en orthopédie. Cet identifiant permet d'archiver l'enregistrement des mplants au sein du système de gestion de l'établissement.

L'identifier contient un system pointant vers l'URL de référence du registre RENACOT (qui serait en pratique l'URL officielle du registre), ainsi qu'un value qui représente l'identifiant unique de l'enregistrement. Ce code unique est retourné par l'API du registre et peut être archivé dans le système de gestion de l'établissement pour assurer la traçabilité et le suivi de la contribution au registre.

#### Cas d'erreurs

##### Erreur 1 : Données manquantes ou incorrectes
Si certaines informations essentielles (par exemple, l'intervention chirurgicale n'existe pas dans le regsitre, le patient n'existe pas, le chirurgien non plus etc...) sont manquantes ou incorrectes, l'API renverra un code d'erreur spécifique, accompagné d'un message expliquant l'erreur.

**Solution :** Vérifier les champs de données avant envoi et s'assurer que tous les champs obligatoires sont renseignés correctement.

##### Erreur 2 : Problème de communication
En cas de problème de communication avec l'API du registre, comme une erreur de connexion ou un timeout, l'API renverra un code d'erreur général.

**Solution :** Réessayer l'envoi après avoir vérifié la connectivité réseau et la configuration de l'API.

#### Retours obtenus

##### Confirmation de la réception
Le registre retourne une réponse confirmant que les données ont été correctement reçues. Cette confirmation inclut un identifiant unique pour chaque enregistrement d'implant, permettant de suivre chaque implantation dans le temps.

##### Statut de l'enregistrement
Un retour sur le statut de l'enregistrement est également disponible. En cas de succès, l'état du processus est marqué comme "complet". En cas d'erreur, des messages spécifiques permettent de comprendre les problèmes rencontrés.

---

Prochaine étape : Validation des tests de conformité FHIR et déploiement en production.
