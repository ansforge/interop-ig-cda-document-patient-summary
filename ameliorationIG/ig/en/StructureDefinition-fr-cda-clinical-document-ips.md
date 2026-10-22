# CDA - clinicalDocument IPS - Volet de Synthèse Médicale (International Patient Summary - CDA) v0.1.0

## Logical Model: CDA - clinicalDocument IPS 

**Usages:**

* This Logical Model Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.cda.fr.fr-patient-summary|current/StructureDefinition/StructureDefinition-fr-cda-clinical-document-ips.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-cda-clinical-document-ips.csv), [Excel](../StructureDefinition-fr-cda-clinical-document-ips.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-cda-clinical-document-ips",
  "extension" : [{
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "_valueBoolean" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "not-applicable"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-namespace",
    "valueUri" : "urn:hl7-org:v3"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
    "valueString" : "ClinicalDocument"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/type-profile-style",
    "valueCode" : "cda"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-container",
    "valueUri" : "http://hl7.org/cda/stds/core/StructureDefinition/ClinicalDocument"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/cda/fr-patient-summary/StructureDefinition/fr-cda-clinical-document-ips",
  "version" : "0.1.0",
  "name" : "FRCDAClinicalDocumentIPS",
  "title" : "CDA - clinicalDocument IPS",
  "status" : "draft",
  "date" : "2026-10-22T08:20:09+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "L'élément de l'en-tête CDA 'ClinicalDocument' est l’élément racine d’un document médical IPS (International Patient Summary).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/cda/stds/core/StructureDefinition/ClinicalDocument",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-clinical-document|0.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClinicalDocument",
      "path" : "ClinicalDocument"
    },
    {
      "id" : "ClinicalDocument.templateId",
      "path" : "ClinicalDocument.templateId",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "root"
        }],
        "rules" : "open"
      },
      "min" : 4
    },
    {
      "id" : "ClinicalDocument.templateId:conformiteSpecificationsHL7",
      "path" : "ClinicalDocument.templateId",
      "sliceName" : "conformiteSpecificationsHL7",
      "short" : "Conformité spécifications HL7 France",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.templateId:conformiteSpecificationsHL7.root",
      "path" : "ClinicalDocument.templateId.root",
      "min" : 1,
      "patternString" : "2.16.840.1.113883.2.8.2.1"
    },
    {
      "id" : "ClinicalDocument.templateId:conformiteSpecificationsCISIS",
      "path" : "ClinicalDocument.templateId",
      "sliceName" : "conformiteSpecificationsCISIS",
      "short" : "Conformité spécifications au CI-SIS",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.templateId:conformiteSpecificationsCISIS.root",
      "path" : "ClinicalDocument.templateId.root",
      "min" : 1,
      "patternString" : "1.2.250.1.213.1.1.1.1"
    },
    {
      "id" : "ClinicalDocument.templateId:conformiteSpecificationsIHEPCCIPS",
      "path" : "ClinicalDocument.templateId",
      "sliceName" : "conformiteSpecificationsIHEPCCIPS",
      "short" : "Conformité spécifications IHE PCC IPS",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.templateId:conformiteSpecificationsIHEPCCIPS.root",
      "path" : "ClinicalDocument.templateId.root",
      "min" : 1,
      "patternString" : "2.16.840.1.113883.10.22.1.1"
    },
    {
      "id" : "ClinicalDocument.templateId:conformiteVoletIPS",
      "path" : "ClinicalDocument.templateId",
      "sliceName" : "conformiteVoletIPS",
      "short" : "Conformité au Volet de l'International Patient Summary fr (IPS-FR_2024.01)",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.templateId:conformiteVoletIPS.root",
      "path" : "ClinicalDocument.templateId.root",
      "min" : 1,
      "patternString" : "1.2.250.1.213.1.1.1.51"
    },
    {
      "id" : "ClinicalDocument.templateId:conformiteVoletIPS.extension",
      "path" : "ClinicalDocument.templateId.extension",
      "patternString" : "2024.01"
    },
    {
      "id" : "ClinicalDocument.code",
      "path" : "ClinicalDocument.code",
      "short" : "Type de document : Synthèse Médicale (code LOINC 60591-5)."
    },
    {
      "id" : "ClinicalDocument.code.code",
      "path" : "ClinicalDocument.code.code",
      "patternCode" : "60591-5"
    },
    {
      "id" : "ClinicalDocument.code.codeSystem",
      "path" : "ClinicalDocument.code.codeSystem",
      "patternString" : "2.16.840.1.113883.6.1"
    },
    {
      "id" : "ClinicalDocument.code.codeSystemName",
      "path" : "ClinicalDocument.code.codeSystemName",
      "patternString" : "LOINC"
    },
    {
      "id" : "ClinicalDocument.code.displayName",
      "path" : "ClinicalDocument.code.displayName",
      "patternString" : "Synthèse médicale"
    },
    {
      "id" : "ClinicalDocument.title",
      "path" : "ClinicalDocument.title",
      "short" : "Titre du document : SYNTHESE MEDICALE."
    },
    {
      "id" : "ClinicalDocument.effectiveTime",
      "path" : "ClinicalDocument.effectiveTime",
      "short" : "Date de création du document Synthèse Médicale."
    },
    {
      "id" : "ClinicalDocument.participant",
      "path" : "ClinicalDocument.participant",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "functionCode.code"
        },
        {
          "type" : "value",
          "path" : "typeCode"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "ClinicalDocument.participant:medecinTraitant",
      "path" : "ClinicalDocument.participant",
      "sliceName" : "medecinTraitant",
      "short" : "Médecin traitant",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.participant:medecinTraitant.typeCode",
      "path" : "ClinicalDocument.participant.typeCode",
      "patternCode" : "INF"
    },
    {
      "id" : "ClinicalDocument.participant:medecinTraitant.functionCode.code",
      "path" : "ClinicalDocument.participant.functionCode.code",
      "patternCode" : "PCP"
    },
    {
      "id" : "ClinicalDocument.participant:medecinTraitant.functionCode.codeSystem",
      "path" : "ClinicalDocument.participant.functionCode.codeSystem",
      "patternString" : "2.16.840.1.113883.5.88"
    },
    {
      "id" : "ClinicalDocument.participant:contactEHPAD",
      "path" : "ClinicalDocument.participant",
      "sliceName" : "contactEHPAD",
      "short" : "[DLU] Contact 24h/24h en EHPAD",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.participant:contactEHPAD.typeCode",
      "path" : "ClinicalDocument.participant.typeCode",
      "patternCode" : "PRF"
    },
    {
      "id" : "ClinicalDocument.participant:contactEHPAD.functionCode.code",
      "path" : "ClinicalDocument.participant.functionCode.code",
      "patternCode" : "CORRE"
    },
    {
      "id" : "ClinicalDocument.participant:contactEHPAD.functionCode.codeSystem",
      "path" : "ClinicalDocument.participant.functionCode.codeSystem",
      "patternString" : "1.2.250.1.213.1.1.4.2.280"
    },
    {
      "id" : "ClinicalDocument.participant:etabPreference",
      "path" : "ClinicalDocument.participant",
      "sliceName" : "etabPreference",
      "short" : "[DLU] Établissement de santé de préférence",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.participant:etabPreference.typeCode",
      "path" : "ClinicalDocument.participant.typeCode",
      "patternCode" : "INF"
    },
    {
      "id" : "ClinicalDocument.participant:etabPreference.functionCode.code",
      "path" : "ClinicalDocument.participant.functionCode.code",
      "patternCode" : "ES-PREF"
    },
    {
      "id" : "ClinicalDocument.participant:etabPreference.functionCode.codeSystem",
      "path" : "ClinicalDocument.participant.functionCode.codeSystem",
      "patternString" : "1.2.250.1.213.1.1.4.2.280"
    },
    {
      "id" : "ClinicalDocument.participant:etabReference",
      "path" : "ClinicalDocument.participant",
      "sliceName" : "etabReference",
      "short" : "Établissement de santé de référence",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "ClinicalDocument.participant:etabReference.typeCode",
      "path" : "ClinicalDocument.participant.typeCode",
      "patternCode" : "INF"
    },
    {
      "id" : "ClinicalDocument.participant:etabReference.functionCode.code",
      "path" : "ClinicalDocument.participant.functionCode.code",
      "patternCode" : "ES-REF"
    },
    {
      "id" : "ClinicalDocument.participant:etabReference.functionCode.codeSystem",
      "path" : "ClinicalDocument.participant.functionCode.codeSystem",
      "patternString" : "1.2.250.1.213.1.1.4.2.280"
    },
    {
      "id" : "ClinicalDocument.participant:autrePS",
      "path" : "ClinicalDocument.participant",
      "sliceName" : "autrePS",
      "short" : "Autre professionnel de santé",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "ClinicalDocument.participant:autrePS.typeCode",
      "path" : "ClinicalDocument.participant.typeCode",
      "patternCode" : "PRF"
    },
    {
      "id" : "ClinicalDocument.participant:autrePS.functionCode.code",
      "path" : "ClinicalDocument.participant.functionCode.code",
      "patternCode" : "353"
    },
    {
      "id" : "ClinicalDocument.participant:autrePS.functionCode.codeSystem",
      "path" : "ClinicalDocument.participant.functionCode.codeSystem",
      "patternString" : "1.2.250.1.213.1.6.1.107"
    },
    {
      "id" : "ClinicalDocument.participant:autreCorrespondant",
      "path" : "ClinicalDocument.participant",
      "sliceName" : "autreCorrespondant",
      "short" : "Autre correspondant participant à la prise en charge ou au suivi du patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "ClinicalDocument.participant:autreCorrespondant.typeCode",
      "path" : "ClinicalDocument.participant.typeCode",
      "patternCode" : "CON"
    },
    {
      "id" : "ClinicalDocument.participant:autreCorrespondant.functionCode.code",
      "path" : "ClinicalDocument.participant.functionCode.code",
      "patternCode" : "CORRE"
    },
    {
      "id" : "ClinicalDocument.participant:autreCorrespondant.functionCode.codeSystem",
      "path" : "ClinicalDocument.participant.functionCode.codeSystem",
      "patternString" : "1.2.250.1.213.1.1.4.2.280"
    },
    {
      "id" : "ClinicalDocument.documentationOf",
      "path" : "ClinicalDocument.documentationOf",
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody",
      "path" : "ClinicalDocument.component.structuredBody",
      "short" : "Structure du document IPS."
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "section.code.code"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Composants contenant les sections du document IPS.",
      "min" : 5
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionProblemesActifs",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionProblemesActifs",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionProblemesActifs.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-problemes-actifs|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionAntecedentsMedicaux",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionAntecedentsMedicaux",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionAntecedentsMedicaux.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-antecedents-medicaux|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionHistoriqueDesActes",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionHistoriqueDesActes",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionHistoriqueDesActes.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-historique-des-actes|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionAllergiesEtHypersensibilites",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionAllergiesEtHypersensibilites",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionAllergiesEtHypersensibilites.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-allergies-et-hypersensibilites|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionEffetsIndesirables",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionEffetsIndesirables",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionEffetsIndesirables.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-effets-indesirables|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionTraitements",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionTraitements",
      "min" : 1,
      "max" : "1",
      "constraint" : [{
        "key" : "dlu-traitement-type",
        "severity" : "error",
        "human" : "Dans la section Traitements, chaque traitement porte exactement un templateId parmi traitement au long cours (1.2.250.1.213.1.1.3.42.3) et traitement aigu (1.2.250.1.213.1.1.3.42.4). Pour une synthèse médicale hors DLU, seul le traitement au long cours est utilisé",
        "expression" : "section.entry.substanceAdministration.all(templateId.where(root = '1.2.250.1.213.1.1.3.42.3').count() + templateId.where(root = '1.2.250.1.213.1.1.3.42.4').count() = 1)",
        "source" : "https://interop.esante.gouv.fr/ig/cda/fr-patient-summary/StructureDefinition/fr-cda-clinical-document-ips|0.1.0"
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionTraitements.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitements|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionDispositifsMedicaux",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionDispositifsMedicaux",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionDispositifsMedicaux.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-dispositifs-medicaux|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionPointsDeVigilancesNonCode",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionPointsDeVigilancesNonCode",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionPointsDeVigilancesNonCode.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-points-de-vigilances-non-code|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionStatutFonctionnel",
      "min" : 0,
      "max" : "1",
      "constraint" : [{
        "key" : "dlu-statut-fonctionnel-evaluations",
        "severity" : "error",
        "human" : "Pour la synthèse médicale d'un DLU, la liste des évaluations est fixée : dès qu'un groupe d'évaluations LOINC propre au DLU est présent (état psychique 54511-1, handicaps / déficits 52621-0, déplacements / transferts 32452-5), les trois groupes doivent être présents. Le groupe « autres risques » n'est pas vérifié ici : le tableau du volet (GEN-092.01.24) et l'exemple publié par l'ANS (GEN-092.04.24) divergent sur son code",
        "expression" : "(section.entry.organizer.code.code contains '54511-1' or section.entry.organizer.code.code contains '52621-0' or section.entry.organizer.code.code contains '32452-5') implies (section.entry.organizer.code.code contains '54511-1' and section.entry.organizer.code.code contains '52621-0' and section.entry.organizer.code.code contains '32452-5')",
        "source" : "https://interop.esante.gouv.fr/ig/cda/fr-patient-summary/StructureDefinition/fr-cda-clinical-document-ips|0.1.0"
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-statut-fonctionnel|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel.section.entry",
      "path" : "ClinicalDocument.component.structuredBody.component.section.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "organizer.code.code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel.section.entry:etatPsychique",
      "path" : "ClinicalDocument.component.structuredBody.component.section.entry",
      "sliceName" : "etatPsychique",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel.section.entry:etatPsychique.organizer",
      "path" : "ClinicalDocument.component.structuredBody.component.section.entry.organizer",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Organizer",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/fr-patient-summary/StructureDefinition/fr-cda-groupe-evaluation-etat-psychique-dlu|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel.section.entry:handicapsDeficits",
      "path" : "ClinicalDocument.component.structuredBody.component.section.entry",
      "sliceName" : "handicapsDeficits",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel.section.entry:handicapsDeficits.organizer",
      "path" : "ClinicalDocument.component.structuredBody.component.section.entry.organizer",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Organizer",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/fr-patient-summary/StructureDefinition/fr-cda-groupe-evaluation-handicaps-dlu|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel.section.entry:deplacements",
      "path" : "ClinicalDocument.component.structuredBody.component.section.entry",
      "sliceName" : "deplacements",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel.section.entry:deplacements.organizer",
      "path" : "ClinicalDocument.component.structuredBody.component.section.entry.organizer",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Organizer",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/fr-patient-summary/StructureDefinition/fr-cda-groupe-evaluation-deplacements-dlu|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel.section.entry:autresRisques",
      "path" : "ClinicalDocument.component.structuredBody.component.section.entry",
      "sliceName" : "autresRisques",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel.section.entry:autresRisques.organizer",
      "path" : "ClinicalDocument.component.structuredBody.component.section.entry.organizer",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Organizer",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/fr-patient-summary/StructureDefinition/fr-cda-groupe-evaluation-autres-risques-dlu|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel.section.entry:scores",
      "path" : "ClinicalDocument.component.structuredBody.component.section.entry",
      "sliceName" : "scores",
      "min" : 0,
      "max" : "2"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionStatutFonctionnel.section.entry:scores.organizer",
      "path" : "ClinicalDocument.component.structuredBody.component.section.entry.organizer",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Organizer",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/fr-patient-summary/StructureDefinition/fr-cda-groupe-evaluation-score-dlu|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionSignesVitaux",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionSignesVitaux",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionSignesVitaux.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-signes-vitaux|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionHabitusModeDeVie",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionHabitusModeDeVie",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionHabitusModeDeVie.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-habitus-mode-de-vie|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionAntecedentFamiliaux",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionAntecedentFamiliaux",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionAntecedentFamiliaux.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-antecedents-familiaux|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionFacteursDeRisqueProfessionnelsNonCode",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionFacteursDeRisqueProfessionnelsNonCode",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionFacteursDeRisqueProfessionnelsNonCode.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-facteurs-de-risque-professionnels-non-code|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionVaccinations",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionVaccinations",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionVaccinations.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-vaccinations|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionHistoriqueDesGrossesses",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionHistoriqueDesGrossesses",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionHistoriqueDesGrossesses.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-historique-des-grossesses|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionPlanDeSoins",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionPlanDeSoins",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionPlanDeSoins.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-plan-de-soins|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionDirectivesAnticipees",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionDirectivesAnticipees",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionDirectivesAnticipees.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-directives-anticipees|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionResultats",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionResultats",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionResultats.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-resultats|0.1.0"]
      }]
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionDocumentsAjoutes",
      "path" : "ClinicalDocument.component.structuredBody.component",
      "sliceName" : "sectionDocumentsAjoutes",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClinicalDocument.component.structuredBody.component:sectionDocumentsAjoutes.section",
      "path" : "ClinicalDocument.component.structuredBody.component.section",
      "type" : [{
        "code" : "http://hl7.org/cda/stds/core/StructureDefinition/Section",
        "profile" : ["https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-documents-ajoutes|0.1.0"]
      }]
    }]
  }
}

```
