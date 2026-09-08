<!-- markdownlint-disable MD041 -->
<!-- German default page: input/pagecontent/uml-diagrams.md. -->

To illustrate the information model, the following diagram was created in the Unified Modeling Language (UML). This makes it possible to better represent the domain concepts, their relationships, and the connection to other MII KDS modules.

A *Dokument* (document) is used to describe the metadata of a clinical document, or an image, audio, or video file. A *Dokument* is typically created in a clinical *Kontext* (context) (`context`). In addition, depending on the scenario, a *Dokument* can be related (`relatesTo`) in a specific way to one or more other *Dokumente*. One or more *Anhänge* (attachments) (`attachment`) are used to specify details about the storage location and format of the clinical document, or the image, audio, or video file.

Depending on the scenario, a *Dokument* can have a reference to a patient (`subject`) ([MII KDS module Person]). The patient reference can be established using identifying attributes, or on a pseudonymous or anonymous basis. Similarly, a clinical *Kontext* (context) can be used to establish the reference to the specific case/encounter (`encounter`) ([MII KDS module Fall]).

Since the KDS release 2026, the modules Person and Fall have been folded into
the base module (package `de.medizininformatikinitiative.kerndatensatz.base`);
the canonical URLs of the referenced profiles are unchanged. The diagram shows
the state approved by the NSG.

[![UML diagram of the information model for the Dokument module](Informationsmodell.svg)](Informationsmodell.svg)

[MII KDS module Person]: https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base
[MII KDS module Fall]: https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base
