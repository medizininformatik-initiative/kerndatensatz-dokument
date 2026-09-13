# NLP-Pipeline „Amanda Alzheimer“ - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **NLP-Pipeline „Amanda Alzheimer“**

## ExampleScenario: NLP-Pipeline „Amanda Alzheimer“ 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ExampleScenario/NlpPipelineAmandaAlzheimer | *Version*:2027.0.0-ballot.rc2 |
| Draft Stand: 2026-09-13 | *Maschinenlesbarer Name*:NlpPipelineAmandaAlzheimer |

Das Szenario beschreibt die NLP-Verarbeitungskette des Beispiels „Amanda Alzheimer“; die Beispielinstanzen selbst, das Ablaufdiagramm und die Erläuterung der `relatesTo`-Beziehungen stehen auf der Seite [Beispiele](examples.md#beispielszenario-nlp-pipeline-amanda-alzheimer).

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
  "date" : "2026-09-13T06:03:43+00:00",
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
    "name" : "NLP-Pipeline / Annotationsframework",
    "description" : "Werkzeugkette, die die Verarbeitungsschritte teil- oder vollautomatisch ausführt — Klartext-Extraktion, automatische Vorannotation identifizierender Angaben, Ersetzung durch typkonforme Surrogate, semantische Annotation (z. B. Annotationsplattform INCEpTION mit vorgeschalteter NLP-Komponente, vgl. die De-Identifikations-Pipeline des GeMTeX-Projekts) — und für jedes Ergebnisdokument eine Dokumentreferenz erzeugt."
  },
  {
    "actorId" : "annotators",
    "type" : "person",
    "name" : "Annotierende",
    "description" : "Fachpersonen, die die automatische Vorannotation prüfen und korrigieren (Kuratierung der De-Identifikation) und die semantische Annotation im Annotationsframework vornehmen."
  },
  {
    "actorId" : "repo",
    "type" : "entity",
    "name" : "Dokumentenrepository (FHIR)",
    "description" : "FHIR-Server, der die Dokumentreferenzen aller Verarbeitungsstufen mit ihren NLP-Verarbeitungsstatus und `relatesTo`-Verknüpfungen ablegt. Das Repository führt keine Transformation aus; es dokumentiert die Ergebnisse der Pipeline."
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
    "description" : "Ausgangspunkt der Kette: `Amanda_Alzheimer.docx` (`application/vnd.openxmlformats-officedocument.wordprocessingml.document`, `attachment.creation` 2028-02-06). NLP-Verarbeitungsstatus `unprocessed`; kein `relatesTo`. Verweist auf die Patientin (`subject`) und den Einrichtungskontakt (`context.encounter`)."
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
    "description" : "Ergebnis der Klartext-Extraktion: `Amanda_Alzheimer.txt` (`text/plain`, `attachment.creation` 2028-02-06). Status `preprocessed`, `format-change`; `relatesTo.transforms` → Originaldokument. Verweist weiterhin auf die Patientin und den Einrichtungskontakt."
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
    "description" : "Ergebnis der De-Identifikation: `De-ID.txt` (`text/plain`). Status `preprocessed`, `format-change`, `surrogated`; `relatesTo.transforms` → Klartext-Dokument. Ohne `subject` und ohne `context.encounter` — die identifizierenden Angaben sind durch Surrogate ersetzt, das Ergebnisdokument ist keinem Patientenkontext mehr zugeordnet."
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
    "description" : "Ergebnis der semantischen Annotation: `Annotat.zip` (`application/zip`). Status `annotated`, `semantic`, `surrogated`, `preprocessed`, `format-change`; `relatesTo.appends` → de-identifiziertes Dokument, da die Annotationen das Dokument ergänzen und nicht ersetzen. Ebenfalls ohne `subject` und `context.encounter`."
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
    "description" : "Synthetische Patientin; `subject` des Original- und des Klartext-Dokuments. Ab der De-Identifikation wird sie nicht mehr referenziert."
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
    "description" : "`context.encounter` des Original- und des Klartext-Dokuments und oberster Kontakt der Kontakthierarchie (ohne `partOf`)."
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
    "description" : "Mittlere Ebene der Kontakthierarchie (`partOf` → Einrichtungskontakt); von keiner Dokumentreferenz unmittelbar referenziert."
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
    "description" : "Unterste Ebene der Kontakthierarchie (`partOf` → Abteilungskontakt); von keiner Dokumentreferenz unmittelbar referenziert."
  }],
  "process" : [{
    "title" : "NLP-Verarbeitung eines Entlassbriefs",
    "description" : "Vier Verarbeitungsschritte der NLP-Pipeline (teil- oder vollautomatisch, mit Prüfung durch Annotierende); die FHIR-DocumentReference-Ressourcen dokumentieren nur die Ergebnisse dieser Schritte, kumulieren den NLP-Verarbeitungsstatus und verknüpfen die Ergebnisdokumente über `relatesTo`. Das Dokumentenrepository transformiert nichts — es speichert die Dokumentreferenzen.",
    "preConditions" : "Der Entlassbrief `Amanda_Alzheimer.docx` liegt in der Dokumentenquelle vor; Patientin und Einrichtungskontakt sind als FHIR-Ressourcen vorhanden.",
    "postConditions" : "Vier Dokumentreferenzen (Original, Klartext, de-identifiziert, annotiert) mit `relatesTo`-Kette und NLP-Verarbeitungsstatus liegen im Repository; die Ergebnisdokumente selbst liegen als Anhang oder Verweis in der jeweiligen Dokumentreferenz.",
    "step" : [{
      "operation" : {
        "number" : "1",
        "type" : "Ingestion",
        "name" : "Originaldokument übernehmen",
        "initiator" : "source",
        "receiver" : "nlp",
        "description" : "Die Pipeline übernimmt das Originaldokument `Amanda_Alzheimer.docx` aus der Dokumentenquelle.",
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
        "initiator" : "nlp",
        "receiver" : "repo",
        "description" : "Dokumentreferenz auf das Original mit NLP-Verarbeitungsstatus `unprocessed`.",
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
        "initiator" : "nlp",
        "receiver" : "nlp",
        "description" : "Automatische Umwandlung in Klartext (`Amanda_Alzheimer.txt`).",
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
        "initiator" : "nlp",
        "receiver" : "repo",
        "description" : "Dokumentreferenz mit Status `preprocessed, format-change`, `relatesTo.transforms` → Original.",
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
        "initiator" : "nlp",
        "receiver" : "annotators",
        "description" : "Automatische Vorannotation identifizierender Angaben, manuelle Kuratierung durch die Annotierenden, danach automatische Ersetzung durch typkonforme Surrogate (`De-ID.txt`).",
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
        "initiator" : "nlp",
        "receiver" : "repo",
        "description" : "Dokumentreferenz mit Status `preprocessed, format-change, surrogated`, `relatesTo.transforms` → Klartext-Dokument.",
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
        "initiator" : "annotators",
        "receiver" : "nlp",
        "description" : "Semantische Annotation der klinischen Inhalte im Annotationsframework durch die Annotierenden; die Ergebnisdateien werden als `Annotat.zip` zusammengefasst.",
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
        "initiator" : "nlp",
        "receiver" : "repo",
        "description" : "Dokumentreferenz mit Status `annotated, semantic, surrogated, preprocessed, format-change`, `relatesTo.appends` → de-identifiziertes Dokument.",
        "request" : {
          "resourceId" : "AmandaAlzheimerAnnotiertesDokument"
        }
      }
    }]
  }]
}

```
