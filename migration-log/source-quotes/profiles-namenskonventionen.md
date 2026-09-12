# profiles.md — Abschnitt „Namenskonventionen“ (entfernt am 2026-09-07)

Der Abschnitt stammt wörtlich von der Simplifier-Seite *TechnischeImplementierung/FHIRProfile (Index)* des Moduls Dokument (Tag v2027.0.0-ballot.rc1) und wurde bei der Migration auf `profiles.md` übernommen. Er beschreibt die MII-weiten Namenskonventionen, nicht die Profile dieses Moduls; die Seite verweist jetzt auf die kanonische Fassung im Meta-Modul-Wiki. Hier der entfernte Text beider Sprachfassungen (C4-Nachweis).

## input/pagecontent/profiles.md

```markdown
### Namenskonventionen für die Erstellung von FHIR-Ressourcen in der Medizininformatik-Initiative

Bitte die [Seite der Namenskonventionen](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII) im Kerndatensatz Wiki auf aktuellere Versionen prüfen.

#### Allgemeines

* Möglichst eindeutige und prägnante Beschreibung des Inhalts
* Für CodeSystems und ValueSets: Konformität mit <http://hl7.org/fhir/shareablecodesystem> bzw. <http://hl7.org/fhir/shareablevalueset> wird empfohlen

#### Festlegungen zu Modul-Bezeichnungen und Abkürzungen

Für bestehende Module sind folgende Bezeichnungen abgestimmt:

| Vollständiger Modulname                | Technischer Modulname | Abkürzung           |
| -------------------------------------- | --------------------- | ------------------- |
|                                        | **url**               | **title/ name/ id** |
| Modul Diagnose                         | modul-diagnose        | Diagnose            |
| Modul Laborbefund                      | modul-labor           | Labor               |
| Modul Prozedur                         | modul-prozedur        | Prozedur            |
| Modul Medikation                       | modul-medikation      | Medikation          |
| Modul Person (Profile im Basismodul)   | modul-person          | Person              |
| Modul Fall (Profile im Basismodul)     | modul-fall            | Fall                |
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
| Modul Schlafmedizinischer Befund       | *folgt*               | *folgt*             |
| Modul Dokument                         | modul-dokument        | Dokument            |

Die kanonischen Namensräume `modul-person` und `modul-fall` bleiben gültig; die
zugehörigen Profile werden seit dem KDS-Release 2026 im Basismodul
(Package `de.medizininformatikinitiative.kerndatensatz.base`) ausgeliefert.

Für zukünftig neu hinzukommende Module wird eine deutschsprachige Benennung im Singular bevorzugt.

#### Präfixe Ressourcentypen

* PR: StructureDefinition (Profile)
* EX: StructureDefinition (Extension)
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

#### Sprache

Die bevorzugte Sprache für die Beschreibung, den Titel, sowie den Namen einer Conformance-Ressource ist Deutsch. Als Alternative kann Englisch verwendet werden, falls dies von dem jeweiligen Kümmererteam bevorzugt wird. Falls Deutsch als Sprache zur Dokumentation einer Ressource verwendet wird, muss auf den Elementen “description”, “name” und “title” eine Translation-Extension (siehe <http://hl7.org/fhir/extensions/StructureDefinition-translation.html>) vorhanden sein. Der Inhalt der Extension ist im englischsprachigen Implementierungsleitfaden anzuzeigen.

#### Element **title**

(eine menschenlesbare Bezeichnung der Ressource)

* Format: Leerzeichen und Klammern etc. erlaubt
* Struktur: MII `<Präfix Ressourcentyp>` `<Abkürzung Modulname>` `<Beschreibung Inhalt>` (`<zusätzliche Informationen>`)
  Beispiel CodeSystem:
  `MII CS Mikrobio Mikrobiologische Erreger (Bakterien, Pilze)`
* Für ValueSets: zusätzlich [`<verwendete Terminologie (z.B. Wert aus ValueSet.compose.include.system)>`]. Bei namenslosen Terminologien weglassen (oder “Lokal”).
  Beispiel: MII VS Mikrobio Mikrobiologische Erreger (Bakterien, Pilze) [SNOMED CT]
* Für ConceptMaps: zusätzlich [`<Quellterminologie> -> <Zielterminologie>`]
  Beispiel: `MII CM Mikrobio Mikrobiologische Erreger (Bakterien, Pilze) [LOINC -> SNOMED CT]`

Hinweis: Für den Sonderfall, bei dem ein VS oder eine CM mehrere Terminologien referenziert, sind diese mit Komma unterteilt aufzuführen.

#### Element **name**

(eine maschinell verarbeitbare Bezeichnung der Ressource)

* Format: Upper_Snake_Case
  Hinweis: Der FHIR-Standard ist CamelCase (siehe HL7 International: Naming Rules & Guidelines im Abschnitt [Referenzen](#referenzen)), aber wegen besserer Menschenlesbarkeit, insbesondere von Abkürzungen, wird im Rahmen der MII davon abgewichen.
* Struktur: entsprechend des title, aber ohne Leer- und Sonderzeichen
* Beispiel: `MII_VS_Mikrobio_Mikrobiologische_Erreger_Bakterien_Pilze_SNOMEDCT`

#### Element **id**

(logischer Identifier der Ressource)

* Struktur: entsprechend .name, formatiert im kebab-case (lower case und “_” durch “-” ersetzt)
* Begrenzung auf 64 Zeichen: Bei Bedarf abkürzen
* Beispiel: `mii-vs-mikrobio-mikrobiologische-erreger-snomedct`

#### Element **url**

(kanonische URL der Ressource)

* Struktur: `https://www.medizininformatik-initiative.de/fhir/<technischer Modulname>/<Ressourcentyp>/<id der Ressource>`
* `<technischer Modulname>`: Technischer Name des Moduls laut obiger Tabelle
* `<id-…>`: wie oben spezifiziert
* Regeln für die Canonical URL sollen zunächst nur bei Neuerstellung von Ressourcen angewendet werden. Etablierte URLs von veröffentlichten Artefakten sollen nachträglich nicht geändert werden.
* Beispiel: `https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikrobiologische-erreger-snomedct`

> **Hinweis zu diesem Modul:** Die Artefakte des Moduls Dokument sind unter dem
> etablierten Namensraum `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/…`
> veröffentlicht (zusätzliches Segment `ext`). Nach der Regel oben werden etablierte
> Canonical-URLs veröffentlichter Artefakte nachträglich nicht geändert.
{: .ig-highlight .ig-highlight-blue}

#### Referenzen

* HL7 International: Guide to Designing (FHIR) Resources: <https://confluence.hl7.org/pages/viewpage.action?pageId=35718826>
* HL7 International: Naming Rules & Guidelines: [https://confluence.hl7.org/pages/viewpage.action?pageId=35718826#GuidetoDesigningResources-NamingRules&Guidelines](https://confluence.hl7.org/pages/viewpage.action?pageId=35718826%22%20l%20%22GuidetoDesigningResources-NamingRules&Guidelines)
* HL7 International: Multi-Language support in FHIR (Localization/Internationalization): <http://hl7.org/fhir/languages.html>
```

## input/translations/en/pagecontent/profiles.md

```markdown
### Naming conventions for creating FHIR resources in the Medical Informatics Initiative

Please check the [naming conventions page](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII) in the core dataset wiki for more recent versions.

#### General

* Describe the content as unambiguously and concisely as possible
* For CodeSystems and ValueSets: conformance with <http://hl7.org/fhir/shareablecodesystem> and <http://hl7.org/fhir/shareablevalueset> respectively is recommended

#### Agreed module designations and abbreviations

The following designations are agreed for the existing modules:

| Full module name                       | Technical module name | Abbreviation        |
| -------------------------------------- | --------------------- | ------------------- |
|                                        | **url**               | **title/ name/ id** |
| Modul Diagnose                         | modul-diagnose        | Diagnose            |
| Modul Laborbefund                      | modul-labor           | Labor               |
| Modul Prozedur                         | modul-prozedur        | Prozedur            |
| Modul Medikation                       | modul-medikation      | Medikation          |
| Modul Person (profiles in base module) | modul-person          | Person              |
| Modul Fall (profiles in base module)   | modul-fall            | Fall                |
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

Module names are the official German MII designations and are not translated.

The canonical namespaces `modul-person` and `modul-fall` remain valid; the
corresponding profiles have been delivered in the base module (package
`de.medizininformatikinitiative.kerndatensatz.base`) since the KDS release 2026.

For modules added in the future, a German-language name in the singular is preferred.

#### Resource type prefixes

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

#### Language

The preferred language for the description, the title and the name of a conformance resource is German. English may be used as an alternative if the responsible team prefers it. If German is used to document a resource, a translation extension (see <http://hl7.org/fhir/extensions/StructureDefinition-translation.html>) must be present on the elements “description”, “name” and “title”. The content of that extension is what the English-language implementation guide displays.

#### Element **title**

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

#### Element **name**

(a machine-processable designation of the resource)

* Format: Upper_Snake_Case
  Note: the FHIR standard is CamelCase (see HL7 International: Naming Rules & Guidelines under [References](#references)), but the MII deviates from it for better human readability, especially of abbreviations.
* Structure: same as the title, but without spaces and special characters
* Example: `MII_VS_Mikrobio_Mikrobiologische_Erreger_Bakterien_Pilze_SNOMEDCT`

#### Element **id**

(logical identifier of the resource)

* Structure: same as .name, formatted in kebab-case (lower case, “_” replaced by “-”)
* Limited to 64 characters: abbreviate where necessary
* Example: `mii-vs-mikrobio-mikrobiologische-erreger-snomedct`

#### Element **url**

(canonical URL of the resource)

* Structure: `https://www.medizininformatik-initiative.de/fhir/<technical module name>/<resource type>/<resource id>`
* `<technical module name>`: technical name of the module per the table above
* `<id-…>`: as specified above
* The canonical URL rules are to be applied only when resources are newly created. Established URLs of published artifacts are not to be changed retrospectively.
* Example: `https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikrobiologische-erreger-snomedct`

> **Note on this module:** The artifacts of the Dokument module are published under
> the established namespace `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/…`
> (an additional `ext` segment). Per the rule above, established canonical URLs of
> published artifacts are not changed retrospectively.
{: .ig-highlight .ig-highlight-blue}

#### References

* HL7 International: Guide to Designing (FHIR) Resources: <https://confluence.hl7.org/pages/viewpage.action?pageId=35718826>
* HL7 International: Naming Rules & Guidelines: [https://confluence.hl7.org/pages/viewpage.action?pageId=35718826#GuidetoDesigningResources-NamingRules&Guidelines](https://confluence.hl7.org/pages/viewpage.action?pageId=35718826%22%20l%20%22GuidetoDesigningResources-NamingRules&Guidelines)
* HL7 International: Multi-Language support in FHIR (Localization/Internationalization): <http://hl7.org/fhir/languages.html>
```
