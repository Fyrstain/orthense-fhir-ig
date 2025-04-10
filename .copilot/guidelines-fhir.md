# Meilleures Pratiques pour la Création d'un Guide d'Implémentation FHIR

## Aperçu
Ce document fournit des lignes directrices pour la création et la gestion d'un Guide d'Implémentation FHIR. Il décrit les étapes, les bonnes pratiques et les ressources nécessaires pour une implémentation FHIR efficace.

## Table des Matières
1. [Aperçu de FHIR](#aperçu-de-fhir)
2. [Structure du Guide d'Implémentation](#structure-du-guide-dimplémentation)
3. [Meilleures Pratiques](#meilleures-pratiques)
4. [Ressources et Profils FHIR](#ressources-et-profils-fhir)
5. [Validation et Tests](#validation-et-tests)
6. [Gestion des Versions et des Changements](#gestion-des-versions-et-des-changements)

## Aperçu de FHIR
FHIR (Fast Healthcare Interoperability Resources) est une norme pour l'échange d'informations de santé de manière électronique. Elle est conçue pour être flexible, extensible et moderne, et prend en charge un large éventail de flux de travail dans le domaine de la santé.

- **Ressources** : FHIR définit un ensemble de ressources de base qui peuvent être combinées et étendues pour répondre à des besoins spécifiques.
- **Profils** : Personnalisation des ressources FHIR pour répondre à des exigences ou des besoins métier spécifiques.
- **Guides d'Implémentation (IG)** : Ce sont des documents qui fournissent des détails sur l'implémentation, y compris les profils, les extensions, les ensembles de valeurs et des exemples.

## Structure du Guide d'Implémentation

### 1. Introduction
L'introduction doit décrire l'objectif du Guide d'Implémentation et son public cible (par exemple, les implémenteurs, les développeurs, les prestataires de soins de santé).

### 2. Profils et Extensions
Définissez et documentez les profils et extensions FHIR personnalisés que vous utilisez :
- **Profils** : Documentez tous les profils personnalisés pour les ressources FHIR.
- **Extensions** : Décrivez toutes les extensions ajoutées aux ressources FHIR standard.

### 3. Ensembles de Valeurs et Systèmes de Codes
Définissez les ensembles de valeurs et systèmes de codes utilisés dans votre implémentation :
- Utilisez les ensembles de valeurs FHIR standards lorsque cela est possible.
- Si des ensembles de valeurs personnalisés sont nécessaires, documentez clairement leur structure et leur utilisation.

### 4. Notes d'Implémentation
Fournissez des détails sur l'implémentation tels que :
- Types de données
- Formats d'échange de données (par exemple, JSON, XML)
- Modèles d'interaction (par exemple, REST, messagerie)

### 5. Exemples
Incluez des exemples de ressources, profils ou messages qui illustrent l'utilisation de votre guide d'implémentation.

## Meilleures Pratiques

### 1. Garder une Structure Modulaire
- Divisez les grands guides en sections plus petites et gérables.
- Utilisez des profils et ressources modulaires lorsque cela est possible.

### 2. Respecter les Normes
- Respectez les normes FHIR autant que possible pour garantir l'interopérabilité.
- Documentez clairement les déviations de la norme si des personnalisations sont nécessaires.

### 3. Collaboration et Feedback
- Impliquez les parties prenantes pertinentes (par exemple, les professionnels de santé, autres implémenteurs) dès le début du processus.
- Demandez des retours et itérez sur le guide.

### 4. Documentation et Commentaires
- Fournissez une documentation claire et concise pour chaque profil, extension et ensemble de valeurs.
- Incluez des commentaires dans les exemples de code pour clarifier leur objectif.

### 5. Gestion des Versions
- Utilisez un système de versioning pour votre Guide d'Implémentation afin de suivre les changements et mises à jour au fil du temps.

## Ressources et Profils FHIR
- Référez-vous à la [spécification FHIR](https://www.hl7.org/fhir/) pour les ressources et profils de base.
- Identifiez les profils personnalisés nécessaires pour votre cas d'utilisation.

## Validation et Tests

### 1. Utiliser Sushi pour la Création des FSH
- **Sushi** est un outil permettant de créer des Guides d'Implémentation FHIR à partir de FSH (FHIR Shorthand).
- Assurez-vous que vos fichiers FSH sont correctement validés avant de générer votre guide.

### 2. Tester les Profils et Extensions
- Utilisez les [outils de validation FHIR](https://www.hl7.org/fhir/validation.html) pour tester les profils et extensions contre la spécification FHIR.
- Validez les profils personnalisés par rapport aux ressources FHIR de base pour garantir qu'ils respectent les contraintes requises.

## Gestion des Versions et des Changements
- Utilisez la version sémantique pour votre Guide d'Implémentation afin d'indiquer les changements majeurs, les ajouts de fonctionnalités ou les corrections.
- Documentez clairement les changements entre les versions et leur impact.

## Conclusion
En suivant ces lignes directrices et bonnes pratiques, vous pouvez garantir que votre Guide d'Implémentation FHIR soit cohérent, maintenable et interopérable avec d'autres systèmes basés sur FHIR.

## Références
- [Spécification FHIR](https://www.hl7.org/fhir/)
- [Documentation FHIR Shorthand (FSH)](https://github.com/FirelyTeam/fhir-shorthand)
- [Outil Sushi](https://github.com/FirelyTeam/sushi)
