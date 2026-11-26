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

**Ce guide** (FR Patient Summary CDA) **spécifie l'implémentation en CDA de la synthèse médicale**.

#### Implémentation CDA

Ce guide spécifie le modèle de la Synthèse médicale dans le format CDA R2 niveau 3, conforme à l'International Patient Summary. L'implémentation CDA transmet les données modélisées avec une sérialisation XML normalisée, compatible avec les systèmes d'information existants.

Les profils CDA et les exemples sont présentés dans la page [Implémentation CDA](cda.md).

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

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/5.2.0/CodeSystem-ISO3166Part1.html): [CDAFRPatientSummary](index.md), [FRCDAClinicalDocumentIPS](StructureDefinition-fr-cda-clinical-document-ips.md)... Show 8 more, [FRCDAEvaluationAutresRisquesDLU](StructureDefinition-fr-cda-evaluation-autres-risques-dlu.md), [FRCDAEvaluationDeplacementsDLU](StructureDefinition-fr-cda-evaluation-deplacements-dlu.md), [FRCDAEvaluationEtatPsychiqueDLU](StructureDefinition-fr-cda-evaluation-etat-psychique-dlu.md), [FRCDAGroupeEvaluationAutresRisquesDLU](StructureDefinition-fr-cda-groupe-evaluation-autres-risques-dlu.md), [FRCDAGroupeEvaluationDeplacementsDLU](StructureDefinition-fr-cda-groupe-evaluation-deplacements-dlu.md), [FRCDAGroupeEvaluationEtatPsychiqueDLU](StructureDefinition-fr-cda-groupe-evaluation-etat-psychique-dlu.md), [FRCDAGroupeEvaluationHandicapsDLU](StructureDefinition-fr-cda-groupe-evaluation-handicaps-dlu.md) and [FRCDAGroupeEvaluationScoreDLU](StructureDefinition-fr-cda-groupe-evaluation-score-dlu.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](https://interop.esante.gouv.fr/terminologies/1.15.0/CodeSystem-900000000000207008-20261101.html): [FRCDAEvaluationAutresRisquesDLU](StructureDefinition-fr-cda-evaluation-autres-risques-dlu.md), [FRCDAEvaluationDeplacementsDLU](StructureDefinition-fr-cda-evaluation-deplacements-dlu.md) and [FRCDAEvaluationEtatPsychiqueDLU](StructureDefinition-fr-cda-evaluation-etat-psychique-dlu.md)


Les terminologies publiées sur le [Serveur Multi-terminologies (SMT)](https://smt.esante.gouv.fr/) de l'ANS précisent la licence d'utilisation associée.

Pour les terminologies qui ne sont pas publiées dans le SMT, se renseigner auprès de l'unité de production.

### Dépendances









