# MII CS Dokument NLP Processing Status - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Dokument NLP Processing Status**

## CodeSystem: MII CS Dokument NLP Processing Status 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status | *Version*:2027.0.0-ballot.rc2 |
| Active Stand: 2026-09-13 | *Maschinenlesbarer Name*:MII_CS_Dokument_NLP_Processing_Status |

 
Status der NLP-Verarbeitung des referenzierten Dokuments 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-dokument-nlp-processing-status",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "MII_CS_Dokument_NLP_Processing_Status",
  "title" : "MII CS Dokument NLP Processing Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-13T11:26:09+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Status der NLP-Verarbeitung des referenzierten Dokuments",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
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
    "definition" : "Ausgewählte Informationen des Dokuments wurden mit neuen Informationen ersetzt. In aller Regel im Zuge einer Pseudonymisierung. Zuvor annotierte Personal Identifier Konzepte werden beispielsweise durch fiktive Konzepte ersetzt.",
    "designation" : [{
      "language" : "en",
      "value" : "Surrogated document"
    }]
  }]
}

```
