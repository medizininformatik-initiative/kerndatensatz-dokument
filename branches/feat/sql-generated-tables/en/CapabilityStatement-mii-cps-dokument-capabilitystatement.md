# MII CPS Dokument CapabilityStatement - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CPS Dokument CapabilityStatement**

## CapabilityStatement: MII CPS Dokument CapabilityStatement 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2025-06-23 | *Computable Name*:MII_CPS_Dokument_CapabilityStatement |

 

```
Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss,
um das Modul Dokument der Medizininformatik Initiative zu implementieren.

```

 

 [Raw OpenAPI-Swagger Definition file](../mii-cps-dokument-capabilitystatement.openapi.json) | [Download](../mii-cps-dokument-capabilitystatement.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "mii-cps-dokument-capabilitystatement",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CPS_Dokument_CapabilityStatement",
  "title" : "MII CPS Dokument CapabilityStatement",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-06-23",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "\n    Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss,\n    um das Modul Dokument der Medizininformatik Initiative zu implementieren.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["xml", "json"],
  "rest" : [{
    "mode" : "server",
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "DocumentReference",
      "supportedProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement/metadata"],
      "_supportedProfile" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      }],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_profile",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-profile",
        "type" : "uri"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-status",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "doc-status",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/SearchParameter/DocumentReference-doc-status",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-type",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "category",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-category",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
        "type" : "reference"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "relation",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-relation",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "relatesto",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-relatesto",
        "type" : "reference"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "relationship",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-relationship",
        "type" : "composite"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "description",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-description",
        "type" : "string"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "security-label",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-security-label",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "contenttype",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-contenttype",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "language",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-language",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "location",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-location",
        "type" : "uri"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "creation",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/SearchParameter/DocumentReference-creation",
        "type" : "date"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "format",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-format",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "encounter",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-encounter",
        "type" : "reference"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "event",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-event",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "period",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-period",
        "type" : "date"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "facility",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-facility",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "setting",
        "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-setting",
        "type" : "token"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "nlp-processing-status",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/SearchParameter/DocumentReference-nlp-processing-status",
        "type" : "token"
      }]
    }]
  }]
}

```
