# `input/fsh/` — FHIR Shorthand sources of the module

SUSHI (pinned to 3.20.1 in the workflows) compiles everything here into
`fsh-generated/resources/`, which is committed. Change the `.fsh` files, never
the generated JSON.

| Folder / file | Contents |
|---|---|
| `aliases.fsh` | Canonical and code-system aliases (`$mii-…`, `$sct`, `$loinc`, …) shared by every file. |
| `common/` | Module-wide constants applied by RuleSet: `Header.fsh` (identity), `Meta.fsh`, `Publisher.fsh`, `Status.fsh`, `Version.fsh` (the CalVer literal — bump it with `package.json` and `sushi-config.yaml`), `rulesets.fsh`. |
| `rulesets/` | Reusable RuleSets (`crmi.fsh`, `extension-context.fsh`, `license.fsh`, `license-terms.fsh`, `meta-profile.fsh`, `test-data-label.fsh`) with their own README. |
| `profiles/` | The profile `MII_PR_Dokument_Dokument` (`mii-pr-dokument-dokument.fsh`) and its two invariants (`mii-iv-dokument-dokument-category.fsh`, `mii-iv-dokument-dokument-type.fsh`). |
| `extensions/` | `MII_EX_Dokument_NLP_Processing_Status`. |
| `terminology/` | The module's CodeSystem (`mii-cs-dokument-nlp-processing-status`) and ValueSets (`mii-vs-dokument-*`). |
| `logical-model/` | The logical model `MII_LM_Dokument` and its element mapping onto `DocumentReference` (`Mapping: MII_MAP_Dokument` in `mii-map-dokument.fsh`). |
| `definitions/` | The CapabilityStatement `mii-cps-dokument-capabilitystatement` — the normative list of supported search parameters. |
| `parameters/` | `manifest.fsh` — a commented-out FSH draft of the expansion manifest, kept for reference; the live manifest is `input/resources/Parameters-expansion-manifest.json` (pins SNOMED CT 20260701). |
| `examples/` | Synthetic example instances only (`alzheimer/`: the "Amanda Alzheimer" NLP-pipeline scenario). Never real or realistic-looking patient data. |

Conventions: Google-style CamelCase names are the FHIR default; the MII keeps
`MII_<Kind>_<Modul>_<Name>` (see the *Profiles* page of the guide). Canonical
URLs of published artifacts are never changed.
