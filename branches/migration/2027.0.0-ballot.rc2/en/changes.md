# Changelog - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Changelog**

## Changelog

This page contains a changelog describing the changes between versions.

It records the changes between the released versions of the **Dokument** module, newest version first, and follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the KDS calendar versioning scheme described on the [Versioning](version-history.md) page.

Each version gets its own section with the release date and the changes grouped by category:

* **Added** — new profiles, extensions, value sets, search parameters, pages.
* **Changed** — modified constraints, bindings, guidance or documentation.
* **Deprecated** — artifacts that still exist but should no longer be used.
* **Removed** — artifacts that were withdrawn.
* **Fixed** — corrections of defects.
* **Security** — changes with a security or data-protection impact.

Leave out the categories with nothing to report. Where a change is driven by an issue or a pull request, link it.

**Breaking changes MUST be reported and explained**

A version section that contains a breaking change is not complete until it answers, explicitly and in this changelog:

* **What exactly changed** between the two versions — the artifact, the element, the old and the new constraint (not just "profile X was revised").
* **What it means for existing data:** does data that conformed to the previous version still validate against the new one? If not, which resources and elements are affected, and how does the failure show up?
* **What implementers should do:** the authors' recommendation for migrating existing data to the new version — transformation steps, default values, re-coding guidance — or an explicit statement that no migration path is provided and why.

**What counts as breaking** — treat a change as breaking if it does any of the following, even when it looks small: tightens a cardinality (`0..*` → `1..1`), raises a binding strength (example → required), removes codes from a required value set, removes or renames an element or a slice, narrows a type, adds an invariant or a must-support obligation, or changes a canonical URL. When in doubt, report it as breaking.

**Breaking for whom:** state both perspectives — *stored data* (instances valid against the old version) and *implementations* (clients and servers built against it; a removed search parameter breaks implementations while every stored instance stays valid).

**The version number will not warn anyone.** The KDS calendar versioning scheme (`YYYY.n.n`) carries no major-version signal the way SemVer does — this changelog section is the *only* warning a reader gets.

**Link the technical delta.** From the second formal publication on, enable the IG Publisher's version comparison (`version-comparison`, to be added to `sushi-config.yaml` — see the [Versioning](version-history.md) page for the setup and its prerequisites); it publishes a machine-generated comparison at `comparison-v<previous>/index.html`. Link it from the version section, so the prose explanation and the technical diff sit side by side.

Mark such entries clearly (for example, prefix them with **BREAKING:**) so a reader scanning the section cannot miss them.

-------

### Version 2027.0.0-ballot.rc1

**Date** 2026-09-01 (publication date of the guide; the RC package was released in the package registry on 2026-08-28)

#### Added

* **New dependency ISiK Level 6** (`de.gematik.isik 6.0.0`); updated dependencies `de.basisprofil.r4 1.6.0`, `hl7.terminology.r4 7.1.0`; `hl7.fhir.uv.extensions.r4 5.2.0` now declared explicitly
* Tooling/quality assurance: `advisor.json` added for the validator pipeline, quality-control rules updated

#### Changed

* **NLP pipeline examples revised** (the extension `MII_EX_Dokument_NLP_Processing_Status` itself has already been included, unchanged in content, since 2026.0.1): new example `AmandaAlzheimerKlartextDokument` as a plain-text extraction step; the original document now provided as DOCX (`application/vnd.…wordprocessingml.document`) instead of `text/plain`; processing-status codes along the pipeline corrected (`annotated`/`preprocessed`/`surrogated` per the illustration, instead of uniformly `deid`); the `transforms` chaining of the pipeline steps updated
* **SNOMED CT version pinning** per the MII Terminology Version Policy: all SNOMED CT includes (value sets Type, Category, Facility Type, Discipline) reference the International Edition `http://snomed.info/sct/900000000000207008/version/20260701`

#### Fixed

* **CodeSystem NLP Processing Status**: definition of the `surrogated` concept clarified; the CodeSystem's title corrected ("MII CS Dokument …" instead of the erroneous "MII VS Dokument …")
* **Logical model `MII_LM_Dokument`** is now shipped with the package (status `draft` → `active`; it had previously been excluded by the package build filter)

The `MII_PR_Dokument_Dokument` profile, the extension and the CapabilityStatement are unchanged in content compared to 2026.0.1.

> **Known Issue**: 2 validation errors on examples with `context.event` (eventCodeList expansion, an upstream bug in `de.ihe-d.terminology 3.0.1`) — see [Issue #33](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/issues/33)

-------

### Version 2026.0.1

**Date** 2026-03-11

#### Changed

* Changes dependencies from MII KDS Fall/Person to MII KDS Basis
* Updates dependencies and descriptions to MII KDS module version 2026

#### Fixed

* Corrects incorrect display name on examples for Einrichtungskontakt (facility contact)

-------

### Version 2026.0.0

**Date** 2025-12-10

#### Added

* Initial release of the MII KDS module Dokument

