# Multi-language support (German default, English translation)

This module produces a bilingual IG with **German as the default language
and English as the translation** (DE-first per the MII meta wiki, Release 2027) — the inverse of
[kerndatensatz-basis](https://github.com/medizininformatik-initiative/kerndatensatz-basis).

The corresponding `sushi-config.yaml` parameters (already set):

```yaml
parameters:
  i18n-default-lang: de
  i18n-lang:
    - de
  translation-sources:
    - input/translations/en
```

## Directory structure

```
input/
└── translations/
    └── de/                          # German translation supplements
        ├── pagecontent/             # Translated narrative pages (same file
        │                            #   names as input/pagecontent/)
        ├── includes/                # Translated fragments (e.g. menu.xml)
        ├── intro-notes/             # Translated per-artifact intro/notes
        ├── ImplementationGuide-<ig-id>.po
        │                            # IG-level catalogue: page titles,
        │                            #   breadcrumbs, table of contents
        └── *.po                     # Resource translations (PO format), e.g.
                                     #   StructureDefinition-<id>.po
```

## Workflow: adding German translations

1. **Build first.** The IG Publisher generates translation templates for
   every resource into `translations/de/po/` (repo root, gitignored) on each
   build.
2. **Resources (profiles, extensions, value sets, …):** copy the generated
   `.po` file into `input/translations/en/`, translate the `msgstr` lines
   (Poedit, any text editor, or machine translation with human review), and
   rebuild. Only some resource types and fields actually render — see the
   renders/does-not-render table in
   [`docs/recipes/add-translation.md`](../../docs/recipes/add-translation.md)
   §4 before you invest in a supplement.
3. **Pages:** create the German page under
   `input/translations/en/pagecontent/<same-filename>.md`; the publisher
   matches it to the German source by file name.
4. **Menu:** maintain the translated `menu.xml` under
   `input/translations/en/includes/`.
5. **Page titles, breadcrumbs and the table of contents:** these come from the
   ImplementationGuide resource, not from the pages, so they need the IG-level
   catalogue `ImplementationGuide-<your-ig-id>.po`. This repository ships it as
   `ImplementationGuide-mii-ig-dokument.po` — **rename it** to match your
   IG's `id` when you replace the placeholders, or the publisher never finds it
   and silently leaves those labels in English. Each `msgid` is the exact page
   `title` from `sushi-config.yaml`, plus the generated root page
   `"Table of Contents"`. See
   [`docs/recipes/add-translation.md`](../../docs/recipes/add-translation.md) §5.

Translations placed under `input/translations/en/` are preserved across
rebuilds; everything under the repo-root `translations/` directory is
generated output.

Useful references:

- PO format: https://www.gnu.org/software/gettext/manual/html_node/PO-Files.html
- FHIR multi-language guidance: https://build.fhir.org/ig/FHIR/ig-guidance/languages.html

## Two rules for resource `.po` files (measured 2026-09-05)

The publisher injects every `.po` translation into the resource as a
`translation` extension before validating it, so the `.po` shapes the published
package, and two shapes break it:

- **Never leave a `msgstr` empty.** An empty translation still becomes an
  extension, with no `content` — the validator reports `ext-1` and a missing
  `content.value[x]` for each. Either translate the string or delete the entry.
- **Do not translate a string the FSH already translates.** The profile carries
  English `short`/`definition`/`comment` translations through the `Translation`
  RuleSet (`input/fsh/common/rulesets.fsh`); a `.po` entry for the same string
  is merged into that extension as an undefined `value` sub-extension. The
  profile `.po` therefore only carries strings the FSH leaves untranslated
  (name, title, mapping names, the extension slice, the constraints).

## Translations in generated tables

The publisher applies the `.po` files when it renders artifact pages and fragments, but not to `package.db`, which the `{% sql %}` / `{% sqlToData %}` directives query — a generated table would show the resources' German text on the English page. `scripts/po-to-data.mjs` therefore derives `input/data/translations_<lang>.json` (one map `msgid → msgstr` per resource) from the `.po` files; Jekyll exposes it as `site.data.translations_<lang>`, and a page looks a string up like this:

```liquid
{{ site.data.translations_en['StructureDefinition-mii-lm-dokument'][row.Definition] | default: row.Definition }}
```

Run `node scripts/po-to-data.mjs` after every change to a `.po` file and commit the data file; convention-check M14 fails when the two drift. The `.po` stays the single source.
