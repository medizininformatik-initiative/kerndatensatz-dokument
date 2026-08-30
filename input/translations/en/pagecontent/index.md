<!-- TODO:REVIEW machine-translated from the German default page -->
<!-- markdownlint-disable MD041 -->

### Introduction

This specification describes the FHIR representation of the Core Dataset
(CDS) module **Dokument** of the Medical Informatics Initiative (MII). It
covers the module's use cases and the associated FHIR profiles, extensions
and terminology resources in their normative form. The MII Core Dataset
enables the standardized secondary use of routine clinical data for medical
research.

> With the MII CDS module Dokument, metadata about clinically relevant
> documents of any kind can be captured in a structured way for any purpose.
> In this context, documents are arbitrary binary objects — for example
> images or videos as well.
{: .ig-highlight .ig-highlight-grey}

| Publication |               |
|-------------|---------------|
| Date        | 2026-08-28 |
| Version     | 2027.0.0-ballot.rc1 (CalVer `YYYY.n.n`) |
| Status      | Ballot        |
| Realm       | DE            |

<!-- DERIVED:bridge source=MIIIGModulDokument/Index.page.md gate=B -->
> **Written during migration — review before release.**
> The guide's full version history is documented on the [Changes](changes.html) page.
{: .ig-highlight .ig-highlight-blue}

### Module description

Using the profile is intended to make internal and external use of
documents easier. The module addresses the central aspects of
characterization by metadata — document relationships, document status,
document discoverability, corpus navigation and document archiving — and
coordinates them according to a standardized scheme.

The MII CDS module enables the creation of document references with the
option of establishing relationships to the Case and Person modules. The
module also contains an NLP extension that represents the processing status
with respect to NLP procedures such as annotations (see the UML diagram for
this
).

With regard to document processing workflows — e.g. format conversions,
anonymization and NLP annotations — the relation to other documents (MII CDS
module Dokument) becomes particularly significant for representing
processing chains (`relatesTo`).

The information model separates the reference itself from the metadata of
the referenced document (`content`). The document body is referenced via a
locally interpreted URL (`content.attachment.url`). In principle, the
document body of the referenced document can also be embedded directly
within the reference (`content.attachment.data`). The module does not
prescribe the semantics of this resolution.

The document body can contain a wide range of identifying data and/or
metadata (e.g. names, patient ID). The data holder can express that such
data has been de-identified via an appropriate `securityLevel` and/or codes
of the NLP-Processing-Status-Extension
<!-- TODO:REVIEW exact StructureDefinition id of the NLP-Processing-Status-Extension artifact is unknown; link as [NLP-Processing-Status-Extension](StructureDefinition-<id>.html) once the id is confirmed -->.

### Target audience

This implementation guide is aimed at:

<div class="ig-highlight ig-highlight-blue">
<h5>Implementers</h5>
<p>Data Integration Centers (DIC), software developers and system architects building FHIR-based solutions.<br/>
→ see <a href="profiles.html">Profiles</a> and <a href="logical-models.html">Logical Models</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Researchers</h5>
<p>Scientists using KDS data for medical research.<br/>
→ see <a href="guidance.html">Guidance for Researchers</a>.</p>
</div>

### Contents

- **[Guidance](guidance.html)** — getting started and domain notes.
- **Conformance** — the KDS-wide conformance rules (requirements language,
  Must Support, handling missing data) are maintained centrally by the
  [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
  the module-specific [Security and Privacy](security-and-privacy.html)
  considerations are part of this guide.
- **[Profiles](profiles.html)** and the further
  **[artifact pages](artifacts.html)** — the technical artifacts.
- **[Examples](examples.html)** — example instances.
- **[Dependencies](ImplementationGuide-mii-ig-dokument.html)** — the
  ImplementationGuide resource with the dependency table, cross-version
  analysis and copyright statements.

### Related guides

This module is part of the MII Core Dataset; the other KDS modules and their
dependencies are described at
[medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/).

<!-- DERIVED:bridge source=none gate=B -->
> **Written during migration — review before release.**
> Formal dependencies of this module (see `dependencies` in
> `sushi-config.yaml`): KDS base module (`kerndatensatz.base` 2026.0.0),
> KDS Meta (`kerndatensatz.meta` 2026.0.0), German base profiles
> (`de.basisprofil.r4` 1.6.0), ISiK level 6 (`de.gematik.isik` 6.0.0),
> IHE-D terminology (`de.ihe-d.terminology` 3.0.1), KDL (`dvmd.kdl.r4`
> 2025.0.1), IHE FormatCode (`ihe.formatcode.fhir` 1.4.0) plus the HL7
> terminology and extensions packages. The complete versioned table is
> rendered on the
> [MII ImplementationGuide Resource](ImplementationGuide-mii-ig-dokument.html) page.
{: .ig-highlight .ig-highlight-blue}

More FHIR implementation guides can be found in the official
**[FHIR IG Registry](https://fhir.org/guides/registry/)** (source:
[`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

### Imprint

This guide was created within the Medical Informatics Initiative and is
subject, by its governance process, to the coordination procedure of the
Interoperability Forum and the technical committees of HL7 Germany.

### Contact

Questions about this publication can be asked on the HL7 FHIR Zulip
[chat.fhir.org](https://chat.fhir.org) in the `german/mi-initiative` stream,
or on the MII Zulip [mii.zulipchat.com](https://mii.zulipchat.com/) in the
`MII-Kerndatensatz` stream.
Comments and issues are welcome as *Issues* on
[GitHub](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/issues).

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

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin

This work is licensed under the
[Creative Commons Attribution 4.0 International License (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

For the usage rights of the underlying FHIR technology, see the FHIR base
specification.

Some of the code systems used are published and maintained by other
organizations; the copyright of the respective publishers applies.

### Disclaimer

The content of this document is public. Please note that parts of this
document are based on FHIR version R4, which is copyrighted by
HL7 International.

Although this publication was prepared with the greatest care, the authors
cannot accept any liability for direct or indirect damage that may arise
from the content of this specification.
