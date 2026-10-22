# CDA - Evaluation : déplacement / transfert (DLU) - Volet de Synthèse Médicale (International Patient Summary - CDA) v0.1.0

## Modèle logique: CDA - Evaluation : déplacement / transfert (DLU) 

**Utilisations:**

* Utilise ce/t/te Profil de modèle logique: [CDA - Groupe d'évaluations : déplacements / transferts (DLU)](StructureDefinition-fr-cda-groupe-evaluation-deplacements-dlu.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.cda.fr.fr-patient-summary|current/StructureDefinition/fr-cda-evaluation-deplacements-dlu)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRCDAEvaluation](https://build.fhir.org/ig/ansforge/interop-IG-cda-document-core/StructureDefinition-fr-cda-evaluation.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCDAEvaluation](https://build.fhir.org/ig/ansforge/interop-IG-cda-document-core/StructureDefinition-fr-cda-evaluation.html) 

 **Vue différentielle** 

Cette structure est dérivée de [FRCDAEvaluation](https://build.fhir.org/ig/ansforge/interop-IG-cda-document-core/StructureDefinition-fr-cda-evaluation.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCDAEvaluation](https://build.fhir.org/ig/ansforge/interop-IG-cda-document-core/StructureDefinition-fr-cda-evaluation.html) 

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-cda-evaluation-deplacements-dlu.csv), [Excel](../StructureDefinition-fr-cda-evaluation-deplacements-dlu.xlsx) 



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
