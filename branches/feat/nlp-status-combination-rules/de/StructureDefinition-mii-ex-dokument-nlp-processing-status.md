# MII EX Dokument NLP Processing Status - MII IG Dokument v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Dokument NLP Processing Status**

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-dokument-nlp-processing-status.csv), [Excel](../StructureDefinition-mii-ex-dokument-nlp-processing-status.xlsx), [Schematron](../StructureDefinition-mii-ex-dokument-nlp-processing-status.sch) 

## Extension: MII EX Dokument NLP Processing Status 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status | *Version*:2027.0.0-ballot.2 |
| Active Stand: 2026-11-27 | *Maschinenlesbarer Name*:MII_EX_Dokument_NLP_Processing_Status |

Status der NLP-Verarbeitung des referenzierten Dokuments

**Context of Use**

### Beschreibung

Diese Erweiterung dient der strukturierten Beschreibung des Bearbeitungsstatus eines Dokuments innerhalb eines NLP-Projekts. Die Verarbeitung von Dokumenten mit unstrukturierter Information erfolgt typischerweise in einer Vielzahl aufeinanderfolgender Verarbeitungsschritte. Im Verlauf dieser Prozessketten entstehen unterschiedliche Transformationen des Originaldokuments sowie Relationen zwischen dem Ursprungsdokument und daraus abgeleiteten Zwischenprodukten.

Die NLP Extension stellt hierfür ein Codesystem bereit, mit dem die verschiedenen Bearbeitungszustände und Zwischenprodukte eines NLP-Workflows konsistent beschrieben und archiviert werden können.

Das Codesystem der NLP Extension ist hierarchisch aufgebaut und umfasst zwei Ebenen: Level 1 (Lvl 1) und Level 2 (Lvl 2). Lvl 1 beschreibt einen übergeordneten Prozessstatus, beispielsweise annotated. Lvl 2 dient der Spezifikation dieses Status. Ein Beispiel ist die Kombination Lvl 1: `annotated`, Lvl 2: `deid`, die anzeigt, dass ein Dokument mit de-identifizierenden Annotationen versehen wurde.

Die Nutzung beider Hierarchieebenen ist nicht verpflichtend. Abhängig vom jeweiligen Anwendungsszenario kann frei entschieden werden, ob nur der übergeordnete Status (Lvl 1) oder zusätzlich eine spezifische Ausdifferenzierung über Lvl 2 verwendet wird. Bitte beachten: wird eine Lvl 2 Spezifikation genutzt wie z.B. `deid` muss auch zwingend das dazugehörige Lvl 1 `annotated` verwendet werden. Andernfalls könnte `deid` als vollständig de-identifiziertes Dokument missverstanden werden. Die Regeln im Abschnitt [Kombinationsregeln](#kombinationsregeln) prüfen das.

Ein exemplarischer Anwendungsfall ist ein Dokument innerhalb eines Annotationsprojekts, das bereits aus einem Quellsystem extrahiert und anonymisiert wurde. Bis zum aktuellen Bearbeitungsstand können mehrere Verarbeitungsschritte erfolgt sein, beispielsweise:

* Transformation des Dateiformats von `.pdf` zu `.txt` (`preprocessed` – `format-change`)
* Entfernung von Dokumentheadern (`preprocessed` – `content-change`)
* maschinelle Vorannotation identifizierender Strukturen (`annotated` – `preanno` `deid`)
* anschließende manuelle Annotation dieser Strukturen (`annotated` – `deid`)
* irreversible Ersetzung aller identifizierenden Annotationen durch Surrogate (`surrogated`)

Die NLP Extension lässt bewusst Freiheitsgrade bei der Dokumentation solcher Prozessketten. Es ist möglich, sämtliche Verarbeitungsschritte eines Dokuments abzubilden. Alternativ kann sich die Beschreibung auf ausgewählte, für den jeweiligen Anwendungsfall wesentliche Bearbeitungszustände beschränken, beispielsweise ausschließlich auf den finalen Status surrogated.

### Mehrere Status

Ein Dokument trägt oft mehrere Status zugleich, etwa `preprocessed` und `format-change` nach einer Formatwandlung. Das Informationsmodell erlaubt beliebig viele NLP-Verarbeitungsstatus je Dokument (`0..*`); sie lassen sich auf zwei gleichwertige Arten angeben:

* als mehrere Codings einer Extension, wie in den [Beispielen](examples.md#beispielszenario-nlp-pipeline-amanda-alzheimer), oder
* als mehrere Wiederholungen der Extension mit je einem Status.

Alle Codings aller Wiederholungen beschreiben zusammen den erreichten Verarbeitungsstand des Dokuments; Empfänger werten alle aus. Ihre Reihenfolge trägt keine Bedeutung. Die Abfolge der Verarbeitungsschritte geben die Beziehungen zwischen den Dokumenten an (`relatesTo`).

In FHIR stehen mehrere Codings eines `CodeableConcept` üblicherweise für dasselbe Konzept. In dieser Extension stehen sie für verschiedene, gemeinsam erreichte Status. Diese Form bleibt gültig, damit bereits nach dem Vorbild der Beispiele erzeugte Dokumente gültig bleiben.

### Kombinationsregeln

Fünf Regeln prüfen, wie die Status eines Dokuments kombiniert sind. Sie sind am [Dokument-Profil](StructureDefinition-mii-pr-dokument-dokument.md) definiert, gelten über alle Codings und Wiederholungen und stehen dort in der Tabelle der Constraints. Die Regeln haben nicht alle dieselbe Grundlage: `mii-iv-dokument-nlp-3` und `-4` geben die Vorgabe aus der Beschreibung oben wieder (zu einer Lvl-2-Angabe gehört der Lvl-1-Status), `mii-iv-dokument-nlp-1` folgt aus der Definition des Codes `unprocessed`, und `mii-iv-dokument-nlp-2` und `-5` sind Empfehlungen.

| | | |
| :--- | :--- | :--- |
| `mii-iv-dokument-nlp-1` | `unprocessed`DARF NICHT zusammen mit einem anderen Status angegeben werden. | Definition des Codes:`unprocessed`ist das Dokument im Original. Jeder andere Status gibt eine erfolgte Verarbeitung an; beide Angaben zusammen widersprechen sich. |
| `mii-iv-dokument-nlp-2` | Jeder Status SOLLTE nur einmal angegeben werden. | Empfehlung: Alle Codings aller Wiederholungen beschreiben zusammen den erreichten Stand (siehe[Mehrere Status](#mehrere-status)); eine doppelte Angabe fügt nichts hinzu. |
| `mii-iv-dokument-nlp-3` | `format-change`und`content-change`MÜSSEN zusammen mit`preprocessed`angegeben werden. | Vorgabe aus der Beschreibung oben: Zu einer Lvl-2-Angabe gehört der Lvl-1-Status. Die Suche vergleicht Codes wörtlich (siehe[Suche](#suche)); ohne`preprocessed`findet eine Suche nach`preprocessed`das Dokument nicht. |
| `mii-iv-dokument-nlp-4` | `preanno`,`deid`und`semantic`MÜSSEN zusammen mit`annotated`angegeben werden. | Vorgabe aus der Beschreibung oben: Ohne`annotated`könnte`deid`als vollständig de-identifiziertes Dokument missverstanden werden. Ohne`annotated`findet auch eine Suche nach`annotated`das Dokument nicht. |
| `mii-iv-dokument-nlp-5` | `preanno`SOLLTE zusammen mit`deid`oder`semantic`angegeben werden. | Empfehlung:`preanno`gibt an, dass die Annotationen maschinell entstanden sind,`deid`und`semantic`geben an, worauf sie sich beziehen, wie im Beispiel „maschinelle Vorannotation identifizierender Strukturen“ oben.`annotated`mit`preanno`allein bleibt eine zulässige Angabe. |

Das Profil führt dieselben Begründungen an jeder Regel (`constraint.requirements`).

Die Regeln werden als Best Practice geprüft: Validatoren melden einen Verstoß als Warnung und weisen die Ressource nicht ab. Das gilt auch für die mit MUSS oder DARF NICHT formulierten Regeln (`mii-iv-dokument-nlp-1`, `-3` und `-4`): Sie legen fest, was die Daten erfüllen müssen, werden aber nur als Best Practice geprüft, damit bestehende Daten nicht abgewiesen werden. Die Beispiele der Versionen 2026.0.0 und 2026.0.1 etwa geben `deid` ohne `annotated` und `format-change` ohne `preprocessed` an. Beim HL7 FHIR Validator legt die Option `-best-practice` fest, wie streng die Regeln gemeldet werden (`hint`, `warning` als Standard, `error` oder `ignore`); sie gilt für alle Best-Practice-Regeln zugleich.

### Suche

Der Suchparameter `nlp-processing-status` findet ein Dokument über jedes Coding jeder Wiederholung. Die Suche vergleicht Codes wörtlich, ohne die Hierarchie des CodeSystems: Eine Suche nach `annotated` findet nur Dokumente, die `annotated` selbst angeben. Einzelheiten und Beispiele stehen auf der Seite [Suchparameter](search-parameters.md).

### Inhalt

Die technische Struktur dieser Extension — Differential, Key Elements, Snapshot sowie die XML- und JSON-Serialisierung — rendert der IG-Publisher unmittelbar unterhalb dieses Abschnitts auf dieser Artefakt-Seite. Dort stehen auch die Must-Support-Elemente mit ihren Kurzbeschreibungen und Hinweisen; Kanonische URL, Status, Version und Basisdefinition führt der Kopfbereich der Seite.

Die Codes des NLP-Verarbeitungsstatus definiert das CodeSystem [MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.md) mit seiner zweistufigen Hierarchie; gebunden wird die Extension über das ValueSet [MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.md).

### Beispiele

Das Beispielszenario zur NLP-Pipeline — Ablaufdiagramm, die Verarbeitungsschritte mit ihren NLP-Verarbeitungsstatus und die zugehörigen DocumentReference-, Patient- und Encounter-Ressourcen — steht auf der Seite [Beispiele](examples.md#beispielszenario-nlp-pipeline-amanda-alzheimer).

**Usage info**

**Usages:**

* Use this Extension: [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md)
* Examples for this Extension: [DocumentReference/AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md), [DocumentReference/AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md), [DocumentReference/AmandaAlzheimerKlartextDokument](DocumentReference-AmandaAlzheimerKlartextDokument.md) and [DocumentReference/AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.dokument|current/StructureDefinition/StructureDefinition-mii-ex-dokument-nlp-processing-status.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: Status der NLP-Verarbeitung des referenzierten Dokuments

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

** Summary **

Simple Extension with the type CodeableConcept: Status der NLP-Verarbeitung des referenzierten Dokuments

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 


## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-dokument-nlp-processing-status",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status",
  "version" : "2027.0.0-ballot.2",
  "name" : "MII_EX_Dokument_NLP_Processing_Status",
  "title" : "MII EX Dokument NLP Processing Status",
  "status" : "active",
  "date" : "2026-11-27T20:21:27+00:00",
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
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "DocumentReference"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Dokument NLP Processing Status",
      "definition" : "Status der NLP-Verarbeitung des referenzierten Dokuments"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "NLP-Verarbeitungsstatus",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "NLP processing status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Erreichter Status der NLP-Verarbeitung des referenzierten Dokuments. Die Angabe ist verpflichtend [MUST].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of the NLP processing the referenced document has reached [MUST]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "short" : "Erreichter Verarbeitungsstatus",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reached processing status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Code eines erreichten Verarbeitungsstatus. Mindestens ein Code ist verpflichtend [MUST].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Code of a reached processing status. At least one code is required [MUST]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Mehrere Codings geben gemeinsam erreichte Status an, z. B. `annotated` und `deid`; anders als sonst bei CodeableConcept sind sie keine alternativen Kodierungen desselben Konzepts. Jeder Status kann ebenso als eigene Wiederholung der Extension angegeben werden. Empfänger werten alle Codings aller Wiederholungen aus; die Reihenfolge trägt keine Bedeutung.",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Several codings state statuses reached together, e.g. `annotated` and `deid`; unlike other uses of CodeableConcept they are not alternative codings of the same concept. Each status may equally be given as its own repetition of the extension. Receivers evaluate all codings of all repetitions; their order carries no meaning."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-nlp-processing-status"
      }
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
