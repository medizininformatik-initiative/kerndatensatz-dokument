<!-- markdownlint-disable MD041 -->
<!-- Intro note for the extension MII_EX_Dokument_NLP_Processing_Status. Migrated from
     MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md
     of the Simplifier guide mii-ig-dokument-de. The IG Publisher renders this text
     above the generated tables of the artifact page; German translation:
     input/translations/de/intro-notes/ (same file name). -->

### Description

This extension is used for the structured description of the processing status of a document within an NLP project. Processing documents that carry unstructured information typically happens in a series of consecutive processing steps. In the course of these process chains, different transformations of the original document arise, as well as relations between the source document and the intermediate products derived from it.

For this purpose the NLP extension provides a code system with which the various processing states and intermediate products of an NLP workflow can be described and archived consistently.

The code system of the NLP extension is hierarchical and comprises two levels: level 1 (Lvl 1) and level 2 (Lvl 2). Lvl 1 describes a superordinate process status, for example annotated. Lvl 2 serves to specify that status. One example is the combination Lvl 1: `annotated`, Lvl 2: `deid`, which indicates that a document has been furnished with de-identifying annotations.

Using both hierarchy levels is not mandatory. Depending on the respective application scenario, it can be decided freely whether only the superordinate status (Lvl 1) or additionally a specific differentiation via Lvl 2 is used.
Please note: if a Lvl 2 specification such as `deid` is used, the corresponding Lvl 1 `annotated` must also be used. Otherwise `deid` could be misunderstood as a fully de-identified document. The rules in the section [Combination rules](#combination-rules) check this.

An exemplary use case is a document within an annotation project that has already been extracted from a source system and anonymised. Several processing steps may have taken place up to the current processing state, for example:

- transformation of the file format from `.pdf` to `.txt` (`preprocessed` – `format-change`)
- removal of document headers (`preprocessed` – `content-change`)
- machine pre-annotation of identifying structures (`annotated` – `preanno` `deid`)
- subsequent manual annotation of those structures (`annotated` – `deid`)
- irreversible replacement of all identifying annotations by surrogates (`surrogated`)

The NLP extension deliberately leaves degrees of freedom in documenting such process chains. It is possible to represent every processing step of a document. Alternatively, the description may be limited to selected processing states that are essential for the respective use case, for example exclusively to the final status surrogated.

### Several statuses

A document often carries several statuses at once, for example `preprocessed` and `format-change` after a format conversion. The information model allows any number of NLP processing statuses per document (`0..*`); there are two equivalent ways to record them:

- as several codings of one extension, as in the [examples](examples.html#example-scenario-amanda-alzheimer-nlp-pipeline), or
- as several repetitions of the extension, one status each.

All codings of all repetitions together describe the processing state the document has reached; receivers evaluate all of them. Their order carries no meaning. The order of the processing steps is expressed by the relations between the documents (`relatesTo`).

In FHIR, several codings of one `CodeableConcept` usually represent the same concept. In this extension they stand for different statuses reached together. This form stays valid so that documents already produced following the examples remain valid.

### Combination rules

The following rules formalize the description above. They are defined on the [Dokument profile](StructureDefinition-mii-pr-dokument-dokument.html), apply across all codings and repetitions and appear there in the table of constraints.

| Rule | Content |
| --- | --- |
| `mii-iv-dokument-nlp-1` | `unprocessed` SHALL NOT be given together with any other status. |
| `mii-iv-dokument-nlp-2` | Each status SHOULD be given only once. |
| `mii-iv-dokument-nlp-3` | `format-change` and `content-change` SHALL be given together with `preprocessed`. |
| `mii-iv-dokument-nlp-4` | `preanno`, `deid` and `semantic` SHALL be given together with `annotated`. |
| `mii-iv-dokument-nlp-5` | `preanno` SHOULD be given together with `deid` or `semantic`. |
{: .grid}

The rules are checked as best practice: validators report a violation as a warning and do not reject the resource. This also applies to the rules stated with SHALL or SHALL NOT (`mii-iv-dokument-nlp-1`, `-3` and `-4`): they state what the data has to meet, but are only checked as best practice so that existing data is not rejected. With the HL7 FHIR Validator, the option `-best-practice` sets how strictly they are reported (`hint`, `warning`, the default, `error` or `ignore`); it applies to all best-practice rules at once.

### Searching

The search parameter `nlp-processing-status` finds a document by every coding of every repetition. The search compares codes literally, without the hierarchy of the code system: a search for `annotated` only finds documents that record `annotated` itself. Details and examples are on the [Search Parameters](search-parameters.html) page.

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
