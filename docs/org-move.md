# The IG template this module builds on — home, status, open decisions

This module renders with the MII IG template
[`ig-template-mii-kds`](https://github.com/medizininformatik-initiative/ig-template-mii-kds)
and inherited its repository layout, CI and docs from
[`mii-kds-module-template`](https://github.com/medizininformatik-initiative/mii-kds-module-template).
**Since 2026-08-27** both live in the `medizininformatik-initiative`
organisation — the target their canonical URLs and package ids named from the
start. Their previous home,
`forschungsgruppe-digital-health/mii-kds-module-template`, is archived as a
read-only snapshot; issue and pull-request numbers cited in template history
keep resolving there.

This page records the decisions about that template which affect this module.
The module's own changelog is the guide's
[changes page](../input/pagecontent/changes.md).

## Decisions that affect this module

| Question | Answer |
| --- | --- |
| Is the template registered in [`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)? | **No — and it must not be** until the template owners decide it. That listing belongs to the template repository, not to this module. |
| Is the template published to a FHIR package registry? | **No.** Since 2026-08-28 modules consume it by **repository URL** (`ig.ini`: `template = https://github.com/medizininformatik-initiative/ig-template-mii-kds` — the interim form; the publisher fetches the released `main` at build time). This repository keeps **no vendored copy** of the template. Once the package is published, the switch this module performs is [docs/recipes/switch-template-to-published.md](recipes/switch-template-to-published.md). |
| Why is registration deliberately deferred? | An `ig-registry` entry and a package-registry release are *public, hard-to-retract commitments* that imply an owner and a support promise. Keeping the template unregistered lets its design change freely without stranding consumers or squatting an identifier. |
| Who owns the template after 2026? | **Decided (2026-08-28): the MII until 2026-12-31, NUM-DIZ from 2027-01-01** — the funded handover as MII funding ends and NUM-DIZ takes over IG development and maintenance. Contacts (researched 2026-08-28): MII — Koordinationsstelle der Medizininformatik-Initiative at TMF e.V., Charlottenstr. 42, 10117 Berlin, <info@medizininformatik-initiative.de>, +49 30 2200247-0; NUM — NUM-Koordinierungsstelle at Charité – Universitätsmedizin Berlin (head: Ralf Heyder), Luisenstraße 13, 10117 Berlin, <forschungsnetzwerk-unimedizin@charite.de>, NUM-DIZ project coordination: Annalena Herzog. |
| Is the template an MII-endorsed artifact? | **Its governance is not settled yet** — functional and released, adopted as a proposal to the **MII Taskforce Kerndatensatz (TF KDS)**. This does not affect the module's own governance, which follows the KDS governance and the [MII meta wiki](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki). |

> **What this means for a build here:** the template is fetched over the network
> at build time and follows its released `main`. A template release can
> therefore change this module's *rendering* without a commit in this
> repository — which is why [maintenance.md](maintenance.md) watches the
> template version and why the endgame is a pinned, published package.
