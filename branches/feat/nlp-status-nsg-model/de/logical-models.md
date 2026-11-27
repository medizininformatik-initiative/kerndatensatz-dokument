# Logische Modelle - MII IG Dokument v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* **Logische Modelle**

## Logische Modelle

Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md).

Die logischen Datenmodelle des Moduls **Dokument** beschreiben den fachlichen Datensatz unabhängig von der konkreten FHIR-Repräsentation.

Das vom Nationalen Steuerungsgremium (NSG) der MII beschlossene Informationsmodell steht auf der Seite [UML-Diagramme](uml-diagrams.md); es ist für dieses Modul maßgeblich. Das Logical Model bildet es als FHIR Logical Model ab, das FHIR-Profil setzt es um:

[MII LM Dokument](StructureDefinition-mii-lm-dokument.md)

### Elementverzeichnis

Das folgende Verzeichnis listet jedes Element des logischen Modells mit Pfad und Beschreibung.

Guidance on how to interpret the contents of this table can be found[here](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

Das Logical Model übernimmt die Datenelemente des Informationsmodells mit ihren Datentypen und Kardinalitäten. Der abstrakte **Anhang** des Informationsmodells ist entweder **Binärdaten** oder **Verweis**; das Logical Model bildet das als genau eines von `Daten` und `DokumentenUrl` ab (Constraint `mii-iv-dokument-anhang`). Für jedes Element des Logical Models existiert ein 1:1 Mapping auf ein Element der FHIR-Ressource (siehe unten). Der Datensatz des Moduls ist außerdem in [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01) hinterlegt; wo er vom Informationsmodell abweicht, gilt das Informationsmodell.

### Mapping auf die FHIR-Ressource

Der IG-Publisher rendert dieses Element-zu-Ressource-Mapping auf der Artefaktseite des Logical Models nicht (der Reiter „Mappings“ bleibt dort leer). Die folgende Tabelle listet es deshalb hier auf.

| | | |
| :--- | :--- | :--- |
| Logischer Datensatz | FHIR-Mapping | Beschreibung |
| Dokument | DocumentReference | Klinisches Dokument inkl. Metadaten, Inhalt, Erzeugungskontext und Beziehungen |
| Dokument.Erweiterung | DocumentReference.extension | Zusätzliche Angaben zum Dokument, die über die Basisressource hinausgehen, z. B. der NLP-Verarbeitungsstatus |
| Dokument.Masteridentifikator | DocumentReference.masterIdentifier | Versionsspezifische eindeutige Kennung, die dem Dokument durch die Dokumentenquelle zugewiesen wurde |
| Dokument.Businessidentifikator | DocumentReference.identifier | Andere versionsunabhängige Kennung, die dem Dokument (z.B. durch weitere dokumentenverarbeitende Systeme) zugewiesen wurde |
| Dokument.Dokumentenreferenzstatus | DocumentReference.status | Status dieser Dokumentenreferenz (aktuell, überholt oder irrtümlich eingegeben) |
| Dokument.Dokumentenstatus | DocumentReference.docStatus | Status des zugrunde liegenden Dokuments (vorläufig, final, geändert oder irrtümlich eingegeben) |
| Dokument.Dokumententyp | DocumentReference.type | Art des Dokuments auf das verwiesen wird (z.B. Anamnese und Untersuchung, Entlassungsbericht, Verlaufsbericht) |
| Dokument.Dokumentenkategorie | DocumentReference.category | Übergeordnete Kategorie des Dokuments auf das verwiesen wird (z.B. Arztberichte oder Arztdokumentation) |
| Dokument.Patient | DocumentReference.subject | Patient auf den sich das verwiesene Dokument bezieht |
| Dokument.Beschreibung | DocumentReference.description | Menschenlesbare Beschreibung zum verwiesenen Dokuments |
| Dokument.Sicherheitsstufe | DocumentReference.securityLabel | Grad der Vertraulichkeit/Sicherheit des verwiesenen Dokuments (z. B. uneingeschränkt, gering, mittel, normal oder eingeschränkt) |
| Dokument.Dokumentenbeziehungen | DocumentReference.relatesTo | Beziehungen des verwiesenen Dokuments zu anderen Dokumenten |
| Dokument.Dokumentenbeziehungen.Beziehungstyp | DocumentReference.relatesTo.code | Beziehung zu anderen Dokumenten |
| Dokument.Dokumentenbeziehungen.Beziehungsreferenz | DocumentReference.relatesTo.target | Ziel der Dokumentenbeziehung |
| Dokument.Anhang | DocumentReference.content | Inhalt des Dokuments mit relevanten Metadaten zum Anhang: entweder Binärdaten (Base64-kodierte Daten) oder Verweis (URL); genau eines von Daten und DokumentenUrl ist anzugeben |
| Dokument.Anhang.Sprache | DocumentReference.content.attachment.language | Verwendete Sprache in dem Dokument |
| Dokument.Anhang.Erstellungsdatum | DocumentReference.content.attachment.creation | Datum der Erstellung des Dokumentes |
| Dokument.Anhang.Daten | DocumentReference.content:Binaerdaten.attachment.data | Dokument als Binärdaten (Anhang vom Typ Binärdaten) |
| Dokument.Anhang.DokumentenUrl | DocumentReference.content:Verweis.attachment.url | Verweis auf den (lokalen) Ablageort des Dokuments (Anhang vom Typ Verweis) |
| Dokument.Anhang.Dokumentenformat | DocumentReference.content.attachment.contentType | MIME-Typ des Dokumenteninhalts |
| Dokument.Kontext | DocumentReference.context | Klinischer Kontext, in welchem das Dokument erzeugt wurde |
| Dokument.Kontext.Gesundheitseinrichtungskontakt | DocumentReference.context.encounter | Kontakt zur Gesundheitseinrichtung (Einrichtungs-, Abteilungs- oder Versorgungsstellenkontakt des Moduls Fall), der mit dem Dokumenteninhalt assoziiert ist |
| Dokument.Kontext.Vorgang | DocumentReference.context.event | Handlungen oder Prozeduren, die im Kontext dokumentiert wurden |
| Dokument.Kontext.Fachgebiet | DocumentReference.context.practiceSetting | Klinisches Fachgebiet, in dem Dokumenteninhalt erstellt wurde |
| Dokument.Kontext.Dokumentationszeitraum | DocumentReference.context.period | Zeitraum, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde |
| Dokument.Kontext.Einrichtungsart | DocumentReference.context.facilityType | Art der Einrichtung, in der die Handlung oder Prozedur am Patienten erfolgte |
| Dokument.NlpProcessingStatus | DocumentReference.extension:nlp-processing-status | Erreichter Verarbeitungsstatus des Dokuments in einer NLP-Pipeline; mehrere Angaben beschreiben zusammen den erreichten Verarbeitungsstand |
| Dokument.NlpProcessingStatus.Status | DocumentReference.extension:nlp-processing-status.value[x] | Erreichter Verarbeitungsstatus aus dem CodeSystem MII CS Dokument NLP Processing Status |

### Abweichungen des FHIR-Profils vom Informationsmodell

Das FHIR-Profil ist derzeit an folgenden Elementen offener als das Informationsmodell (siehe auch die Seite [Kompatibilität](kompatibilitaet.md)):

| | |
| :--- | :--- |
| **Businessidentifikator**0..1 | `identifier`0..* |
| **Patient**verweist auf Patient oder PatientPseudonymisiert des Moduls Person (Basismodul) | `subject`erlaubt auch jeden`Patient` |
| **Gesundheitseinrichtungskontakt**verweist auf einen Kontakt des Moduls Fall (Basismodul) | `context.encounter`erlaubt auch jeden`Encounter` |
| **Beziehungsreferenz**verweist auf ein**Dokument** | `relatesTo.target`erlaubt jede`DocumentReference` |
| keine Entsprechung;**Dokumentenformat**ist der MIME-Typ | `content.format`ist ein zusätzliches Must-Support-Element |
| **NLP Processing Status**0..**, je ein *Status** | mehrere Status dürfen auch als mehrere Codings einer`nlp-processing-status`-Extension angegeben werden (siehe[Mehrere Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md#mehrere-status)) |

