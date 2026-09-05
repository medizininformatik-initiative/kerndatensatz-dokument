# Home - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ImplementationGuide/mii-ig-dokument | *Version*:2027.0.0-ballot.rc1 |
| Draft as of 2026-09-01 | *Computable Name*:MII_IG_Dokument |

### Introduction

The present specification describes the FHIR representation of the Core Dataset (KDS) module Dokument of the Medical Informatics Initiative. In the following, the use cases of the module as well as the associated FHIR profiles and terminology resources are described in their normative form.

The Core Dataset of the Medical Informatics Initiative (MII) enables the standardized use of routine clinical data for medical research.

> With the MII KDS module Dokument, metadata about clinically relevant documents of any kind can be captured in a structured way for any purpose. In this context, documents are arbitrary binary objects — for example images or videos as well.

| | | |
| :--- | :--- | :--- |
| Version | Date | Status |
| 2027.0.0-ballot.rc1 | 2026-09-01 | draft |

Realm: DE (jurisdiction Germany). Versioning follows CalVer `YYYY.n.n`.

The guide's full version history is documented on the [Changes](changes.md) page.

### Module description

Using the profile is intended to make internal and external use of documents easier. The central aspects of characterization by metadata: document relationships, document status, document discoverability, corpus navigation and document archiving are addressed by the module and coordinated according to a standardized scheme.

The MII KDS module enables the creation of document references with the option of establishing relationships to the Case and Person modules, which have been folded into the base module. The module also contains an NLP extension that represents the processing status with respect to NLP procedures such as annotations (see [UML](uml-diagrams.md) for this).

With regard to document processing workflows, e.g. format conversions, anonymization and NLP annotations, the relation to other documents (MII KDS module Dokument) becomes particularly significant for representing processing chains (`relatesTo`).

The information model separates the reference itself from the metadata of the referenced document (`content`). The document body is referenced via a locally interpreted URL (`content.attachment.url`). In principle, the document body of the referenced document can also be embedded directly within the reference (`content.attachment.data`). The module does not prescribe the semantics of this resolution.

The document body can contain a wide range of identifying data and/or metadata (e.g. names, patient ID). The data holder can express that such data has been de-identified via an appropriate `securityLevel` and/or codes of the NLP Processing Status extension ([MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md)).

### Target audience

This implementation guide is aimed at:

**Implementers**

Data Integration Centers (DIC), software developers and system architects building FHIR-based solutions.
 → see [Profiles](profiles.md) and [Logical Models](logical-models.md).

**Researchers**

Scientists using KDS data for medical research.
 → see [Guidance for Researchers](guidance.md).

### Contents

* **[Guidance](guidance.md)** — getting started and domain notes.
* **Conformance** — the KDS-wide conformance rules (requirements language, Must Support, handling missing data) are maintained centrally by the [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); the module-specific [Security and Privacy](security-and-privacy.md) considerations are part of this guide.
* **[Profiles](profiles.md)** and the further **[artifact pages](artifacts.md)** — the technical artifacts.
* **[Examples](examples.md)** — example instances.
* **[Dependencies](ImplementationGuide-mii-ig-dokument.md)** — the ImplementationGuide resource with the dependency table, cross-version analysis and copyright statements.

### Related guides

This module is part of the MII Core Dataset; the other KDS modules and their dependencies are described at [medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/).

Formal dependencies of this module (see `dependencies` in `sushi-config.yaml`): KDS base module (`kerndatensatz.base`), KDS Meta (`kerndatensatz.meta`), German base profiles (`de.basisprofil.r4`), ISiK (`de.gematik.isik`), IHE-D terminology (`de.ihe-d.terminology`), KDL (`dvmd.kdl.r4`), IHE FormatCode (`ihe.formatcode.fhir`) plus the HL7 terminology and extensions packages. The following table reads the versions from the ImplementationGuide resource at build time; the complete table with links is rendered on the [MII ImplementationGuide Resource](ImplementationGuide-mii-ig-dokument.md) page.

| | |
| :--- | :--- |
| Package | Version |
| de.basisprofil.r4 | 1.6.0 |
| de.gematik.isik | 6.0.0 |
| de.ihe-d.terminology | 3.0.1 |
| de.medizininformatikinitiative.kerndatensatz.base | 2027.0.0-ballot.rc1 |
| de.medizininformatikinitiative.kerndatensatz.meta | 2027.0.0-ballot.rc3 |
| dvmd.kdl.r4 | 2025.0.1 |
| hl7.fhir.uv.extensions.r4 | 5.2.0 |
| hl7.terminology.r4 | 7.1.0 |
| ihe.formatcode.fhir | 1.4.0 |
| hl7.fhir.uv.crmi | 2.0.0 |
| hl7.fhir.uv.xver-r5.r4 | 0.1.0 |

More FHIR implementation guides can be found in the official **[FHIR IG Registry](https://fhir.org/guides/registry/)** (source: [`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

### Imprint

This guide was created within the Medical Informatics Initiative and is subject, by its governance process, to the coordination procedure of the Interoperability Forum and the technical committees of HL7 Germany.

### Contact

Questions about the present publication can be asked at any time on [chat.fhir.org](https://chat.fhir.org) in the 'german/mi-initiative' stream. In addition, the MII Zulip [mii.zulipchat.com](https://mii.zulipchat.com/) is available in the `MII-Kerndatensatz` stream.

Comments and criticism are always gladly received in the form of 'Issues' in the [GitHub project](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/issues).

Domain contacts for this module:

* Frank Meineke, SMITH
* Jakob Faller, MIRACUM

### Authors (in alphabetical order)

* Frank Meineke, SMITH, information modeling/domain representation
* Jakob Faller, MIRACUM, information modeling/domain representation
* Katja Hoffmann, MIRACUM/DigiHub MiHUBx, technical implementation
* Marcel Susky, MIRACUM/DigiHub MiHUBx, information modeling/domain representation/technical implementation
* Martin Boeker, MIRACUM, domain representation
* Noemi Deppenwiese, MIRACUM, technical implementation
* Thomas Ganslandt, MIRACUM, domain representation

### Copyright and License

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin.

This work is licensed under the [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0).

For the usage rights of the underlying FHIR technology, see the FHIR base specification.

Some of the code systems used are published and maintained by other organizations. The copyright of the publishers listed there applies.

### Disclaimer

The content of this document is public. Please note that parts of this document are based on FHIR version R4, for which the copyright of HL7 International applies.

Although this publication was prepared with the greatest care, the authors cannot accept any liability for direct or indirect damage that may arise from the content of this specification.

