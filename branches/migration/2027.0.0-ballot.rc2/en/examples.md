# Examples - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* **Examples**

## Examples

 This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.html). 

This page lists the example instances of the **Dokument** module.

> **Synthetic data only** — never use real or realistic-looking patient data in examples.

### Example scenario: "Amanda Alzheimer" NLP pipeline

The following example illustrates the processing of a **physician's discharge letter** of the patient **Amanda Alzheimer** by an NLP pipeline (see figure). After the ingestion (`Ingestion`) of the original document `Amanda_Alzheimer.docx`, a document reference with the NLP processing status `unprocessed` is created. The document is then converted by a preprocessing step (`Preprocessing`) into the plain-text format `Amanda_Alzheimer.txt`. The corresponding document reference marks the NLP processing status `preprocessed, format-change` and points to the original document by means of `transforms`. Afterwards a de-identification (`De-Identification`) of the contents is carried out so that the resulting document `De-ID.txt` can be reused for research purposes in a data-protection-compliant way. A corresponding document reference marks the NLP processing status `preprocessed, format-change, surrogated` and points to the plain-text document by means of `transforms`. Finally the clinical contents are annotated, which may produce several result files that can be combined into the archive `Annotat.zip`. The corresponding document reference marks the NLP processing status through the accumulated codes of the preceding stages as `[annotated, semantic], surrogated, [preprocessed, format-change]` and, by means of `appends`, extends the document reference of the previous NLP processing step.

![](NLP-Pipeline.svg)

**Please note**: with the element `relatesTo`, relationships between the different references of a document can be established. The code designations `transforms` and `appends` denote the kind of relationship:

* `transforms`: this document originates from the related original but has been changed in content or structure. For example, when an original document in CDA format has been converted into a text format.
* `appends`: this document is based on the related document but contains additional information, for example annotations in the form of metadata.

#### Example instances

The following FHIR DocumentReference resources used the document profile ([MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md)) to represent the result documents and the associated document references of each processing step of the NLP pipeline.

| | | | |
| :--- | :--- | :--- | :--- |
| [Original document](DocumentReference-AmandaAlzheimerOriginalDokument.md) | DocumentReference | Ingestion (original) | `Amanda_Alzheimer.docx` |
| [Plain-text document](DocumentReference-AmandaAlzheimerKlartextDokument.md) | DocumentReference | Preprocessing (plain-text extraction) | `Amanda_Alzheimer.txt` |
| [De-identified document](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md) | DocumentReference | De-identification | `De-ID.txt` |
| [Annotated document](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md) | DocumentReference | Annotation | `Annotat.zip` |
| [Patient](Patient-AmandaAlzheimer.md) | Patient | Context | – |
| [Facility encounter](Encounter-AmandaAlzheimerEinrichtungskontakt.md) | Encounter | Context | – |
| [Department encounter](Encounter-AmandaAlzheimerAbteilungskontakt.md) | Encounter | Context | – |
| [Care-unit encounter](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.md) | Encounter | Context | – |

#### The pipeline as an ExampleScenario

The pipeline is also modelled as a FHIR resource, [ExampleScenario "NLP pipeline Amanda Alzheimer"](ExampleScenario-NlpPipelineAmandaAlzheimer.md): actors, the four processing steps as a process, and the participating instances, which link to the example resources above. The IG Publisher generates the sequence diagram and the process table below from it.

#### DocumentReference resources of the pipeline

Each tab shows the JSON representation of one processing step's document reference; the artifact page is linked in each.

[AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md) (DocumentReference)

[AmandaAlzheimerKlartextDokument](DocumentReference-AmandaAlzheimerKlartextDokument.md) (DocumentReference)

[AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md) (DocumentReference)

[AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md) (DocumentReference)

#### Patient and Encounter resources

The patient and encounter resources belonging to the example are used exclusively by the original document `Amanda_Alzheimer.docx` and its associated document reference.

[AmandaAlzheimer](Patient-AmandaAlzheimer.md) (Patient)

[AmandaAlzheimerEinrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.md) (Encounter)

[AmandaAlzheimerAbteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.md) (Encounter)

[AmandaAlzheimerVersorgungsstellenKontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.md) (Encounter)

All examples are fully synthetic.

Source: [GraSCCo dataset, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)

