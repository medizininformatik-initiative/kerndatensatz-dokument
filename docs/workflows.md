# How this repository operates — CI, branches and releases

This page covers **every** file in `.github/workflows/` — eight workflows. If
you add one, add a row; a workflow that is not in the table below is
undocumented, and that is a defect.

## Branching

Same model as described in [CONTRIBUTING.md](../CONTRIBUTING.md): `main`
(stable, default) · `dev` (integration) · short-lived `feature|change|fix/*`
off `dev`; `dev → main` is a **merge commit**. Anything that lands on `main`
without going through `dev` has to be back-merged into `dev` before the next
`dev → main` merge.

---

## The workflows

| Workflow | Trigger | What it does | Output | Toggle (default) | Human-gated? |
| --- | --- | --- | --- | --- | --- |
| `ig-publisher.yml` | push to any branch except `main`/`gh-pages`/`fsh-generated`; `workflow_dispatch` | Builds the IG (SUSHI + IG Publisher) and deploys a branch preview. The publisher's own `version-comparison` needs a formal publication history at the canonical; this module enables it from its second formal publication | `gh-pages/branches/<branch>/` + PR comment | `ENABLE_PREVIEW` (ON) · `ENABLE_VERSION_COMPARISON` (ON) | no |
| `cleanup-gh-pages.yml` | schedule (Sun 00:00 UTC); `workflow_dispatch` (input `dry_run`: list stale previews without deleting) | Prunes previews of deleted branches; keeps root + version paths | pruned `gh-pages` | `ENABLE_PREVIEW` (ON) | no |
| `validation.yml` | push to `dev`/`main`; any pull request; `workflow_dispatch` | Runs the **MII reusable validation** workflows (`ci_dotnet_validation.yml`, `ci_java_validation.yml`) over `fsh-generated/resources` | validation report | `ENABLE_VALIDATION` (ON) | no |
| `convention-check.yml` | push/PR to `dev`/`main`/`release/**`; `workflow_dispatch` (input `strict`: force release mode) | The **single** convention checker: metadata-contract patterns (hard on release branches) + the optional-page decision gate (M9, `docs/optional-pages.md`) + the language-model guard (`scripts/language-model-check.sh`) + the offline test suites (`scripts/*.test.mjs`); the advisory repo ↔ MII-wiki drift review is a manual review, not part of this workflow | check result | `ENABLE_CONVENTION_CHECK` (ON) | no |
| `module-release.yml` | push of a CalVer tag `vYYYY.n.n`; `release: published` (the announcement); `workflow_dispatch` (dry run) | Builds, creates the draft GitHub Release, announces to the MII Zulip (topic *Releases*), hands off to `go-publish` | release | `ENABLE_MODULE_RELEASE` (ON) · `ENABLE_ZULIP_ANNOUNCE` (ON) | production publish is gated |
| `go-publish.yml` | `workflow_dispatch` **only** | Production `-go-publish`; `publish:false` = full dry run by default | published IG | — | **always human-triggered** |
| `dependency-check.yml` | schedule (Mon 06:00 UTC); `workflow_dispatch` | Version drift (IG Publisher, SUSHI, Jekyll, the IG template, FHIR deps) → one tracking issue | `dependencies` issue | `ENABLE_DEPENDENCY_CHECK` (ON) | proposals only |
| `security-scan.yml` | schedule (Mon 07:00 UTC); PR to `dev`; `workflow_dispatch` | OSV + Trivy (fs + dev-container image) | SARIF in Security tab | `ENABLE_SECURITY_SCAN` (ON) | no |

Notes:
- **The reusable validation needs two files in the repo root**, at fixed paths the
  MII workflows read: `qc/custom.rules.yaml` (the Simplifier quality-control rule
  set — MII naming conventions) and `advisor.json` (the errors the HL7 Java
  validator may ignore). The .NET job is configured upstream to always pass, so a
  naming violation appears in its log, not as a red check.
- **Terminology** is auto-selected, not a toggle: builds use **SU-TermServ** when the
  client-cert secrets are present, else fall back to Ontoserver
  (`tx.ontoserver.csiro.au`) with a notice.
  The reusable Java validation has no such fallback (see [secrets.md](secrets.md)).
- **Pages mode** (`vars.PAGES_ACTIONS_ENABLED`) chooses the gh-pages push vs the
  Actions deploy path; either serves the previews. Set it to match Settings →
  Pages ("Deploy from a branch → `gh-pages`" ⇒ leave it unset; "GitHub Actions"
  ⇒ set it to `true`); a mismatch is what makes a preview URL 404. Only
  `go-publish.yml` with `publish: true` *requires* the value `true` — it hard-fails
  without it.
- **Dependabot** is switched by its config presence, not an `if:`.
- A few steps in `ig-publisher.yml` are guarded by a
  `endsWith(github.repository, '/mii-kds-module-template')` check — the
  self-substitution and the comparison demo the scaffold repository needs. They
  never run here; they are inherited, inert steps.

### The toggle summary

The full inventory — every repository variable the workflows read. All of them
default correctly when unset; [secrets.md](secrets.md) covers the *secrets*
that enable the gated features.

| Pipeline | Variable | Default |
| --- | --- | --- |
| IG build + preview | `ENABLE_PREVIEW` | ON |
| Preview deploy path | `PAGES_ACTIONS_ENABLED` | unset (gh-pages push mode) |
| Reusable validation | `ENABLE_VALIDATION` | ON |
| Convention check | `ENABLE_CONVENTION_CHECK` | ON |
| Dependency check | `ENABLE_DEPENDENCY_CHECK` | ON |
| Security scan | `ENABLE_SECURITY_SCAN` | ON |
| Publisher version comparison | `ENABLE_VERSION_COMPARISON` | ON (no-op while the `version-comparison` parameter is not set in `sushi-config.yaml` (it is currently absent, so the publisher default `{last}` applies)
| Module release (CalVer) | `ENABLE_MODULE_RELEASE` | ON |
| MII Zulip announcement | `ENABLE_ZULIP_ANNOUNCE` | ON |
| Production `-go-publish` | manual `workflow_dispatch` + `publish:false` | OFF (gated) |

The release announcement is governed by `ZULIP_API_KEY` and
`ENABLE_ZULIP_ANNOUNCE` alone. `SUSHI_VERSION`, `JAVA_VALIDATOR_VERSION` and
`JAVA_VALIDATION_OPTIONS` are plain variables, not toggles — they override the
values `validation.yml` passes to the MII reusable workflows, and unset means
the pinned fallbacks written there
(see [maintenance.md](maintenance.md#where-each-pin-lives-single-source-of-truth)).

---

## Release — CalVer only

This module is released with **CalVer** `YYYY.n.n` via the MII Module Release
Workflow — see [release.md](release.md) and
[recipes/cut-a-release.md](recipes/cut-a-release.md). There is no SemVer
automation in this repository, and none may be added.

---

## Secrets & enabling the gated features

The module builds and previews without secrets. To enable the optional gated
features — SU-TermServ terminology (for both the build and the reusable
validation) and the Zulip release announcement — see
[docs/secrets.md](secrets.md) for the exact `gh secret set` commands (including
why one secret name suffices: `validation.yml` maps `SU_TERMSERV_CLIENT_*` onto
the reusable workflow's `CDS_DEV_CLIENT_*` inputs at the call site). The
workflows are already wired.
