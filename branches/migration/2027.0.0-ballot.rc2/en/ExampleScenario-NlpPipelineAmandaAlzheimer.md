# NLP-Pipeline „Amanda Alzheimer“ - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NLP-Pipeline „Amanda Alzheimer“**

## ExampleScenario: NLP-Pipeline „Amanda Alzheimer“ 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ExampleScenario/NlpPipelineAmandaAlzheimer | *Version*:2027.0.0-ballot.rc2 |
| Draft as of 2026-09-12 | *Computable Name*:NlpPipelineAmandaAlzheimer |

The scenario describes the NLP processing chain of the "Amanda Alzheimer" example; the example instances, the flow diagram and the explanation of the `relatesTo` relationships are on the [Examples](examples.md#example-scenario-amanda-alzheimer-nlp-pipeline) page.

#### Actors

#### Diagram

#### Processes

#### Instances



## Resource Content

```json
{
  "resourceType" : "ExampleScenario",
  "id" : "NlpPipelineAmandaAlzheimer",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ExampleScenario/NlpPipelineAmandaAlzheimer",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "NlpPipelineAmandaAlzheimer",
  "status" : "draft",
  "date" : "2026-09-12T21:08:11+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Zeigt, wie das Dokument-Profil und die Extension MII_EX_Dokument_NLP_Processing_Status die Ergebnisdokumente einer NLP-Verarbeitungskette und ihre Beziehungen (relatesTo: transforms, appends) abbilden.",
  "_purpose" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "Shows how the Dokument profile and the MII_EX_Dokument_NLP_Processing_Status extension represent the result documents of an NLP processing chain and their relationships (relatesTo: transforms, appends)."
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "actor" : [{
    "actorId" : "source",
    "type" : "entity",
    "name" : "Dokumentenquelle",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Document source"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "System oder Bestand, aus dem die zu verarbeitenden Dokumente stammen — im Beispiel der synthetische Korpus GraSCCo (Graz Synthetic Clinical text Corpus, DOI 10.5281/zenodo.6539130), aus dem der Entlassbrief `Amanda_Alzheimer.docx` stammt; in der Praxis etwa ein Dokumentenarchiv oder Dokumentenmanagementsystem, ein Krankenhausinformationssystem, eine Forschungsdatenbank oder ein Dateispeicher.",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "System or holding the documents to be processed come from — in this example the synthetic corpus GraSCCo (Graz Synthetic Clinical text Corpus, DOI 10.5281/zenodo.6539130), the source of the discharge letter `Amanda_Alzheimer.docx`; in practice a document archive or document management system, a hospital information system, a research database or a file store."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  },
  {
    "actorId" : "nlp",
    "type" : "entity",
    "name" : "NLP-Pipeline / Annotationsframework",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "NLP pipeline / annotation framework"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "Werkzeugkette, die die Verarbeitungsschritte teil- oder vollautomatisch ausführt — Klartext-Extraktion, automatische Vorannotation identifizierender Angaben, Ersetzung durch typkonforme Surrogate, semantische Annotation (z. B. Annotationsplattform INCEpTION mit vorgeschalteter NLP-Komponente, vgl. die De-Identifikations-Pipeline des GeMTeX-Projekts) — und für jedes Ergebnisdokument eine Dokumentreferenz erzeugt.",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Tool chain that carries out the processing steps semi- or fully automatically — plain-text extraction, automatic pre-annotation of identifying items, replacement by type-conformant surrogates, semantic annotation (for example the INCEpTION annotation platform with an upstream NLP component, compare the de-identification pipeline of the GeMTeX project) — and creates a document reference for every result document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  },
  {
    "actorId" : "annotators",
    "type" : "person",
    "name" : "Annotierende",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Annotators"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "Fachpersonen, die die automatische Vorannotation prüfen und korrigieren (Kuratierung der De-Identifikation) und die semantische Annotation im Annotationsframework vornehmen.",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Specialists who review and correct the automatic pre-annotation (curation of the de-identification) and carry out the semantic annotation in the annotation framework."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  },
  {
    "actorId" : "repo",
    "type" : "entity",
    "name" : "Dokumentenrepository (FHIR)",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Document repository (FHIR)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "FHIR-Server, der die Dokumentreferenzen aller Verarbeitungsstufen mit ihren NLP-Verarbeitungsstatus und `relatesTo`-Verknüpfungen ablegt. Das Repository führt keine Transformation aus; es dokumentiert die Ergebnisse der Pipeline.",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "FHIR server that stores the document references of every processing stage with their NLP processing status and `relatesTo` links. The repository performs no transformation; it documents the results of the pipeline."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  }],
  "instance" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ExampleScenario.instance.content",
      "valueReference" : {
        "reference" : "DocumentReference/AmandaAlzheimerOriginalDokument"
      }
    }],
    "resourceId" : "AmandaAlzheimerOriginalDokument",
    "resourceType" : "DocumentReference",
    "name" : "Originaldokument (Amanda_Alzheimer.docx)",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Original document (Amanda_Alzheimer.docx)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "Ausgangspunkt der Kette: `Amanda_Alzheimer.docx` (`application/vnd.openxmlformats-officedocument.wordprocessingml.document`, `attachment.creation` 2028-02-06). NLP-Verarbeitungsstatus `unprocessed`; kein `relatesTo`. Verweist auf die Patientin (`subject`) und den Einrichtungskontakt (`context.encounter`).",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Starting point of the chain: `Amanda_Alzheimer.docx` (`application/vnd.openxmlformats-officedocument.wordprocessingml.document`, `attachment.creation` 2028-02-06). NLP processing status `unprocessed`; no `relatesTo`. References the patient (`subject`) and the facility contact (`context.encounter`)."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ExampleScenario.instance.content",
      "valueReference" : {
        "reference" : "DocumentReference/AmandaAlzheimerKlartextDokument"
      }
    }],
    "resourceId" : "AmandaAlzheimerKlartextDokument",
    "resourceType" : "DocumentReference",
    "name" : "Klartext-Dokument (Amanda_Alzheimer.txt)",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Plain-text document (Amanda_Alzheimer.txt)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "Ergebnis der Klartext-Extraktion: `Amanda_Alzheimer.txt` (`text/plain`, `attachment.creation` 2028-02-06). Status `preprocessed`, `format-change`; `relatesTo.transforms` → Originaldokument. Verweist weiterhin auf die Patientin und den Einrichtungskontakt.",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Result of the plain-text extraction: `Amanda_Alzheimer.txt` (`text/plain`, `attachment.creation` 2028-02-06). Status `preprocessed`, `format-change`; `relatesTo.transforms` → original document. Still references the patient and the facility contact."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ExampleScenario.instance.content",
      "valueReference" : {
        "reference" : "DocumentReference/AmandaAlzheimerDeIdentifiziertesDokument"
      }
    }],
    "resourceId" : "AmandaAlzheimerDeIdentifiziertesDokument",
    "resourceType" : "DocumentReference",
    "name" : "De-identifiziertes Dokument (De-ID.txt)",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "De-identified document (De-ID.txt)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "Ergebnis der De-Identifikation: `De-ID.txt` (`text/plain`). Status `preprocessed`, `format-change`, `surrogated`; `relatesTo.transforms` → Klartext-Dokument. Ohne `subject` und ohne `context.encounter` — die identifizierenden Angaben sind durch Surrogate ersetzt, das Ergebnisdokument ist keinem Patientenkontext mehr zugeordnet.",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Result of the de-identification: `De-ID.txt` (`text/plain`). Status `preprocessed`, `format-change`, `surrogated`; `relatesTo.transforms` → plain-text document. Without `subject` and without `context.encounter` — the identifying items have been replaced by surrogates, so the result document is no longer tied to a patient context."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ExampleScenario.instance.content",
      "valueReference" : {
        "reference" : "DocumentReference/AmandaAlzheimerAnnotiertesDokument"
      }
    }],
    "resourceId" : "AmandaAlzheimerAnnotiertesDokument",
    "resourceType" : "DocumentReference",
    "name" : "Annotiertes Dokument (Annotat.zip)",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Annotated document (Annotat.zip)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "Ergebnis der semantischen Annotation: `Annotat.zip` (`application/zip`). Status `annotated`, `semantic`, `surrogated`, `preprocessed`, `format-change`; `relatesTo.appends` → de-identifiziertes Dokument, da die Annotationen das Dokument ergänzen und nicht ersetzen. Ebenfalls ohne `subject` und `context.encounter`.",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Result of the semantic annotation: `Annotat.zip` (`application/zip`). Status `annotated`, `semantic`, `surrogated`, `preprocessed`, `format-change`; `relatesTo.appends` → de-identified document, because the annotations supplement the document rather than replace it. Likewise without `subject` and `context.encounter`."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ExampleScenario.instance.content",
      "valueReference" : {
        "reference" : "Patient/AmandaAlzheimer"
      }
    }],
    "resourceId" : "AmandaAlzheimer",
    "resourceType" : "Patient",
    "name" : "Patientin Amanda Alzheimer",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Patient Amanda Alzheimer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "Synthetische Patientin; `subject` des Original- und des Klartext-Dokuments. Ab der De-Identifikation wird sie nicht mehr referenziert.",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Synthetic patient; `subject` of the original and the plain-text document. From the de-identification onwards she is no longer referenced."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ExampleScenario.instance.content",
      "valueReference" : {
        "reference" : "Encounter/AmandaAlzheimerEinrichtungskontakt"
      }
    }],
    "resourceId" : "AmandaAlzheimerEinrichtungskontakt",
    "resourceType" : "Encounter",
    "name" : "Einrichtungskontakt",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Facility contact"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "`context.encounter` des Original- und des Klartext-Dokuments und oberster Kontakt der Kontakthierarchie (ohne `partOf`).",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "`context.encounter` of the original and the plain-text document, and the topmost contact of the contact hierarchy (no `partOf`)."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ExampleScenario.instance.content",
      "valueReference" : {
        "reference" : "Encounter/AmandaAlzheimerAbteilungskontakt"
      }
    }],
    "resourceId" : "AmandaAlzheimerAbteilungskontakt",
    "resourceType" : "Encounter",
    "name" : "Abteilungskontakt",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Department contact"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "Mittlere Ebene der Kontakthierarchie (`partOf` → Einrichtungskontakt); von keiner Dokumentreferenz unmittelbar referenziert.",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Middle level of the contact hierarchy (`partOf` → facility contact); not referenced directly by any document reference."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ExampleScenario.instance.content",
      "valueReference" : {
        "reference" : "Encounter/AmandaAlzheimerVersorgungsstellenKontakt"
      }
    }],
    "resourceId" : "AmandaAlzheimerVersorgungsstellenKontakt",
    "resourceType" : "Encounter",
    "name" : "Versorgungsstellenkontakt",
    "_name" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Point-of-care contact"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "Unterste Ebene der Kontakthierarchie (`partOf` → Abteilungskontakt); von keiner Dokumentreferenz unmittelbar referenziert.",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Lowest level of the contact hierarchy (`partOf` → department contact); not referenced directly by any document reference."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    }
  }],
  "process" : [{
    "title" : "NLP-Verarbeitung eines Entlassbriefs",
    "_title" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "NLP processing of a discharge letter"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "description" : "Vier Verarbeitungsschritte der NLP-Pipeline (teil- oder vollautomatisch, mit Prüfung durch Annotierende); die FHIR-DocumentReference-Ressourcen dokumentieren nur die Ergebnisse dieser Schritte, kumulieren den NLP-Verarbeitungsstatus und verknüpfen die Ergebnisdokumente über `relatesTo`. Das Dokumentenrepository transformiert nichts — es speichert die Dokumentreferenzen.",
    "_description" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Four processing steps of the NLP pipeline (semi- or fully automatic, reviewed by annotators); the FHIR DocumentReference resources only document the results of these steps, accumulate the NLP processing status and link the result documents through `relatesTo`. The document repository transforms nothing — it stores the document references."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "preConditions" : "Der Entlassbrief `Amanda_Alzheimer.docx` liegt in der Dokumentenquelle vor; Patientin und Einrichtungskontakt sind als FHIR-Ressourcen vorhanden.",
    "_preConditions" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "The discharge letter `Amanda_Alzheimer.docx` is present in the document source; the patient and the facility contact exist as FHIR resources."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "postConditions" : "Vier Dokumentreferenzen (Original, Klartext, de-identifiziert, annotiert) mit `relatesTo`-Kette und NLP-Verarbeitungsstatus liegen im Repository; die Ergebnisdokumente selbst liegen als Anhang oder Verweis in der jeweiligen Dokumentreferenz.",
    "_postConditions" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Four document references (original, plain text, de-identified, annotated) with their `relatesTo` chain and NLP processing status are held in the repository; the result documents themselves are carried as an attachment or a reference in the respective document reference."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "step" : [{
      "operation" : {
        "number" : "1",
        "type" : "Ingestion",
        "name" : "Originaldokument übernehmen",
        "_name" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Take in the original document"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "initiator" : "source",
        "receiver" : "nlp",
        "description" : "Die Pipeline übernimmt das Originaldokument `Amanda_Alzheimer.docx` aus der Dokumentenquelle.",
        "_description" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The pipeline takes the original document `Amanda_Alzheimer.docx` from the document source."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "request" : {
          "resourceId" : "AmandaAlzheimerOriginalDokument"
        }
      }
    },
    {
      "operation" : {
        "number" : "2",
        "type" : "Dokumentreferenz ablegen",
        "name" : "Original dokumentieren",
        "_name" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Document the original"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "initiator" : "nlp",
        "receiver" : "repo",
        "description" : "Dokumentreferenz auf das Original mit NLP-Verarbeitungsstatus `unprocessed`.",
        "_description" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Document reference to the original with NLP processing status `unprocessed`."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "request" : {
          "resourceId" : "AmandaAlzheimerOriginalDokument"
        }
      }
    },
    {
      "operation" : {
        "number" : "3",
        "type" : "Preprocessing",
        "name" : "Klartext-Extraktion",
        "_name" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Plain-text extraction"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "initiator" : "nlp",
        "receiver" : "nlp",
        "description" : "Automatische Umwandlung in Klartext (`Amanda_Alzheimer.txt`).",
        "_description" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Automatic conversion to plain text (`Amanda_Alzheimer.txt`)."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "request" : {
          "resourceId" : "AmandaAlzheimerOriginalDokument"
        }
      }
    },
    {
      "operation" : {
        "number" : "4",
        "type" : "Dokumentreferenz ablegen",
        "name" : "Klartext dokumentieren",
        "_name" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Document the plain text"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "initiator" : "nlp",
        "receiver" : "repo",
        "description" : "Dokumentreferenz mit Status `preprocessed, format-change`, `relatesTo.transforms` → Original.",
        "_description" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Document reference with status `preprocessed, format-change`, `relatesTo.transforms` → original."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "request" : {
          "resourceId" : "AmandaAlzheimerKlartextDokument"
        }
      }
    },
    {
      "operation" : {
        "number" : "5",
        "type" : "De-Identification",
        "name" : "De-Identifikation mit Prüfung",
        "_name" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "De-identification with review"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "initiator" : "nlp",
        "receiver" : "annotators",
        "description" : "Automatische Vorannotation identifizierender Angaben, manuelle Kuratierung durch die Annotierenden, danach automatische Ersetzung durch typkonforme Surrogate (`De-ID.txt`).",
        "_description" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Automatic pre-annotation of identifying items, manual curation by the annotators, then automatic replacement by type-conformant surrogates (`De-ID.txt`)."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "request" : {
          "resourceId" : "AmandaAlzheimerKlartextDokument"
        }
      }
    },
    {
      "operation" : {
        "number" : "6",
        "type" : "Dokumentreferenz ablegen",
        "name" : "De-identifiziertes Dokument dokumentieren",
        "_name" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Document the de-identified document"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "initiator" : "nlp",
        "receiver" : "repo",
        "description" : "Dokumentreferenz mit Status `preprocessed, format-change, surrogated`, `relatesTo.transforms` → Klartext-Dokument.",
        "_description" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Document reference with status `preprocessed, format-change, surrogated`, `relatesTo.transforms` → plain-text document."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "request" : {
          "resourceId" : "AmandaAlzheimerDeIdentifiziertesDokument"
        }
      }
    },
    {
      "operation" : {
        "number" : "7",
        "type" : "Annotation",
        "name" : "Semantische Annotation",
        "_name" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Semantic annotation"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "initiator" : "annotators",
        "receiver" : "nlp",
        "description" : "Semantische Annotation der klinischen Inhalte im Annotationsframework durch die Annotierenden; die Ergebnisdateien werden als `Annotat.zip` zusammengefasst.",
        "_description" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Semantic annotation of the clinical content in the annotation framework by the annotators; the result files are bundled as `Annotat.zip`."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "request" : {
          "resourceId" : "AmandaAlzheimerDeIdentifiziertesDokument"
        }
      }
    },
    {
      "operation" : {
        "number" : "8",
        "type" : "Dokumentreferenz ablegen",
        "name" : "Annotiertes Dokument dokumentieren",
        "_name" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Document the annotated document"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "initiator" : "nlp",
        "receiver" : "repo",
        "description" : "Dokumentreferenz mit Status `annotated, semantic, surrogated, preprocessed, format-change`, `relatesTo.appends` → de-identifiziertes Dokument.",
        "_description" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Document reference with status `annotated, semantic, surrogated, preprocessed, format-change`, `relatesTo.appends` → de-identified document."
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "request" : {
          "resourceId" : "AmandaAlzheimerAnnotiertesDokument"
        }
      }
    }]
  }]
}

```
