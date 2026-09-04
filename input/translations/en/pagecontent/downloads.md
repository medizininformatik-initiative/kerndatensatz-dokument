<!-- markdownlint-disable MD041 -->
<!-- English translation of the German default page input/pagecontent/downloads.md (DE-first). -->
<!-- Default-language (English) page. Ported from kerndatensatz-basis
     input/pagecontent/downloads.md (branch main).
     German mirror: input/translations/de/pagecontent/downloads.md — both files
     must say the same thing.

     The `../<file>` links below point at the artifacts the IG Publisher writes
     NEXT TO the rendered pages. The publisher does NOT add them to a narrative
     page by itself — this page IS the download list, so keep it in step with
     what the build actually produces (e.g. `excludexml: true` in
     sushi-config.yaml would remove examples.xml.zip). The links resolve only in
     the published output, not in a local preview of this Markdown file. -->


This page links the downloadable artifacts of the **Dokument** module.

### Package file

The package file is an NPM-format FHIR package used by most FHIR tooling. It
contains all value sets, profiles, extensions and the list of pages and URLs of
this guide, as defined by this version. It **SHOULD** be the first choice
whenever implementation artifacts are generated, because it carries all rules
that make the profiles valid. Implementers still need to know the specification
content and the applicable profiles to build a conformant implementation — see
the FHIR documentation on
[validating profiles and resources](http://hl7.org/fhir/R4/validation.html).

* [Package (compressed folder)](../package.tgz){::download="true"}

### Downloadable copy of this guide

A downloadable copy of the rendered guide, for hosting locally:

* [Downloadable copy (compressed folder)](../full-ig.zip)

### Examples

All examples of this guide:

* [XML (compressed folder)](../examples.xml.zip)
* [JSON (compressed folder)](../examples.json.zip)

### Consolidated CSV and Excel representations of the profiles

The profile information of the whole guide in a single CSV or Excel file —
useful for testers and analysts who want to review element properties across
profiles in one table:

* [CSV (compressed folder)](../csvs.zip)
* [Excel (compressed folder)](../excels.zip)

### Schematrons

* [Schematrons (compressed folder)](../schematrons.zip)

### ImplementationGuide resource

The `ImplementationGuide` resource carries the technical details of this
publication, including its dependencies and publication parameters. It is documented on the
[MII ImplementationGuide Resource](ImplementationGuide-mii-ig-dokument.html) page.

* [XML](../ImplementationGuide-mii-ig-dokument.xml)
* [JSON](../ImplementationGuide-mii-ig-dokument.json)

<!-- DERIVED:bridge source=none gate=B -->
> **Written during migration — review before release.**
> ### Package registry
>
> The FHIR package is additionally published in the Simplifier package registry:
> [`de.medizininformatikinitiative.kerndatensatz.dokument`](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.dokument).
{: .ig-highlight .ig-highlight-blue}
