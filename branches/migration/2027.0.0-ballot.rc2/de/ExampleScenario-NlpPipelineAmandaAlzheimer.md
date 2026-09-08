# NLP-Pipeline „Amanda Alzheimer“ - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **NLP-Pipeline „Amanda Alzheimer“**

## ExampleScenario: NLP-Pipeline „Amanda Alzheimer“ 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ExampleScenario/NlpPipelineAmandaAlzheimer | *Version*:2027.0.0-ballot.rc2 |
| Draft Stand: 2026-09-08 | *Maschinenlesbarer Name*:NlpPipelineAmandaAlzheimer |

#### Akteure

#### Diagramm

#### Prozesse

#### Instanzen



## Resource Content

```json
{
  "resourceType" : "ExampleScenario",
  "id" : "NlpPipelineAmandaAlzheimer",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ExampleScenario/NlpPipelineAmandaAlzheimer",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "NlpPipelineAmandaAlzheimer",
  "status" : "draft",
  "date" : "2026-09-08T15:07:59+00:00",
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
  "actor" : [{
    "actorId" : "source",
    "type" : "entity",
    "name" : "Dokumentenquelle",
    "description" : "System oder Bestand, aus dem die zu verarbeitenden Dokumente stammen — im Beispiel der synthetische Korpus GraSCCo (Graz Synthetic Clinical text Corpus, DOI 10.5281/zenodo.6539130), aus dem der Entlassbrief `Amanda_Alzheimer.docx` stammt; in der Praxis etwa ein Dokumentenarchiv oder Dokumentenmanagementsystem, ein Krankenhausinformationssystem, eine Forschungsdatenbank oder ein Dateispeicher."
  },
  {
    "actorId" : "nlp",
    "type" : "entity",
    "name" : "NLP-Pipeline",
    "description" : "Verarbeitungskette aus Ingestion, Preprocessing, De-Identification und Annotation; jede Stufe erzeugt ein Ergebnisdokument und eine Dokumentreferenz."
  },
  {
    "actorId" : "repo",
    "type" : "entity",
    "name" : "Dokumentenrepository (FHIR)",
    "description" : "FHIR-Server, in dem die Dokumentreferenzen aller Stufen mit ihren NLP-Verarbeitungsstatus abgelegt werden."
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
    "name" : "Original-Dokument (Amanda_Alzheimer.docx)",
    "description" : "Dokumentreferenz auf das Originaldokument; NLP-Verarbeitungsstatus `unprocessed`."
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
    "description" : "Status `preprocessed, format-change`; `relatesTo.transforms` → Original-Dokument."
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
    "description" : "Status `preprocessed, format-change, surrogated`; `relatesTo.transforms` → Klartext-Dokument."
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
    "description" : "Status `annotated, semantic, surrogated, preprocessed, format-change`; `relatesTo.appends` → De-identifiziertes Dokument."
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
    "description" : "Synthetische Patientin; nur vom Original-Dokument referenziert (`subject`)."
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
    "description" : "Kontext des Original-Dokuments (`context.encounter`)."
  }],
  "process" : [{
    "title" : "NLP-Verarbeitung eines Entlassbriefs",
    "description" : "Vier aufeinanderfolgende Verarbeitungsschritte; jeder Schritt legt eine neue Dokumentreferenz an, die den Verarbeitungsstatus kumuliert und auf die Referenz des vorherigen Schritts verweist.",
    "preConditions" : "Der Entlassbrief `Amanda_Alzheimer.docx` liegt in der Dokumentenquelle vor; Patientin und Einrichtungskontakt sind als FHIR-Ressourcen vorhanden.",
    "postConditions" : "Vier Dokumentreferenzen (Original, Klartext, de-identifiziert, annotiert) mit `relatesTo`-Kette und NLP-Verarbeitungsstatus liegen im Repository.",
    "step" : [{
      "operation" : {
        "number" : "1",
        "type" : "Ingestion",
        "name" : "Erschließung des Originaldokuments",
        "initiator" : "source",
        "receiver" : "nlp",
        "description" : "Das Originaldokument wird übernommen; die Dokumentreferenz erhält den Status `unprocessed`.",
        "request" : {
          "resourceId" : "AmandaAlzheimerOriginalDokument"
        }
      }
    },
    {
      "operation" : {
        "number" : "2",
        "type" : "Preprocessing",
        "name" : "Klartext-Extraktion",
        "initiator" : "nlp",
        "receiver" : "repo",
        "description" : "Umwandlung in Klartext (`Amanda_Alzheimer.txt`); neue Dokumentreferenz mit `preprocessed, format-change`, verweist mit `transforms` auf das Original.",
        "request" : {
          "resourceId" : "AmandaAlzheimerOriginalDokument"
        },
        "response" : {
          "resourceId" : "AmandaAlzheimerKlartextDokument"
        }
      }
    },
    {
      "operation" : {
        "number" : "3",
        "type" : "De-Identification",
        "name" : "De-Identifikation",
        "initiator" : "nlp",
        "receiver" : "repo",
        "description" : "Identifizierende Inhalte werden durch Surrogate ersetzt (`De-ID.txt`); Status `preprocessed, format-change, surrogated`, verweist mit `transforms` auf das Klartextdokument.",
        "request" : {
          "resourceId" : "AmandaAlzheimerKlartextDokument"
        },
        "response" : {
          "resourceId" : "AmandaAlzheimerDeIdentifiziertesDokument"
        }
      }
    },
    {
      "operation" : {
        "number" : "4",
        "type" : "Annotation",
        "name" : "Semantische Annotation",
        "initiator" : "nlp",
        "receiver" : "repo",
        "description" : "Annotation der klinischen Inhalte (`Annotat.zip`); Status `annotated, semantic, surrogated, preprocessed, format-change`, erweitert mit `appends` die vorherige Dokumentreferenz.",
        "request" : {
          "resourceId" : "AmandaAlzheimerDeIdentifiziertesDokument"
        },
        "response" : {
          "resourceId" : "AmandaAlzheimerAnnotiertesDokument"
        }
      }
    }]
  }]
}

```
