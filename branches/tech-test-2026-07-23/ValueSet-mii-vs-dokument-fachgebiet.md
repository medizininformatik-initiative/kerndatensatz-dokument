# MII VS Dokument Fachgebiet - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Dokument Fachgebiet**

## ValueSet: MII VS Dokument Fachgebiet 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-fachgebiet | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Dokument_Fachgebiet |

 
ValueSet zum erzeugenden Fachgebiet eines Dokuments 

 **References** 

* [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



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
  "version" : "2026.0.1",
  "name" : "MII_VS_Dokument_Fachgebiet",
  "title" : "MII VS Dokument Fachgebiet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-23T12:41:25+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    },
    {
      "system" : "email",
      "value" : "office@medizininformatik-initiative.de"
    }]
  }],
  "description" : "ValueSet zum erzeugenden Fachgebiet eines Dokuments",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
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
