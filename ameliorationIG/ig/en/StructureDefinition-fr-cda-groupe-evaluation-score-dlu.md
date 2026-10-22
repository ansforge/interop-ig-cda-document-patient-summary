# CDA - Groupe d'évaluations : score ADL ou GIR (DLU) - Volet de Synthèse Médicale (International Patient Summary - CDA) v0.1.0

## Logical Model: CDA - Groupe d'évaluations : score ADL ou GIR (DLU) 

**Usages:**

* Use this Logical Model Profile: [CDA - clinicalDocument IPS](StructureDefinition-fr-cda-clinical-document-ips.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.cda.fr.fr-patient-summary|current/StructureDefinition/StructureDefinition-fr-cda-groupe-evaluation-score-dlu.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-cda-groupe-evaluation-score-dlu.csv), [Excel](../StructureDefinition-fr-cda-groupe-evaluation-score-dlu.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-cda-groupe-evaluation-score-dlu",
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
    "valueString" : "organizer"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-container",
    "valueUri" : "http://hl7.org/cda/stds/core/StructureDefinition/ClinicalDocument"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/type-profile-style",
    "valueCode" : "cda"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/cda/fr-patient-summary/StructureDefinition/fr-cda-groupe-evaluation-score-dlu",
  "version" : "0.1.0",
  "name" : "FRCDAGroupeEvaluationScoreDLU",
  "title" : "CDA - Groupe d'évaluations : score ADL ou GIR (DLU)",
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
  "description" : "Groupe d'évaluations de type « Autre type d'évaluation » (TerminologieCISIS GEN-092.04.24) portant le score ADL (LOINC 72095-3) ou le score GIR (TerminologieCISIS MED-1300, « Evaluation AGGIR »). La valeur de l'évaluation est celle du score.",
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
  "type" : "http://hl7.org/cda/stds/core/StructureDefinition/Organizer",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-groupe-de-questionnaires-d-evaluation|0.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organizer.code.code",
      "path" : "Organizer.code.code",
      "patternCode" : "GEN-092.04.24"
    },
    {
      "id" : "Organizer.code.codeSystem",
      "path" : "Organizer.code.codeSystem",
      "patternString" : "1.2.250.1.213.1.1.4.322"
    },
    {
      "id" : "Organizer.code.codeSystemName",
      "path" : "Organizer.code.codeSystemName",
      "patternString" : "TerminologieCISIS"
    },
    {
      "id" : "Organizer.code.displayName",
      "path" : "Organizer.code.displayName",
      "patternString" : "Autre type d'évaluation"
    }]
  }
}

```
