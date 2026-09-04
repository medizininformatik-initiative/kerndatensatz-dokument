# MII KDS Modul Dokument

FHIR® R4 Implementation Guide des Moduls **Dokument** des Kerndatensatzes der
[Medizininformatik-Initiative (MII)](https://www.medizininformatik-initiative.de).
Das Modul beschreibt die Repräsentation klinischer Dokumente und ihrer
Metadaten (Profil `MII_PR_Dokument_Dokument` auf `DocumentReference`) inklusive
NLP-Verarbeitungsstatus, Terminologien und Beispielen.

- **Package:** `de.medizininformatikinitiative.kerndatensatz.dokument`
- **Canonical:** `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument`
- **Aktuelle Version:** 2027.0.0-ballot.rc1 (Ballot-Release-Kandidat, Zyklus 2027)
- **Lizenz:** CC BY 4.0 (siehe [LICENSE](LICENSE))

## Aufbau (seit Migration auf das MII-KDS-Modul-Template)

Dieses Repository ist auf das
[mii-kds-module-template](https://github.com/medizininformatik-initiative/mii-kds-module-template)
migriert (IG Publisher statt Simplifier-Rendering; Migration:
`migration-log/migration-report.md`). Deutsch ist die Standardsprache des
Guides, Englisch die Übersetzung unter `input/translations/en/`.

| Pfad | Inhalt |
| --- | --- |
| `input/fsh/` | FSH-Quellen (Profile, Extensions, Terminologien, Beispiele) |
| `input/pagecontent/` | Guide-Seiten (deutsch, Standardsprache) |
| `input/translations/en/` | Englische Übersetzungen |
| `fsh-generated/` | Von SUSHI generierte FHIR-Ressourcen |
| `docs/` | Arbeitsdokumentation des Moduls (Konzepte, Rezepte, CI, Release) — aus dem Modul-Template übernommen |

## Build

```bash
npx --yes fsh-sushi@3.20.1 .          # FSH → FHIR-Ressourcen (Pin wie in der CI)
# vollständiger Guide-Build: siehe .github/workflows/ig-publisher.yml
# bzw. docs/recipes/first-build-in-devcontainer.md
```

## Mitwirken

Issues und Pull Requests bitte gegen dieses Repository; Branching, Commit-
Konvention und Release-Weg stehen in [CONTRIBUTING.md](CONTRIBUTING.md), die
CI-Pipelines in [docs/workflows.md](docs/workflows.md). Nicht-triviale
Änderungen folgen dem MII Module Release Workflow
([kerndatensatz-meta Wiki](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki)).
Bekannte Terminologie-Themen: `de.ihe-d.terminology`-Nachfolger wird in
[#33](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/issues/33)
beobachtet.

## Links

### Specifications

* [FHIR Profiling Specification (Latest)](https://www.hl7.org/fhir/profiling.html)
* [FHIR Implementation Guide Guidance (CI Build)](https://build.fhir.org/ig/FHIR/ig-guidance/)
* [FHIR Shorthand Specification (CI Build)](https://build.fhir.org/ig/HL7/fhir-shorthand/)
* [FHIR Shorthand Quick Reference (*very useful*)](https://build.fhir.org/ig/HL7/fhir-shorthand/FSHQuickReference.pdf)
* [FHIRPath Specification (Normativ Release)](https://www.hl7.org/fhirpath/)

### Tools and Documentation

* [FHIR IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)
* [Simplifier (FHIR Authoring, Publishing, Registry)](https://simplifier.net)
* [Firely Terminal (FHIR CLI Tool)](https://docs.fire.ly/projects/Firely-Terminal/index.html)

### Additional Learning Materials

* [FSH School Courses](https://fshschool.org/courses/)
