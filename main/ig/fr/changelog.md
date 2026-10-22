# Historique des modifications - Volet de Synthèse Médicale (International Patient Summary - CDA) v0.1.0

## Historique des modifications

Format basé sur [Keep a Changelog](https://keepachangelog.com/fr/1.1.0/). La version de l'IG est dans `sushi-config.yaml`.

### [Non publié]

#### Ajouté

* Page « Historique des modifications » (`changelog.md`), déclarée dans les pages et le menu « Autres ressources » de `sushi-config.yaml`
* Contraintes propres au DLU directement dans le profil IPS (même modèle et mêmes templateId que l'IPS-FR), sans profil de section dédié : invariant `dlu-traitement-type` sur la section Traitements (traitement au long cours ou aigu) ; section Statut fonctionnel avec slices de groupes d'évaluations (état psychique, handicaps / déficits, déplacements / transferts, autres risques, scores ADL et GIR) et invariant `dlu-statut-fonctionnel-evaluations` (les trois groupes LOINC sont obligatoires dès que l'un est fourni) ; profils de groupes et d'évaluations liés aux jeux de valeurs `jdv-etat-psychique-cisis`, `jdv-deplacement-cisis` et `jdv-autre-risque-cisis`
* Exemple CDA `Binary-patient-summary-dlu.xml` (synthèse médicale DLU, issu des exemples de l'outil testContenuCDA de l'ANS), référencé dans `sushi-config.yaml`, la page CDA et la page Téléchargements
* `sushi-config.yaml` : groupe de ressources « Eléments CDA propres à la synthèse médicale du DLU »
* Page CDA : tableau des caractéristiques du document IPS-FR (version 2024.01, templateId, code LOINC `60591-5`, titre), liste des spécifications de référence, lien vers l'exemple XDM IPS-FR_2024.01_DLU, section « Vérification de la conformité » (schématron `CI-SIS_IPS-FR_2024.01.sch` de TestContenuCDA) et section « Référence » (spécification CI-SIS Volet Contenus IPS-FR 2024.01)

#### Modifié

* Page CDA : reformulation de l'introduction, de la vue d'ensemble et des descriptions des exemples CDA et XDM
* Profil IPS : `templateId` « Conformité au CI-SIS » et « Conformité IHE PCC IPS » en cardinalité 1..1 ; libellé du `templateId` IPS-FR aligné sur la version 2024.01.
* Profil IPS : participants (médecin traitant, contact EHPAD, établissements de préférence et de référence, autre professionnel de santé, autre correspondant) avec `functionCode` complété (`codeSystem`, `displayName`, `originalText`) et libellés indiquant les participants propres au DLU.
* Profil IPS : slicing des `participant` par `functionCode.code` et `typeCode` (au lieu de `url`).
* Profil IPS : slicing des sections de `component.structuredBody.component` par `profile` sur `section` (au lieu de `section.templateId/root`).
* `sushi-config.yaml` : le modèle logique de l'exemple `Binary-patient-summary.xml` référence désormais le profil `fr-cda-clinical-document-ips` de cet IG (et non `fr-cda-clinical-document` de document-core).
* Exemple CDA : corrections des références et identifiants de la partie narrative.
* Exemple CDA DLU : références narratives des résultats d'imagerie alignées sur l'exemple IPS (`resultat-imagerie-02`, `resultat-02`), référence `#med-03` corrigée et libellé du code de la section Traitements aligné sur `Traitements`, libellé `Sœur` (relation `SIS`) corrigé, templateId `1.2.250.1.213.1.1.3.42.4` (traitement aigu) retiré de l'entrée « Autre traitement » du plan de soins qui portait aussi `.42.3` (un seul type par entrée).
* Exemple CDA IPS `Binary-patient-summary.xml` : mise à jour du contenu (en-tête, identifiants du document, auteur et participants, commentaires sur les cardinalités, sections)
* Exemple CDA DLU `Binary-patient-summary-dlu.xml` : libellé `Soeur` (relation `SIS`), libellé du code de la section Traitements (`Historique de la prise médicamenteuse`), référence `#med-003` et références narratives des résultats d'imagerie (`resultat-imagerie-01`) modifiés ; templateId `1.2.250.1.213.1.1.3.42.4` présent à nouveau sur l'entrée « Autre traitement »
* Exemple CDA IPS `Binary-patient-summary.xml` : libellé du code LOINC `10160-0` de la section Traitements aligné sur `Traitements` (au lieu de `Historique de la prise médicamenteuse`)
* Exemple CDA DLU `Binary-patient-summary-dlu.xml` : libellés SNOMED CT `désorientation` (code 62476001) et `en fugue` (code 248046000) dans le statut fonctionnel
* `sushi-config.yaml` : la dépendance `ans.cda.fr.document-core` est déclarée avec l'URL de sa ressource `ImplementationGuide`.
* Profil `FRCDAGroupeEvaluationHandicapsDLU` : libellé du code du groupe « Déficience auditive, visuelle ou de communication » corrigé.

#### Retiré

* Profil IPS : la slice `sectionDirectivesAnticipees` est désactivée (commentée), ainsi que sa contrainte `section only`.

