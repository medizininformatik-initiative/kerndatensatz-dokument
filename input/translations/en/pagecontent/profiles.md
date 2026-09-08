<!-- markdownlint-disable MD041 -->
<!-- English translation of the German default page input/pagecontent/profiles.md
     (DE-first) — keep both files in step. The former "Naming conventions"
     section (Simplifier page TechnischeImplementierung/FHIRProfile, Index) was
     removed on 2026-09-07 — its wording is kept in migration-log/source-quotes/,
     and the page points to the Meta module wiki instead. The page itself is
     split from the former combined profiles-and-extensions.md (TF-KDS-agreed
     menu structure — one page per artifact type). The IG Publisher generates
     the artifact detail pages automatically. -->

This page lists the FHIR profiles of the **Dokument** module (naming convention
`MII_PR_<Modul>_<Name>` (where `<Modul>` is the German module name — here `Dokument`)). The module's extensions are listed on the
[Extensions](extensions.html) page.

The module defines one profile:
[MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)
(`MII_PR_Dokument_Dokument`), based on the `DocumentReference` resource. The
technical detail views — structure, differential, XML and JSON — are generated
by the IG Publisher on the artifact page; the underlying dataset is described on
the [Logical Models](logical-models.html) page.

### Profile MII PR Dokument Dokument

The module defines one profile: [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html) on `DocumentReference` — "clinical document with its metadata". The domain notes, the mapping to the logical dataset and the examples are on the artifact page; the structure is rendered here directly (the profile's XML and JSON are embedded only on the artifact page because of their size).

<div class="structure-tabs">
  <ul class="nav nav-tabs" role="tablist">
    <li class="active" role="presentation"><a href="#pr-diff" data-toggle="tab" role="tab">Differential</a></li>
    <li role="presentation"><a href="#pr-snap" data-toggle="tab" role="tab">Structure (snapshot)</a></li>
  </ul>
  <div class="tab-content">
    <div class="tab-pane active" id="pr-diff" role="tabpanel">
      {% include StructureDefinition-mii-pr-dokument-dokument-diff-en.xhtml %}
    </div>
    <div class="tab-pane" id="pr-snap" role="tabpanel">
      {% include StructureDefinition-mii-pr-dokument-dokument-snapshot-en.xhtml %}
    </div>
  </div>
</div>

The MII-wide naming conventions for FHIR resources (module designations, prefixes, `title`/`name`/`id`/`url`) are maintained by the Meta module: [Naming conventions for FHIR resources in the MII](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII). They apply to all conformance resources of this module.
