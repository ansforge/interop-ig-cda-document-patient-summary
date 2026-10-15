![Logo_LEF_CI-SIS](https://user-images.githubusercontent.com/48218773/227532484-eff82649-4e42-49c6-966a-dc3ea78cf59c.png)

[![Workflow Init](https://github.com/ansforge/interop-ig-cda-document-patient-summary/actions/workflows/fhir-workflows.yml/badge.svg?branch=main)](https://github.com/ansforge/interop-ig-cda-document-patient-summary/actions/workflows/fhir-workflows.yml)

Implementation Guide (IG) du **Volet de Synthèse Médicale (International Patient Summary) en CDA**, publié par l'Agence du Numérique en Santé (ANS) dans le cadre du CI-SIS. La démarche d'élaboration d'un IG est expliquée dans le [wiki du repo IG-modele](https://github.com/ansforge/IG-modele/wiki).

# Contexte

## Contexte métier du projet

Le partage dans Mon espace santé et l'échange par messagerie sécurisée de santé des documents médicaux et médico-sociaux améliorent la continuité et la coordination des soins. Le Cadre d'interopérabilité des Systèmes d'Information de Santé (CI-SIS) fixe les règles syntaxiques et sémantiques permettant de produire ces documents, afin qu'ils soient compréhensibles par les professionnels et les patients, et exploitables par les systèmes d'information.

Ce guide spécifie l'implémentation en CDA R2 de la **synthèse médicale**, conforme à l'International Patient Summary (IPS) et utilisable dans les secteurs sanitaire et médico-social. Il est publié sur : <https://interop.esante.gouv.fr/ig/cda/fr-patient-summary>.

## Contexte technique du projet

* Les profils sont des profils CDA (modèles logiques de `hl7.cda.uv.core`) écrits en FSH et compilés avec SUSHI, puis publiés avec l'HL7 IG Publisher.
* Le profil `FRCDAClinicalDocumentIPS` (`input/fsh/cda/profiles/`) spécialise `FRCDAClinicalDocument`, défini dans l'IG `ans.cda.fr.document-core`. Il contraint l'en-tête (templateId, code LOINC 60591-5, participants) et le corps (sections slicées par profil).
* Un exemple de document est fourni : `input/resources/Binary-patient-summary.xml`.
* Dépendances : `hl7.cda.uv.core`, `ans.fr.terminologies`, `ans.cda.fr.document-core`.
* Le modèle logique métier et le mapping ML/CDA/FHIR ne sont pas dans ce repo : ils sont publiés dans l'IG FHIR [interop-ig-fhir-document-patient-summary](https://interop.esante.gouv.fr/ig/fhir/fr-patient-summary).

# CI/CD

Les workflows associés à ce repository (.github/workflows) permettent :

* D'exécuter SUSHI pour vérifier la grammaire et de générer l'IG avec l'IG Publisher
* De publier les pages sur GitHub Pages : <https://ansforge.github.io/interop-ig-cda-document-patient-summary/{nom de la branche}/ig>
* De publier une release vers `ansforge/IG-website-release` (`fhir-release.yml`, déclenchement manuel)

# Contribuer

1. Créer une branche depuis `main`.
2. Modifier les profils dans `input/fsh/` ou les pages dans `input/pagecontent/`.
3. Vérifier : `sushi .` puis `./_genonce.sh` et contrôler `output/qa.html`.
4. Mettre à jour `input/pagecontent/changelog.md`, puis ouvrir une PR vers `main` (le template guide la checklist).

# Notes

Ce repo a été créé à partir du repo [IG-modele](https://github.com/ansforge/IG-modele), lui-même issu de [sample-ig](https://github.com/FHIR/sample-ig) de l'organisation GitHub FHIR.

Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://docs.github.com/fr/issues) pour indiquer vos propositions d'amélioration et de correction.

## Acronymes

* ANS : Agence du Numérique en Santé
* CDA : Clinical Document Architecture
* CI-SIS : Cadre d'Interopérabilité des Systèmes d'Information de Santé
* FHIR : Fast Healthcare Interoperability Resources
* FSH : FHIR Shorthand
* HL7 : Health Level Seven
* IG : Implementation Guide
* IPS : International Patient Summary
