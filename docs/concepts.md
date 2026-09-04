# Concepts — how this module IG works and why

Read this after the [Glossary](glossary.md). It explains the ideas behind this
repository.

## 1. What this repository is

The **MII KDS module IG "Dokument"**: the FSH sources, narrative pages,
terminology and examples of one Kerndatensatz module, built into a website and
an installable FHIR package by the HL7 **IG Publisher**. The repository layout,
CI and docs come from
[`mii-kds-module-template`](https://github.com/medizininformatik-initiative/mii-kds-module-template)
(v0.13.1), onto which the module was migrated from Simplifier — see
[`migration-log/migration-report.md`](../migration-log/migration-report.md).

> **Why a template and not a shared library:** an IG project is *your* code —
> you edit its profiles and pages. The template gave this repository a correct,
> complete starting point (CI, release automation, docs) that the module now
> owns.

## 2. How it references the MII IG template — URL now, published package later

The **look** of the IG comes from a separate template package,
[`de.medizininformatikinitiative.template`](https://github.com/medizininformatik-initiative/ig-template-mii-kds)
(release v1.3.4). `ig.ini` references it in one of three forms; this repository
uses the first:

- **Interim URL (used here):**
  `template = https://github.com/medizininformatik-initiative/ig-template-mii-kds`.
  The IG Publisher fetches the repository zip at build time — the default
  branch, i.e. the released state on `main`. Nothing vendored can go stale;
  the trade is that a build needs network access and follows `main` rather
  than a pinned version.
- **Published (the endgame):** `template = de.medizininformatikinitiative.template#<version>`
  — a pinned `id#version` resolves through the FHIR package server only, so
  this waits on the template's publication. Switch with
  [recipes/switch-template-to-published.md](recipes/switch-template-to-published.md).

> **Why the URL now:** the package has no registry entry yet. The URL keeps
> every build on the template's released state; the published pin later
> restores byte-stable rebuilds. A locally vendored copy is deliberately *not*
> kept — a copy that no build exercises goes stale invisibly.

## 3. The metadata contract (CRMI)

`sushi-config.yaml` is not just config — it is a **contract**. It claims the CRMI
ImplementationGuide profiles and carries the same `artifact-*` extensions as the
reference module kerndatensatz-basis, so the module is a properly described,
versioned, shareable publication unit. The `convention-check` job enforces the
naming patterns (packageId, id, name, title, canonical, CalVer version). The
comments in the file tell you what each field means; the checker fails on a
value that leaves the agreed pattern.

## 4. One repository, one release mechanism

The single most important rule for a maintainer: **this module releases with
CalVer `YYYY.n.n` and carries no SemVer automation at all.**
[workflows.md](workflows.md) and [release.md](release.md) describe the path from
a tag to a published package.

> **Why one mechanism per repo:** SemVer tags fighting CalVer tags corrupt the
> version history.

## 5. What the template supplies, and what the module owns

The template supplies **presentation and machinery**: the IG template package
(layout, branding), the CI workflows, the release automation, the convention
checks and these docs. The module owns **content**: `input/fsh/**`,
`input/pagecontent/**` and their English mirrors under
`input/translations/en/**`, the terminology, the examples and the metadata in
`sushi-config.yaml`.

The **page set and the menu** came with the template and are the module's to
edit — the IG template supplies presentation only. The mandatory (1..1) entries
follow the MII-agreed menu structure; the optional (0..1) entries were decided
for this module ([optional-pages.md](optional-pages.md)). See
[page-structure.md](page-structure.md) for that boundary and why it was drawn
there.

## 6. Registries, publication and governance

The module is published as a FHIR package and a website (GitHub Pages under the
`medizininformatik-initiative` organisation; the canonical stays the MII URL).
Production publication runs
through the **gated** `-go-publish` — never automatically. The naming, terminology
policy and release process are defined in the
[MII meta wiki](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki);
when it and this repo disagree, the wiki wins. See [further-reading.md](further-reading.md).
