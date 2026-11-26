# Accueil - Volet de Synthèse Médicale (International Patient Summary - CDA) v0.1.0

## Accueil

 
There is no translation page available for the current page, so it has been rendered in the default language 

 **Guide de mise en œuvre de la Synthèse Médicale (International Patient Summary) en France dans les domaines sanitaire et médico-social.**
 Implementation guide for the Medical Summary (International Patient Summary) in France for health and medico-social sectors. 

>  **Attention !** Cet Implementation Guide n'est pas en version courante. La version courante sera accessible via l'URL canonique suite à la première release : https://interop.esante.gouv.fr/ig/cda/fr-patient-summary 

### Introduction

**Le partage** dans Mon espace santé et **l'échange** par messagerie sécurisée de santé **des documents médicaux et médico-sociaux permet d'améliorer la continuité et la coordination des soins**.

Le Cadre d'interopérabilité des Systèmes d'Information de Santé (CI-SIS) fixe les règles syntaxiques et sémantiques spécifiques à la France et permettant de produire ces documents afin qu'ils soient :

* compréhensibles par les professionnels des secteurs sanitaire et médico-social et les patients/usagers,
* exploitables par les SI pour permettre la mise en œuvre de services à valeurs ajoutées à partir des données structurées contenues dans ces documents.

**Ce guide** (FR Patient Summary CDA) **spécifie l'implémentation en CDA de la synthèse médicale**. Il est complété par le modèle logique métier de la synthèse médicale et par le mapping entre ce modèle logique, CDA et FHIR, tous deux publiés dans le guide FHIR de la Synthèse Médicale.

#### Implémentation CDA

Ce guide spécifie le modèle de la Synthèse médicale dans le format CDA R2 niveau 3, conforme à l'International Patient Summary. L'implémentation CDA transmet les données modélisées avec une sérialisation XML normalisée, compatible avec les systèmes d'information existants.

Les profils CDA et les exemples sont présentés dans la page [Implémentation CDA](cda.md).

#### Modèle logique métier

Le modèle logique métier de la synthèse médicale n'est pas publié dans ce guide : il est publié dans le guide FHIR de la Synthèse Médicale, en complément de l'implémentation FHIR : [Modèle logique - Document Patient Summary](https://interop.esante.gouv.fr/ig/fhir/fr-patient-summary/StructureDefinition-fr-lm-patient-summary-document.html). Il formalise l'ensemble des données cliniques et administratives que doit contenir une synthèse médicale.

Il est aligné avec les modèles métier européens (EHDS) et élaboré à partir de :

* La norme NF EN ISO 27269:2022 de l'International Patient Summary (IPS)
* Les eHN Guidelines V3.3 de juin 2023 : Spécifications fonctionnelles européennes du Patient Summary
* Le document de la HAS 2024 "Harmonisation de synthèses médicales en vue de leur numérisation" de mars 2024
* Les spécifications de la Délégation au numérique en santé (DNS) du Ministère de la Santé

#### Mapping modèle logique et CDA/FHIR

Un mapping détaillé, publié dans le guide FHIR de la Synthèse Médicale, établit la correspondance entre les éléments du modèle logique métier, les éléments du CDA et leur représentation en FHIR, assurant la cohérence sémantique de l'implémentation. Voir la page [Mapping ML/CDA/FHIR](https://interop.esante.gouv.fr/ig/fhir/fr-patient-summary/mapping.html).

L'implémentation FHIR de la Synthèse médicale ne fait pas partie de ce guide : elle fait l'objet d'un guide d'implémentation distinct (interop-ig-fhir-document-patient-summary), qui s'appuie sur le même modèle logique métier et sur ce mapping.

### Gouvernance

Ce guide d’implémentation FR Patient Summary (CDA) est géré par l'Agence du Numérique en Santé (ANS).

### Droits de propriété intellectuelle

**Pour les ressources syntaxiques :**

Certaines ressources syntaxiques de ce guide sont protégées par des droits de propriété intellectuelle. L'utilisation de ces ressources est soumise à l'acceptation et au respect des conditions précisées dans la licence d'utilisation de chacune d'entre elle.

Les principales ressources syntaxiques utilisées dans le CI-SIS sont :

* HL7® CDA® standard: CDA is copyright© Health Level Seven International (HL7®). Pour plus d'information, voir : [https://www.hl7.org/legal/ippolicy.cfm.](https://www.hl7.org/legal/ippolicy.cfm.)
* HL7® FHIR® standard: FHIR is copyright© Health Level Seven International (HL7®). Pour plus d'information, voir : [https://hl7.org/fhir/license.html.](https://hl7.org/fhir/license.html.)
* IHE Integration Profile Specification: IHE is copyright© 2025 IHE International. Pour plus d'information, voir : [https://www.ihe.net/about_ihe/governance/#Intellectual_Property](https://www.ihe.net/about_ihe/governance/#Intellectual_Property)
* DICOM® standards: DICOM is copyright© National Electrical Manufacturers Association (NEMA®). Pour plus d'information, voir : [https://www.dicomstandard.org/about-home/trademark](https://www.dicomstandard.org/about-home/trademark)

**Pour les ressources sémantiques :**

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* ISO Maintains the copyright on the country codes, and controls it's use carefully. For futher details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/5.2.0/CodeSystem-ISO3166Part1.html): [CDAFRPatientSummary](index.md) and [FRCDAClinicalDocumentIPS](StructureDefinition-fr-cda-clinical-document-ips.md)


Les terminologies publiées sur le [Serveur Multi-terminologies (SMT)](https://smt.esante.gouv.fr/) de l'ANS précisent la licence d'utilisation associée.

Pour les terminologies qui ne sont pas publiées dans le SMT, se renseigner auprès de l'unité de production.

### Dépendances








