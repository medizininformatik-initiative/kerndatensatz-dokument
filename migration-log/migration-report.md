# Migration report — MII KDS Modul Dokument → MII KDS module template

*Migrated 2026-08-30 with skill `mii-ig-migration` v0.25.0 (agent-skills `5c0cc0c3`), on
explicit instruction of the module owner (@msusky). Branch
`migration/2027.0.0-ballot.rc1-template-v0.13.1`; nothing publishes from this PR.*

## Summary — read this first (for everyone)

The **Dokument** module (source: Simplifier project + git tag `v2027.0.0-ballot.rc1` =
`6d0fa590`; package `de.medizininformatikinitiative.kerndatensatz.dokument@2027.0.0-ballot.rc1`,
published and immutable) now builds with **SUSHI 3.20.1 + HL7 IG Publisher 2.3.2** on the
**mii-kds-module-template v0.13.1** (`61b02b50`), referencing **ig-template-mii-kds** by
repository URL (latest release v1.3.4). **German is the default language** (meta-wiki
Release-2027 “IG Umbau – DE First”); English is the translation under
`input/translations/en/` (machine-translated, marked `TODO:REVIEW`).

* **Artefacts:** all 19 FSH-declared artefacts + the IG resource carried; ids and canonicals
  byte-identical; path-level `comm -3` empty apart from 8 named scaffold additions; the 4
  binary example attachments verified.
* **Narrative:** all 15 content-bearing guide pages routed per the reviewed
  `migration-log/page-map.tsv` (21 rows, 8 marked `[MAP-EDIT]`); post-migration directive
  scan: **0 Simplifier/FQL directives over 46 files**; 38 DERIVED markers (all `bridge`,
  Gate B), derived-scan clean.
* **Build:** `qa.txt` **Errors: 12 — all 4 classes known/qualified** (§③ below), Warnings 136,
  **Broken Links 0** of 101,813. Terminology server: `https://tx.ontoserver.csiro.au/fhir`
  (has SNOMED CT International 20260701, the module’s pinned edition).
* **Verification:** `verify-migration.py` → **96 IDENTISCH · 21 DIVERGIERT · 17 NICHT
  PRÜFBAR**; every DIVERGIERT row is triaged below — owner decisions (licence), adjudicated
  deliberate drops, or measured checker-limitation classes. **No unexplained content loss.**
* **Licence:** relicensed **CC0-1.0 → CC BY 4.0 everywhere** on the owner’s explicit decision
  (this also resolves the source’s own config-vs-guide licence contradiction). The
  prepost-delta flags this as a machine-identity change — correctly; it is deliberate.
* **Convention check:** M1–M5, M7, M9–M11 **PASS**; **M6 FAIL is expected** — the template’s
  version regex rejects every prerelease shape; upstream fix proposed as
  [mii-kds-module-template#24](https://github.com/medizininformatik-initiative/mii-kds-module-template/issues/24)
  / [PR #25](https://github.com/medizininformatik-initiative/mii-kds-module-template/pull/25).

## Where the evidence lives

Everything is in `migration-log/` on this branch: `run.log` (append-only protocol, 37
step-actions), `identity-claims.tsv`, `page-map.tsv`, `derived-content.tsv`,
`verification-findings.tsv` + `verification.md`, `preflight-analysis.json` /
`postflight-analysis.json` + `prepost-delta.md`, `qa-checklist.md`, `comparison-table.md`,
`guide-versions.html` (P4 evidence), the re-measured manifests
(`template-pages-v0.13.1.tsv`, `template-artifacts-v1.3.4.tsv`), and the preflight bundle.

## ① Decision queue (Gate A — someone must choose; owner = TF-KDS / module owner)

| id | Decision | Status / evidence | If nobody acts |
|---|---|---|---|
| D-1 | **Licence CC BY 4.0** — config, LICENSE file (official legal code), guide footer, package.json all now CC BY 4.0 | DECIDED by owner 2026-08-30 (“set everything to cc by 4.0”); ledger keeps both prior readings | decision stands; publication ships CC BY 4.0 |
| D-2 | **M6 prerelease version** — module keeps `2027.0.0-ballot.rc1`; upstream widening proposed (#24/#25) | convention check stays red on M6 until upstream merges | merge upstream PR #25, or accept a red M6 until `2027.0.0` |
| D-3 | **Conformance page dropped whole** (25 runs) — KDS-wide conformance restatement; the template’s link-only menu cluster points at the meta-module wiki | per-run adjudication in the restore journal; source page preserved in `implementation-guides/` until Gate D | the KDS-wide text lives only behind the menu links (as the template intends) |
| D-4 | **CRMI machinery adopted**: `hl7.fhir.uv.crmi@2.0.0` + `hl7.fhir.uv.xver-r5.r4@0.1.0` added (template meta.profile claims + rulesets); brings 1 benign qa error (subscriptions-backport is FHIR 4.0.0) | template machinery, not source identity | keep; or strip CRMI claims + deps in one commit |
| D-5 | **approvalDate = 2026-08-28** (ballot-RC date, placeholder until TF-KDS approval) + **artifact-topic C19498 “Document”** (NCI EVS lookup) | marked ①-REVIEW in `sushi-config.yaml` | dates/topic ship as set |
| D-6 | **Publisher identity kept** `Medizininformatik-Initiative` (template default would be NUM-DIZ; ownership handover 2027-01-01 per CODEOWNERS note) | divergence recorded | current publisher ships |
| D-7 | **Retire-after-Gate-D set**: `implementation-guides/`, `project.yaml`, `package.bake.yaml`, `fhirpkg.lock.json` (stale dep set, legacy-only), `.github/workflows/{main,build-profiles,compare-profiles}.yml` duplication vs template CI | inventoried in run.log pre.3 | legacy files stay beside the new toolchain |
| D-8 | **publication-request.json**: `first: true` (no IG-Publisher publication history at the canonical), date/desc filled for the RC | go-publish is Gate D — NOT part of this PR | nothing publishes anyway |

## ② Review queue (Gates B/C — someone must check)

* **38 DERIVED bridges** (all Gate B) — rendered as blue review boxes on the pages;
  ledger: `migration-log/derived-content.tsv`. Largest: index dependency box, examples
  pipeline table, extensions/value-sets pointer notes.
* **English twins are machine translations** (Gate C) — every EN page carries
  `TODO:REVIEW machine-translated`; a bilingual reviewer signs before release. German
  pages carry the source text verbatim (restored where the first pass paraphrased — see
  the C4 restoration adjudications).
* **`relatesTo` spelling**: the source writes “relates to”; both intro notes carry a
  `TODO:REVIEW` asking the editors to confirm.
* **README**: template-era README written by the migration (old one preserved as
  `README.simplifier-legacy.md` — merge what is still wanted, then delete it).
* **fsh-generated serialization**: the committed output is this branch’s pinned-toolchain
  output (SUSHI 3.20.1); it differs from the org dotnet bot’s serialization in two
  mechanical classes (implied extension-slicing block; instance key order) — ids,
  canonicals, semantics unchanged.
* **German toc title**: the auto-generated “Table of Contents” page title is English in
  the German default rendering (SUSHI default; cosmetic).

## ③ QA triage (what the build says, and whose problem it is)

`qa.txt` Errors: 12 = **4 classes, none new to this module’s content**:

| n | Class | Whose problem |
|---|---|---|
| 8 | `contentType` MimeType tx-inference (4 examples × 2 message forms) — same class the org CI suppresses via `advisor.json` (`DocumentReference.content.*`); the publisher reads no advisor and cannot suppress errors | terminology-server limitation; pre-existing |
| 2 | `context.event` **E234** eventCodeList — upstream `de.ihe-d.terminology@3.0.1` expansion defect; monitored in [#33](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/issues/33) | upstream; pre-existing |
| 1 | `dependsOn[2]` ihe-d URL shape — suppression entry exists in `ignoreWarnings.txt`; the publisher does not suppress ERRORs by design | upstream package; pre-existing |
| 1 | `subscriptions-backport.r4#1.1.0 is FHIR 4.0.0` — transitive of the **added** `hl7.fhir.uv.crmi` dependency (R4 backport is 4.0.0 by design) | template machinery (D-4) |

Baseline proof: the tag’s own release CI validated the source at 0 errors **with** the
advisor (same two suppressed classes) — `run.log` 5.1 `qa-baseline`.

## Verification residual (21 DIVERGIERT, fully triaged)

* **2 owner-decision rows** (F1, L3): the licence change.
* **5 adjudicated-drop rows** (C4): Conformance whole-page (D-3), the source index stub,
  Simplifier mini-TOC link stubs (Terminologien 7, FHIRProfile 8, Kompatibilitaet 2 — the
  last two include measured false positives).
* **12 checker-limitation rows** (C4/C7/R2/L1): C4 strips URLs from the source needle but
  not the target haystack, so **linked list items can never match** (verified
  independently by two restoration agents; Referenzen 7, CapabilityStatement 3,
  Beschreibung 1, Szenarien 5 in part); rule-5 directive conversions leave `( )`-needles;
  list/table run concatenation (author list, Datum rows); `searchform.html {{title}}` is
  the publisher’s **own** client-side search template on every IG; L1 is a
  resolved-but-append-only log WARN (the toc `.po` unit was filled).
* **17 NICHT PRÜFBAR**: conditional steps whose conditions did not hold (shape A: no
  goFSH, no harvest, no discovery needed — the rendered URL was supplied; the source has
  a sushi-config), stub/element-tree pages C4 cannot split, P3 (publisher 2.3.3 exists;
  CI pins 2.3.2), R1 (no harvested HTML — the browser review below covers rendering).

**P4 (pre-agreed exception):** the Simplifier guide has **zero published versions** — only
the “Current preview” row (evidence `migration-log/guide-versions.html`, re-measured
2026-08-30). The reproducible source pin is the git tag + the published package.

## Content map (where every source page went)

### Comparison table (GENERATED by comparison-table.py — do not retype; regenerate instead)

This table belongs inside `migration-log/migration-report.md` (section *Content map*), whose glossary explains every term used here; `references/codes.md` of the skill is the backstop. "Agreed page" = a page of the template's fixed menu; "migration-written blocks" = passages the migration WROTE rather than carried, marked in the rendered guide and listed per page in `derived-content.tsv`. Found a discrepancy while comparing? Record it as a report item (REV-n) — never fix a page ad hoc.

**Where every source page went** — one row per page-map row; open both links side by side to compare manually. *(constructed)* marks a source link derived from the guide root rather than read from the harvest manifest.

| Rendered source page | Rendered target page | What moved | Migration-written blocks on the target |
|---|---|---|---|
| [`MIIIGModulDokument/Index.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument) *(constructed)* | [`input/pagecontent/index.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/index.html) | merged into an agreed page | 4 |
| [`MIIIGModulDokument/Release-Notes.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/Release-Notes) *(constructed)* | [`input/pagecontent/changes.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/changes.html) | merged into an agreed page | — |
| [`MIIIGModulDokument/Beschreibung.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/Beschreibung) *(constructed)* | [`input/pagecontent/index.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/index.html) | merged into an agreed page | 4 |
| [`MIIIGModulDokument/Kontext-Bezuege.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/Kontext-Bezuege) *(constructed)* | [`input/pagecontent/implementer-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/implementer-guidance.html) | merged into an agreed page | 4 |
| [`MIIIGModulDokument/Referenzen.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/Referenzen) *(constructed)* | [`input/pagecontent/implementer-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/implementer-guidance.html) | merged into an agreed page | 4 |
| [`MIIIGModulDokument/HinweisTemplate.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/HinweisTemplate) *(constructed)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulDokument/AnwendungsflleInformationsmodell/Index.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/AnwendungsflleInformationsmodell) *(constructed)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulDokument/AnwendungsflleInformationsmodell/Szenarien.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/AnwendungsflleInformationsmodell/Szenarien) *(constructed)* | [`input/pagecontent/guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/guidance.html) | merged into an agreed page | — |
| [`MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze) *(constructed)* | [`input/pagecontent/logical-models.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/logical-models.html) | merged into an agreed page | 4 |
| [`MIIIGModulDokument/AnwendungsflleInformationsmodell/UML.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/AnwendungsflleInformationsmodell/UML) *(constructed)* | [`input/pagecontent/uml-diagrams.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/uml-diagrams.html) | merged into an agreed page | — |
| [`MIIIGModulDokument/TechnischeImplementierung/Index.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/TechnischeImplementierung) *(constructed)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulDokument/TechnischeImplementierung/Conformance.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/TechnischeImplementierung/Conformance) *(constructed)* | [`input/pagecontent/implementer-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/implementer-guidance.html) | merged into an agreed page | 4 |
| [`MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet) *(constructed)* | [`input/pagecontent/kompatibilitaet.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/kompatibilitaet.html) | its own page | 2 |
| [`MIIIGModulDokument/TechnischeImplementierung/CapabilityStatement.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/TechnischeImplementierung/CapabilityStatement) *(constructed)* | [`input/pagecontent/capability-statements.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/capability-statements.html) | merged into an agreed page | — |
| [`MIIIGModulDokument/TechnischeImplementierung/Terminologien.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/TechnischeImplementierung/Terminologien) *(constructed)* | [`input/pagecontent/code-systems.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/code-systems.html) | merged into an agreed page | — |
| [`MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Index.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/TechnischeImplementierung/FHIRProfile) *(constructed)* | [`input/pagecontent/profiles.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/profiles.html) | a section on a family index page | 4 |
| [`MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference) *(constructed)* | [`input/intro-notes/StructureDefinition-mii-pr-dokument-dokument-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/StructureDefinition-mii-pr-dokument-dokument.html) *(renders inside the artefact page)* | into an artefact's intro note | 6 |
| [`MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md`](https://simplifier.net/guide/medizininformatikinitiative-dokument/MIIIGModulDokument?version=current/MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension) *(constructed)* | [`input/intro-notes/StructureDefinition-mii-ex-dokument-nlp-processing-status-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/StructureDefinition-mii-ex-dokument-nlp-processing-status.html) *(renders inside the artefact page)* | into an artefact's intro note | 4 |
| `index.md` | [`input/pagecontent/index.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/index.html) | merged into an agreed page | 4 |
| `binaries/**` | — | RETIRED (not migrated) | — |
| `images/**` | `input/images/` | into an artefact's intro note | — |

**The template's own pages** — the template puts these pages in EVERY module, so their EXISTENCE needs no source page; per row whether their CONTENT stayed template-default or also receives source content. Class: `scaffold` = the template ships it and every module keeps it · `optional` = kept only while artefacts of its type exist (check M9) · `demo` = must be gone on a release branch (check M8).

| Template page | Class | Receives source content? | Migration-written blocks |
|---|---|---|---|
| [`input/pagecontent/capability-statements.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/capability-statements.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/changes.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/changes.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/code-systems.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/code-systems.html) | optional | yes — see its rows above | — |
| [`input/pagecontent/downloads.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/downloads.html) | scaffold | no — template content | 2 |
| [`input/pagecontent/examples.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/examples.html) | scaffold | no — template content | 2 |
| [`input/pagecontent/extensions.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/extensions.html) | optional | no — template content | 2 |
| [`input/pagecontent/guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/guidance.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/implementer-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/implementer-guidance.html) | scaffold | yes — see its rows above | 4 |
| [`input/pagecontent/index.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/index.html) | scaffold | yes — see its rows above | 4 |
| [`input/pagecontent/logical-models.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/logical-models.html) | scaffold | yes — see its rows above | 4 |
| [`input/pagecontent/metadata.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/metadata.html) | optional | no — template content | — |
| [`input/pagecontent/operations.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/operations.html) | optional | no — template content | — |
| [`input/pagecontent/profiles.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/profiles.html) | scaffold | yes — see its rows above | 4 |
| [`input/pagecontent/rendering-artifacts.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/rendering-artifacts.html) | demo | no — template content | — |
| [`input/pagecontent/researcher-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/researcher-guidance.html) | optional | no — template content | — |
| [`input/pagecontent/search-parameters.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/search-parameters.html) | optional | no — template content | — |
| [`input/pagecontent/security-and-privacy.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/security-and-privacy.html) | scaffold | no — template content | — |
| [`input/pagecontent/translationinfo.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/translationinfo.html) | scaffold | no — template content | 2 |
| [`input/pagecontent/uml-diagrams.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/uml-diagrams.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/value-sets.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/value-sets.html) | optional | no — template content | 2 |
| [`input/pagecontent/version-history.md`](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/branches/migration-2027.0.0-ballot.rc1-template-v0.13.1/version-history.html) | scaffold | no — template content | — |

## Identity (what makes this module *this* module)

| Field | Tier | Source | Value | Contradiction |
| --- | --- | --- | --- | --- |
| packageId | R | sushi-config.yaml:14 | de.medizininformatikinitiative.kerndatensatz.dokument |  |
| id | R | sushi-config.yaml | mii-ig-dokument |  |
| name | R | sushi-config.yaml | MII_IG_Dokument |  |
| title | R | sushi-config.yaml | MII IG Dokument |  |
| canonical | R | sushi-config.yaml | https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument |  |
| version | R | sushi-config.yaml + package.json (agree) | 2027.0.0-ballot.rc1 |  |
| version | P | packages.simplifier.net published package (immutable) | 2027.0.0-ballot.rc1 |  |
| status | R | sushi-config.yaml | draft |  |
| releaseLabel | R | sushi-config.yaml | ballot |  |
| fhirVersion | R | sushi-config.yaml | 4.0.1 |  |
| copyrightYear | R | sushi-config.yaml | 2026+ |  |
| publisher | R | sushi-config.yaml publisher block | Medizininformatik-Initiative <office@medizininformatik-initiative.de> https://www.medizininformatik-initiative.de |  |
| license | R | sushi-config.yaml + package.json (agree); NO LICENSE file in repo | CC0-1.0 | YES -- Gate A |
| license | H | implementation-guides/…/Index.page.md:46-50 (guide footer: 'Creative Commons Namensnennung 4.0 International' + CC-BY badge) | CC-BY-4.0 | YES -- Gate A |

## Protocol (what was executed — generated from `migration-log/run.log`)

37 step-actions, 43 WARN lines (each one either a mandated escalation, a named
correction, or a documented acceptance — none unactioned), 5 ERROR lines (each followed
by its fix and re-run: inventory generator TypeError → fixed + re-run; license-align
vacuous self-compare → corrected authoritative run; prepost-delta regressions → both
accepted with justification; gen-page-title-po partial → unit filled; derived-scan
twin-missing → EN box added).

| Step / action | first line (UTC) | lines | WARN | ERROR |
|---|---|---|---|---|
| `log run-boundary` | 2026-08-29T22:24:51Z | 1 | 0 | 0 |
| `pre.2 classify-source-shape` | 2026-08-29T22:24:51Z | 1 | 0 | 0 |
| `pre.5 toolchain` | 2026-08-29T22:24:52Z | 2 | 1 | 0 |
| `1 preflight-analysis` | 2026-08-29T22:24:52Z | 2 | 0 | 0 |
| `5.1 source-inventory` | 2026-08-29T22:25:25Z | 7 | 1 | 1 |
| `5.1 qa-baseline` | 2026-08-29T22:26:24Z | 1 | 0 | 0 |
| `2.1 read-identity` | 2026-08-29T22:27:24Z | 18 | 1 | 0 |
| `2b gofsh-skip` | 2026-08-29T22:28:11Z | 1 | 0 | 0 |
| `2c harvest-skip` | 2026-08-29T22:28:11Z | 1 | 0 | 0 |
| `pre.3 target-state` | 2026-08-29T22:28:11Z | 2 | 0 | 0 |
| `pre.4 placeholder-census` | 2026-08-29T22:28:36Z | 3 | 0 | 0 |
| `5.2 skeleton-vendored` | 2026-08-29T22:34:23Z | 11 | 1 | 0 |
| `5.2 template-reference` | 2026-08-29T22:34:53Z | 1 | 0 | 0 |
| `5.2 skeleton-input` | 2026-08-29T22:35:55Z | 2 | 0 | 0 |
| `5.2 fill-placeholders` | 2026-08-29T22:39:00Z | 5 | 0 | 0 |
| `5.2 license-align` | 2026-08-29T22:39:30Z | 11 | 2 | 0 |
| `5.2 sushi-skeleton` | 2026-08-29T22:40:15Z | 4 | 0 | 0 |
| `5.3 transfer-artefacts` | 2026-08-29T22:42:49Z | 6 | 0 | 0 |
| `5.4 fql-scan` | 2026-08-29T22:43:26Z | 121 | 1 | 0 |
| `5.4c page-routing` | 2026-08-29T22:43:37Z | 3 | 0 | 0 |
| `5.4a optional-page-decisions` | 2026-08-29T22:45:13Z | 1 | 0 | 0 |
| `5.4b security-privacy-decision` | 2026-08-29T22:45:13Z | 2 | 0 | 0 |
| `5.4a optional-page-apply` | 2026-08-29T22:48:43Z | 2 | 0 | 0 |
| `5.4 optional-page-apply` | 2026-08-29T22:49:06Z | 2 | 0 | 0 |
| `5.5 translationinfo` | 2026-08-29T22:51:37Z | 3 | 0 | 0 |
| `5.4d derived-scan` | 2026-08-30T06:05:15Z | 6 | 0 | 1 |
| `11 derived-scan` | 2026-08-30T06:05:15Z | 8 | 1 | 1 |
| `5.6 sushi-build` | 2026-08-30T06:06:18Z | 2 | 0 | 0 |
| `5.5 gen-page-title-po` | 2026-08-30T06:06:26Z | 9 | 1 | 1 |
| `5.6a sibling-skill-check` | 2026-08-30T06:10:16Z | 4 | 0 | 0 |
| `5.6 ig-publisher` | 2026-08-30T06:17:11Z | 3 | 0 | 0 |
| `7 postflight-analysis` | 2026-08-30T06:18:20Z | 2 | 0 | 0 |
| `7 prepost-delta` | 2026-08-30T06:18:20Z | 4 | 2 | 1 |
| `11 verify-migration` | 2026-08-30T06:19:08Z | 89 | 32 | 0 |
| `5.4 c4-restoration` | 2026-08-30T06:31:35Z | 1 | 0 | 0 |
| `8 qa-checklist` | 2026-08-30T06:39:53Z | 2 | 0 | 0 |
| `8 comparison-table` | 2026-08-30T06:39:53Z | 2 | 0 | 0 |

## Sign-off — what must happen before anything is published

### QA checklist (GENERATED by qa-checklist.py — do not retype; regenerate instead)

One checkbox per open obligation, from the machine ledgers. Ticking a box asserts the *named person* did the *named thing*. This list belongs inside `migration-log/migration-report.md` (section *Sign-off*): the detail behind every item id, the glossary for every code, term, gate owner and source shape, and the *How to re-run* commands all live there (and in the skill's `references/codes.md`). Pages named bare live in `input/pagecontent/`; names ending in `-intro` live in `input/intro-notes/`. 96 finding(s) verdicted IDENTISCH owe nobody anything and are not listed.

#### Gate A — identity (module maintainer, with TF-KDS)

- [ ] **F1-7bae24** (F1 - module identity unchanged): the SOURCE wins (spec 2.2); restore it or record the divergence as a Gate-A decision -- never normalise silently — *fix it, or accept it with a named reason in the report*
- [ ] **F2 ×2** (F2 - dependency pins identical to the source's): confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition — *do the named action so the check can run - this is not a pass*  <sub>ids: F2-fd0e73, F2-e78ce4</sub>
- [ ] **identity `license`** claims 2 different values: `CC0-1.0` (sushi-config.yaml + package.json (agree); NO LICENSE file in repo) vs `CC-BY-4.0` (implementation-guides/…/Index.page.md:46-50 (guide footer: 'Creative Commons Namensnennung 4.0 International' + CC-BY badge)) — *choose one and record why*

#### Gate B — narrative (the module's clinical and technical authors)

- [ ] **C4 ×3** (C4 - the source's narrative text present somewhere): conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) — *do the named action so the check can run - this is not a pass*  <sub>ids: C4-7b2767, C4-c975ec, C4-fc1144</sub>
- [ ] **C4 ×12** (C4 - the source's narrative text present somewhere): map the missing text to a target page section, or record the loss in the report's content map — *fix it, or accept it with a named reason in the report*  <sub>ids: C4-d2b82b, C4-196ae3, C4-0a8096, C4-f3c91c, C4-39c9c7, C4-11b5dc, C4-920d02, C4-fe91db, C4-03ec0a, C4-f0499f, C4-dcd614, C4-ef59ff</sub>
- [ ] **C4 ×2** (C4 - the source's narrative text present somewhere): read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here — *do the named action so the check can run - this is not a pass*  <sub>ids: C4-68e681, C4-14e9a5</sub>
- [ ] **R2 ×2** (R2 - page header/footer metadata render correctly): rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) — *fix it, or accept it with a named reason in the report*  <sub>ids: R2-48ed52, R2-d1da9a</sub>
- [ ] **R1-76f413** (R1 - tables, tabs and images render with content): harvest with --keep-html and write the page map; without a source rendering, 'non-empty where non-empty in the source' has no reference — *do the named action so the check can run - this is not a pass*
- [ ] **`StructureDefinition-mii-ex-dokument-nlp-processing-status-intro`**: review 4 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`StructureDefinition-mii-pr-dokument-dokument-intro`**: review 6 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`downloads`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`examples`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`extensions`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`implementer-guidance`**: review 4 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`index`**: review 4 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`kompatibilitaet`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`logical-models`**: review 4 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`profiles`**: review 4 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`translationinfo`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`value-sets`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`MIIIGModulDokument/HinweisTemplate.page.md` RETIRED**: orphan Simplifier authoring stub [MAP-EDIT: 4 words, not in toc, contains the {{render:HereBeDragons}} error artifact - not module content] — *confirm nothing in it is needed*
- [ ] **`MIIIGModulDokument/AnwendungsflleInformationsmodell/Index.page.md` RETIRED**: 13-word navigation stub [MAP-EDIT: all 3 children routed to template pages (guidance/logical-models/uml-diagrams); a hub would hold nothing] — *confirm nothing in it is needed*
- [ ] **`MIIIGModulDokument/TechnischeImplementierung/Index.page.md` RETIRED**: 12-word navigation stub [MAP-EDIT: all 5 children routed; a hub would hold nothing] — *confirm nothing in it is needed*
- [ ] **`binaries/**` RETIRED**: byte-duplicates of input/fsh/examples/alzheimer/attachments/* (canonical copies carried with the FSH) [MAP-EDIT: measured duplicate names] — *confirm nothing in it is needed*

#### Gate C — language (a reviewer competent in both languages)

- [ ] **C7 ×4** (C7 - migration-written content is marked as such): mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead — *fix it, or accept it with a named reason in the report*  <sub>ids: C7-9191f0, C7-4f50d8, C7-118c68, C7-fabfa8</sub>
- [ ] **C7 ×2** (C7 - migration-written content is marked as such): read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d — *do the named action so the check can run - this is not a pass*  <sub>ids: C7-bba487, C7-c9621a</sub>

#### Gate D — release (TF-KDS / AG IOP / NSG; merging is what publishes)

- [ ] **P3-c39a79** (P3 - IG Publisher version matches the workflow pin): upgrading the publisher is a target-repository decision, not a migration one -- record it, do not act on it here — *do the named action so the check can run - this is not a pass*
- [ ] **L1-9622bf** (L1 - every partial-success warning acted on): the WARN this whole convention exists for was emitted and NOTHING acted on it. Re-run the step, or record the resolution with a `resolved:` line naming this action — *fix it, or accept it with a named reason in the report*
- [ ] **L2-23b069** (L2 - every expected step wrote a log line): confirm the condition did not hold -- The published package is the only machine source for the dependency PINS (spec §2.1.1). — *do the named action so the check can run - this is not a pass*
- [ ] **L2-7163a2** (L2 - every expected step wrote a log line): confirm the condition did not hold -- The repository's LICENSE text is the only machine source for `license` — the field that must never default (spec §2.2). — *do the named action so the check can run - this is not a pass*
- [ ] **L2-07bdbb** (L2 - every expected step wrote a log line): confirm the condition did not hold -- Without the discovery chain the guide is not found, and a migration then ships the template's starter pages. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-930ba2** (L2 - every expected step wrote a log line): confirm the condition did not hold -- This is the step whose absence shipped the template's starter pages under a module's name. — *do the named action so the check can run - this is not a pass*
- [ ] **L4-106e61** (L4 - the log's counts agree with the tree): shape B only; for shape A there is nothing to convert — *do the named action so the check can run - this is not a pass*
- [ ] **L4-f17740** (L4 - the log's counts agree with the tree): harvest the guide (step 2c) where the narrative is not in the repo — *do the named action so the check can run - this is not a pass*
- [ ] **pre/post delta**: `prepost-delta.md` shows no REGRESSION row, or every regression is explained in the report — *never merged unexplained*
- [ ] **CI**: the module's own checks are green on the migration branch
- [ ] **gates A–C**: signed by the named reviewers above
- [ ] **publication decision**: recorded with name and date — *merging is what publishes*

<!-- REPORT-AUTHORED ITEMS - the generator cannot enumerate judgement.
     Add ONE checkbox per DEC-n / REV-n / QA-n block of this report,
     under the gate that owns it, in the form:
     - [ ] **DEC-1** <its one-line what> - *<its next action>*  -->

---

### How this report was produced

Generated aids pasted, never retyped: identity table (`migration-log.sh claims
--markdown`), content map (`comparison-table.py`), sign-off checklist
(`qa-checklist.py`), protocol digest (from `run.log`). Re-run instructions are in the
skill’s report template (`references/migration-report-template.md`, *How to re-run*).
