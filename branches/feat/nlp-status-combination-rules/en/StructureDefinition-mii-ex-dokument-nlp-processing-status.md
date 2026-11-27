# MII EX Dokument NLP Processing Status - MII IG Dokument v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Dokument NLP Processing Status**

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-dokument-nlp-processing-status.csv), [Excel](../StructureDefinition-mii-ex-dokument-nlp-processing-status.xlsx), [Schematron](../StructureDefinition-mii-ex-dokument-nlp-processing-status.sch) 

## Extension: MII EX Dokument NLP Processing Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status | *Version*:2027.0.0-ballot.2 |
| Active as of 2026-11-27 | *Computable Name*:MII_EX_Dokument_NLP_Processing_Status |

Status der NLP-Verarbeitung des referenzierten Dokuments

**Context of Use**

### Description

This extension is used for the structured description of the processing status of a document within an NLP project. Processing documents that carry unstructured information typically happens in a series of consecutive processing steps. In the course of these process chains, different transformations of the original document arise, as well as relations between the source document and the intermediate products derived from it.

For this purpose the NLP extension provides a code system with which the various processing states and intermediate products of an NLP workflow can be described and archived consistently.

The code system of the NLP extension is hierarchical and comprises two levels: level 1 (Lvl 1) and level 2 (Lvl 2). Lvl 1 describes a superordinate process status, for example annotated. Lvl 2 serves to specify that status. One example is the combination Lvl 1: `annotated`, Lvl 2: `deid`, which indicates that a document has been furnished with de-identifying annotations.

Using both hierarchy levels is not mandatory. Depending on the respective application scenario, it can be decided freely whether only the superordinate status (Lvl 1) or additionally a specific differentiation via Lvl 2 is used. Please note: if a Lvl 2 specification such as `deid` is used, the corresponding Lvl 1 `annotated` must also be used. Otherwise `deid` could be misunderstood as a fully de-identified document. The rules in the section [Combination rules](#combination-rules) check this.

An exemplary use case is a document within an annotation project that has already been extracted from a source system and anonymised. Several processing steps may have taken place up to the current processing state, for example:

* transformation of the file format from `.pdf` to `.txt` (`preprocessed` – `format-change`)
* removal of document headers (`preprocessed` – `content-change`)
* machine pre-annotation of identifying structures (`annotated` – `preanno` `deid`)
* subsequent manual annotation of those structures (`annotated` – `deid`)
* irreversible replacement of all identifying annotations by surrogates (`surrogated`)

The NLP extension deliberately leaves degrees of freedom in documenting such process chains. It is possible to represent every processing step of a document. Alternatively, the description may be limited to selected processing states that are essential for the respective use case, for example exclusively to the final status surrogated.

### Several statuses

A document often carries several statuses at once, for example `preprocessed` and `format-change` after a format conversion. The information model allows any number of NLP processing statuses per document (`0..*`); there are two equivalent ways to record them:

* as several codings of one extension, as in the [examples](examples.md#example-scenario-amanda-alzheimer-nlp-pipeline), or
* as several repetitions of the extension, one status each.

All codings of all repetitions together describe the processing state the document has reached; receivers evaluate all of them. Their order carries no meaning. The order of the processing steps is expressed by the relations between the documents (`relatesTo`).

In FHIR, several codings of one `CodeableConcept` usually represent the same concept. In this extension they stand for different statuses reached together. This form stays valid so that documents already produced following the examples remain valid.

### Combination rules

Five rules check how the statuses of a document are combined. They are defined on the [Dokument profile](StructureDefinition-mii-pr-dokument-dokument.md), apply across all codings and repetitions and appear there in the table of constraints. The rules do not all have the same basis: `mii-iv-dokument-nlp-3` and `-4` restate the requirement from the description above (a Lvl 2 status needs its Lvl 1 status), `mii-iv-dokument-nlp-1` follows from the definition of the code `unprocessed`, and `mii-iv-dokument-nlp-2` and `-5` are recommendations.

| | | |
| :--- | :--- | :--- |
| `mii-iv-dokument-nlp-1` | `unprocessed`SHALL NOT be given together with any other status. | Definition of the code:`unprocessed`is the document in its original form. Every other status states processing that has taken place; the two statements contradict each other. |
| `mii-iv-dokument-nlp-2` | Each status SHOULD be given only once. | Recommendation: all codings of all repetitions together describe the state reached (see[Several statuses](#several-statuses)), so a repeated status adds nothing. |
| `mii-iv-dokument-nlp-3` | `format-change`and`content-change`SHALL be given together with`preprocessed`. | Requirement from the description above: a Lvl 2 status needs its Lvl 1 status. The search compares codes literally (see[Searching](#searching)); without`preprocessed`, a search for`preprocessed`does not find the document. |
| `mii-iv-dokument-nlp-4` | `preanno`,`deid`and`semantic`SHALL be given together with`annotated`. | Requirement from the description above: without`annotated`,`deid`could be misunderstood as a fully de-identified document. Without`annotated`, a search for`annotated`does not find the document either. |
| `mii-iv-dokument-nlp-5` | `preanno`SHOULD be given together with`deid`or`semantic`. | Recommendation:`preanno`states that the annotations were made by machine,`deid`and`semantic`state what they refer to, as in the example "machine pre-annotation of identifying structures" above.`annotated`with`preanno`alone remains a permitted statement. |

The profile carries the same reasons with each rule (`constraint.requirements`).

The rules are checked as best practice: validators report a violation as a warning and do not reject the resource. This also applies to the rules stated with SHALL or SHALL NOT (`mii-iv-dokument-nlp-1`, `-3` and `-4`): they state what the data has to meet, but are only checked as best practice so that existing data is not rejected. The examples of the versions 2026.0.0 and 2026.0.1, for instance, give `deid` without `annotated` and `format-change` without `preprocessed`. With the HL7 FHIR Validator, the option `-best-practice` sets how strictly the rules are reported (`hint`, `warning`, the default, `error` or `ignore`); it applies to all best-practice rules at once.

### Searching

The search parameter `nlp-processing-status` finds a document by every coding of every repetition. The search compares codes literally, without the hierarchy of the code system: a search for `annotated` only finds documents that record `annotated` itself. Details and examples are on the [Search Parameters](search-parameters.md) page.

### Content

The technical structure of this extension — differential, key elements, snapshot and the XML and JSON serialisations — is rendered by the IG Publisher directly below this section on this artifact page. The Must Support elements with their short descriptions and comments are shown there as well; canonical URL, status, version and base definition are carried by the page header.

The codes of the NLP processing status are defined by the code system [MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.md) with its two-level hierarchy; the extension is bound via the value set [MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.md).

### Examples

The NLP pipeline example scenario — flow diagram, the processing steps with their NLP processing status and the associated DocumentReference, Patient and Encounter resources — is on the [Examples](examples.md#example-scenario-amanda-alzheimer-nlp-pipeline) page.

**Usage info**

**Usages:**

* Use this Extension: [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md)
* Examples for this Extension: [DocumentReference/AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md), [DocumentReference/AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md), [DocumentReference/AmandaAlzheimerKlartextDokument](DocumentReference-AmandaAlzheimerKlartextDokument.md) and [DocumentReference/AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.dokument|current/StructureDefinition/StructureDefinition-mii-ex-dokument-nlp-processing-status.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential Table](#tabs-diff) 
*  [Snapshot Table](#tabs-snap) 
*  [Statistics/References](#tabs-summ) 
*  [AllAll](#tabs-all) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

** Summary **

Simple Extension with the type CodeableConcept: Status der NLP-Verarbeitung des referenzierten Dokuments

 **Differential ViewDifferential View** 

#### Terminology Bindings (Differential)

 **Snapshot View** 

#### Terminology Bindings

#### Constraints

** Summary **

Simple Extension with the type CodeableConcept: Status der NLP-Verarbeitung des referenzierten Dokuments



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
