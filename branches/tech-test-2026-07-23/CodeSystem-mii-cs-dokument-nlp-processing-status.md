# MII VS Dokument NLP Processing Status - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Dokument NLP Processing Status**

## CodeSystem: MII VS Dokument NLP Processing Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_Dokument_NLP_Processing_Status |

 
Status der NLP-Verarbeitung des referenzierten Dokuments 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_Dokument_NLP_Processing_Status](ValueSet-mii-vs-dokument-nlp-processing-status.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-dokument-nlp-processing-status",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status",
  "version" : "2026.0.1",
  "name" : "MII_CS_Dokument_NLP_Processing_Status",
  "title" : "MII VS Dokument NLP Processing Status",
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
  "description" : "Status der NLP-Verarbeitung des referenzierten Dokuments",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "caseSensitive" : true,
  "hierarchyMeaning" : "is-a",
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "unprocessed",
    "display" : "Original",
    "definition" : "Dokument im Original",
    "designation" : [{
      "language" : "en",
      "value" : "Original document"
    }]
  },
  {
    "code" : "preprocessed",
    "display" : "Vorverarbeitetes Dokument",
    "definition" : "Aufbereitung und Bearbeitung von Textinformation zur weiteren Verarbeitung",
    "designation" : [{
      "language" : "en",
      "value" : "Preprocessed document"
    }],
    "concept" : [{
      "code" : "format-change",
      "display" : "Formatänderung",
      "definition" : "Vorverarbeitung mit Transformation des Formats",
      "designation" : [{
        "language" : "en",
        "value" : "Format changed"
      }]
    },
    {
      "code" : "content-change",
      "display" : "Inhaltsänderung",
      "definition" : "Vorverarbeitung mit inhaltlicher Änderung, z.B. Headerentfernung",
      "designation" : [{
        "language" : "en",
        "value" : "Content changed"
      }]
    }]
  },
  {
    "code" : "annotated",
    "display" : "Annotiertes Dokument",
    "definition" : "Dokument mit Annotationen in Bezug auf deidentifizierende oder semantische Inhalte oder automatisierte Verfahren",
    "designation" : [{
      "language" : "en",
      "value" : "Annotated document"
    }],
    "concept" : [{
      "code" : "preanno",
      "display" : "Vorannotiertes Dokument",
      "definition" : "Maschinelle Vorannotation",
      "designation" : [{
        "language" : "en",
        "value" : "Pre-annotated document"
      }]
    },
    {
      "code" : "deid",
      "display" : "Deidentifiziertes Dokument",
      "definition" : "Annotationen zum Zwecke einer Deidentifizierung",
      "designation" : [{
        "language" : "en",
        "value" : "De-identified document"
      }]
    },
    {
      "code" : "semantic",
      "display" : "Semantisch annotiertes Dokument",
      "definition" : "Semantische Annotationen",
      "designation" : [{
        "language" : "en",
        "value" : "Semantically annotated document"
      }]
    }]
  },
  {
    "code" : "surrogated",
    "display" : "Surrogiertes Dokument",
    "definition" : "Ausgewählte Informationen des Dokuments wurden mit neuen Informationen ersetzt. In aller Regel im Zuge einer Pseudonymisierung. Zuvor annotierte Personal Identifier Konzepte wurden durch fiktive Konzepte irreversibel ersetzt. Das Dokument lässt keinen Rückschluss mehr auf die ersetzten Informationen zu.",
    "designation" : [{
      "language" : "en",
      "value" : "Surrogated document"
    }]
  }]
}

```
