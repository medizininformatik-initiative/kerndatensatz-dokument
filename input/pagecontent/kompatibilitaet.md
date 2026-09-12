<!-- markdownlint-disable MD041 -->
<!-- Deutsche Standardseite (Default-Sprache des Leitfadens).
     Englische Übersetzung: input/translations/en/pagecontent/kompatibilitaet.md
     — beide Dateien synchron halten.
     Migriert aus dem Simplifier-Guide "MII IG Modul Dokument":
     MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md.
     Diese Seite ist im Seitenbaum unter "implementer-guidance" eingehängt und
     hat bewusst keinen eigenen Menüeintrag. -->

Diese Seite vergleicht die FHIR-DocumentReference-Profile aus gematik ISiK
Dokumentenaustausch (`ISiKDokumentenMetadaten`), KBV MIO Basis
(`KBV_PR_Base_DocumentReference`) und IHE MHD
(`IHE.MHD.UnContained.Comprehensive.DocumentReference`) mit dem Profil dieses
Moduls.

> **Leserichtung:** Das MII KDS Dokument-Profil ist durchgehend das **Ziel** der
> Betrachtung. Jede Tabelle stellt das Quellprofil links und das MII-Profil
> rechts dar und beantwortet die Frage: Was ist nötig, um eine
> DocumentReference aus ISiK, KBV MIO Basis oder IHE MHD **nach** MII KDS
> Dokument zu überführen? Aussagen zur Gegenrichtung sind, wo sie vorkommen,
> ausdrücklich als solche gekennzeichnet.
{: .ig-highlight .ig-highlight-grey}

Grundlage sind die [Qualitätssicherungsberichte dieses Leitfadens](../qa.html),
die Profilvergleiche des HL7-FHIR-Validators (`compare`-Modus) gegen die drei
Profile und die technischen Profileigenschaften. Im Fokus stehen Kardinalitäten,
Must-Support-Kennzeichnungen (MS) und Terminologie-Bindungen, da diese für die
automatisierte Transformation und Integration, etwa in
Datenintegrationszentren, entscheidend sind.

Die Versionen der verglichenen Pakete sind nicht in den Fließtext übernommen,
damit diese Seite bei jedem Abhängigkeits-Update nicht erneut von Hand geprüft
werden muss. Maßgeblich ist die
[Abhängigkeitsübersicht dieses Leitfadens](ImplementationGuide-mii-ig-dokument.html#ig-abh%C3%A4ngigkeiten);
sie führt jedes Paket mit der Version, gegen die dieser Build erstellt wurde.

---

### Technischer Überblick

Dieser Abschnitt bietet eine strukturierte Übersicht zur Kompatibilität des MII KDS Dokument Profils mit den Profilen ISiK Dokumentenaustausch, KBV MIO Basis und IHE MHD. Für jedes Vergleichsprofil werden Motivation, Kompatibilität und Einschränkungen detailliert dargestellt.

#### ISiK Dokumentenaustausch

##### Motivation

Die Kompatibilität mit dem ISiK Dokumentenaustausch ist essenziell, um sektorenübergreifende Interoperabilität im deutschen Gesundheitswesen zu gewährleisten. ISiK definiert verbindliche Metadatenstandards für Dokumente in Krankenhäusern. Eine Harmonisierung ermöglicht die reibungslose Integration von ISiK-konformen Dokumenten in MII-Datenintegrationszentren und unterstützt die Umsetzung nationaler Interoperabilitätsziele.

> **Versionsstand:** Die nachfolgende Gegenüberstellung wurde gegen das Profil `ISiKDokumentenMetadaten` in Version **6.0.0** gemessen. Ab ISiK-Stufe 5 ist die menschenlesbare Bezeichnung des Dokuments in `content.attachment.title` zu führen; `DocumentReference.description` entfällt für diesen Zweck zugunsten einer Angleichung an IHE MHD und die ePA-Spezifikation.
{: .ig-highlight .ig-highlight-blue}

##### Kompatibilität

Das MII KDS Dokument Profil ist als Superset des ISiK Profils konzipiert und deckt alle ISiK-Anforderungen ab. Die wichtigsten Vergleichspunkte sind:

| FHIR-Element      | ISiK Dokumentenaustausch (`ISiKDokumentenMetadaten`) | MII KDS Dokument (`mii-pr-dokument-dokument`) | Kompatibilität                        |
|-------------------|-----------------------------------------|----------------------------------------------------|---------------------------------------|
| `status`          | 1..1, Must Support                      | 1..1, Must Support                                 | ✓ Vollständig kompatibel              |
| `type`            | 1..1, Must Support (KDL *und* XDS über Slices gefordert) | 0..1, Must Support (KDL/XDS empfohlen, Slices auf `type.coding`) | ✓ MII KDS Dokument unterstützt ISiK-Codes |
| `category`        | 0..1, Must Support, aus KDL abgeleitet  | 0..*, Must Support                                  | ✓ MII KDS Dokument erlaubt mehrere Kategorien      |
| `subject`         | 1..1, Must Support                      | 0..1, Must Support                                 | ⚠️ ISiK fordert Patientenbezug verpflichtend |
| `content`         | 1..1, Must Support                      | 1..*, Must Support                                 | ✓ MII KDS Dokument erlaubt mehrere Inhalte         |
| `securityLabel`   | 1..*, required (`ISiKConfidentialityCodes`: N \| 0..*, Must Support, extensible (`security-labels`) | R \| V) | ⚠️ MII KDS Dokument macht Sicherheitslabels optional|
| `context`         | 1..1, Must Support                      | 0..1, Must Support                                 | ⚠️ MII KDS Dokument macht Kontext optional         |
| `masterIdentifier`| 1..1, Must Support                      | 0..1, Must Support                                 | ⚠️ ISiK fordert Master Identifier      |
| `content.attachment.contentType` | 1..1, Must Support                      | 0..1, Must Support                | ⚠️ ISiK fordert MIME-Typ               |
| `content.attachment.language`    | 1..1, Must Support                      | 0..1, Must Support                | ⚠️ ISiK fordert Sprachangabe           |
| `content.attachment.title`       | 1..1, Must Support                      | 0..1                              | ⚠️ ISiK fordert Dokumententitel        |
| `content.attachment.creation`    | 1..1, Must Support                      | 0..1, Must Support                | ⚠️ ISiK fordert Dokumentendatum        |
| `content.format`  | 1..1, Must Support, required            | 0..1, Must Support, preferred (`MII_VS_Dokument_Format_Code`) | ⚠️ ISiK fordert Format-Code            |
| `context.facilityType`  | 1..1, Must Support, required            | 0..1, Must Support, required                 | ⚠️ ISiK fordert Einrichtungsart        |
| `context.practiceSetting` | 1..1, Must Support, required            | 0..1, Must Support, required               | ⚠️ ISiK fordert Fachgebiet             |
| `context.encounter` | 0..1, Must Support                      | 0..*, Must Support                               | ✓ MII KDS Dokument erlaubt mehrere Fallbezüge |
| `implicitRules`   | 0..0 (ausgeschlossen)                   | 0..1                                               | ⚠️ ISiK schließt das Element aus       |

Anmerkungen:

- **Must Support:** Die Must-Support-Kennzeichnungen decken sich weitgehend, aber nicht vollständig. Fünf in ISiK als Must Support gekennzeichnete Elemente sind es im MII KDS Dokument-Profil nicht: `DocumentReference.id`, `author`, `content.attachment.data`, `content.attachment.url` und `content.attachment.title`. Umgekehrt kennzeichnet das MII KDS Dokument-Profil neun Elemente als Must Support, die ISiK nicht so kennzeichnet: `meta`, `meta.profile`, `relatesTo.code`, `relatesTo.target`, `description`, `context.event` (inkl. `coding.system` und `coding.code`) und `context.period`.
- **Terminologie:** Die vom MII KDS Dokument-Profil gebundenen ValueSets schließen die von ISiK gebundenen ValueSets jeweils per Referenz ein und erweitern sie: `mii-vs-dokument-format-code` enthält `IHEXDSformatCodeDE` und zusätzlich den internationalen IHE-Format-Code-ValueSet; `mii-vs-dokument-einrichtungsart` enthält `IHEXDShealthcareFacilityTypeCode` und zusätzlich SNOMED-CT-Hierarchien; `mii-vs-dokument-fachgebiet` enthält `IHEXDSpracticeSettingCode` und zusätzlich eine SNOMED-CT-Hierarchie. ISiK-konforme Codes sind damit ohne Mapping gültig.

##### Einschränkungen

- **Pflichtfelder MII → ISiK:** Zwölf Elemente sind in ISiK verpflichtend, im MII KDS Dokument-Profil dagegen optional (siehe Tabelle). Bei einer Transformation nach ISiK sind sie zu ergänzen; `implicitRules` ist zu entfernen und `category`, `content` sowie `context.encounter` sind auf je höchstens eine Angabe zu reduzieren.
- **Sicherheitslabels:** Im MII KDS Dokument optional, in ISiK verpflichtend. Bei Transformation von MII nach ISiK müssen ggf. Sicherheitslabels ergänzt werden.
- **Kontext:** ISiK verlangt Kontextinformationen, MII KDS Dokument lässt diese optional. Für ISiK-Kompatibilität müssen Kontextdaten ergänzt werden.
- **Kategorie:** ISiK begrenzt `category` auf höchstens eine Angabe (0..1), das MII KDS Dokument-Profil erlaubt mehrere (0..*). Bei einer Transformation nach ISiK ist auf eine Kategorie zu reduzieren; die ISiK-spezifische Ableitung der Kategorie aus dem KDL-Code ist dabei zu beachten.

> **Hinweis zur Auswertung von Validator-Vergleichsberichten:** Die ValueSet-Vergleiche des FHIR Validators arbeiten auf der `compose`-Definition, nicht auf der Expansion. Für die vier verglichenen ValueSets (`securityLabel`, `content.format`, `context.facilityType`, `context.practiceSetting`) meldet der Bericht deshalb jeweils eine *leere* Schnittmenge, obwohl sich die Codemengen inhaltlich überlappen: ISiK zählt die Codes bzw. Teil-ValueSets direkt auf, während das MII KDS Dokument-Profil das jeweilige ihe-d-ValueSet per Referenz einbindet. Eine leere Schnittmenge in diesen Berichten ist daher kein Beleg für Terminologie-Inkompatibilität.
{: .ig-highlight .ig-highlight-blue}

#### KBV MIO Basis

##### Motivation

Die Kompatibilität mit dem KBV MIO Basis Profil ist entscheidend für die Integration von Dokumenten aus der ambulanten Versorgung und von Medizinischen Informationsobjekten (MIOs) in die MII-Infrastruktur. Eine Harmonisierung ermöglicht den sektorenübergreifenden Austausch zwischen ambulanter und stationärer Versorgung.

##### Kompatibilität

Beide Profile sind auf Flexibilität und Interoperabilität ausgelegt:

| FHIR-Element      | KBV MIO Basis (`KBV_PR_Base_DocumentReference`) | MII KDS Dokument (`mii-pr-dokument-dokument`) | Kompatibilität                        |
|-------------------|-----------------------------------------|----------------------------------------------------|---------------------------------------|
| `status`          | 1..1                                    | 1..1, Must Support                                 | ✓ Vollständig kompatibel              |
| `type`            | 0..1, preferred (`c80-doc-typecodes`) | 0..1, Must Support, preferred (identische Bindung wie KBV), `type.coding` 1..*, Invariante `mii-iv-dokument-dokument-type` (warning) | ⚠️ Bindung identisch; MII fordert jedoch mindestens ein `coding` mit `system` und `code` |
| `category`        | 0..*, example (`document-classcodes`) | 0..*, Must Support, example (identische Bindung wie KBV), `category.coding` 1..*, Invariante `mii-iv-dokument-dokument-category` (warning) | ⚠️ Bindung identisch; MII fordert jedoch mindestens ein `coding` mit `system` und `code` |
| `subject`         | MII Patient \| 0..1, Must Support, nur Reference(Patient \| MII PatientPseudonymisiert) | 0..1, Reference(Patient \| Practitioner \| Group \| Device \| KBV_PR_Base_*) | ⚠️ Gleiche Kardinalität, aber MII schränkt die zulässigen Referenzziele ein |
| `content`         | 1..*                                    | 1..*, Must Support                                 | ✓ Vollständig kompatibel              |
| `author`          | 0..*, auf KBV_PR_Base_*-Profile eingeschränkt | 0..* (kein Must Support)                           | ✓ Vollständig kompatibel (MII ist hier weiter) |
| `custodian`       | 0..1                                    | 0..1                                               | ✓ Vollständig kompatibel              |
| `securityLabel`   | 0..*, extensible                        | 0..*, Must Support, extensible                     | ✓ Vollständig kompatibel              |
| `content.format`  | 0..1, preferred (IHE `formatcodes`)     | 0..1, Must Support, preferred (`MII_VS_Dokument_Format_Code`) | ⚠️ Unterschiedliche ValueSets bei gleicher Bindungsstärke |
| `context.event`   | 0..*, example (`v3-ActCode`)            | 0..*, Must Support, required (`IHEXDSeventCodeList`), `coding` 1..* | ⚠️ Bindungsstärke von example auf required verschärft |
| `context.facilityType` | 0..1, example (`c80-facilitycodes`) | 0..1, Must Support, required (`mii-vs-dokument-einrichtungsart`), `coding` 1..* | ⚠️ Bindungsstärke von example auf required verschärft |
| `context.practiceSetting` | 0..1, example (`c80-practice-codes`) | 0..1, Must Support, required (`mii-vs-dokument-fachgebiet`), `coding` 1..* | ⚠️ example → required; 117 Codes des KBV-Beispiel-ValueSets sind im MII-ValueSet nicht enthalten |
| `context.encounter` | MII KontaktGesundheitseinrichtung) | 0..*, Must Support, Reference(Encounter \| 0..*, Reference(Encounter \| EpisodeOfCare) | ⚠️ MII lässt `EpisodeOfCare` nicht zu |

Anmerkungen:

- **Terminologie:** Beide Profile unterstützen LOINC, SNOMED CT und XDS.
- **Kardinalitäten:** Auf Element-Ebene identisch; die einzigen Verschärfungen betreffen `type.coding` und `category.coding` (jeweils 0..* → 1..*) sowie `coding` 1..* bei `context.event`, `context.facilityType` und `context.practiceSetting`. Bei `subject` ist nicht die Kardinalität, sondern die Menge der zulässigen Referenzziele eingeschränkt.

##### Einschränkungen

- **Subject:** `subject` ist in beiden Profilen 0..1; eine Referenz muss also nicht ergänzt werden. MII schränkt jedoch die zulässigen Referenzziele auf `Patient` (bzw. die MII-Profile `Patient` und `PatientPseudonymisiert`) ein, während KBV MIO Basis auch `Practitioner`, `Group` und `Device` sowie die Profile `KBV_PR_Base_Patient|1.7.0`, `KBV_PR_Base_Practitioner|1.7.0` und `KBV_PR_Base_Device|1.7.0` erlaubt. Instanzen mit einem nicht-patientenbezogenen `subject` sind gegen das MII-Profil nicht valide.
- **Must Support:** KBV MIO Basis 1.7.0 kennzeichnet in `DocumentReference` kein einziges Element als Must Support. Das MII KDS Dokument-Profil setzt Must Support auf 22 gemeinsame Elemente sowie auf vier weitere, die KBV nicht einschränkt (`meta.profile`, `content.attachment.contentType`, `content.attachment.language`, `content.attachment.creation`).
- **Terminologie-Bindungen:** MII verschärft drei Bindungen von `example` auf `required`: `context.event` (`IHEXDSeventCodeList`), `context.facilityType` (`mii-vs-dokument-einrichtungsart`) und `context.practiceSetting` (`mii-vs-dokument-fachgebiet`). Beim Fachgebiet meldet der Validator-Vergleich 117 Codes des KBV-seitigen Beispiel-ValueSets (`c80-practice-codes`), die im MII-ValueSet nicht enthalten sind. Vorhandene Kontext-Codes aus KBV-Instanzen können daher nicht ungeprüft übernommen werden.
- **Referenzziele:** `context.encounter` lässt in MII `EpisodeOfCare` nicht mehr zu.
- **Kodierungen:** `type` und `category` benötigen in MII mindestens ein `coding` mit `system` und `code`; Instanzen, die nur `text` führen, sind nicht valide.

#### IHE MHD

##### Motivation

Die Kompatibilität mit IHE MHD ermöglicht internationale Interoperabilität und die Anbindung an weltweit etablierte Standards für den Dokumentenaustausch. IHE MHD ist Referenz für FHIR-basierten Dokumentenaustausch in vielen Ländern.

##### Kompatibilität

Der nachfolgende Vergleich bezieht sich auf das Profil `IHE.MHD.UnContained.Comprehensive.DocumentReference` (IHE ITI MHD, Package `ihe.iti.mhd`, Version 4.2.3; abgeleitet von `IHE.MHD.Minimal.DocumentReference`). Für die *contained*-Variante von MHD Comprehensive gelten abweichende Anforderungen. IHE MHD ist in dieser Variante durchgängig **restriktiver** als das MII KDS Dokument-Profil: vierzehn Elemente sind dort verpflichtend, die im MII-Profil optional sind, und vier Elemente sind in MHD verboten bzw. enger gebunden.

| FHIR-Element      | IHE MHD (`IHE.MHD.UnContained.Comprehensive.DocumentReference`) | MII KDS Dokument (`mii-pr-dokument-dokument`) | Kompatibilität                        |
|-------------------|-----------------------------------------|----------------------------------------------------|---------------------------------------|
| `masterIdentifier`| 1..1                                    | 0..1                                               | ⚠️ IHE MHD fordert Master Identifier       |
| `status`          | superseded \| 1..1, Must Support, required (`document-reference-status`: current \| entered-in-error) | 1..1, required (`DocumentReferenceStats`: nur current \| superseded) | ⚠️ `entered-in-error` ist in IHE MHD nicht zulässig |
| `docStatus`       | **0..0 (verboten)**                     | 0..1, Must Support                                 | ❌ `docStatus` muss für IHE MHD entfallen (Informationsverlust) |
| `type`            | 1..1, preferred (`c80-doc-typecodes`) | 0..1, Must Support, preferred (`c80-doc-typecodes`), Constraint `mii-iv-dokument-dokument-type` | ⚠️ IHE MHD fordert Dokumenttyp; Terminologie-Bindung identisch |
| `category`        | 1..1, example (`document-classcodes`) | 0..*, Must Support, example (`document-classcodes`), Constraint `mii-iv-dokument-dokument-category` | ⚠️ IHE MHD fordert genau **eine** Kategorie; mehrfache `category` sind MHD-invalide |
| `subject`         | MII Patient \| 0..1, Must Support, Reference(Patient \| MII PatientPseudonymisiert) | 1..1, Reference(Patient) | ⚠️ IHE MHD fordert die Patientenreferenz |
| `securityLabel`   | 1..*, Must Support, extensible (`security-labels`) | 0..*, Must Support, extensible (`security-labels`) | ⚠️ IHE MHD fordert mindestens ein Sicherheitslabel |
| `content`         | 1..1                              | 1..*, Must Support, Slicing nach `exists:attachment.url` | ⚠️ Mehrere `content`-Einträge sind MHD-invalide |
| `content.attachment` | 1..1                                    | 1..1, Must Support                              | ✓ Kardinalität identisch (MS nur im MII-Profil) |
| `content.attachment.data` | **0..0 (verboten)**                     | 0..1                                       | ❌ Inline-Base64 ist in dieser MHD-Variante ausgeschlossen |
| `content.attachment.url` | 1..1                                    | 0..1                                        | ❌ MHD fordert die URL; ein rein über `data` ausgeliefertes Dokument ist nicht MHD-abbildbar |
| `content.attachment.contentType` | 1..1                                    | 0..1, Must Support                | ⚠️ IHE MHD fordert den MIME-Typ |
| `content.attachment.language` | 1..1                                    | 0..1, Must Support                     | ⚠️ IHE MHD fordert die Sprachangabe |
| `content.attachment.creation` | 1..1                                    | 0..1, Must Support                     | ⚠️ IHE MHD fordert das Erstellungsdatum |
| `content.format`  | 1..1, Must Support, preferred (`ihe.formatcode.fhir/ValueSet/formatcode`) | 0..1, Must Support, preferred (`mii-vs-dokument-format-code`) | ⚠️ IHE MHD fordert einen Format-Code; die (preferred) Wertemengen unterscheiden sich |
| `context`         | 1..1                                    | 0..1, Must Support                                 | ⚠️ IHE MHD fordert Kontext                 |
| `context.facilityType` | 1..1, example (`c80-facilitycodes`) | 0..1, **required** (`mii-vs-dokument-einrichtungsart`) | ⚠️ Kardinalität: MHD strenger — Terminologie: **MII strenger** |
| `context.practiceSetting` | 1..1, example (`c80-practice-codes`) | 0..1, **required** (`mii-vs-dokument-fachgebiet`) | ⚠️ Kardinalität: MHD strenger — Terminologie: **MII strenger** |
| `context.event`   | 0..*, example (`v3-ActCode`)      | 0..*, Must Support, **required** (`IHEXDSeventCodeList`) | ⚠️ Terminologie: **MII strenger** |
| `context.sourcePatientInfo` | 1..1, Must Support                      | 0..1                                     | ⚠️ IHE MHD fordert die Quell-Patientendaten |

Anmerkungen:

- **Terminologie:** Für `type`, `category` und `securityLabel` verwenden beide Profile **dieselbe** Bindung (preferred `c80-doc-typecodes`, example `document-classcodes`, extensible `security-labels`). Unterschiede bestehen bei `status` (MHD enger), `content.format` (unterschiedliche preferred-Wertemengen) sowie bei `context.facilityType`, `context.practiceSetting` und `context.event` — dort bindet das **MII-Profil required**, IHE MHD nur example.
- **Metadaten:** IHE MHD verlangt umfangreichere Metadaten als MII KDS Dokument (vierzehn zusätzliche Pflichtelemente).
- **Must Support:** Das MII-Profil setzt MS auf 14 Elemente, die in MHD kein MS tragen (u. a. `meta`, `masterIdentifier`, `status`, `content`, `context`); umgekehrt trägt IHE MHD MS auf `date`, `author` und `context.sourcePatientInfo`, wo das MII-Profil kein MS setzt.

##### Einschränkungen

- **Pflichtfelder:** IHE MHD fordert folgende Felder verpflichtend, die im MII KDS Dokument optional sind: `masterIdentifier` (zusätzlich typisiert als `IHE.MHD.UniqueIdIdentifier`), `type`, `category`, `subject`, `securityLabel`, `context`, `context.facilityType`, `context.practiceSetting`, `context.sourcePatientInfo`, `content.format`, `content.attachment.contentType`, `content.attachment.language`, `content.attachment.creation` und `content.attachment.url`.
- **Von IHE MHD ausgeschlossene Elemente:** `docStatus` (0..0), `content.attachment.data` (0..0), `modifierExtension` (0..0) sowie mehr als ein `content`-Eintrag (max. 1). Diese Angaben gehen bei einer Transformation MII → IHE MHD verloren bzw. machen die Instanz MHD-invalide.
- **Dokumentenzugriff:** Da IHE MHD `content.attachment.data` verbietet und `content.attachment.url` fordert, ist ein ausschließlich als Base64 eingebettetes Dokument nicht nach IHE MHD überführbar; es muss zuvor als abrufbare URL bereitgestellt werden.
- **Status:** IHE MHD lässt nur `current` und `superseded` zu; `status = entered-in-error` ist nicht abbildbar.
- **Master Identifier:** Für IHE MHD muss ein eindeutiger Master Identifier vergeben werden.
- **Format Codes:** IHE MHD verlangt Format Codes, die ggf. ergänzt werden müssen.
- **Kontext:** Kontextinformationen müssen für IHE MHD bereitgestellt werden.
- **Sicherheitslabel:** Mindestens ein Sicherheitslabel ist für IHE MHD erforderlich.
- **Transformationshinweis:** Für die Transformation MII KDS Dokument → IHE MHD müssen fehlende Pflichtfelder ergänzt und die in MHD ausgeschlossenen Elemente (`docStatus`, `content.attachment.data`, `modifierExtension`, zusätzliche `content`-Einträge) entfernt werden. Die umgekehrte Transformation IHE MHD → MII KDS Dokument ist kardinalitätsseitig verlustfrei, **terminologisch jedoch nicht automatisch gültig**: `context.facilityType`, `context.practiceSetting` und `context.event` sind im MII-Profil required gebunden, so dass MHD-Codes außerhalb der MII-Wertemengen gemappt werden müssen; zudem entfällt `EpisodeOfCare` als zulässiges Ziel von `context.encounter`.

### Detaillierte Kompatibilitätsbetrachtung

#### Kardinalitäten und Must Support

Im MII KDS Dokument-Profil sind die meisten Metadatenfelder optional, darunter auch die zentralen Felder `type` und `category`. Die Kardinalität für `type` ist 0..1, für `category` 0..*, und MS ist gesetzt. Das bedeutet, dass Instanzen aus weniger restriktiven Profilen wie KBV MIO Basis in der Regel ohne Anpassung übernommen werden können. IHE MHD (UnContained Comprehensive) ist demgegenüber **restriktiver** als das MII-Profil: dort sind u. a. `masterIdentifier`, `type`, `category`, `subject`, `securityLabel`, `context` und `content.attachment.url` verpflichtend. Eine MHD-Instanz erfüllt die MII-Kardinalitäten daher stets; der Anpassungsbedarf liegt in der Gegenrichtung sowie bei den required gebundenen MII-Kontextterminologien.

Im ISiK Dokumentenaustausch-Profil hingegen ist eine deutlich größere Zahl von Metadatenfeldern verpflichtend: `masterIdentifier` (1..1, inkl. `system` und `value`), `type` (1..1), `subject` (1..1), `securityLabel` (1..*), `content` (1..1), `content.attachment.contentType`, `.language`, `.title` und `.creation` (je 1..1), `content.format` (1..1), `context` (1..1) sowie `context.facilityType` und `context.practiceSetting` (je 1..1). Zusätzlich schließt ISiK `implicitRules` aus (0..0). Für eine Transformation von ISiK Dokumentenaustausch nach MII KDS Dokument ist dies unproblematisch, da alle erforderlichen Informationen vorliegen. Umgekehrt – etwa bei einer möglichen Transformation von MII KDS Dokument nach ISiK Dokumentenaustausch – müssten diese Pflichtfelder ergänzt werden.

#### Terminologie-Bindungen

Für das Feld `type` empfiehlt das MII KDS Dokument-Profil die Verwendung von KDL- und XDS-Type-Codes. Auf Ebene des Elements `DocumentReference.type` bleibt die Basis-Bindung von FHIR R4 unverändert: Die Bindung ist **preferred** (Wertemenge `c80-doc-typecodes`) — dieselbe Bindung in derselben Stärke wie in KBV MIO Basis und IHE MHD — und wird durch den Constraint `mii-iv-dokument-dokument-type` (Severity `warning`) um die KDL/XDS-Empfehlung ergänzt, sodass auch andere Codesysteme zulässig sind. Vorgaben zu konkreten Codesystemen werden zusätzlich über Slices auf `type.coding` ausgedrückt. Für `category` ist die Bindung **example** (`document-classcodes`), ergänzt um den Constraint `mii-iv-dokument-dokument-category`; auch hier sind XDS-Codes empfohlen, LOINC und SNOMED CT werden gleichwertig unterstützt. Die Bindungsstärke ist bei `type`, `category` und `securityLabel` bewusst niedrig gehalten, ebenso bei `content.format` (**preferred** an `MII_VS_Dokument_Format_Code` gebunden); `required` gebunden sind im MII KDS Dokument-Profil dagegen `context.facilityType`, `context.practiceSetting` und `context.event`.

Im ISiK Dokumentenaustausch-Profil ist dies anders spezifiziert: Hier fordert ISiK KDL- *und* XDS-Type-Codes über Slices auf `type.coding`, und die Kategorie wird aus dem KDL-Code abgeleitet. Weitere Typisierungen (z.B. nach SNOMED CT oder LOINC) sind laut ISiK ausdrücklich erlaubt. Das Feld `securityLabel` ist required an `ISiKConfidentialityCodes` gebunden und muss eine der drei Vertraulichkeitsstufen `N` | `R` | `V` enthalten.

Im KBV MIO Basis- und IHE MHD-Profil können verschiedene Codesysteme verwendet werden, darunter LOINC, SNOMED CT und XDS. Die Profile sind damit für internationale und sektorenübergreifende Anwendungen geeignet.

#### Weitere Unterschiede und Gemeinsamkeiten

Ein weiterer wichtiger Unterschied betrifft die Handhabung von Kontextfeldern wie `context.facilityType` und `context.practiceSetting`. Im MII KDS Dokument-Profil sind diese Felder optional, im ISiK Dokumentenaustausch-Profil hingegen verpflichtend. Für die Transformation von ISiK Dokumentenaustausch nach MII KDS Dokument ist dies unproblematisch, da alle Informationen vorhanden sind. In IHE MHD sind `context.facilityType` und `context.practiceSetting` dagegen mit 1..1 verpflichtend, liegen also stets vor. Bei der Übernahme nach MII KDS Dokument ist nicht die Kardinalität, sondern die **Terminologie** die Hürde: das MII-Profil bindet beide Felder required an `mii-vs-dokument-einrichtungsart` bzw. `mii-vs-dokument-fachgebiet`, während IHE MHD nur example-Bindungen (`c80-facilitycodes`, `c80-practice-codes`) vorgibt. Codes außerhalb der MII-Wertemengen müssen gemappt werden. Bei der Transformation von KBV MIO Basis nach MII KDS Dokument können diese Felder dagegen fehlen, was aufgrund der Flexibilität des Zielprofils zulässig ist; vorhandene Werte müssen jedoch ebenfalls auf die im MII-Profil required gebundenen Wertemengen abgebildet werden.

Bei den Metadatenfeldern für den Dokumentenzugriff (`content.attachment.data` und `content.attachment.url`) sind die Kardinalitäten in ISiK Dokumentenaustausch, KBV MIO Basis und MII KDS Dokument identisch (jeweils 0..1); Unterschiede bestehen dort ausschließlich in der Must-Support-Kennzeichnung: ISiK kennzeichnet beide Elemente als Must Support, das MII KDS Dokument-Profil nicht. Die Unterscheidung zwischen eingebettetem Dokument und Verweis erfolgt sowohl im MII KDS Dokument- als auch im KBV MIO Basis-Profil über Slices von `content` (Diskriminator `exists:attachment.url`). Das MII KDS Dokument-Profil erlaubt beide Varianten (`data` 0..1, `url` 0..1) und ist damit kompatibel zu den unterschiedlichen Ansätzen dieser Quellprofile. IHE MHD (UnContained Comprehensive) lässt dagegen ausschließlich den URL-Verweis zu: `content.attachment.url` ist 1..1, `content.attachment.data` ist 0..0. In Richtung MII → IHE MHD ist ein rein eingebettetes Dokument daher nicht abbildbar; für ISiK und KBV MIO Basis gilt diese Einschränkung nicht. Hinweis: Der Profilvergleich des Validators vergleicht keine benannten Slices; Aussagen auf Slice-Ebene sind daher nicht maschinell belegt.

### Fazit und Zusammenfassung

Das MII KDS Dokument-Profil ist so gestaltet, dass es eine hohe Kompatibilität zu den gängigen deutschen und internationalen FHIR-Profilen für Dokumentenmetadaten bietet. Die wichtigsten Metadatenfelder sind optional und unterstützen verschiedene Codesysteme, darunter KDL, XDS, LOINC und SNOMED CT. Für die Transformation von ISiK Dokumentenaustausch nach MII KDS Dokument ist keine Anpassung der Terminologien erforderlich, weil die vom MII KDS Dokument-Profil gebundenen ValueSets die ISiK-seitig gebundenen ValueSets einschließen — und nicht deshalb, weil die MII-Bindungen durchgängig schwächer wären: `context.facilityType` und `context.practiceSetting` sind auch im MII KDS Dokument-Profil `required` gebunden (`content.format` ist im MII-Profil dagegen nur `preferred` gebunden). Bei der Transformation von KBV MIO Basis oder IHE MHD nach MII KDS Dokument können die vorhandenen Codes übernommen werden, sofern sie aus unterstützten Codesystemen stammen. Fehlende Felder sind im Zielprofil in der Regel kein Problem, da diese dort optional sind. Vorhandene Werte in `context.event`, `context.facilityType` und `context.practiceSetting` müssen dagegen auf die dort required gebundenen ValueSets abgebildet werden, und `type`/`category` benötigen mindestens ein `coding`.

Für die Praxis bedeutet dies, dass eine automatisierte Extract-Transform-Load (ETL)-Strecke von ISiK Dokumentenaustausch, KBV MIO Basis oder IHE MHD nach MII KDS Dokument technisch gut umsetzbar ist. Die größte Herausforderung besteht darin, bei Bedarf die Terminologien zu harmonisieren und sicherzustellen, dass alle für die jeweilige Anwendung relevanten Metadaten vorhanden sind. Die Flexibilität des MII KDS Dokument-Profils erleichtert die Integration und fördert die Interoperabilität im deutschen und internationalen Kontext.

---

Das MII KDS Dokument-Profil ist als flexibles Superset konzipiert und ermöglicht die Harmonisierung von Dokumentenmetadaten aus verschiedenen Quellen. Die Kompatibilität ist mit ISiK sehr hoch und mit KBV MIO Basis hoch; mit IHE MHD bestehen Anpassungsbedarfe in beide Richtungen: MII → IHE MHD erfordert das Ergänzen zahlreicher Pflichtfelder und das Entfernen der in MHD ausgeschlossenen Elemente; IHE MHD → MII erfordert ein Terminologie-Mapping für die required gebundenen Kontextfelder. Damit ist eine sektorenübergreifende und internationale Interoperabilität sichergestellt.

**Kompatibilitätsübersicht:**

| Quellprofil             | Kompatibilität        | Haupteinschränkungen                           |
|-------------------------|-----------------------|-------------------------------------------------|
| ISiK Dokumentenaustausch | Sehr hoch            | Sicherheitslabel, Kontext, Pflichtfelder (MII→ISiK) |
| KBV MIO Basis           | Hoch                  | Referenzziele (`subject`, `context.encounter`), required-Bindungen im `context`, `coding` 1..* bei `type`/`category`, Must-Support-Unterschiede |
| IHE MHD (UnContained Comprehensive) | Mittel, mit Anpassungen in beide Richtungen | 14 Pflichtfelder (u. a. masterIdentifier, subject, Kontext, attachment.url); in MHD verbotene Elemente (docStatus, attachment.data, mehrfaches content); status ohne `entered-in-error`; required MII-Bindungen bei facilityType/practiceSetting/event; masterIdentifier fordert auch ISiK |

---

Die hier verglichenen Elementdefinitionen sind im
[Dokument-Profil](StructureDefinition-mii-pr-dokument-dokument.html) normativ
festgelegt; eine Übersicht aller Profile des Moduls steht unter
[Profile](profiles.html). Den fachlichen Kontext dieser Gegenüberstellung sowie
die Liste der berücksichtigten externen Standards führt die Seite
[Hinweise für Implementierende](implementer-guidance.html).
