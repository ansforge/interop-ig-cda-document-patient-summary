# Téléchargements et usages - Volet de Synthèse Médicale (International Patient Summary - CDA) v0.1.0

## Téléchargements et usages

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Téléchargement

L'implementation guide contient un package [téléchargeable ici](../package.tgz) permettant de valider les instances par rapport aux profils qu'il contient.

Pour cela, il suffit de télécharger le [package.tgz](../package.tgz) et l'importer dans un serveur, par exemple sur hapi en suivant ce [script python](https://github.com/nmdp-bioinformatics/igloader) open source.

Ensemble des ressources téléchargeables :

* [L'ensemble de la specification (zip)](../full-ig.zip)
* [Package (tgz)](../package.tgz)

#### Exemples

* [Exemple IPS-FR 2024.01 (XML CDA)](Binary-patient-summary.md)

### Usage

Ce guide d'implémentation contient les modèles CDA (templateId, sections, entrées) qui définissent la structure des documents CDA attendus.

Les systèmes qui produisent ou consomment des documents CDA IPS-FR devront s'assurer de la conformité de ces documents par rapport aux templates indiqués dans ce guide ainsi qu'à la norme HL7 CDA R2 de base.

Pour plus d'information sur la validation de documents CDA, consulter la [documentation de l'ANS](https://interop.esante.gouv.fr/ig/documentation/valider_res.html).

