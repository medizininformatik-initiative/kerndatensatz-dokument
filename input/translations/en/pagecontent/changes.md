<!-- TODO:REVIEW machine-translated from the German default page -->
<!-- markdownlint-disable MD041 -->
<!-- Default-language (English) page. Structure ported from kerndatensatz-basis
     input/pagecontent/changes.md (branch main) — one section per version,
     newest first — and from the MII IG release-notes template
     (kerndatensatz-meta/implementation-guides/MedizininformatikInitiative-ImplementationGuide-Template/
     MII-IG-Modul--Modul/Release-notes.page.md), which prescribes Keep a Changelog.
     German mirror: input/translations/de/pagecontent/changes.md — both files
     must say the same thing.

     Maintenance rule: add a new `#### Version <x>` section on top for every
     release, in BOTH languages, as part of the release pull request. Never edit
     a released section afterwards. -->

### Changelog

This page records the changes between the released versions of the
**Dokument** module, newest version first. It follows
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the KDS calendar
versioning scheme described on the [Versioning](version-history.html) page.

Each version gets its own section with the release date and the changes grouped
by category:

* **Added** — new profiles, extensions, value sets, search parameters, pages.
* **Changed** — modified constraints, bindings, guidance or documentation.
* **Deprecated** — artifacts that still exist but should no longer be used.
* **Removed** — artifacts that were withdrawn.
* **Fixed** — corrections of defects.
* **Security** — changes with a security or data-protection impact.

Leave out the categories with nothing to report. Where a change is driven by an
issue or a pull request, link it.

<div class="ig-highlight ig-highlight-red">
<h5>Breaking changes MUST be reported and explained</h5>
<p>A version section that contains a breaking change is not complete until it
answers, explicitly and in this changelog:</p>
<ul>
<li><b>What exactly changed</b> between the two versions — the artifact, the
element, the old and the new constraint (not just "profile X was revised").</li>
<li><b>What it means for existing data:</b> does data that conformed to the
previous version still validate against the new one? If not, which resources
and elements are affected, and how does the failure show up?</li>
<li><b>What implementers should do:</b> the authors' recommendation for
migrating existing data to the new version — transformation steps, default
values, re-coding guidance — or an explicit statement that no migration path
is provided and why.</li>
</ul>
<p><b>What counts as breaking</b> — treat a change as breaking if it does any
of the following, even when it looks small: tightens a cardinality
(<code>0..*</code> → <code>1..1</code>), raises a binding strength (example →
required), removes codes from a required value set, removes or renames an
element or a slice, narrows a type, adds an invariant or a must-support
obligation, or changes a canonical URL. When in doubt, report it as
breaking.</p>
<p><b>Breaking for whom:</b> state both perspectives — <i>stored data</i>
(instances valid against the old version) and <i>implementations</i> (clients
and servers built against it; a removed search parameter breaks
implementations while every stored instance stays valid).</p>
<p><b>The version number will not warn anyone.</b> The KDS calendar versioning
scheme (<code>YYYY.n.n</code>) carries no major-version signal the way SemVer
does — this changelog section is the <i>only</i> warning a reader gets.</p>
<p><b>Link the technical delta.</b> From the second formal publication on,
enable the IG Publisher's version comparison (<code>version-comparison</code>
in <code>sushi-config.yaml</code> — see the <a href="version-history.html">
Versioning</a> page for the setup and its prerequisites); it publishes a
machine-generated comparison at
<code>comparison-v&lt;previous&gt;/index.html</code>. Link it from the version
section, so the prose explanation and the technical diff sit side by side.</p>
<p>Mark such entries clearly (for example, prefix them with
<b>BREAKING:</b>) so a reader scanning the section cannot miss them.</p>
</div>

---

#### Version 2027.0.0-ballot.rc1

**Date:** 2026-08-28

##### Added

* New NLP pipeline example `AmandaAlzheimerKlartextDokument` as a
  plain-text extraction step.
* New dependency ISiK Level 6 (`de.gematik.isik 6.0.0`).
* `advisor.json` added for the validator pipeline.

##### Changed

* NLP pipeline examples revised (the `MII_EX_Dokument_NLP_Processing_Status`
  extension itself has already been included, unchanged, since version
  2026.0.1): the original document is now provided as DOCX
  (`application/vnd...wordprocessingml.document`) instead of `text/plain`;
  the `transforms` chaining of the pipeline steps was updated.
* Updated dependencies `de.basisprofil.r4 1.6.0`,
  `hl7.terminology.r4 7.1.0`; `hl7.fhir.uv.extensions.r4 5.2.0` is now
  declared explicitly.
* SNOMED CT version pinning per the MII Terminology Version Policy: all
  SNOMED CT includes (value sets Type, Category, Facility Type, Discipline)
  now reference the International Edition
  `http://snomed.info/sct/900000000000207008/version/20260701`.
* Quality-control rules for the validator pipeline updated.

##### Fixed

* Processing-status codes along the NLP pipeline corrected
  (`annotated`/`preprocessed`/`surrogated` per the illustration, instead of
  uniformly `deid`).
* CodeSystem NLP Processing Status: definition of the `surrogated` concept
  clarified; the CodeSystem's title corrected ("MII CS Dokument …" instead
  of the erroneous "MII VS Dokument …").
* Logical model `MII_LM_Dokument` is now shipped with the package (status
  `draft` → `active`; it had previously been excluded by the package build
  filter).

The `MII_PR_Dokument_Dokument` profile, the
`MII_EX_Dokument_NLP_Processing_Status` extension, and the CapabilityStatement
are unchanged in content compared to version 2026.0.1.

> **Known issue:** 2 validation errors on examples with `context.event`
> (eventCodeList expansion, an upstream bug in `de.ihe-d.terminology 3.0.1`)
> — see
> [Issue #33](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/issues/33).
{: .ig-highlight .ig-highlight-grey}

---

#### Version 2026.0.1

**Date:** 2026-03-11

##### Changed

* Dependencies changed from MII KDS Fall/Person to MII KDS Basis.
* Dependencies and descriptions updated to MII KDS module version 2026.

##### Fixed

* Incorrect display name on examples for Einrichtungskontakt (facility
  contact) corrected.

---

#### Version 2026.0.0

**Date:** 2025-12-10

##### Added

* Initial release of the **Dokument** module.
