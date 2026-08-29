# Gate-0 preflight — KDS Dokument v2027.0.0-ballot.rc1 → MII KDS module scaffold

Run 2026-08-30 on fresh scratchpad clones. **Read-only — no migration write has happened.**
This directory is carried into the real run's `migration-log/` when the user gives the go.

## Pins (verified by clone)

| Input | Ref | HEAD |
|---|---|---|
| agent-skills (skill v0.25.0) | tag `v0.25.0` | `5c0cc0c3` |
| source `kerndatensatz-dokument` | tag `v2027.0.0-ballot.rc1` | `6d0fa590` |
| target scaffold `mii-kds-module-template` | tag `v0.13.1` | `61b02b50` |
| IG template `ig-template-mii-kds` | tag `v1.3.4` | `211d3e0d` |

## 1. fhir-ig-analysis (`preflight-analysis.json`, schemaVersion 1.4, mode=static)

- **Artifacts (total 19 FSH declarations)**: 1 profile, 1 extension, 6 VS, 1 CS, 1 logical,
  1 CapabilityStatement, 8 examples (+ 27 rulesets, 2 invariants, 1 mapping — non-shipping
  constructs). `other` bucket **empty**; crosscheck mismatches **none**.
  `fsh-generated/resources` = **20** (19 + IG resource) — consistent.
- **Licence**: CC0-1.0 from sushi-config/package.json, machine-`contradictory: false` —
  but ig-stats does not read narrative: the `Index.page.md` CC BY 4.0 claim + missing
  LICENSE file remain the Gate-A licence item (license-align will exit 1 `license-missing:`).
- **Canonical space**: 0 out-of-space, 0 id↔url mismatches, `special_url_prediction: 0`,
  no config contradiction.
- **Dependency health**: THO **and** extensions pinned directly → `injection_risk: false`;
  no old-style packages; dependency block present + parsed.
- **NEW FINDING — dual narrative sources** (`narrative_sources.dual_source: true`):
  the source ALSO has `input/pagecontent/` (last commit 2024-08-16) beside the guide tree
  (last commit 2026-08-28). Benign: it holds a single 14-word stub `index.md`.
  §5.1 decision (by freshness AND content): **guide tree authoritative** — record as a
  `decision` line in the real run log.
- **`qa_baseline: None`** → obligation stands: build the unmigrated source (or fetch rendered
  qa) before claiming any error is pre-existing.
- **Narrative**: 19 pages total (18 guide `.page.md` + 1 stale stub), **15 non-stub**,
  **7587 words**, 7 images. Stubs: `input/pagecontent/index.md`,
  `AnwendungsflleInformationsmodell/Index`, `HinweisTemplate`, `TechnischeImplementierung/Index`.
- **Directives (total 105, unknown 0)**: page-title 13 · fql-tag 9 + fql-at 4 (= 13 FQL ✓) ·
  pagelink 11 (ig-stats' count; plan prose said 12 — **ig-stats is the instrument, use 11**) ·
  render-image 6 + render-resource 9 (= 15 render ✓) · json 10 · tabs 34 (tag-level count;
  element-level: 4 `<tabs>` / 17 `<tab>`) · tree 3 · link 3 · xml 2 · index-root 1.

## 2. Convention-check baseline (scaffold v0.13.1 `convention-check.mjs` vs source tree)

Both modes exit **1**, exactly as planned:
- **M6 FAIL** — `2027.0.0-ballot.rc1` rejected by the CalVer regex (the D1 decision).
- **M7 FAIL** — the **source's own legacy `ig.ini`** pins `fhir2.base.template#current`.
  Note: this observed value comes from source-tree legacy scaffolding that is NOT carried;
  the migrated tree gets the URL `template =` form. M7 must pass in the target.
- M1–M5 PASS (packageId/id/name/title/canonical all conform already).
- M9/M10/M11 PASS **vacuously** (no template pages exist in the source yet — plan R8).
Full tables: `convention-check-baseline.txt`, `convention-check-baseline-release.txt`.

## 3. Census re-derivation (all plan numbers confirmed by measurement)

| Metric | Measured | Plan |
|---|---|---|
| `input/fsh` files | **36** = 29 `.fsh` + 3 `.gitkeep` + 4 binaries (`Amanda_Alzheimer.docx`, `Amanda_Alzheimer.txt`, `Annotat.zip`, `De-ID.txt` under `examples/alzheimer/attachments/`) | ✓ |
| `fsh-generated/resources` | **20** | ✓ |
| advisor.json | source **16** / template **6** / overlap **4** / union **18** / source-only **12** | ✓ |
| qc `naming-convention-url` candidates | **12** resources carry the `/ext/` canonical | ✓ |
| words needing translation review | **7587** | ~7.6k ✓ |

## 4. P4 measurement (guide provenance) — re-captured 2026-08-30

`https://simplifier.net/published-guide/medizininformatikinitiative-dokument/versions`
(HTTP 200, saved as `guide-versions.html`): the versions list contains **only** the
**Preview** row — title "Medizininformatik Initiative - ImplementationGuide - Dokument v2027",
linking to `?version=current`. **Zero published versions.** ("version 2026.4.1.0" in the raw
HTML is the SIMPLIFIER.NET footer version, not a guide version — do not misread it.)
→ Named ① Gate-A finding; never record `current` as a pin.

## 5. C5 unblocked

`template-pages-v0.13.1.tsv` (sibling of `migration-log/`) re-measures the template page
manifest at the vendored tag: page SET identical to the shipped v0.11.1 manifest
(21 named pages + prefix-matched IG-resource page); the 7 `optional` roles match the
OPTIONAL-PAGE markers exactly; `rendering-artifacts` still `demo`. Pass it to
`verify-migration.py --template-pages` at step 7b → C5c fully PRÜFBAR.
Remaining pre-agreed verify exception: **P4 only**.
