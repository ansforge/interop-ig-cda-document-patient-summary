# CDA - Groupe d'évaluations : handicaps / déficits (DLU) - Volet de Synthèse Médicale (International Patient Summary - CDA) v0.1.0

## Logical Model: CDA - Groupe d'évaluations : handicaps / déficits (DLU) 

**Usages:**

* Use this Logical Model Profile: [CDA - clinicalDocument IPS](StructureDefinition-fr-cda-clinical-document-ips.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.cda.fr.fr-patient-summary|current/StructureDefinition/StructureDefinition-fr-cda-groupe-evaluation-handicaps-dlu.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-cda-groupe-evaluation-handicaps-dlu.csv), [Excel](../StructureDefinition-fr-cda-groupe-evaluation-handicaps-dlu.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-cda-groupe-evaluation-handicaps-dlu",
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
  "url" : "https://interop.esante.gouv.fr/ig/cda/fr-patient-summary/StructureDefinition/fr-cda-groupe-evaluation-handicaps-dlu",
  "version" : "0.1.0",
  "name" : "FRCDAGroupeEvaluationHandicapsDLU",
  "title" : "CDA - Groupe d'évaluations : handicaps / déficits (DLU)",
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
  "description" : "Groupe d'évaluations « Handicaps / Déficits » (LOINC 52621-0). Les évaluations utilisent le jeu de valeurs jdv-handicap-deficit-dlu-ehpad-cisis (1.2.250.1.213.1.1.5.791) pour un DLU-EHPAD, ou jdv-handicap-deficit-dlu-dom-cisis (1.2.250.1.213.1.1.5.812) pour un DLU-DOM.",
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
      "patternCode" : "52621-0"
    },
    {
      "id" : "Organizer.code.codeSystem",
      "path" : "Organizer.code.codeSystem",
      "patternString" : "2.16.840.1.113883.6.1"
    },
    {
      "id" : "Organizer.code.codeSystemName",
      "path" : "Organizer.code.codeSystemName",
      "patternString" : "LOINC"
    },
    {
      "id" : "Organizer.code.displayName",
      "path" : "Organizer.code.displayName",
      "patternString" : "Déficience auditive, visuelle ou de communication"
    }]
  }
}

```
