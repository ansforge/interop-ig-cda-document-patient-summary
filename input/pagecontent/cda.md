### Implémentation CDA du document IPS

Cette section présente l'implémentation CDA (Clinical Document Architecture) du document **Synthèse médicale (International Patient Summary, IPS-FR)** dans le contexte du CI-SIS français.

#### Vue d'ensemble

Les modèles CDA définis dans ce guide permettent de représenter une synthèse médicale en utilisant la norme HL7 CDA R2. Ces définitions garantissent l'interopérabilité entre les systèmes d'information de santé et les infrastructures d'échange et de partage de documents en France.

Le document IPS s'appuie sur :

- les spécifications de l'en-tête et du corps des documents CDA du CI-SIS définies dans le guide [FR Document Core (CDA)](https://interop.esante.gouv.fr/ig/cda/document-core/index.html) ;
- le standard international IPS défini par HL7 CDA (*HL7 CDAR2_INTLPATSUMMARY_STU_R1*) ;
- le profil IHE **PCC** (Patient Care Coordination) et son supplément *International Patient Summary* ;
- la norme NF EN ISO 27269:2022 (*International Patient Summary*).

#### Caractéristiques du document

| Élément | Valeur |
| --- | --- |
| Nom du modèle | IPS-FR (Synthèse médicale conforme à l'International Patient Summary) |
| Version du modèle | 2024.01 |
| templateId du modèle | `1.2.250.1.213.1.1.1.51` (extension `2024.01`) |
| Type de document (`ClinicalDocument/code`) | `60591-5` - Synthèse médicale (LOINC `2.16.840.1.113883.6.1`) |
| Titre du document | Synthèse médicale |

Le même modèle et les mêmes `templateId` sont utilisés pour tous les cas d'usage, y compris le Dossier de Liaison d'Urgence (DLU) : les contraintes propres au DLU sont portées directement par le profil IPS.

#### Structure du document IPS

* **[Structure du document IPS en CDA](StructureDefinition-fr-cda-clinical-document-ips.html)** - Définition de la structure CDA du document IPS, précisant l'ensemble des contraintes applicables à l'en-tête et au corps du volet Synthèse médicale conforme à l'International Patient Summary (IPS).

#### Exemples CDA

* **[Exemple IPS-FR 2024.01](Binary-patient-summary.html)** - Synthèse médicale couvrant l'ensemble des sections du volet.
* **[Exemple IPS-FR 2024.01 DLU](Binary-patient-summary-dlu.html)** - Synthèse médicale d'un Dossier de Liaison d'Urgence (DLU), avec traitements aigus et évaluations du statut fonctionnel.

Ces exemples peuvent être utilisés pour :

- Valider la conformité de vos implémentations CDA
- Servir de base pour générer vos propres documents IPS
- Tester l'intégration avec vos systèmes d'information
- Référencer les bonnes pratiques de structuration

#### Exemples IHE XDM

* **[Exemple IHE XDM - IPS-FR_2024.01](https://github.com/ansforge/interop-exemples-xdm/tree/main/IPS-FR_2024.01)** - Exemple de package XDM contenant un document IPS en CDA, avec la structure et les métadonnées conformes au standard IHE XDM (Cross-Enterprise Document Media Interchange).
* **[Exemple IHE XDM - IPS-FR_2024.01_DLU](https://github.com/ansforge/interop-exemples-xdm/tree/main/IPS-FR_2024.01_DLU)** - Exemple de package XDM contenant une synthèse médicale DLU en CDA, avec la structure et les métadonnées conformes au standard IHE XDM.

#### Vérification de la conformité

Le schématron de conformité au modèle IPS-FR 2024.01 est disponible dans l'outil [TestContenuCDA](https://github.com/ansforge/TestContenuCDA-3-0) : [CI-SIS_IPS-FR_2024.01.sch](https://github.com/ansforge/TestContenuCDA-3-0/blob/main/schematrons/CI-SIS_IPS-FR_2024.01.sch).

#### Référence

- [CI-SIS - Volet Contenus IPS-FR 2024.01 (spécification CDA, PDF)](https://esante.gouv.fr/sites/default/files/media_entity/documents/ci-sis_volet_contenus_ips-fr_2024.01_std-cda_20251013.pdf)
