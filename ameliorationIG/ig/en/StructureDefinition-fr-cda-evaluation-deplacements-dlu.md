# CDA - Evaluation : déplacement / transfert (DLU) - Volet de Synthèse Médicale (International Patient Summary - CDA) v0.1.0

## Logical Model: CDA - Evaluation : déplacement / transfert (DLU) 

**Usages:**

* Use this Logical Model Profile: [CDA - Groupe d'évaluations : déplacements / transferts (DLU)](StructureDefinition-fr-cda-groupe-evaluation-deplacements-dlu.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.cda.fr.fr-patient-summary|current/StructureDefinition/StructureDefinition-fr-cda-evaluation-deplacements-dlu.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-cda-evaluation-deplacements-dlu.csv), [Excel](../StructureDefinition-fr-cda-evaluation-deplacements-dlu.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-cda-evaluation-deplacements-dlu",
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
    "valueString" : "observation"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-container",
    "valueUri" : "http://hl7.org/cda/stds/core/StructureDefinition/ClinicalDocument"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/type-profile-style",
    "valueCode" : "cda"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/cda/fr-patient-summary/StructureDefinition/fr-cda-evaluation-deplacements-dlu",
  "version" : "0.1.0",
  "name" : "FRCDAEvaluationDeplacementsDLU",
  "title" : "CDA - Evaluation : déplacement / transfert (DLU)",
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
  "description" : "Évaluation d'un déplacement ou transfert. Le code est issu de jdv-deplacement-cisis ; le résultat est de type BL (true ou false).",
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
  "type" : "http://hl7.org/cda/stds/core/StructureDefinition/Observation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-evaluation|0.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation.code",
      "path" : "Observation.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-deplacement-cisis|20260916095454"
      }
    }]
  }
}

```
