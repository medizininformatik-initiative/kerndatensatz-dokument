# MII CS Dokument Projekt - MII IG Dokument v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Dokument Projekt**

## CodeSystem: MII CS Dokument Projekt 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-projekt | *Version*:2027.0.0-ballot.2 |
| Active as of 2026-11-14 | *Computable Name*:MII_CS_Dokument_Projekt |

 
Projekte der Medizininformatik-Initiative zur Kennzeichnung von Ressourcen über Resource.meta.tag 

This Code system is referenced in the definition of the following value sets:

* [MII VS Dokument Projekt](ValueSet-mii-vs-dokument-projekt.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-dokument-projekt",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-projekt",
  "version" : "2027.0.0-ballot.2",
  "name" : "MII_CS_Dokument_Projekt",
  "title" : "MII CS Dokument Projekt",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-14T19:57:08+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Projekte der Medizininformatik-Initiative zur Kennzeichnung von Ressourcen über Resource.meta.tag",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "property" : [{
    "code" : "foerderer",
    "description" : "Fördermittelgeber des Projekts als ROR-ID",
    "type" : "string"
  },
  {
    "code" : "fkz",
    "description" : "Förderkennzeichen eines Teilvorhabens laut Förderkatalog des Bundes; je Teilvorhaben eine Angabe",
    "type" : "string"
  },
  {
    "code" : "beginn",
    "description" : "Beginn der Projektlaufzeit",
    "type" : "dateTime"
  },
  {
    "code" : "ende",
    "description" : "Ende der Projektlaufzeit",
    "type" : "dateTime"
  }],
  "concept" : [{
    "code" : "GEMTEX",
    "display" : "GeMTeX",
    "definition" : "Ressource wurde im Rahmen der MII-Methodenplattform GeMTeX (German Medical Text Corpus) erzeugt oder aufbereitet.",
    "designation" : [{
      "language" : "en",
      "value" : "GeMTeX"
    }],
    "property" : [{
      "code" : "foerderer",
      "valueString" : "https://ror.org/04pz7b180"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314A"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314B"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314D"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314E"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314F"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314G"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314H"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314I"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314J"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314K"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314L"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314M"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314N"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314O"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314P"
    },
    {
      "code" : "fkz",
      "valueString" : "01ZZ2314Q"
    },
    {
      "code" : "beginn",
      "valueDateTime" : "2023-06-01"
    },
    {
      "code" : "ende",
      "valueDateTime" : "2026-12-31"
    }]
  }]
}

```
