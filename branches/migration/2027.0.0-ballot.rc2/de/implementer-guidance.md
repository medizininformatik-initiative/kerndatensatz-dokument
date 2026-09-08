# Anleitung für Implementierende - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Anleitung**](guidance.md)
* **Anleitung für Implementierende**

## Anleitung für Implementierende

Fachlicher Kontext des Moduls **Dokument** für DIZ-Implementierende: die Bezüge zu den übrigen MII KDS-Modulen und die externen Standards, zu denen das Modul kompatibel gehalten wird.

### Kontext

Medizinische Dokumente sind entscheidend für eine umfassende Patientenversorgung, die Nachvollziehbarkeit von Diagnosen und Behandlungen sowie die Einhaltung rechtlicher und wissenschaftlicher Standards. Sie spielen auch eine wichtige Rolle bei der Abrechnung medizinischer Leistungen und unterstützen eine effiziente Ressourcenplanung im Gesundheitssystem.

Sowohl die technischen als auch inhaltlichen Anforderungen der Dokumentation im Gesundheitswesen unterliegen einer hohen Dynamik. In der Folge haben sich zwischen den Häusern große Unterschiede in Bezug auf die Informationsstrukturen entwickelt. Insbesondere die Archivierung und Auffindbarkeit gehen mit einer hohen Diversität in Bezug auf Metadaten einher.

Im Kontext der MII-Kerndatensätze wird mit dem MII KDS-Modul Dokument ein abgestimmtes, nationales Konzept eingeführt, welches sich an gängigen CodeSystemen und ValueSets orientiert und einen interoperablen Umgang mit medizinischen Dokumenten orchestriert.

### Beziehung zu anderen MII KDS-Modulen

Dieses MII KDS-Modul greift bei bestimmten Datenelementen auf existierende Vorarbeiten aus anderen MII KDS-Modulen zurück, um eine Harmonisierung zu erzielen und die Kompatibilität zu erhöhen. Im Nachfolgenden werden die Abhängigkeiten zu diesen Vorarbeiten beschrieben.

| | | |
| :--- | :--- | :--- |
| [Person (im Basismodul)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base) | Die Mehrheit medizinischer Dokumentation bezieht sich auf Patient:innen. Hierfür wird das MII KDS-Modul Person genutzt um die Verbindung von Patient:in zu Dokument zu referenzieren. In manchen Fällen liegt der Fokus der Dokumentation auf medizinischen Objekten, Procedere oder Verwaltungsakten. Nur aus diesem Grund ist die Referenz auf das MII KDS-Modul Person lediglich als optional gekennzeichnet (`subject`0..1, Must Support). | Ja (sofern ein Patientenbezug besteht) |
| [Fall (im Basismodul)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base) | Soweit das referenzierte Dokument einen Bezug zu einem Kontakt mit einer Gesundheitseinrichtung herstellt, sollte direkt auf die am besten geeignete Kontaktebene des MII KDS-Moduls Fall verwiesen werden. Diese Ebene ist typisch vom Dokumenttyp abhängig. | Nein |

### Nutzung durch andere MII KDS-Module

Die Grundlage des MII KDS-Moduls bildet die [FHIR DocumentReference](https://www.hl7.org/fhir/R4/documentreference.html). FHIR DocumentReferences werden bereits in anderen MII KDS-Modulen verwendet. Wir empfehlen die Umstellung auf das hier spezifizierte MII KDS-Modul.

Für den Fall, dass die spezifizierten Dokumentkategorien und -typen die Anforderungen einer Domäne nicht adäquat abbilden können, ist die Nutzung weiterer Domänen-spezifischer CodeSysteme und ValueSets erlaubt.

| | | |
| :--- | :--- | :--- |
| [Consent](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.consent) | Das MII KDS-Modul referenziert Einwilligungsdokumente in z.B. gescannter Form. Ein Fall-Bezug ist denkbar. | Nein |
| [Studie](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.studie) | Das MII KDS-Modul referenziert Studienunterlagen. Dokumente können auch ohne Patientenbezug vorliegen. | Nein |
| [Bildgebung](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.bildgebung) | Das MII KDS-Modul referenziert Dokumente als Ersatz für strukturierte Diagnostische Berichte. | Nein |
| [Molgen Befund](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen) | Das MII KDS-Modul referenziert eine Reihe von Dokumenttypen, die jedoch an existierende Standards gebunden sind. | Nein |
| [Meta](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta) | Das MII KDS-Modul erweitert zahlreiche Profile um Definitionen von Suchparametern - so auch zum MII KDS-Modul Dokument. | Nein |

### Referenzierte Standards

Das MII KDS-Modul Dokument ist darauf ausgelegt, dass Instanzen folgender FHIR-basierten Standards gleichzeitig kompatibel sein können:

* [KBV Basis-Profile mit Medizinischen Informationsobjekten (MIO)](https://simplifier.net/base1x0) – Profil zum Verweis auf externe oder angehängte Dokumente
* [Gematik Informationstechnische Systeme im Krankenhaus (ISiK) Dokumentenaustausch, Stufe 6](https://simplifier.net/packages/de.gematik.isik/6.0.0) - Profil zur Abbildung erforderlicher Metadaten für den Dokumentenaustausch
* [IHE Mobile access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD) - Profil zum Austausch von Gesundheitsdokumenten über mobile Anwendungen, mobile Geräte oder anderen Systemen, die ressourcen- und plattformbeschränkt sind

Die vorliegende Spezifikation ist an der FHIR-Kernspezifikation zur [DocumentReference-Ressource](https://www.hl7.org/fhir/R4/documentreference.html#resource) orientiert. Die bestehenden der [KBV Basis-Profile](https://simplifier.net/base1x0), des [Gematik ISiK](https://simplifier.net/packages/de.gematik.isik/6.0.0) und von [IHE MHD](https://profiles.ihe.net/ITI/MHD) sind bei der Modellierung bzgl. einer Widerspruchsfreiheit (siehe Seite [Kompatibilität](kompatibilitaet.md)) berücksichtigt worden. Wichtig ist hierbei zu beachten, dass eine Kompatibilität aus der klinischen Routine zu der Referenz Dokument gewährleistet werden kann, aber keine Rückwärtskompatibilität in die Routine vorgesehen ist. Siehe auch das Paketabhängigkeitsdiagramm:

![](Paketabhaengigkeiten.svg)

Die im Diagramm gezeigten Pakete `de.medizininformatikinitiative.kerndatensatz.person` und `de.medizininformatikinitiative.kerndatensatz.fall` werden seit dem KDS-Release 2026 innerhalb des Basismoduls (`de.medizininformatikinitiative.kerndatensatz.base`) ausgeliefert; die Canonical-URLs der referenzierten Profile sind unverändert. Das Diagramm zeigt den von der NSG freigegebenen Stand.

Dadurch ist es möglich Ressourcen so zu attributieren, dass sie gleichzeitig MII KDS als auch ISiK bzw. IHE valide sind. Auch sind ISiK und IHE Module prinzipiell kompatibel, jedoch empfehlen wir in der Nutzung sowohl die Angabe des `type` (aus KDL /ISiK) und `category` (aus IHE), die keines der beides Profile ISiK, IHE gleichzeitig anbietet.

Dabei wurde ein Abgleich aller Datenelemente sowie der verwendeten Terminologie durchgeführt und im [Dokument-Profil](StructureDefinition-mii-pr-dokument-dokument.md) abgebildet. Die Kardinalitäten sind offen gestaltet, sodass in dieser Hinsicht keine (weiteren oder neuen) Einschränkungen eingeführt wurden. Die in den abgeglichenen Profilen verwendete Terminologie wurde im [Dokument-Profil](StructureDefinition-mii-pr-dokument-dokument.md) einbezogen und abgebildet.

Personenbezogene Dokumente werden einer Person (Profile Patient bzw. PatientPseudonymisiert des Basismoduls) zugeordnet (`subject`, 0..1). De-Identifizierte Dokumente sind über die Sicherheitsstufe (`securityLabel`) entsprechend markiert. Die datenhaltende Stelle ist hier verantwortlich, nur auf entsprechende anonymisierte bzw. pseudonymisierte Varianten anderer MII Module zu verweisen. Wo immer möglich wird ein Fallzusammenhang (MII KDS-Modul Fall) definiert – nach Möglichkeit auf die relevanteste Ebene des Fallstufenmodells (`context.encounter`). Im Paketabhängigkeitsdiagramm (oben) sind die Zusammenhänge zwischen den MII Modulen grün dargestellt.

Wir empfehlen den auch in ISiK verwendeten [DVMD KDL-Standard](https://simplifier.net/kdl) für die präzise Typbeschreibung (`type`) sowie die [IHE XDS Class-Codes](https://art-decor.org/art-decor/decor-valuesets--ihede-?id=1.2.276.0.76.11.32&effectiveDate=2018-07-13T13:23:15&language=de-DE) für die gröbere Dokumentkategorie (`category`) zu verwenden. [IHE XDS Type- und Class-Codes können eindeutig aus KDL hergeleitet werden.](https://simplifier.net/kdl/~resources?category=ConceptMap) Weitere Kodierungen wie Hauscodes, SNOMED CT oder LOINC sind optional möglich.

-------

Die feldweise Gegenüberstellung zu ISiK Dokumentenaustausch, KBV MIO Basis und IHE MHD steht auf der Seite [Kompatibilität](kompatibilitaet.md); die technischen Artefakte des Moduls finden sich unter [Profile](profiles.md). Die KDS-weiten Konformitätsanforderungen (Anforderungssprache, Must-Support, Umgang mit fehlenden Daten) pflegt zentral das [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); sie gelten für dieses Modul unverändert.

