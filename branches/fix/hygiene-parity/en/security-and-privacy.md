# Security and Privacy - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Security and Privacy**

## Security and Privacy

 This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.html). 

This section addresses security and privacy experts. General requirements are in the FHIR core specification — [Security & Privacy Module](https://build.fhir.org/secpriv-module.html) and the [security checklist](https://build.fhir.org/security.html). This page does not repeat them; it links the overarching data protection framework and states what is **specific to this module**.

#### 1. The overarching data protection concept

The [overarching data protection concept of the Medical Informatics Initiative](https://www.medizininformatik-initiative.de/en/data-protection-concept) governs how patient data may be processed for research across the network of Data Integration Centers: it covers the legal basis (the MII Broad Consent), the roles of the Data Integration Centers and Use & Access Committees, and the cross-site application scenarios (feasibility queries, distributed analyses, data and biosample provision). Everything this module specifies operates inside that framework — this guide adds no processing purpose of its own.

#### 2. De-identification, minimisation and pseudonymisation (DIMP)

How data leaving a Data Integration Center is de-identified in practice is specified by [DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html) in the data portal documentation: direct identifiers are removed, data elements not needed by the approved project are dropped, and identifying values are replaced by project-specific pseudonyms (FHIR Pseudonymizer configuration). The profiles of this module describe data **before** DIMP is applied; which elements survive a concrete data release is decided per project by the DIMP configuration, not by this guide.

#### 3. Module-specific aspects

This is the module's own contribution: the security and privacy properties that follow from the **kind of data this module carries**.

> **Written during migration — review before release.** The following module-specific aspects were derived from the profile and the module descriptions (slices `Binaerdaten`/`Verweis`, NLP processing status, `relatesTo` processing chains).

Unlike purely structured KDS modules, this module also carries the **document body itself** via `content.attachment`. This raises aspects of its own:

**Free text is this module's most sensitive data category.** A document's body can contain a wide range of identifying data and/or metadata (e.g. names, patient IDs) that structured pseudonymization does not touch. DIMP tooling operates on structured elements; the content of an attachment is not covered by it.

**Embedding vs. reference.** The profile permits both transport forms for the document body: embedded as Base64 (`content.attachment.data`, slice `Binaerdaten`) or as a locally resolvable reference (`content.attachment.url`, slice `Verweis`). Where the document contains **medical or identifying data about patients or treatment**, the document body SHOULD NOT be embedded when data is provided via the German Portal for Medical Research Data (FDPG) or in UAC-approved projects: embedded content travels through every processing and transfer stage and escapes the document store's access control. A reference (`Verweis`) keeps resolution under the control of the data-holding site (DIZ), where it can be filtered and logged in conformance with DIMP. Documents without such content — for example fully surrogated versions — are not affected by this restriction.

**Mark the de-identification status explicitly.** Completed de-identification is expressed via suitable `securityLabel` values and/or the [NLP Processing Status extension](StructureDefinition-mii-ex-dokument-nlp-processing-status.md) (codes `unprocessed`, `preprocessed`, `annotated`, `surrogated`). The data-holding site is responsible for referencing only anonymized or pseudonymized variants for research purposes (`subject`, `context.encounter` → the base module's pseudonymized profiles).

**Processing chains can open re-identification paths.** The NLP pipeline links original, plain-text, de-identified and annotated versions via `relatesTo` (`transforms`/`appends`). A data provision must not deliver de-identified or surrogated documents together with resolvable references to their original versions — otherwise the chain undoes the de-identification.

**Metadata can be quasi-identifying too.** Facility type, practice setting, timestamps and encounter references allow inferences in combination; which metadata elements reach a concrete data provision is decided by the project-specific DIMP configuration.

