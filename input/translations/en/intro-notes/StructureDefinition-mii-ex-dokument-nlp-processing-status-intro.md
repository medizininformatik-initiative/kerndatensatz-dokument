<!-- TODO:REVIEW machine-translated from the German default page -->
<!-- markdownlint-disable MD041 -->
<!-- Intro note for the extension MII_EX_Dokument_NLP_Processing_Status. Migrated from
     MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md
     of the Simplifier guide mii-ig-dokument-de. The IG Publisher renders this text
     above the generated tables of the artifact page; German default page:
     input/intro-notes/ (same file name). -->

### Description

This extension serves the structured description of the processing status of a document within an NLP project. Processing documents that carry unstructured information typically happens in a series of consecutive processing steps. In the course of these process chains, different transformations of the original document arise, as well as relations between the source document and the intermediate products derived from it.

For this purpose the NLP extension provides a code system with which the various processing states and intermediate products of an NLP workflow can be described and archived consistently.

The code system of the NLP extension is hierarchical and comprises two levels: level 1 (Lvl 1) and level 2 (Lvl 2). Lvl 1 describes a superordinate process status, for example annotated. Lvl 2 serves to specify that status. One example is the combination Lvl 1: `annotated`, Lvl 2: `deid`, which indicates that a document has been furnished with de-identifying annotations.

Using both hierarchy levels is not mandatory. Depending on the respective application scenario, it can be decided freely whether only the superordinate status (Lvl 1) or additionally a specific differentiation via Lvl 2 is used.
Please note: if a Lvl 2 specification such as `deid` is used, the corresponding Lvl 1 `annotated` must also be used. Otherwise `deid` could be misunderstood as a fully de-identified document.

An exemplary use case is a document within an annotation project that has already been extracted from a source system and anonymised. Several processing steps may have taken place up to the current processing state, for example:

- transformation of the file format from `.pdf` to `.txt` (`preprocessed` – `format-change`)
- removal of document headers (`preprocessed` – `content-change`)
- machine pre-annotation of identifying structures (`annotated` – `preanno` `deid`)
- subsequent manual annotation of those structures (`annotated` – `deid`)
- irreversible replacement of all identifying annotations by surrogates (`surrogated`)

The NLP extension deliberately leaves degrees of freedom in documenting such process chains. It is possible to represent every processing step of a document. Alternatively, the description may be limited to selected processing states that are essential for the respective use case, for example exclusively to the final status surrogated.

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
