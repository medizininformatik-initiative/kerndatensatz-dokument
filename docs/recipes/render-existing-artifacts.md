# Recipe: render existing FHIR artifacts in a narrative page

**Goal.** Show a profile, an example or a table of your own artifacts *inside* a
narrative page, instead of linking the reader away to the generated artifact
page.

**Prerequisites.** A build that runs
([first build in the dev container](first-build-in-devcontainer.md)) and at
least one artifact to render.

**Not this recipe:** improving the page the Publisher *generates* for a profile —
that is [how profiles render](render-profiles.md), which covers the tabs and the
`-intro.md` / `-notes.md` files. The fragment names here are those same views:
`-diff` is the *Differential* tab, `-snapshot` the *Snapshot* tab, `-dict` the
element table.

> The module template shipped a live demonstration page
> (`input/pagecontent/rendering-artifacts.md`) for these directives. It was
> removed during the migration onto the template, together with its menu entry,
> its `pages:` entry and its generator — so the syntax below is the reference,
> not that page. It is still readable in the template repository.

## If you are coming from Simplifier

**FQL does not run in an IG-Publisher build.** It is a Firely-platform feature:
it works in Simplifier's page rendering and in Firely Terminal, and Simplifier's
own IG documentation never mentions the IG Publisher. There is no `<fql>` tag,
no `{{tree}}`, no `{{render:…}}` here.

What replaces it:

| Simplifier | Here |
| --- | --- |
| `{{tree}}` | `{% include StructureDefinition-<id>-snapshot.xhtml %}` (or `-diff`, `-dict`) |
| `{{xml}}` / `{{json}}` | `{% include StructureDefinition-<id>-xml.xhtml %}` / `-json-html` |
| `<fql … select …>` over one artifact's elements | `{% include StructureDefinition-<id>-dict.xhtml %}` |
| `<fql …>` across many artifacts | `{% sql … %}` over `package.db` |
| `{{render:<canonical>}}` | usually nothing — the Publisher already generates that artifact's page |

## Generated tables from `package.db` (sql directives)

Measured on this module with publisher 2.3.2 (2026-09-05) — the rules that
survived the probe build:

- **JSON1 is available.** `json_each` / `json_extract` over `Resources.Json`
  reach element lists, dependencies and search parameters even though the
  schema has no element table. Example, the logical-model mapping:
  `select json_extract(e.value,'$.path') … from Resources r, json_each(r.Json,'$.differential.element') e where r.Id='mii-lm-dokument'`.
- **Always the JSON control form with explicit column types.** The plain
  `{% sql select … %}` form auto-types columns and turns package ids and type
  codes into links that the link checker then reports as broken. Column
  headers come from `"title"`; `"name"` is ignored.
- **Translations:** `package.db` holds the source language. For a translated
  column use `{% sqlToData %}` plus a Liquid lookup into
  `site.data.translations_<lang>` — see `input/translations/README.md` and
  `scripts/po-to-data.mjs`.
- **Duplicates:** the module's own ValueSets appear twice in `ValueSetList`
  (`ViewType = 1`); use `select distinct`.
- Generated tables carry `class="grid"` (publisher style); Liquid-built tables
  are ordinary Markdown tables.

## Steps

1. **Decide which of the three families you need.**
   - One artifact, a view the Publisher already renders → an `include`.
   - Part of one example instance → `{% fragment %}`.
   - Something across several artifacts → `{% sql %}`.
2. **Write the directive** into any page under `input/pagecontent/`, and mirror
   it into the English twin under `input/translations/en/pagecontent/`.

   To *show* a directive rather than run it, see
   [Escaping a directive](#escaping-a-directive) below — which escape is correct
   depends on which engine owns the tag.
3. **Build and look at it.** A directive that names an artifact or fragment that
   does not exist renders as nothing, or fails the build — both are loud, which
   is the point of checking here rather than after publication.
## Expected result

The rendering appears inline in your page, styled like the rest of the guide,
and the QA report shows no new errors or broken links.

## Escaping a directive

Two engines run in sequence, and each owns different tags. The IG Publisher's
own Liquid pass runs **first**, then Jekyll. Which escape works depends on who
owns the tag:

| You want to show | Write | Why |
| --- | --- | --- |
| One of the Publisher's own keywords (`sql`, `fragment`, `json`, `class-diagram`, `uml`, `multi-map`, `lang-fragment`, `dataset`) | `{%! sql … %}` | The Publisher rewrites `{%! x %}` into a literal itself |
| A Jekyll tag such as `{% include %}` | `{% raw %}…{% endraw %}` | The Publisher never looks at it; Jekyll's own escape applies |

Getting this backwards fails in two different ways, and only one of them is
loud:

- `{% raw %}` around a **Publisher** keyword does not protect it. The Publisher
  runs before Jekyll and does not know what `raw` means, so the directive
  executes; if it fails, the error text is written into the rendered page while
  the build still reports success. Read the page, not just the log.
- `{%!` in front of a **Jekyll** tag is a hard build failure — the Publisher
  leaves it untouched and Jekyll reports
  `Tag '{%! include … %}' was not properly terminated`.

The exclamation-mark form is what HL7's own guidance IG uses to display these
tags — see the source of
[`sql.xml`](https://github.com/FHIR/ig-guidance/blob/HEAD/input/pagecontent/sql.xml)
and [`uml.md`](https://github.com/FHIR/ig-guidance/blob/HEAD/input/pagecontent/uml.md).
It is implemented at
[`PublisherGenerator.java:6115`](https://github.com/HL7/fhir-ig-publisher/blob/1521577ee46cd28950e6416987f9a2b2eaa55fc3/org.hl7.fhir.publisher.core/src/main/java/org/hl7/fhir/igtools/publisher/PublisherGenerator.java#L6115).

## What is documented, and what only works

Checked against the primary sources on 2026-07-29, IG Publisher 2.3.0. This
matters: **no single exhaustive list of these mechanisms exists**, so anything
you find quoted elsewhere is worth verifying.

**Documented and safe to rely on** — [HL7 guidance, *Page Content*](https://build.fhir.org/ig/FHIR/ig-guidance/):

- [`{% fragment %}`](https://build.fhir.org/ig/FHIR/ig-guidance/fragments.html) — a filtered slice of an instance
- [`{% sql %}` and `{% sqlToData %}`](https://build.fhir.org/ig/FHIR/ig-guidance/sql.html) — queries over `package.db`
- [`{% json <file> <template> %}`](https://build.fhir.org/ig/FHIR/ig-guidance/jsonxml.html) — render a JSON file through a Liquid template
- [Mermaid](https://build.fhir.org/ig/FHIR/ig-guidance/diagrams-mermaid.html) and [PlantUML](https://build.fhir.org/ig/FHIR/ig-guidance/diagrams-plantuml.html) diagrams
- Generated fragment codes — [IG Publisher documentation](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation), whose own list is explicitly incomplete
- `-intro.md` / `-notes.md` files, which inject your prose into a generated artifact page

**The complete set of Publisher keywords** is a single array in the source —
[`PublisherGenerator.java:6067`](https://github.com/HL7/fhir-ig-publisher/blob/1521577ee46cd28950e6416987f9a2b2eaa55fc3/org.hl7.fhir.publisher.core/src/main/java/org/hl7/fhir/igtools/publisher/PublisherGenerator.java#L6067):

```java
String[] keywords = {"sql", "fragment", "json", "class-diagram", "uml",
                     "multi-map", "lang-fragment", "dataset"};
```

There are eight, and no ninth. `[[[ … ]]]`, which auto-links a canonical URL or
artifact name, is handled separately a few lines below, at
[line 6145](https://github.com/HL7/fhir-ig-publisher/blob/1521577ee46cd28950e6416987f9a2b2eaa55fc3/org.hl7.fhir.publisher.core/src/main/java/org/hl7/fhir/igtools/publisher/PublisherGenerator.java#L6145).
Four of the eight have a guidance page: `sql`, `fragment`, `json` and
`multi-map`. Three appear in no guidance page at all — `class-diagram`,
`lang-fragment` and `dataset` are implemented but undocumented. Measured with publisher 2.3.2 on this module (2026-09-04): `{% lang-fragment X.xhtml %}` is rewritten to `{% include X-en.xhtml %}` on **every** page, German ones included — so this module includes generated fragments with an explicit language suffix instead (`X-de.xhtml` on the German page, `X-en.xhtml` on its English twin; the publisher writes both plus a suffix-less third variant). Note also that the publisher's `-de` fragments carry English rendering phrases ("Search Parameters", "Supported") — the `-de`/`-en` variants differ only in their `Language:` line; that localization gap is the publisher's, not the guide's. The eighth is
the odd one out, below.

**A second silent gap, inside a keyword that does work.** `{% fragment %}`
accepts four formats — `json`, `xml`, `ttl`, `fml` — and rejects anything else
with an error. `ttl` passes that check and then does not render: the page
receives the Publisher's internal object,
`org.hl7.fhir.utilities.turtle.Turtle@7d4f6072`, with no error, no warning and
no broken link. Verified by building it. Use `json` or `xml`; `fml` applies only
to StructureMaps.

**One of the eight is registered and not implemented.** `uml` is in the array,
but the `switch` that dispatches the keywords has no `case "uml"`, so it reaches
`default:` and throws. Writing `{% uml … %}` in a page therefore produces, in
the rendered output:

```
Error processing command: Internal Error - unknown keyword uml
```

Verified by building it. The working keyword is `class-diagram` — which is
itself undocumented, so the only diagram keyword with a guidance page is the one
that does not run. HL7's own
guidance page for it,
[`uml.md`](https://github.com/FHIR/ig-guidance/blob/HEAD/input/pagecontent/uml.md),
shows `{%! uml {json} %}` — escaped, so their build never executes it either.
This is worth re-checking after a Publisher bump; it may be a bug.

**The fragment-code list is openly incomplete.** The Confluence page says so
itself, above the list: *"Note: as of July 2023, this list is not
comprehensive."* Measured against IG Publisher 2.3.0 by listing the `.xhtml`
files a real build writes: **96 codes** are emitted for a guide holding one
profile and one instance, where the page documents 37. Undocumented but
generated: `tree`, `grid`, `status`, `uses`, `crumbs`, `obligations`,
`search-params`, `dict-diff`, `dict-key`, `dict-ms`, `inv-diff`, `sd-xref`,
`typename`, `validate`, and the whole `snapshot-by-key…` /
`snapshot-by-mustsupport…` family. Of the documented codes, `ttl`, `sch` and
`java` were not produced in that build.

**A generated fragment is not necessarily an embeddable one.** Four of the 96 —
`search-params`, `span`, `spanall` and `pseudo-json` — contain links that only
resolve in the artifact-page context: the base-spec pages (`patient.html`),
`formats.html`, the `help16.png` icon, or element anchors the artifact page
defines for itself. Include one in a narrative page and the build's broken-link
count rises while `Errors:` stays at 0.

The reliable way to know what your build offers, and what is safe to embed, is
to look rather than to trust a list — including this one. The fragments are
written to the build's `temp` tree, not to `output/`, so list them there:

```
find . -name 'StructureDefinition-<your-id>-*.xhtml' -printf '%f\n' | sort
```

Then include one, build, and check the broken-link count.

## Common errors & fixes

| Symptom | Cause | Fix |
| --- | --- | --- |
| The include renders nothing | The fragment name does not match a generated file | Check the artifact `Id:` — the fragment is `<ResourceType>-<Id>-<view>.xhtml`, using the `Id:`, not the FSH `Profile:` name |
| A directive you wanted to *show* was executed instead | `{% raw %}` does not protect a Publisher keyword | Use `{%! … %}` — see [Escaping a directive](#escaping-a-directive) |
| `Tag '{%! include … %}' was not properly terminated` | `{%!` used on a Jekyll tag, which the Publisher does not touch | Use `{% raw %}…{% endraw %}` for Jekyll tags |
| The page shows "Error processing command: …" | A directive ran and failed — often one you meant to display | Same fix. Note the build reports **no error** for this and stays green; read the rendered page |
| `{% sql %}` returns nothing | The table or column does not exist | Open `package.db` from the build output with any SQLite client and look at the real schema |
| The build fails after adding a page | The page is not registered | Add it to `pages:` in `sushi-config.yaml`; a `pages:` entry also needs the file to exist |
| It worked, then broke after a toolchain bump | An undocumented mechanism changed | Check the list above; prefer the documented three |
