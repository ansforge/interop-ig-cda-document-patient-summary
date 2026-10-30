# EyeColor Value Set - FR Patient Summary (CDA) v0.1.0

## ValueSet: EyeColor Value Set 

 
Different eye colors. 

 **References** 

* [EyeColor](StructureDefinition-EyeColor.md)

### Définition logique (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "EyeColorVS",
  "url" : "https://interop.esante.gouv.fr/ig/cda/fr-patient-summary/ValueSet/EyeColorVS",
  "version" : "0.1.0",
  "name" : "EyeColorVS",
  "title" : "EyeColor Value Set",
  "status" : "draft",
  "date" : "2026-09-28T08:56:18+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Different eye colors.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260801",
      "concept" : [{
        "code" : "405738005",
        "display" : "Blue color"
      },
      {
        "code" : "371254008",
        "display" : "Brown color"
      },
      {
        "code" : "54662009",
        "display" : "Green color"
      }]
    }]
  }
}

```
