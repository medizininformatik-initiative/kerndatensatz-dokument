# MII VS Dokument Fachgebiet - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Dokument Fachgebiet**

## ValueSet: MII VS Dokument Fachgebiet 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-fachgebiet | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-08-30 | *Computable Name*:MII_VS_Dokument_Fachgebiet |

 
ValueSet zum erzeugenden Fachgebiet eines Dokuments 

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
  "id" : "mii-vs-dokument-fachgebiet",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-fachgebiet",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Dokument_Fachgebiet",
  "title" : "MII VS Dokument Fachgebiet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-30T18:38:46+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "ValueSet zum erzeugenden Fachgebiet eines Dokuments",
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
        "value" : "394733009"
      }]
    },
    {
      "valueSet" : ["http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode"]
    }]
  }
}

```
