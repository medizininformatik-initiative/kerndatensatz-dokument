# Documentation

The working documentation of this module IG — inherited from
[`mii-kds-module-template`](https://github.com/medizininformatik-initiative/mii-kds-module-template)
and kept as the module's own. Start with the [recipes](recipes/) if you have a
task in hand; this page is the map of everything else.

## I want to …

| … do this | … read this |
| --- | --- |
| Build the IG locally for the first time | [recipes/first-build-in-devcontainer.md](recipes/first-build-in-devcontainer.md) |
| Understand a term I do not recognise | [glossary.md](glossary.md) |
| Understand how the pieces fit together | [concepts.md](concepts.md) |
| Know what CI runs, and which variable turns it off | [workflows.md](workflows.md) |
| Release a version of this module | [release.md](release.md) · [recipes/cut-a-release.md](recipes/cut-a-release.md) |
| Enable the terminology server or release announcements | [secrets.md](secrets.md) |
| Keep the toolchain and dependencies current | [maintenance.md](maintenance.md) |
| Check my IG against the published guidance | [ig-best-practices-checklist.md](ig-best-practices-checklist.md) |
| Know who owns the page set and the menu, and what the agreed structure is | [page-structure.md](page-structure.md) |
| Revisit the optional (0..1) menu entries — keep or remove | [optional-pages.md](optional-pages.md) |
| Know what is unfinished, and why | the [issue tracker](../../../issues); decided limits: [maintenance.md](maintenance.md) |
| Understand where the IG template comes from, and the decisions still open on it | [org-move.md](org-move.md) |
| Translate the pages, menu and page titles | [recipes/add-translation.md](recipes/add-translation.md) |
| Read the specifications this is built on | [further-reading.md](further-reading.md) |

## Reading order for a newcomer

1. [glossary.md](glossary.md) — the vocabulary, so the rest reads faster.
2. [concepts.md](concepts.md) — what this repository is, what the IG template
   is, and where the boundary runs.
3. [recipes/first-build-in-devcontainer.md](recipes/first-build-in-devcontainer.md)
   — build the guide once, locally.
4. [workflows.md](workflows.md) — what CI will do to your pull requests.

## What is a recommendation and what is a rule

Almost everything here is a convention inherited from the module template, or a
recommendation. It is not MII policy: the MII's own published rules live in the
KDS governance and on the
[MII website](https://www.medizininformatik-initiative.de/), and
[CONTRIBUTING.md](../CONTRIBUTING.md) says which of them apply to this module.

The exceptions — things that genuinely fail a build here — are stated as such in
[workflows.md](workflows.md).
