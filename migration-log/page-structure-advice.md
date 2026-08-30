# Page-structure advice

**This report PROPOSES and never edits a module.** It reads the source and target repositories read-only; its only writes are this report and the page-map v2 TSV (`--map`) - the map is the PRIMARY output and the contract step 5 consumes, this report is its rendering. Every routing row below is the branch the MEASUREMENTS support - a human (or the skill at step 5) decides and applies it.

| Input | Value |
| --- | --- |
| source repo | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/7ea8f04a-474c-4703-a1c0-0fde707c6889/scratchpad/mig/source-tag` |
| target repo | `.` |
| routing table | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/7ea8f04a-474c-4703-a1c0-0fde707c6889/scratchpad/mig/skills/skills/mii-ig-migration/references/routing-table.tsv` (17 patterns) |
| Gate 0 preflight | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/7ea8f04a-474c-4703-a1c0-0fde707c6889/scratchpad/mig/source/migration-log/preflight-analysis.json` |
| artefact census | fsh-generated/resources (20 resources; cross-checked by Gate 0's generated_crosscheck) |
| page map | `migration-log/page-map.tsv` |
| generated | 2026-08-29T22:43:37Z |
| script | `page-structure-advice.py` v1.3.0 |

Contract limits in force: menu total <= 33, dropdown children <= 10, top level <= 8, menu depth <= 2; size gate at > 2500 words, > 4 merged sources, or ANY repeated heading title; hub at >= 3 children.

## 1. Source page tree

The tree is taken from the FIRST of four inputs that yields pages: **(a)** the `pages:` block of the source `sushi-config.yaml`, **(b)** the authoritative Simplifier guide tree under `implementation-guides/` (spec 5.1a), **(c)** a flat count of `input/pagecontent/*.md`.

**Input used: (b) the Simplifier guide tree `implementation-guides/mii-ig-dokument-de`, walked from its `toc.yaml`.**

### 1.0 Simplifier guide trees found

Every tree under `implementation-guides/` is listed - the choice is never made silently. Dispositions follow spec 5.1a: #1 authoritative, #2 parallel-language harvest seed, #3 historical/shared retained, #4 unrecognized.

| Guide tree | Title | Version (dir name) | Version (guide.yaml) | Lang | `*.page.md` on disk | Disposition |
| --- | --- | --- | --- | --- | ---: | --- |
| `binaries` | - | - | - | - | 0 | unrecognized directory - needs a retain/retire proposal (5.1a #4) |
| `images` | - | - | - | - | 0 | unrecognized directory - needs a retain/retire proposal (5.1a #4) |
| `mii-ig-dokument-de` | Medizininformatik Initiative - ImplementationGuide - Dokument v2027 | - | 2027.0.0-ballot.rc1 | DE | 18 | **AUTHORITATIVE** - steps 5.4/5.5 operate on this tree |

**Chosen: `mii-ig-dokument-de`** - highest version among the trees in the module's own narrative language DE (sushi-config `language:`): mii-ig-dokument-de (directory version -, guide.yaml version 2027.0.0-ballot.rc1).

The module's narrative language read from `sushi-config.yaml` `language:` is **DE**.

- no directory name under implementation-guides/ carries a version substring; ranked by name instead.

**A human can override this choice**: re-run with `--guide-tree <directory name>`. The ranking above is evidence, not a verdict - confirm it against the rendered IG and record it in the inventory (Gate B reviews it).

### 1.1 Depth histogram

Walked from `implementation-guides/mii-ig-dokument-de/toc.yaml`: an entry whose `filename` ends in `.page.md` is a page, any other `filename` is a sub-directory holding its own `toc.yaml`. A sub-directory is a LEVEL, not a page, so every page of one directory shares one level (that is how Simplifier renders a folder), and the levels are shifted so the shallowest page sits at level 1 - this guide's root `toc.yaml` lists only a folder, which adds no page level. Routing still needs a page parent, so each directory is represented by its `Index.page.md` and its remaining pages plus its sub-folders' representatives become that page's children; a parent may therefore share its children's level.

| Level | Pages | Share |
| --- | ---: | ---: |
| 1 | 6 | 33% |
| 2 | 9 | 50% |
| 3 | 3 | 17% |
| **total** | **18** | 100% |

Maximum depth used: **3**. Total words across the 18 source pages: **6872**. Pages in `input/pagecontent/`: **1**.

### 1.1a Structural findings in the source tree

Reported, never silently absorbed - each one is a page the migration would otherwise lose or invent.

- `MIIIGModulDokument/HinweisTemplate.page.md` exists on disk but is **not listed in MIIIGModulDokument/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.

### 1.2 Parent-child tree

```
`- Index  `MIIIGModulDokument/Index.page.md`
   |- Release Notes  `MIIIGModulDokument/Release-Notes.page.md`
   |- Beschreibung Modul  `MIIIGModulDokument/Beschreibung.page.md`
   |- Kontext im Gesamtprojekt / Bezüge zu anderen Modulen  `MIIIGModulDokument/Kontext-Bezuege.page.md`
   |- Referenzen  `MIIIGModulDokument/Referenzen.page.md`
   |- HinweisTemplate  `MIIIGModulDokument/HinweisTemplate.page.md`
   |- Index  `MIIIGModulDokument/AnwendungsflleInformationsmodell/Index.page.md`
   |  |- Beschreibung von Szenarien für die Anwendung der Module  `MIIIGModulDokument/AnwendungsflleInformationsmodell/Szenarien.page.md`
   |  |- Datensätze inkl. Beschreibungen  `MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze.page.md`
   |  `- UML  `MIIIGModulDokument/AnwendungsflleInformationsmodell/UML.page.md`
   `- Index  `MIIIGModulDokument/TechnischeImplementierung/Index.page.md`
      |- Conformance  `MIIIGModulDokument/TechnischeImplementierung/Conformance.page.md`
      |- Kompatibilität  `MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md`
      |- CapabilityStatement  `MIIIGModulDokument/TechnischeImplementierung/CapabilityStatement.page.md`
      |- Terminologien  `MIIIGModulDokument/TechnischeImplementierung/Terminologien.page.md`
      `- Index  `MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Index.page.md`
         |- Dokument: DocumentReference  `MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md`
         `- NLP Processing Status: Extension  `MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md`
```

## 2. Target page measurements

Words = whitespace tokens after removing HTML comments, table separator rows and the markup characters `>`, `|`, `*`, `_`, `` ` ``. Headings, list items, table cells and fenced code all count: the gate measures what the reader has to traverse. Repeated titles are compared case-sensitively; each repeat costs one publisher-appended anchor (`-2`, `-3`, ...). Merged sources are the distinct `<!-- source: X.md -->` section markers the migration itself left behind.

| Page | Words | h2 | h3 | h4 | other h | Repeated titles | Anchor collisions | Merged sources | Size gate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| `ImplementationGuide-mii-ig-dokument.md` | 253 | 0 | 5 | 0 | 0 | 0 | 0 | 0 | ok |
| `capability-statements.md` | 31 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `changes.md` | 529 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | ok |
| `code-systems.md` | 131 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `downloads.md` | 299 | 0 | 0 | 7 | 0 | 0 | 0 | 0 | ok |
| `examples.md` | 42 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `extensions.md` | 115 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `guidance.md` | 120 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `implementer-guidance.md` | 28 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `index.md` | 435 | 0 | 9 | 0 | 0 | 0 | 0 | 0 | ok |
| `logical-models.md` | 33 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `metadata.md` | 1919 | 0 | 1 | 7 | 1 | 0 | 0 | 0 | ok |
| `operations.md` | 96 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `profiles.md` | 67 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `rendering-artifacts.md` | 3844 | 0 | 8 | 3 | 0 | 0 | 0 | 0 | **TRIPS** - 3844 words > 2500 |
| `researcher-guidance.md` | 99 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `search-parameters.md` | 97 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `security-and-privacy.md` | 396 | 0 | 0 | 3 | 0 | 0 | 0 | 0 | ok |
| `translationinfo.md` | 70 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `uml-diagrams.md` | 42 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `value-sets.md` | 159 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `version-history.md` | 503 | 0 | 0 | 6 | 0 | 0 | 0 | 0 | ok |

### 2.1 Pages that trip the size gate

- **`rendering-artifacts.md`** - 3844 words > 2500.
  - rule 5: re-run routing preferring branches 1 and 2, or split.

## 3. Menu budget

Clickable entries are the menu's real destinations: every `<li><a>` except the dropdown toggles, which only repeat their first child's href.

| Metric | Measured | Contract limit | Headroom |
| --- | ---: | ---: | ---: |
| total clickable entries | 26 | 33 | 7 |
| widest dropdown (Artefakte) | 11 | 10 | -1 |
| top-level entries | 7 | 8 | 1 |
| menu depth used | 2 | 2 | 0 |

| Dropdown | Children | Free (of 10) |
| --- | ---: | ---: |
| Anleitung | 5 | 5 |
| Konformität | 5 | 5 |
| Artefakte | 11 | -1 |
| Metadaten | 2 | 8 |

After the proposals in section 4: total 6 free, top level 0 free, freest dropdown Metadaten (8 free).

## 4. Routing proposal (spec 9d/9e)

One row per source page. The branch number is the spec's; the measurement column is the number that forced it. Branch-4 rows state the presentation (4a) and the visibility (4b), and, where a menu entry fits, the remaining budget after it. `Words` is the source page's own size, counted the same way as the target pages in section 2.

| # | Source page | Lvl | Children | Words | Branch | Proposed destination | Measurement |
| ---: | --- | ---: | ---: | ---: | --- | --- | --- |
| 1 | `MIIIGModulDokument/Index.page.md` | 1 | 7 | 254 | 3 merge into agreed page | index.md | agreed page named 'index' exists in the target |
| 2 | `MIIIGModulDokument/Release-Notes.page.md` | 1 | 0 | 226 | 3 merge into agreed page | changes.md | semantic match 'releasenotes' -> changes (routing-table) |
| 3 | `MIIIGModulDokument/Beschreibung.page.md` | 1 | 0 | 226 | 3 merge into agreed page | index.md | semantic match 'beschreibungmodul' -> index (routing-table) |
| 4 | `MIIIGModulDokument/Kontext-Bezuege.page.md` | 1 | 0 | 406 | 3 merge into agreed page | implementer-guidance.md | semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table) |
| 5 | `MIIIGModulDokument/Referenzen.page.md` | 1 | 0 | 374 | 3 merge into agreed page | implementer-guidance.md | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 6 | `MIIIGModulDokument/HinweisTemplate.page.md` | 1 | 0 | 4 | 4 own page | own page (merged page), MENU entry (top level); total 26->27, top level 7->8; remaining after: total 6 free, top level 0 free, freest dropdown Metadaten (8 free) <br>_(on disk but not listed in MIIIGModulDokument/toc.yaml)_ | no artefact anchor; no agreed page; 0 child page(s) |
| 7 | `MIIIGModulDokument/AnwendungsflleInformationsmodell/Index.page.md` | 2 | 3 | 13 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulDokument/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 3 child page(s) |
| 8 | `MIIIGModulDokument/AnwendungsflleInformationsmodell/Szenarien.page.md` | 2 | 0 | 562 | 3 merge into agreed page | guidance.md | semantic match 'szenarien' -> guidance (routing-table) |
| 9 | `MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze.page.md` | 2 | 0 | 105 | 3 merge into agreed page | logical-models.md | semantic match 'datensaetze' -> logical-models (routing-table) |
| 10 | `MIIIGModulDokument/AnwendungsflleInformationsmodell/UML.page.md` | 2 | 0 | 162 | 3 merge into agreed page | uml-diagrams.md | semantic match 'uml' -> uml-diagrams (routing-table) |
| 11 | `MIIIGModulDokument/TechnischeImplementierung/Index.page.md` | 2 | 5 | 12 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulDokument/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 5 child page(s) |
| 12 | `MIIIGModulDokument/TechnischeImplementierung/Conformance.page.md` | 2 | 0 | 464 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulDokument/TechnischeImplementierung/Index.page.md (its host has no menu entry) | no artefact anchor; no agreed page; 0 child page(s) |
| 13 | `MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md` | 2 | 0 | 1488 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulDokument/TechnischeImplementierung/Index.page.md (its host has no menu entry) | no artefact anchor; no agreed page; 0 child page(s) |
| 14 | `MIIIGModulDokument/TechnischeImplementierung/CapabilityStatement.page.md` | 2 | 0 | 92 | 3 merge into agreed page | capability-statements.md | semantic match 'capabilitystatement' -> capability-statements (routing-table) |
| 15 | `MIIIGModulDokument/TechnischeImplementierung/Terminologien.page.md` | 2 | 0 | 430 | 3 merge into agreed page | code-systems.md | semantic match 'terminologien' -> code-systems (routing-table) |
| 16 | `MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Index.page.md` | 3 | 2 | 529 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulDokument/TechnischeImplementierung/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 2 child page(s) |
| 17 | `MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md` | 3 | 0 | 802 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Index.page.md (its host has no menu entry) | no artefact anchor; no agreed page; 0 child page(s) |
| 18 | `MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md` | 3 | 0 | 723 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-dokument-nlp-processing-status-intro.md | tokens match on mii-ex-dokument-nlp-processing-status (3 candidate artefacts) |

Branch totals: 1 intro-note = 1, 3 merge into agreed page = 10, 4 own page = 7.

## 5. Report queue 1 items

The menu budget forced a ToC-nesting where a menu entry was otherwise warranted. Allocation below is first-come-first-served in source document order; the human may spend the budget differently.

- MIIIGModulDokument/AnwendungsflleInformationsmodell/Index.page.md - nested under MIIIGModulDokument/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulDokument/TechnischeImplementierung/Index.page.md - nested under MIIIGModulDokument/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulDokument/TechnischeImplementierung/Conformance.page.md - nested under MIIIGModulDokument/TechnischeImplementierung/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md - nested under MIIIGModulDokument/TechnischeImplementierung/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Index.page.md - nested under MIIIGModulDokument/TechnischeImplementierung/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md - nested under MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.

Size-gate trips (rule 5) needing a routing re-run or a split:

- `rendering-artifacts.md` - 3844 words > 2500.

## 6. Suggested `5.4c page-routing` run-log lines

One per source page (union pages included), ready for the migration run log. The `5.4c page-routing` step IS the advice run that GENERATES the page map (`--map`) - the map is machine-written, never hand-written; these lines are only its run-log form.

```
5.4c page-routing	MIIIGModulDokument/Index.page.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	MIIIGModulDokument/Release-Notes.page.md	branch=3	changes.md	semantic match 'releasenotes' -> changes (routing-table)
5.4c page-routing	MIIIGModulDokument/Beschreibung.page.md	branch=3	index.md	semantic match 'beschreibungmodul' -> index (routing-table)
5.4c page-routing	MIIIGModulDokument/Kontext-Bezuege.page.md	branch=3	implementer-guidance.md	semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulDokument/Referenzen.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulDokument/HinweisTemplate.page.md	branch=4	own page (merged page), MENU entry (top level); total 26->27, top level 7->8; remaining after: total 6 free, top level 0 free, freest dropdown Metadaten (8 free)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulDokument/AnwendungsflleInformationsmodell/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulDokument/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulDokument/AnwendungsflleInformationsmodell/Szenarien.page.md	branch=3	guidance.md	semantic match 'szenarien' -> guidance (routing-table)
5.4c page-routing	MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze.page.md	branch=3	logical-models.md	semantic match 'datensaetze' -> logical-models (routing-table)
5.4c page-routing	MIIIGModulDokument/AnwendungsflleInformationsmodell/UML.page.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	MIIIGModulDokument/TechnischeImplementierung/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulDokument/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 5 child page(s)
5.4c page-routing	MIIIGModulDokument/TechnischeImplementierung/Conformance.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulDokument/TechnischeImplementierung/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulDokument/TechnischeImplementierung/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulDokument/TechnischeImplementierung/CapabilityStatement.page.md	branch=3	capability-statements.md	semantic match 'capabilitystatement' -> capability-statements (routing-table)
5.4c page-routing	MIIIGModulDokument/TechnischeImplementierung/Terminologien.page.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Index.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulDokument/TechnischeImplementierung/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 2 child page(s)
5.4c page-routing	MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-dokument-nlp-processing-status-intro.md	tokens match on mii-ex-dokument-nlp-processing-status (3 candidate artefacts)
5.4c page-routing	index.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	map rows=21 retired=2 coverage=ok	map=migration-log/page-map.tsv
```

## 7. Page map (v2) and coverage

The page map is the CONTRACT of the narrative migration: this run generates and validates it, step 5 consumes ONLY it, step 8 checks against it. Columns: `source_page`, `target` (repo-relative path or `RETIRED`), `reason`, `branch` (spec 9e 1-4; 5 = RETIRED), `measure`. One row per page of the source page universe - the authoritative guide tree UNION `input/pagecontent` UNION on-disk pages no toc lists.

Rows: **21** total - 19 routed source pages (18 from the primary tree, 1 union pages outside it) and 2 RETIRED guide-tree summary row(s).

### 7.1 Union pages outside the primary tree

Pages of the universe the primary page tree does not list - routed by the same passes, after it (menu budget included).

| Source page | Branch | Target | Measurement |
| --- | --- | --- | --- |
| `index.md` | 3 | `input/pagecontent/index.md` | agreed page named 'index' exists in the target <br>_(union page: in input/pagecontent but not in the primary page tree)_ |

### 7.2 RETIRED guide trees

| Tree | Reason |
| --- | --- |
| `binaries/**` | unrecognized directory - needs a retain/retire proposal (5.1a #4) |
| `images/**` | unrecognized directory - needs a retain/retire proposal (5.1a #4) |

### 7.3 Coverage validation

Universe re-derived from disk: **19** page(s). Every one needs a row with a non-empty target; every RETIRED row needs a reason. The exit code reports the result (0 covered, 1 not).

**Covered.** All 19 universe pages have a target row; every RETIRED row carries a reason.

## 8. M9 optional-page / other-bucket proposal (Gate 0 census)

Counts: generated_crosscheck.counts (fsh-generated/resources). Rule (spec 9a): count 0 -> REMOVE the optional page, count > 0 -> KEEP and fill it; artefacts are never deleted to force a removal. Each proposal is a `5.4a` run-log line and a HUMAN decision - this table only measures.

| Optional page | Census key | Count | Proposal |
| --- | --- | ---: | --- |
| `extensions.md` | `extensions` | 1 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `search-parameters.md` | `searchparameters` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `operations.md` | `operations` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `value-sets.md` | `valuesets` | 6 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `code-systems.md` | `codesystems` | 1 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `researcher-guidance.md` | - | - | no artefact count decides it - source narrative does (human decision) |
| `metadata.md` | - | - | no artefact count decides it - source narrative does (human decision) |

_The census reports no `other`-bucket artefact types._

