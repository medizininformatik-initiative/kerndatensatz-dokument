# MII VS Dokument Format Code - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Dokument Format Code**

## ValueSet: MII VS Dokument Format Code 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-format-code | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-08 | *Computable Name*:MII_VS_Dokument_Format_Code |

 
ValueSet zum (komplexen) Format Code eines Dokuments 

 **References** 

* [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-dokument-format-code",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-format-code",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Dokument_Format_Code",
  "title" : "MII VS Dokument Format Code",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-08T08:42:22+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "ValueSet zum (komplexen) Format Code eines Dokuments",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode"]
    },
    {
      "valueSet" : ["http://ihe-d.de/ValueSets/IHEXDSformatCodeDE"]
    }]
  }
}

```
