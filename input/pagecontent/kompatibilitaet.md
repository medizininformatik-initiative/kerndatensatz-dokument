<!-- markdownlint-disable MD041 -->
<!-- Deutsche Standardseite (Default-Sprache des Leitfadens).
     Englische Übersetzung: input/translations/en/pagecontent/kompatibilitaet.md
     — beide Dateien synchron halten.
     Migriert aus dem Simplifier-Guide "MII IG Modul Dokument":
     MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md.
     Diese Seite ist im Seitenbaum unter "implementer-guidance" eingehängt und
     hat bewusst keinen eigenen Menüeintrag. -->

Die Kompatibilität der FHIR DocumentReference-Profile des MII KDS Dokument mit den Profilen aus Gematik ISiK Dokumentenaustausch, KBV MIO Basis und IHE MHD wurde anhand der [Berichte des FHIR Validators](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/) und der technischen Profileigenschaften geprüft. Im Fokus stehen die Kardinalitäten, Must Support (MS)-Kennzeichnungen und die Terminologie-Bindungen, da diese für die automatisierte Transformation und Integration, z.B. in Datenintegrationszentren, entscheidend sind.

<!-- TODO:REVIEW Der Quell-Link "Berichte des FHIR Validators" zeigt auf die
     veroeffentlichte GitHub-Pages-Seite dieses Moduls, also auf den Leitfaden
     selbst. Soll er stattdessen auf den vom IG Publisher erzeugten
     QA-Bericht (qa.html) zeigen? -->

<!-- TODO:REVIEW Die Simplifier-Quellseite hatte an dieser Stelle einen
     handgebauten Abschnitt "Uebersicht" als Mini-Inhaltsverzeichnis. Dessen
     Eintraege waren bereits in der Quelle keine aufloesbaren Links, sondern
     Klammerausdruecke ohne Ziel. Der Abschnitt wurde nicht uebernommen: der
     IG Publisher erzeugt die Seitennavigation selbst, und handgebaute
     Anker-Listen fuehren in der QA zu gebrochenen Links. Falls ein
     seiteninternes Inhaltsverzeichnis gewuenscht ist, bitte zurueckmelden. -->

<!-- Herkunftshinweis: der nachfolgend zitierte Abschnitt "Zusammenfassung" war
     in der Simplifier-Quellseite auskommentiert und damit nicht sichtbar. Er
     wird hier verbatim mitgefuehrt - unveraendert, ungekuerzt und ohne
     Neuumbruch -, damit der Inhalt bei der Migration nicht verlorengeht. Die
     aktive Zusammenfassung steht am Seitenende. -->

<!-- QUELLZITAT BEGINN (Simplifier-Quellseite, auskommentierter Abschnitt
     "Zusammenfassung"; Wortlaut unveraendert uebernommen):

### Zusammenfassung

Das MII KDS Dokument-Profil ist im Hinblick auf die verwendbaren Terminologien und die Ausgestaltung der meisten Metadatenfelder bewusst flexibel gehalten. Für zentrale Felder wie `type` und `category` werden KDL- und XDS-Codes empfohlen, aber nicht verpflichtend gefordert. Stattdessen sind auch LOINC und SNOMED CT als Codesysteme explizit unterstützt und können gleichwertig verwendet werden. Die Bindungsstärke ist nicht required und mit einem Constraint hinsichtlich der Empfehlung versehen. Die Kardinalitäten für diese Felder sind 0..1 (`type`) bzw. 0..* (`category`), und MS ist gesetzt. Damit ist das MII KDS Dokument Profil grundsätzlich offen für lokale, nationale oder internationale Dokumentenklassifikationen und lässt sich mit unterschiedlich strukturierten Quellprofilen gut harmonisieren.

Im Gegensatz dazu ist das ISiK Dokumentenaustausch-Profil deutlich restriktiver. Hier sind KDL- und XDS-Codes für das Feld `type` verpflichtend. Die Bindung ist erforderlich, alternative Codesysteme sind nicht vorgesehen. Auch das Feld `securityLabel` ist im ISiK Dokumentenaustausch-Profil verpflichtend und muss eine der vorgegebenen Vertraulichkeitsstufen enthalten.

Das KBV MIO Basis- und das IHE MHD-Profil sind ähnlich wie das MII KDS Dokument-Profil flexibel. Beide Profile erlauben für `type` und `category` verschiedene Codesysteme, darunter LOINC und SNOMED CT, und setzen keine strikten Vorgaben. Die Felder sind optional, und die Bindungen extensible oder preferred. Damit sind diese Profile für eine breite Palette von Anwendungsfällen und internationale Interoperabilität geeignet.

QUELLZITAT ENDE -->

<!-- TODO:REVIEW Soll der oben zitierte, in der Quelle deaktivierte
     Zusammenfassungstext als sichtbarer Abschnitt reaktiviert werden, oder
     bleibt er (wie bisher) unveroeffentlicht? -->

---

## Detaillierte Kompatibilitätsbetrachtung

### Kardinalitäten und Must Support

Im MII KDS Dokument-Profil sind die meisten Metadatenfelder optional, darunter auch die zentralen Felder `type` und `category`. Die Kardinalität für `type` ist 0..1, für `category` 0..*, und MS ist gesetzt. Das bedeutet, dass Instanzen, die aus weniger restriktiven Profilen wie KBV MIO Basis oder IHE MHD stammen, in der Regel ohne Anpassung übernommen werden können, sofern die für die jeweilige Anwendung erforderlichen Metadaten vorhanden sind.

Im ISiK Dokumentenaustausch-Profil hingegen sind Metadatenfelder wie `type`, `subject`, `securityLabel`, `content` und `context` verpflichtend (Kardinalität 1..1) und mit MS versehen. Für eine Transformation von ISiK Dokumentenaustausch nach MII KDS Dokument ist dies unproblematisch, da alle erforderlichen Informationen vorliegen. Umgekehrt – etwa bei einer möglichen Transformation von MII KDS Dokument nach ISiK Dokumentenaustausch – müssten fehlende Pflichtfelder ergänzt werden.

### Terminologie-Bindungen

Für das Feld `type` empfiehlt das MII KDS Dokument-Profil die Verwendung von KDL- und XDS-Type-Codes, unterstützt aber ausdrücklich auch LOINC und SNOMED CT. Die Bindung ist extensible, sodass auch andere Codesysteme zulässig sind. Gleiches gilt für das Feld `category` - auch hier sind XDS-Codes empfohlen, aber LOINC und SNOMED CT werden gleichwertig unterstützt. Die Bindungsstärke ist bewusst niedrig gehalten, um maximale Flexibilität zu erreichen.

Im ISiK Dokumentenaustausch-Profil ist dies anders spezifiziert: Hier sind KDL- und XDS-Codes für `type` required, und die Kategorie wird aus dem KDL-Code abgeleitet. Andere Codesysteme sind nicht vorgesehen. Das Feld `securityLabel` ist ebenfalls required und muss einen der vorgegebenen Codes enthalten.

Im KBV MIO Basis- und IHE MHD-Profil können verschiedene Codesysteme verwendet werden, darunter LOINC, SNOMED CT und XDS. Die Profile sind damit für internationale und sektorenübergreifende Anwendungen geeignet.

### Weitere Unterschiede und Gemeinsamkeiten

Ein weiterer wichtiger Unterschied betrifft die Handhabung von Kontextfeldern wie `context.facilityType` und `context.practiceSetting`. Im MII KDS Dokument-Profil sind diese Felder optional, im ISiK Dokumentenaustausch-Profil hingegen verpflichtend. Für die Transformation von ISiK Dokumentenaustausch nach MII KDS Dokument ist dies unproblematisch, da alle Informationen vorhanden sind. Bei der Transformation von KBV MIO Basis oder IHE MHD nach MII KDS Dokument können diese Metadatenfelder fehlen, was aber aufgrund der Flexibilität des Zielprofils zulässig ist.

Auch bei den Metadatenfelder für den Dokumentenzugriff (`content.attachment.data` und `content.attachment.url`) gibt es Unterschiede in der Kardinalität und MS-Kennzeichnung. Das MII KDS Dokument-Profil erlaubt beide Varianten und ist damit kompatibel zu den unterschiedlichen Ansätzen der Quellprofile.

## Fazit und Empfehlungen

Das MII KDS Dokument-Profil ist so gestaltet, dass es eine hohe Kompatibilität zu den gängigen deutschen und internationalen FHIR-Profilen für Dokumentenmetadaten bietet. Die wichtigsten Metadatenfelder sind optional und unterstützen verschiedene Codesysteme, darunter KDL, XDS, LOINC und SNOMED CT. Für die Transformation von ISiK Dokumentenaustausch nach MII KDS Dokument ist keine Anpassung der Terminologien erforderlich, da die ISiK-Anforderungen strenger sind. Bei der Transformation von KBV MIO Basis oder IHE MHD nach MII KDS Dokument können die vorhandenen Codes übernommen werden, sofern sie aus unterstützten Codesystemen stammen. Fehlende Pflichtfelder sind im Zielprofil in der Regel kein Problem, da diese dort optional sind.

Für die Praxis bedeutet dies, dass eine automatisierte Extract-Transform-Load (ETL)-Strecke von ISiK Dokumentenaustausch, KBV MIO Basis oder IHE MHD nach MII KDS Dokument technisch gut umsetzbar ist. Die größte Herausforderung besteht darin, bei Bedarf die Terminologien zu harmonisieren und sicherzustellen, dass alle für die jeweilige Anwendung relevanten Metadaten vorhanden sind. Die Flexibilität des MII KDS Dokument-Profils erleichtert die Integration und fördert die Interoperabilität im deutschen und internationalen Kontext.

---

## Technischer Überblick

Dieser Abschnitt bietet eine strukturierte Übersicht zur Kompatibilität des MII KDS Dokument Profils mit den Profilen ISiK Dokumentenaustausch, KBV MIO Basis und IHE MHD. Für jedes Vergleichsprofil werden Motivation, Kompatibilität und Einschränkungen detailliert dargestellt.

### ISiK Dokumentenaustausch

#### Motivation

Die Kompatibilität mit dem ISiK Dokumentenaustausch ist essenziell, um sektorenübergreifende Interoperabilität im deutschen Gesundheitswesen zu gewährleisten. ISiK definiert verbindliche Metadatenstandards für Dokumente in Krankenhäusern. Eine Harmonisierung ermöglicht die reibungslose Integration von ISiK-konformen Dokumenten in MII-Datenintegrationszentren und unterstützt die Umsetzung nationaler Interoperabilitätsziele.

#### Kompatibilität

Das MII KDS Dokument Profil ist als Superset des ISiK Profils konzipiert und deckt alle ISiK-Anforderungen ab. Die wichtigsten Vergleichspunkte sind:

| FHIR-Element      | MII KDS Dokument                                   | ISiK Dokumentenaustausch                | Kompatibilität                        |
|-------------------|----------------------------------------------------|-----------------------------------------|---------------------------------------|
| `status`          | 1..1, Must Support                                 | 1..1, Must Support                      | ✓ Vollständig kompatibel              |
| `type`            | 0..1, Must Support, extensible (KDL/XDS, LOINC, SNOMED CT) | 1..1, Must Support, required (KDL/XDS)  | ✓ MII KDS Dokument unterstützt ISiK-Codes          |
| `category`        | 0..*, Must Support, extensible                     | 1..1, Must Support, derived from KDL    | ✓ MII KDS Dokument unterstützt ISiK-Ableitung      |
| `subject`         | 1..1, Must Support                                 | 1..1, Must Support                      | ✓ Vollständig kompatibel              |
| `content`         | 1..*, Must Support                                 | 1..1, Must Support                      | ✓ MII KDS Dokument erlaubt mehrere Inhalte         |
| `securityLabel`   | 0..*, extensible                                  | 1..*, required                          | ⚠️ MII KDS Dokument macht Sicherheitslabels optional|
| `context`         | 0..1                                               | 1..1, Must Support                      | ⚠️ MII KDS Dokument macht Kontext optional         |

Anmerkungen:

- **Must Support:** Alle ISiK Must Support Felder sind auch im MII KDS Dokument-Profil als Must Support gekennzeichnet.
- **Terminologie:** MII unterstützt alle ISiK-verpflichtenden Codes und erweitert diese um internationale Codesysteme.

#### Einschränkungen

- **Sicherheitslabels:** Im MII KDS Dokument optional, in ISiK verpflichtend. Bei Transformation von MII nach ISiK müssen ggf. Sicherheitslabels ergänzt werden.
- **Kontext:** ISiK verlangt Kontextinformationen, MII KDS Dokument lässt diese optional. Für ISiK-Kompatibilität müssen Kontextdaten ergänzt werden.
- **Kategorie:** Die ISiK-spezifische Ableitung der Kategorie aus KDL muss bei Transformation beachtet werden.

### KBV MIO Basis

#### Motivation

Die Kompatibilität mit dem KBV MIO Basis Profil ist entscheidend für die Integration von Dokumenten aus der ambulanten Versorgung und von Medizinischen Informationsobjekten (MIOs) in die MII-Infrastruktur. Eine Harmonisierung ermöglicht den sektorenübergreifenden Austausch zwischen ambulanter und stationärer Versorgung.

#### Kompatibilität

Beide Profile sind auf Flexibilität und Interoperabilität ausgelegt:

| FHIR-Element      | MII KDS Dokument                                   | KBV MIO Basis                           | Kompatibilität                        |
|-------------------|----------------------------------------------------|-----------------------------------------|---------------------------------------|
| `status`          | 1..1, Must Support                                 | 1..1                                    | ✓ Vollständig kompatibel              |
| `type`            | 0..1, Must Support, extensible                     | 0..1, preferred (LOINC, SNOMED CT, XDS) | ✓ Beide unterstützen gleiche Codes     |
| `category`        | 0..*, Must Support, extensible                     | 0..*, example binding                   | ✓ Vollständig kompatibel              |
| `subject`         | 1..1, Must Support                                 | 0..1                                    | ✓ MII KDS Dokument spezifiziert Pflichtfeld        |
| `content`         | 1..*, Must Support                                 | 1..*                                    | ✓ Vollständig kompatibel              |
| `author`          | 0..*, Must Support                                 | 0..*                                    | ✓ Vollständig kompatibel              |
| `custodian`       | 0..1                                               | 0..1                                    | ✓ Vollständig kompatibel              |

Anmerkungen:

- **Terminologie:** Beide Profile unterstützen LOINC, SNOMED CT und XDS.
- **Kardinalitäten:** Weitgehend kompatibel, das MII KDS Dokument-Profil ist bei `subject` restriktiver.

#### Einschränkungen

- **Subject:** MII KDS Dokument verlangt eine Patientenreferenz, KBV MIO Basis lässt diese optional. Bei Transformation von KBV MIO Basis nach MII KDS Dokument muss ggf. eine Referenz ergänzt werden.
- **Must Support:** MII KDS Dokument kennzeichnet mehr Felder als Must Support.
- **Weitere Einschränkungen:** Keine nennenswerten Inkompatibilitäten.

### IHE MHD

#### Motivation

Die Kompatibilität mit IHE MHD ermöglicht internationale Interoperabilität und die Anbindung an weltweit etablierte Standards für den Dokumentenaustausch. IHE MHD ist Referenz für FHIR-basierten Dokumentenaustausch in vielen Ländern.

#### Kompatibilität

Das MII KDS Dokument-Profil ist weitgehend mit dem IHE MHD Comprehensive-Profil kompatibel, mit Unterschieden in der Restriktivität:

| FHIR-Element      | MII KDS Dokument                                   | IHE MHD Comprehensive                   | Kompatibilität                        |
|-------------------|----------------------------------------------------|-----------------------------------------|---------------------------------------|
| `masterIdentifier`| 0..1                                               | 1..1                                    | ⚠️ IHE MHD fordert Master Identifier       |
| `status`          | 1..1, Must Support                                 | 1..1                                    | ✓ Vollständig kompatibel              |
| `type`            | 0..1, Must Support, extensible                     | 1..1, preferred (LOINC)                 | ⚠️ IHE MHD fordert Dokumenttyp             |
| `category`        | 0..*, Must Support, extensible                     | 1..1, example binding                   | ⚠️ IHE MHD fordert Kategorie               |
| `subject`         | 1..1, Must Support                                 | 1..1                                    | ✓ Vollständig kompatibel              |
| `securityLabel`   | 0..*, extensible                                  | 1..*, extensible                        | ⚠️ IHE MHD fordert Sicherheitslabels       |
| `content.attachment`| 1..1, Must Support                              | 1..1                                    | ✓ Vollständig kompatibel              |
| `context`         | 0..1                                               | 1..1                                    | ⚠️ IHE MHD fordert Kontext                 |
| `content.format`  | 0..1                                               | 1..1, preferred (IHE Format Codes)      | ⚠️ IHE MHD fordert Format-Code             |

Anmerkungen:

- **Terminologie:** Beide Profile unterstützen LOINC und internationale Codesysteme.
- **Metadaten:** IHE MHD verlangt umfangreichere Metadaten als MII KDS Dokument.

#### Einschränkungen

- **Pflichtfelder:** IHE MHD fordert mehrere Felder als verpflichtend, die im MII KDS Dokument optional sind (`masterIdentifier`, `type`, `category`, `securityLabel`, `context`, `content.format`).
- **Master Identifier:** Für IHE MHD muss ein eindeutiger Master Identifier vergeben werden.
- **Format Codes:** IHE MHD verlangt Format Codes, die ggf. ergänzt werden müssen.
- **Kontext:** Kontextinformationen müssen für IHE MHD bereitgestellt werden.
- **Sicherheitslabel:** Mindestens ein Sicherheitslabel ist für IHE MHD erforderlich.
- **Transformationshinweis:** Für die Transformation von MII KDS Dokument nach IHE MHD sollten fehlende Pflichtfelder ergänzt werden. Die umgekehrte Transformation ist ohne Informationsverlust möglich.

## Zusammenfassung

Das MII KDS Dokument-Profil ist als flexibles Superset konzipiert und ermöglicht die Harmonisierung von Dokumentenmetadaten aus verschiedenen Quellen. Die Kompatibilität ist mit ISiK und KBV MIO Basis sehr hoch, mit IHE MHD bestehen Anpassungsbedarfe bei Pflichtfeldern und Metadaten. Damit ist eine sektorenübergreifende und internationale Interoperabilität sichergestellt.

**Kompatibilitätsübersicht:**

| Zielprofil              | Kompatibilität        | Haupteinschränkungen                           |
|-------------------------|-----------------------|-------------------------------------------------|
| ISiK Dokumentenaustausch| Sehr hoch             | Sicherheitslabel, Kontext, Kategorie            |
| KBV MIO Basis           | Nahezu vollständig    | Subject-Referenz, Must Support Unterschiede     |
| IHE MHD                 | Hoch, mit Anpassungen | Pflichtfelder (z.B. masterIdentifier, Kontext)  |

---

<!-- DERIVED:bridge source=MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md gate=B -->
> **Bei der Migration verfasst — vor dem Release prüfen.**
> Die hier verglichenen Elementdefinitionen sind im
> [Dokument-Profil](StructureDefinition-mii-pr-dokument-dokument.html) normativ
> festgelegt; eine Übersicht aller Profile des Moduls steht unter
> [Profile](profiles.html). Den fachlichen Kontext dieser Gegenüberstellung sowie
> die Liste der berücksichtigten externen Standards führt die Seite
> [Hinweise für Implementierende](implementer-guidance.html).
{: .ig-highlight .ig-highlight-blue}
