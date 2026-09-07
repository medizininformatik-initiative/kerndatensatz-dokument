# MII LM Dokument - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII LM Dokument**

## Logical Model: MII LM Dokument 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-lm-dokument | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-07 | *Computable Name*:MII_LM_Dokument |

 
MII Logical Model KDS-Modul Dokument 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.dokument|current/StructureDefinition/StructureDefinition-mii-lm-dokument.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-lm-dokument.csv), [Excel](../StructureDefinition-mii-lm-dokument.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-lm-dokument",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-lm-dokument",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_LM_Dokument",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_LM_Dokument"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII LM Dokument",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII LM Dokument"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-09-07T14:37:20+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "MII Logical Model KDS-Modul Dokument",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "mii-map-dokument",
    "name" : "MII MAP Dokument",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "MII MAP Dokument"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "comment" : "MII Mappings KDS-Modul Dokument",
    "_comment" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "MII mappings for the KDS module Dokument"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-lm-dokument",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "mii-lm-dokument",
      "path" : "mii-lm-dokument",
      "short" : "MII LM Dokument",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "MII LM Dokument"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "MII Logical Model KDS-Modul Dokument",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "MII logical model for the KDS module Dokument"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "mii-lm-dokument.Dokument",
      "path" : "mii-lm-dokument.Dokument",
      "short" : "Dokument",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Dokument"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Klinisches Dokument inkl. Metadaten, Inhalt, Erzeugungskontext und Beziehungen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Clinical document including metadata, content, creation context and relationships"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Masteridentifikator",
      "path" : "mii-lm-dokument.Dokument.Masteridentifikator",
      "short" : "Versionsspezifische Kennung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Version-specific identifier"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Versionsspezifische eindeutige Kennung, die dem Dokument durch die Dokumentenquelle zugewiesen wurde",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Version-specific unique identifier assigned to the document by the document source"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.masterIdentifier"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Businessidentifikator",
      "path" : "mii-lm-dokument.Dokument.Businessidentifikator",
      "short" : "Versionsunabhängige Kennung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Version-independent identifier"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Andere versionsunabhängige Kennung, die dem Dokument (z.B. durch weitere dokumentenverarbeitende Systeme) zugewiesen wurde",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Other version-independent identifier assigned to the document (e.g. by further document-processing systems)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.identifier"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumentenreferenzstatus",
      "path" : "mii-lm-dokument.Dokument.Dokumentenreferenzstatus",
      "short" : "Status der Dokumentenreferenz",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of the document reference"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status dieser Dokumentenreferenz (aktuell, überholt oder irrtümlich eingegeben)",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of this document reference (current, superseded, or entered in error)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.status"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumentenstatus",
      "path" : "mii-lm-dokument.Dokument.Dokumentenstatus",
      "short" : "Status des Dokuments",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status des zugrunde liegenden Dokuments (vorläufig, final, geändert oder irrtümlich eingegeben)",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of the underlying document (preliminary, final, amended, or entered in error)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.docStatus"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumententyp",
      "path" : "mii-lm-dokument.Dokument.Dokumententyp",
      "short" : "Art des Dokuments",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Type of document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Art des Dokuments auf das verwiesen wird (z.B. Anamnese und Untersuchung, Entlassungsbericht, Verlaufsbericht)",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Type of the referenced document (e.g. history and examination, discharge letter, progress report)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.type"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumentenkategorie",
      "path" : "mii-lm-dokument.Dokument.Dokumentenkategorie",
      "short" : "Kategorien des Dokuments",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Categories of the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Übergeordnete Kategorie des Dokuments auf das verwiesen wird (z.B. Arztberichte oder Arztdokumentation)",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Higher-level category of the referenced document (e.g. physician letters or physician documentation)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.category"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Patient",
      "path" : "mii-lm-dokument.Dokument.Patient",
      "short" : "Verweis auf Patient",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to patient"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Patient auf den sich das verwiesene Dokument bezieht",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Patient to whom the referenced document relates"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.subject"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Beschreibung",
      "path" : "mii-lm-dokument.Dokument.Beschreibung",
      "short" : "Beschreibung des Dokuments",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Description of the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Menschenlesbare Beschreibung zum verwiesenen Dokuments",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Human-readable description of the referenced document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.description"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Sicherheitsstufe",
      "path" : "mii-lm-dokument.Dokument.Sicherheitsstufe",
      "short" : "Vertraulichkeit des Dokuments",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Confidentiality of the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grad der Vertraulichkeit/Sicherheit des verwiesenen Dokuments (z. B. uneingeschränkt, gering, mittel, normal oder eingeschränkt)",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Degree of confidentiality/security of the referenced document (e.g. unrestricted, low, moderate, normal, or restricted)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.securityLabel"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumentenbeziehung",
      "path" : "mii-lm-dokument.Dokument.Dokumentenbeziehung",
      "short" : "Beziehung des Dokuments",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Relationship of the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Beziehungen des verwiesenen Dokuments zu anderen Dokumenten",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Relationships of the referenced document to other documents"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.relatesTo"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumentenbeziehung.Beziehungstyp",
      "path" : "mii-lm-dokument.Dokument.Dokumentenbeziehung.Beziehungstyp",
      "short" : "Art der Beziehung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Type of the relationship"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Beziehung zu anderen Dokumenten",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Relationship to other documents"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.relatesTo.code"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumentenbeziehung.Beziehungsreferenz",
      "path" : "mii-lm-dokument.Dokument.Dokumentenbeziehung.Beziehungsreferenz",
      "short" : "Verweis auf Dokument",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ziel der Dokumentenbeziehung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Target of the document relationship"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.relatesTo.target"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Anhang",
      "path" : "mii-lm-dokument.Dokument.Anhang",
      "short" : "Inhalt des Dokuments",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Content of the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Dokument (Base64-kodierte Daten) oder Verweis (URL) mit relevanten Metadaten zum Anhang",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Document (base64-encoded data) or reference (URL) with relevant metadata for the attachment"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.content"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Anhang.Sprache",
      "path" : "mii-lm-dokument.Dokument.Anhang.Sprache",
      "short" : "Verfassungssprache des Inhalts",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Language the content was written in"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verwendete Sprache in dem Dokument",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Language used in the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.attachment.language"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Anhang.Erstellungsdatum",
      "path" : "mii-lm-dokument.Dokument.Anhang.Erstellungsdatum",
      "short" : "Erstellungsdatum des Inhalts",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Creation date of the content"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der Erstellung des Dokumentes",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Date the document was created"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.attachment.creation"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Anhang.Daten",
      "path" : "mii-lm-dokument.Dokument.Anhang.Daten",
      "short" : "Binärdaten zum Inhalt",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Binary data of the content"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Dokument als Binärdaten",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Document as binary data"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.attachment.data"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Anhang.DokumentenUrl",
      "path" : "mii-lm-dokument.Dokument.Anhang.DokumentenUrl",
      "short" : "URL zum Inhalt",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "URL of the content"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf den (lokalen) Ablageort des Dokuments",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to the (local) storage location of the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.attachment.url"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Anhang.Dokumentenformat",
      "path" : "mii-lm-dokument.Dokument.Anhang.Dokumentenformat",
      "short" : "MIME-Typ zum Inhalt",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "MIME type of the content"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "MIME-Typ des Dokumenteninhalts",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "MIME type of the document content"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.attachment.contentType"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Kontext",
      "path" : "mii-lm-dokument.Dokument.Kontext",
      "short" : "Erzeugungskontext des Dokuments",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Creation context of the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Klinischer Kontext, in welchem das Dokument erzeugt wurde",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Clinical context in which the document was created"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.context"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Kontext.Gesundheitseinrichtungskontakt",
      "path" : "mii-lm-dokument.Dokument.Kontext.Gesundheitseinrichtungskontakt",
      "short" : "Verweis auf Einrichtungskontakt",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to the encounter"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kontakt zur Gesundheitseinrichtung oder die Art der Versorgung, die mit dem Dokumenteninhalt assoziiert ist",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Contact with the healthcare facility, or the type of care associated with the document content"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.context.encounter"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Kontext.Vorgang",
      "path" : "mii-lm-dokument.Dokument.Kontext.Vorgang",
      "short" : "Dokumentierter Vorgang",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Documented activity"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Handlungen oder Prozeduren, die im Kontext dokumentiert wurden",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Actions or procedures documented in the context"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.context.event"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Kontext.Fachgebiet",
      "path" : "mii-lm-dokument.Dokument.Kontext.Fachgebiet",
      "short" : "Klinisches Fachgebiet zum Vorgang",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Clinical specialty of the activity"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Klinisches Fachgebiet, in dem Dokumenteninhalt erstellt wurde",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Clinical specialty in which the document content was created"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.context.practiceSetting"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Kontext.Dokumentationszeitraum",
      "path" : "mii-lm-dokument.Dokument.Kontext.Dokumentationszeitraum",
      "short" : "Durchführungszeitraum zum Vorgang",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Period of performance of the activity"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zeitraum, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Period during which the action or procedure described in the document was performed"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.context.period"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Kontext.Einrichtungsart",
      "path" : "mii-lm-dokument.Dokument.Kontext.Einrichtungsart",
      "short" : "Art der Einrichtung zum Vorgang",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Type of facility of the activity"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Art der Einrichtung, in der die Handlung oder Prozedur am Patienten erfolgte",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Type of facility in which the action or procedure was performed on the patient"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.context.facilityType"
      }]
    }]
  }
}

```
