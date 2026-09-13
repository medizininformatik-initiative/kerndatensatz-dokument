# MII VS Dokument SCT Dokument Typ - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Dokument SCT Dokument Typ**

## ValueSet: MII VS Dokument SCT Dokument Typ 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-sct-dokument-typ | *Version*:2027.0.0-ballot.rc2 |
| Active Stand: 2026-09-13 | *Maschinenlesbarer Name*:MII_VS_Dokument_SCT_Dokument_Typ |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
SNOMED CT ValueSet zum Typ eines Dokuments 

 **References** 

* [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-dokument-sct-dokument-typ",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-sct-dokument-typ",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "MII_VS_Dokument_SCT_Dokument_Typ",
  "title" : "MII VS Dokument SCT Dokument Typ",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-13T05:04:18+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "SNOMED CT ValueSet zum Typ eines Dokuments",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "229059009"
      }]
    }]
  }
}

```
