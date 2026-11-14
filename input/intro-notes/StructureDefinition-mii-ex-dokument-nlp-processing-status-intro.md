<!-- markdownlint-disable MD041 -->
<!-- Intro note for the extension MII_EX_Dokument_NLP_Processing_Status. Migrated from
     MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md
     of the Simplifier guide mii-ig-dokument-de. The IG Publisher renders this text
     above the generated tables of the artifact page; English default page:
     input/intro-notes/ (same file name). -->

### Description

This extension is used for the structured description of the processing status of a document within an NLP project. Processing documents that carry unstructured information typically happens in a series of consecutive processing steps. In the course of these process chains, different transformations of the original document arise, as well as relations between the source document and the intermediate products derived from it.

For this purpose the NLP extension provides a code system with which the various processing states and intermediate products of an NLP workflow can be described and archived consistently.

The code system of the NLP extension is hierarchical and comprises two levels: level 1 (Lvl 1) and level 2 (Lvl 2). Lvl 1 describes a superordinate process status, for example annotated. Lvl 2 serves to specify that status. One example is the combination Lvl 1: `annotated`, Lvl 2: `deid`, which indicates that a document has been furnished with de-identifying annotations.

Using both hierarchy levels is not mandatory. Depending on the respective application scenario, it can be decided freely whether only the superordinate status (Lvl 1) or additionally a specific differentiation via Lvl 2 is used.
Please note: if a Lvl 2 specification such as `deid` is used, the corresponding Lvl 1 `annotated` must also be used (invariant `mii-iv-dokument-nlp-4`, see below). Otherwise `deid` could be misunderstood as a fully de-identified document.

An exemplary use case is a document within an annotation project that has already been extracted from a source system and anonymised. Several processing steps may have taken place up to the current processing state, for example:

- transformation of the file format from `.pdf` to `.txt` (`preprocessed` – `format-change`)
- removal of document headers (`preprocessed` – `content-change`)
- machine pre-annotation of identifying structures (`annotated` – `preanno` `deid`)
- subsequent manual annotation of those structures (`annotated` – `deid`)
- irreversible replacement of all identifying annotations by surrogates (`surrogated`)

The NLP extension deliberately leaves degrees of freedom in documenting such process chains. It is possible to represent every processing step of a document. Alternatively, the description may be limited to selected processing states that are essential for the respective use case, for example exclusively to the final status surrogated.

### Recording several processing states

A document has usually reached several processing states, for example `preprocessed`, `format-change` and `surrogated`. Each reached state is recorded as **one repetition of this extension** with exactly one `valueCoding`. The order of the repetitions carries no meaning; the sequence of the processing steps is expressed by `DocumentReference.relatesTo` between the documents of the processing chain.

```json
"extension": [
  {
    "url": "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status",
    "valueCoding": {
      "system": "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status",
      "code": "preprocessed"
    }
  },
  {
    "url": "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status",
    "valueCoding": {
      "system": "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status",
      "code": "format-change"
    }
  }
]
```

The profile [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html) checks the combination of the recorded states with these invariants:

| Key | Rule | Severity |
|---|---|---|
| `mii-iv-dokument-nlp-1` | `unprocessed` is not combined with any other state | error |
| `mii-iv-dokument-nlp-2` | each state occurs at most once | error |
| `mii-iv-dokument-nlp-3` | `format-change` and `content-change` only together with `preprocessed` | error |
| `mii-iv-dokument-nlp-4` | `preanno`, `deid` and `semantic` only together with `annotated` | error |
| `mii-iv-dokument-nlp-5` | `preanno` should be accompanied by `deid` or `semantic` | warning (best practice) |

Up to version 2027.0.0-ballot.2 the extension occurred at most once and carried a `valueCodeableConcept` with one coding per state. In FHIR the codings of a `CodeableConcept` are alternative codings of the same concept, so a receiver may pick any one of them and lose the others. The changelog describes the migration of existing data.

### Content

The technical structure of this extension — differential, key elements, snapshot
and the XML and JSON serialisations — is rendered by the IG Publisher directly
below this section on this artifact page. The Must Support elements with their
short descriptions and comments are shown there as well; canonical URL, status,
version and base definition are carried by the page header.

The codes of the NLP processing status are defined by the code system
[MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html)
with its two-level hierarchy; the extension is bound via the value set
[MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.html).

### Examples

The NLP pipeline example scenario — flow diagram, the processing steps with their NLP processing status and the associated DocumentReference, Patient and Encounter resources — is on the [Examples](examples.html#example-scenario-amanda-alzheimer-nlp-pipeline) page.
