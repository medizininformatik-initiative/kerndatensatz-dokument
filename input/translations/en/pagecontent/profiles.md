<!-- TODO:REVIEW machine-translated from the German default page -->
<!-- markdownlint-disable MD041 -->
<!-- English translation, machine translation of source page profiles (de). The
     "Naming conventions" section is carried over from the Simplifier page
     TechnischeImplementierung/FHIRProfile (Index) of the Dokument module. The
     page itself is split from the former combined profiles-and-extensions.md
     (TF-KDS-agreed menu structure — one page per artifact type). The IG
     Publisher generates the artifact detail pages automatically. -->

This page lists the FHIR profiles of the **Dokument** module (naming convention
`MII_PR_<Module>_<Name>`). The module's extensions are listed on the
[Extensions](extensions.html) page.

<!-- DERIVED:bridge source=MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Index.page.md gate=B -->
> **Written during migration — review before release.**
> The module defines one profile:
> [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)
> (`MII_PR_Dokument_Dokument`), based on the `DocumentReference` resource. The
> technical detail views — structure, differential, XML and JSON — are generated
> by the IG Publisher on the artifact page; the underlying dataset is described on
> the [Logical Models](logical-models.html) page.
{: .ig-highlight .ig-highlight-blue}

<!-- TODO:REVIEW At this point the source page carried the empty placeholder
     text "Einleitung FHIR Profile" ("Introduction FHIR profiles"); it was not
     carried over. Should an introduction to the profile family be added here? -->

<!-- DERIVED:bridge source=MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Index.page.md gate=B -->
> **Written during migration — review before release.**
> The conventions below apply not only to the profiles, but to all conformance
> resources of this module (extensions, ValueSets, CodeSystems, logical models).
{: .ig-highlight .ig-highlight-blue}

## Naming conventions for creating FHIR resources in the Medical Informatics Initiative

Please check the [naming conventions page](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII) in the core dataset wiki for more recent versions.

### General

* Describe the content as unambiguously and concisely as possible
* For CodeSystems and ValueSets: conformance with <http://hl7.org/fhir/shareablecodesystem> and <http://hl7.org/fhir/shareablevalueset> respectively is recommended

### Agreed module designations and abbreviations

The following designations are agreed for the existing modules:

| Full module name                       | Technical module name | Abbreviation        |
| -------------------------------------- | --------------------- | ------------------- |
|                                        | **url**               | **title/ name/ id** |
| Modul Diagnose                         | modul-diagnose        | Diagnose            |
| Modul Laborbefund                      | modul-labor           | Labor               |
| Modul Prozedur                         | modul-prozedur        | Prozedur            |
| Modul Medikation                       | modul-medikation      | Medikation          |
| Modul Person                           | modul-person          | Person              |
| Modul Fall                             | modul-fall            | Fall                |
| Modul Consent                          | modul-consent         | Consent             |
| Modul Mikrobiologie                    | modul-mikrobio        | Mikrobio            |
| Modul Symptom/klinischer Phänotyp      | modul-symptom         | Symptom             |
| Modul Bildgebende Verfahren            | modul-bildgebung      | Bildgebung          |
| Modul Intensivmedizin                  | modul-icu             | ICU                 |
| Modul Medizinisches Forschungsvorhaben | modul-studie          | Studie              |
| Modul Onkologie                        | modul-onko            | Onko                |
| Modul Pathologiebefund                 | modul-patho           | Patho               |
| Modul Molekulargenetischer Befund      | modul-molgen          | MolGen              |
| Modul Bioprobendaten                   | modul-biobank         | Biobank             |
| Modul Strukturdaten                    | modul-struktur        | Struktur            |
| Modul Seltene Erkrankungen             | modul-seltene         | Seltene             |
| Modul Patient-reported Outcomes        | modul-pros            | PROs                |
| Modul Molekulares Tumorboard           | modul-mtb             | MTB                 |
| Modul Lungenfunktion                   | modul-lufu            | LuFu                |
| Modul Schlafmedizinischer Befund       | *to follow*           | *to follow*         |
| Modul Dokument                         | modul-dokument        | Dokument            |

<!-- TODO:REVIEW The full module names are the official German MII module
     designations and are kept verbatim (they are names, not prose). Confirm
     whether the English mirror should instead carry translated module names. -->

For modules added in the future, a German-language name in the singular is preferred.

### Resource type prefixes

* PR: StructureDefinition (profile)
* EX: StructureDefinition (extension)
* LM: Logical Model
* VS: ValueSet
* CS: CodeSystem
* CM: ConceptMap
* SM: StructureMap
* NS: NamingSystem
* SP: SearchParameter
* CPS: CapabilityStatement
* OD: OperationDefinition
* IG: ImplementationGuide
* QST: Questionnaire
* OBSDEF: ObservationDefinition
* MSR: Measure
* EXA: Example

### Language

The preferred language for the description, the title and the name of a conformance resource is German. English may be used as an alternative if the responsible team prefers it. If German is used to document a resource, a translation extension (see <http://hl7.org/fhir/extensions/StructureDefinition-translation.html>) must be present on the elements “description”, “name” and “title”. The content of that extension is what the English-language implementation guide displays.

### Element **title**

(a human-readable designation of the resource)

* Format: spaces, parentheses etc. are allowed
* Structure: MII `<resource type prefix>` `<module name abbreviation>` `<content description>` (`<additional information>`)
  CodeSystem example:
  `MII CS Mikrobio Mikrobiologische Erreger (Bakterien, Pilze)`
* For ValueSets, additionally [`<terminology used (e.g. value from ValueSet.compose.include.system)>`]. Omit for unnamed terminologies (or use “Lokal”).
  Example: MII VS Mikrobio Mikrobiologische Erreger (Bakterien, Pilze) [SNOMED CT]
* For ConceptMaps, additionally [`<source terminology> -> <target terminology>`]
  Example: `MII CM Mikrobio Mikrobiologische Erreger (Bakterien, Pilze) [LOINC -> SNOMED CT]`

Note: in the special case where a VS or a CM references several terminologies, list them separated by commas.

### Element **name**

(a machine-processable designation of the resource)

* Format: Upper_Snake_Case
  Note: the FHIR standard is CamelCase, but the MII deviates from it for better human readability, especially of abbreviations.
* Structure: same as the title, but without spaces and special characters
* Example: `MII_VS_Mikrobio_Mikrobiologische_Erreger_Bakterien_Pilze_SNOMEDCT`

### Element **id**

(logical identifier of the resource)

* Structure: same as .name, formatted in kebab-case (lower case, “_” replaced by “-”)
* Limited to 64 characters: abbreviate where necessary
* Example: `mii-vs-mikrobio-mikrobiologische-erreger-snomedct`

### Element **url**

(canonical URL of the resource)

* Structure: `https://www.medizininformatik-initiative.de/fhir/<technical module name>/<resource type>/<resource id>`
* `<technical module name>`: technical name of the module per the table above
* `<id-…>`: as specified above
* The canonical URL rules are to be applied only when resources are newly created. Established URLs of published artifacts are not to be changed retrospectively.
* Example: `https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikrobiologische-erreger-snomedct`

<!-- TODO:REVIEW The rule carried over here names the canonical path
     .../fhir/<technical module name>/... . This module's artifacts use
     .../fhir/ext/modul-dokument/... (an additional "ext" segment). Should the
     rule text be updated, or is the divergence deliberately kept as an
     established URL? Not guessed — please decide. -->

### References

* HL7 International: Guide to Designing (FHIR) Resources: <https://confluence.hl7.org/pages/viewpage.action?pageId=35718826>
* HL7 International: Naming Rules & Guidelines: [https://confluence.hl7.org/pages/viewpage.action?pageId=35718826#GuidetoDesigningResources-NamingRules&Guidelines](https://confluence.hl7.org/pages/viewpage.action?pageId=35718826%22%20l%20%22GuidetoDesigningResources-NamingRules&Guidelines)
* HL7 International: Multi-Language support in FHIR (Localization/Internationalization): <http://hl7.org/fhir/languages.html>
