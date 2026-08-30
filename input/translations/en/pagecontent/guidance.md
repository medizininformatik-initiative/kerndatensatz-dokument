<!-- TODO:REVIEW machine-translated from the German default page -->
<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/guidance.md (MII module page set).
     "Guidance" overview page. German mirror:
     input/translations/de/pagecontent/guidance.md — keep both in step. -->

This section collects the domain guidance for implementing and using the
**Dokument** module.

The [Dokument profile](StructureDefinition-mii-pr-dokument-dokument.html) is intended to enable the interoperable use of documents from clinical routine, both internally and externally. The defined metadata supports the discoverability, selection and further processing of these documents. However, documents from clinical routine form a very heterogeneous group. A large number of different source systems, historically grown structures and terminologies — for example internal in-house codes for categorizing document types — prevent effective use both locally and across sites.

### Usage Scenarios

#### Internal Document Use

<div style="text-align: center; margin-top: 2em; margin-bottom: 2em">
<a target="_blank" href="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatz-dokument/refs/heads/dev/input/plantuml/Anwendungsszenarien/InterneDokumentennutzung.svg"><img src="InterneDokumentennutzung.png" alt="Use-case diagram: internal document use" style="max-width: 100%;"/></a>
</div>

*Internal document use* covers the archiving, management and use of clinical documents within a hospital or clinical institution. The data integration centers (`Standort`, "site") are the central instances for data management in this scenario.

##### Archiving and Discoverability of Clinical Documents

Data integration centers should be able to archive clinical documents together with their metadata (`Dokument archivieren`, "archive document") and make them discoverable (`Dokumentenarchiv navigieren`, "navigate document archive"). The metadata described in the [Dokument profile](StructureDefinition-mii-pr-dokument-dokument.html) includes, among other things:

- document type (e.g. physician's letter, findings report),
- identifier (e.g. unique IDs),
- creation date,
- author, and
- association with a patient.

The standardized description of this metadata enables efficient navigation of the archive. Physicians and other clinical users can query documents in a targeted way (`Hausinterne Anfragen bearbeiten`, "process in-house requests") and search them to find relevant information.

##### Converting Existing Documents

A further important aspect of *internal document use* is the conversion (`Dokument konvertieren`, "convert document") of clinical documents and metadata that exist according to other interoperability standards (e.g. HL7 CDA, gematik ISiK, KBV MIO) into a dataset conforming to the [Dokument profile](StructureDefinition-mii-pr-dokument-dokument.html). This conversion ensures that older documents, or documents produced differently, and their metadata can also be integrated and managed consistently.

##### Use by Researchers: Annotation and Pseudonymization

Besides the purposes described above, *internal document use* also plays a role in research. As part of Natural Language Processing (NLP) pipelines, researchers can store intermediate results and processing steps according to the [Dokument profile](StructureDefinition-mii-pr-dokument-dokument.html) (`Dokument verarbeiten`, "process document"). For example, the intermediate results of individual, successively building processing steps can be linked to one another and documented (`Dokument pseudonymisieren`, "pseudonymize document"; `Dokument annotieren`, "annotate document"). This supports the traceability and reproducibility of NLP pipelines for researchers.

#### External Document Use

<div style="text-align: center; margin-top: 2em; margin-bottom: 2em">
<a target="_blank" href="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatz-dokument/refs/heads/dev/input/plantuml/Anwendungsszenarien/ExterneDokumentennutzung.svg"><img src="ExterneDokumentennutzung.png" alt="Use-case diagram: external document use" style="max-width: 100%;"/></a>
</div>

*External document use* aims at providing clinical documents and their metadata for research purposes. Here, the focus is on use by researchers who want to gain new insights based on the archived data.

Researchers (`Wissenschaftler:in`, "researcher") can access a corpus of clinical documents enriched with metadata (`Kohorte definieren`, "define cohort"). The metadata described according to the [Dokument profile](StructureDefinition-mii-pr-dokument-dokument.html) enables targeted selection and filtering of documents (`Daten selektieren`, "select data"). For example, documents of a particular type, from a particular time period, or from a particular cohort can be identified this way.

A central component for researchers is access to data and metadata of clinical documents via the German Portal for Medical Research Data (Forschungsdatenportal für Gesundheit, FDPG). Through it, researchers can submit feasibility queries (`Machbarkeitsanfrage stellen`, "submit feasibility query") to check whether the data needed is available for, e.g., a planned study. The research data portal uses the information stored in the [Dokument profile](StructureDefinition-mii-pr-dokument-dokument.html) to generate its user interfaces. For example, the metadata on document types, identifiers and labels is used to build the forms dynamically.

For data transport, it is recommended to embed the document body in the resource. Files can also be compressed beforehand. Additional files needed for interpreting and reusing the document (e.g. TypeSystem files for semantically annotated documents) can thus also be attached directly.

### General Implementation Guidance

* **[Datasets and Descriptions](logical-models.html)** — the module's data
  elements, described as logical models. (This entry shares its target with
  *Artifacts → Logical Models*; neither Artifacts-Summary anchor is usable as
  a link target — see
  [`docs/page-structure.md`](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/blob/main/docs/page-structure.md) in this repository.)
* **[UML Diagrams](uml-diagrams.html)** — visual representation of the data
  models and their relationships.

### Audience-Specific Guidance

* **[Guidance for Implementers](implementer-guidance.html)** — technical
  guidance for DIC implementers.

---
For the KDS-wide conformance requirements see the
[Conformance rules of the Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
for the technical artifacts see [Profiles](profiles.html).
