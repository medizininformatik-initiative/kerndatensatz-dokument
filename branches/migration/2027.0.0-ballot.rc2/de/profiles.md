# Profile - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Profile**

## Profile

Diese Seite listet die FHIR-Profile des Moduls **Dokument** (Namenskonvention `MII_PR_<Modul>_<Name>`). Die Extensions des Moduls stehen auf der Seite [Extensions](extensions.md).

Das Modul definiert ein Profil: [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md) (`MII_PR_Dokument_Dokument`) auf Basis der Ressource `DocumentReference`. Die technischen Detailansichten — Struktur, Differential, XML und JSON — erzeugt der IG-Publisher auf der Artefakt-Seite; den zugrunde liegenden fachlichen Datensatz beschreibt die Seite [Logische Modelle](logical-models.md).

Die folgenden Konventionen gelten nicht nur für die Profile, sondern für alle Conformance-Ressourcen dieses Moduls (Extensions, ValueSets, CodeSystems, logische Modelle).

### Profil MII PR Dokument Dokument

Das Modul definiert ein Profil: [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md) auf `DocumentReference` — „Klinisches Dokument mit zugehörigen Metadaten“. Die fachlichen Hinweise, das Mapping auf den logischen Datensatz und die Beispiele stehen auf der Artefaktseite; die Struktur wird hier direkt gerendert (XML und JSON des Profils sind wegen ihrer Größe nur auf der Artefaktseite eingebunden).

### Namenskonventionen für die Erstellung von FHIR-Ressourcen in der Medizininformatik-Initiative

Bitte die [Seite der Namenskonventionen](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII) im Kerndatensatz Wiki auf aktuellere Versionen prüfen.

#### Allgemeines

* Möglichst eindeutige und prägnante Beschreibung des Inhalts
* Für CodeSystems und ValueSets: Konformität mit [http://hl7.org/fhir/shareablecodesystem](http://hl7.org/fhir/shareablecodesystem) bzw. [http://hl7.org/fhir/shareablevalueset](http://hl7.org/fhir/shareablevalueset) wird empfohlen

#### Festlegungen zu Modul-Bezeichnungen und Abkürzungen

Für bestehende Module sind folgende Bezeichnungen abgestimmt:

| | | |
| :--- | :--- | :--- |
|   | **url** | **title/ name/ id** |
| Modul Diagnose | modul-diagnose | Diagnose |
| Modul Laborbefund | modul-labor | Labor |
| Modul Prozedur | modul-prozedur | Prozedur |
| Modul Medikation | modul-medikation | Medikation |
| Modul Person (Profile im Basismodul) | modul-person | Person |
| Modul Fall (Profile im Basismodul) | modul-fall | Fall |
| Modul Consent | modul-consent | Consent |
| Modul Mikrobiologie | modul-mikrobio | Mikrobio |
| Modul Symptom/klinischer Phänotyp | modul-symptom | Symptom |
| Modul Bildgebende Verfahren | modul-bildgebung | Bildgebung |
| Modul Intensivmedizin | modul-icu | ICU |
| Modul Medizinisches Forschungsvorhaben | modul-studie | Studie |
| Modul Onkologie | modul-onko | Onko |
| Modul Pathologiebefund | modul-patho | Patho |
| Modul Molekulargenetischer Befund | modul-molgen | MolGen |
| Modul Bioprobendaten | modul-biobank | Biobank |
| Modul Strukturdaten | modul-struktur | Struktur |
| Modul Seltene Erkrankungen | modul-seltene | Seltene |
| Modul Patient-reported Outcomes | modul-pros | PROs |
| Modul Molekulares Tumorboard | modul-mtb | MTB |
| Modul Lungenfunktion | modul-lufu | LuFu |
| Modul Schlafmedizinischer Befund | **folgt** | **folgt** |
| Modul Dokument | modul-dokument | Dokument |

Die kanonischen Namensräume `modul-person` und `modul-fall` bleiben gültig; die zugehörigen Profile werden seit dem KDS-Release 2026 im Basismodul (Package `de.medizininformatikinitiative.kerndatensatz.base`) ausgeliefert.

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

Die bevorzugte Sprache für die Beschreibung, den Titel, sowie den Namen einer Conformance-Ressource ist Deutsch. Als Alternative kann Englisch verwendet werden, falls dies von dem jeweiligen Kümmererteam bevorzugt wird. Falls Deutsch als Sprache zur Dokumentation einer Ressource verwendet wird, muss auf den Elementen “description”, “name” und “title” eine Translation-Extension (siehe [http://hl7.org/fhir/extensions/StructureDefinition-translation.html](http://hl7.org/fhir/extensions/StructureDefinition-translation.html)) vorhanden sein. Der Inhalt der Extension ist im englischsprachigen Implementierungsleitfaden anzuzeigen.

#### Element title

(eine menschenlesbare Bezeichnung der Ressource)

* Format: Leerzeichen und Klammern etc. erlaubt
* Struktur: MII `<Präfix Ressourcentyp>` `<Abkürzung Modulname>` `<Beschreibung Inhalt>` (`<zusätzliche Informationen>`) Beispiel CodeSystem: `MII CS Mikrobio Mikrobiologische Erreger (Bakterien, Pilze)`
* Für ValueSets: zusätzlich [`<verwendete Terminologie (z.B. Wert aus ValueSet.compose.include.system)>`]. Bei namenslosen Terminologien weglassen (oder “Lokal”). Beispiel: MII VS Mikrobio Mikrobiologische Erreger (Bakterien, Pilze) [SNOMED CT]
* Für ConceptMaps: zusätzlich [`<Quellterminologie> -> <Zielterminologie>`] Beispiel: `MII CM Mikrobio Mikrobiologische Erreger (Bakterien, Pilze) [LOINC -> SNOMED CT]`

Hinweis: Für den Sonderfall, bei dem ein VS oder eine CM mehrere Terminologien referenziert, sind diese mit Komma unterteilt aufzuführen.

#### Element name

(eine maschinell verarbeitbare Bezeichnung der Ressource)

* Format: Upper_Snake_Case Hinweis: Der FHIR-Standard ist CamelCase (siehe HL7 International: Naming Rules & Guidelines im Abschnitt [Referenzen](#referenzen)), aber wegen besserer Menschenlesbarkeit, insbesondere von Abkürzungen, wird im Rahmen der MII davon abgewichen.
* Struktur: entsprechend des title, aber ohne Leer- und Sonderzeichen
* Beispiel: `MII_VS_Mikrobio_Mikrobiologische_Erreger_Bakterien_Pilze_SNOMEDCT`

#### Element id

(logischer Identifier der Ressource)

* Struktur: entsprechend .name, formatiert im kebab-case (lower case und “_” durch “-” ersetzt)
* Begrenzung auf 64 Zeichen: Bei Bedarf abkürzen
* Beispiel: `mii-vs-mikrobio-mikrobiologische-erreger-snomedct`

#### Element url

(kanonische URL der Ressource)

* Struktur: `https://www.medizininformatik-initiative.de/fhir/<technischer Modulname>/<Ressourcentyp>/<id der Ressource>`
* `<technischer Modulname>`: Technischer Name des Moduls laut obiger Tabelle
* `<id-…>`: wie oben spezifiziert
* Regeln für die Canonical URL sollen zunächst nur bei Neuerstellung von Ressourcen angewendet werden. Etablierte URLs von veröffentlichten Artefakten sollen nachträglich nicht geändert werden.
* Beispiel: `https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikrobiologische-erreger-snomedct`

> **Hinweis zu diesem Modul:** Die Artefakte des Moduls Dokument sind unter dem etablierten Namensraum `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/…` veröffentlicht (zusätzliches Segment `ext`). Nach der Regel oben werden etablierte Canonical-URLs veröffentlichter Artefakte nachträglich nicht geändert.

#### Referenzen

* HL7 International: Guide to Designing (FHIR) Resources: [https://confluence.hl7.org/pages/viewpage.action?pageId=35718826](https://confluence.hl7.org/pages/viewpage.action?pageId=35718826)
* HL7 International: Naming Rules & Guidelines: [https://confluence.hl7.org/pages/viewpage.action?pageId=35718826#GuidetoDesigningResources-NamingRules&Guidelines](https://confluence.hl7.org/pages/viewpage.action?pageId=35718826%22%20l%20%22GuidetoDesigningResources-NamingRules&Guidelines)
* HL7 International: Multi-Language support in FHIR (Localization/Internationalization): [http://hl7.org/fhir/languages.html](http://hl7.org/fhir/languages.html)

