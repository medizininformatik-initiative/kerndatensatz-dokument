# MII VS Dokument Einrichtungart - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Dokument Einrichtungart**

## ValueSet: MII VS Dokument Einrichtungart 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-einrichtungsart | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-08-30 | *Computable Name*:MII_VS_Dokument_Einrichtungsart |

 
ValueSet zur Art der erzeugenden Einrichtung eines Dokuments 

 **References** 

* [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-dokument-einrichtungsart",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-einrichtungsart",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Dokument_Einrichtungsart",
  "title" : "MII VS Dokument Einrichtungart",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-30T18:44:43+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "ValueSet zur Art der erzeugenden Einrichtung eines Dokuments",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "440654001"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "440655000"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "43741000"
      }]
    },
    {
      "valueSet" : ["http://ihe-d.de/ValueSets/IHEXDShealthcareFacilityTypeCode"]
    }]
  }
}

```
