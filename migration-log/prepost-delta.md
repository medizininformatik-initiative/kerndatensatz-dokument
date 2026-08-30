# Pre/post delta — the two ig-stats measurements compared

| Side | Measurement |
|---|---|
| pre | preflight-analysis.json (mii-ig-dokument, 730261e, 2026-08-29T22:24:52Z) |
| post | postflight-analysis.json (mii-ig-dokument, ce1e9de, 2026-08-30T06:18:20Z) |

Verdicts: **unchanged** 28 · **improved** 0 · **expected-change** 4 · **REGRESSION** 2 · **not-measurable** 0.

## ⛔ Regressions — properties that got WORSE

Each one blocks the migration until it is fixed or explained; an explanation belongs in the migration report, not in a merge commit.

- **`identity.license`**: `CC0-1.0` → `CC-BY-4.0` — machine-identity field changed -- the migrated package is no longer the same package
- **`licence.contradictory`**: `false` → `true` — the target now declares CONTRADICTORY licences (the target declares: attribution4.0international, cc-by-4.0, creativecommons) -- one file will be read as the licence by someone, and it will be the wrong one

## Identity

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `identity.id` | mii-ig-dokument | mii-ig-dokument | unchanged |  |
| `identity.canonical` | https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument | https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument | unchanged |  |
| `identity.packageId` | de.medizininformatikinitiative.kerndatensatz.dokument | de.medizininformatikinitiative.kerndatensatz.dokument | unchanged |  |
| `identity.name` | MII_IG_Dokument | MII_IG_Dokument | unchanged |  |
| `identity.version` | 2027.0.0-ballot.rc1 | 2027.0.0-ballot.rc1 | unchanged |  |
| `identity.fhirVersion` | 4.0.1 | 4.0.1 | unchanged |  |
| `identity.license` | CC0-1.0 | CC-BY-4.0 | **REGRESSION** | machine-identity field changed -- the migrated package is no longer the same package |
| `identity.calver` | true | true | unchanged |  |
| `identity.publisher` | Medizininformatik-Initiative | Medizininformatik-Initiative | unchanged |  |
| `identity.status` | draft | draft | unchanged |  |
| `identity.title` | MII IG Dokument | MII IG Dokument | unchanged |  |

## Preflight flags

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `licence.contradictory` | false | true | **REGRESSION** | the target now declares CONTRADICTORY licences (the target declares: attribution4.0international, cc-by-4.0, creativecommons) -- one file will be read as the licence by someone, and it will be the wrong one |
| `dependency_health.injection_risk` | false | false | unchanged |  |
| `narrative_sources.dual_source` | true | true | unchanged |  |

## Artefact counts

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `mode` | static | static | unchanged |  |
| `artifacts.profiles` | 1 | 1 | unchanged |  |
| `artifacts.extensions` | 1 | 1 | unchanged |  |
| `artifacts.valuesets` | 6 | 6 | unchanged |  |
| `artifacts.codesystems` | 1 | 1 | unchanged |  |
| `artifacts.logicals` | 1 | 1 | unchanged |  |
| `artifacts.capabilitystatements` | 1 | 1 | unchanged |  |
| `artifacts.questionnaires` | 0 | 0 | unchanged |  |
| `artifacts.searchparameters` | 0 | 0 | unchanged |  |
| `artifacts.operations` | 0 | 0 | unchanged |  |
| `artifacts.examples` | 8 | 8 | unchanged |  |
| `artifacts.rulesets` | 27 | 62 | expected-change | the count rose by 35 -- artefacts added by the migration; the report names what and why |
| `artifacts.invariants` | 2 | 2 | unchanged |  |
| `artifacts.mappings` | 1 | 1 | unchanged |  |
| `artifacts.other_total` | 0 | 0 | unchanged |  |
| `artifacts.total` | 19 | 19 | unchanged |  |

## Narrative pages

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `narrative.pages` | 15 | 34 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.intro_note_pages` | 0 | 2 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.translation_pages` | 0 | 19 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |

## Directives

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `directives.total` | 105 | 105 | unchanged |  |

