# Logische Modelle - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Logische Modelle**

## Logische Modelle

Die logischen Datenmodelle des Moduls **Dokument** beschreiben den fachlichen Datensatz unabhängig von der konkreten FHIR-Repräsentation.

Die offiziell beschlossene Version des Informationsmodells befinden sich auf [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet:

[MII LM Dokument](StructureDefinition-mii-lm-dokument.md)

### Elementverzeichnis

> **Bei der Migration verfasst — vor dem Release prüfen.** Das folgende Verzeichnis listet jedes Element des logischen Modells mit Pfad und Beschreibung.

Guidance on how to interpret the contents of this table can be found[here](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

**Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.**

### Mapping auf die FHIR-Ressource

> **Bei der Migration verfasst — vor dem Release prüfen.** Der IG-Publisher rendert dieses Element-zu-Ressource-Mapping auf der Artefaktseite des Logical Models nicht (der Reiter „Mappings“ bleibt dort leer). Die folgende Tabelle listet es deshalb hier auf.

| | | |
| :--- | :--- | :--- |
| Dokument | DocumentReference | Klinisches Dokument inkl. Metadaten, Inhalt, Erzeugungskontext und Beziehungen |
| Dokument.Masteridentifikator | DocumentReference.masterIdentifier | Versionsspezifische eindeutige Kennung, die dem Dokument durch die Dokumentenquelle zugewiesen wurde |
| Dokument.Businessidentifikator | DocumentReference.identifier | Andere versionsunabhängige Kennung, die dem Dokument (z.B. durch weitere dokumentenverarbeitende Systeme) zugewiesen wurde |
| Dokument.Dokumentenreferenzstatus | DocumentReference.status | Status dieser Dokumentenreferenz (aktuell, überholt oder irrtümlich eingegeben) |
| Dokument.Dokumentenstatus | DocumentReference.docStatus | Status des zugrunde liegenden Dokuments (vorläufig, final, geändert oder irrtümlich eingegeben) |
| Dokument.Dokumententyp | DocumentReference.type | Art des Dokuments auf das verwiesen wird (z.B. Anamnese und Untersuchung, Entlassungsbericht, Verlaufsbericht) |
| Dokument.Dokumentenkategorie | DocumentReference.category | Übergeordnete Kategorie des Dokuments auf das verwiesen wird (z.B. Arztberichte oder Arztdokumentation) |
| Dokument.Patient | DocumentReference.subject | Patient auf den sich das verwiesene Dokument bezieht |
| Dokument.Beschreibung | DocumentReference.description | Menschenlesbare Beschreibung zum verwiesenen Dokuments |
| Dokument.Sicherheitsstufe | DocumentReference.securityLabel | Grad der Vertraulichkeit/Sicherheit des verwiesenen Dokuments (z. B. uneingeschränkt, gering, mittel, normal oder eingeschränkt) |
| Dokument.Dokumentenbeziehung | DocumentReference.relatesTo | Beziehungen des verwiesenen Dokuments zu anderen Dokumenten |
| Dokument.Dokumentenbeziehung.Beziehungstyp | DocumentReference.relatesTo.code | Beziehung zu anderen Dokumenten |
| Dokument.Dokumentenbeziehung.Beziehungsreferenz | DocumentReference.relatesTo.target | Ziel der Dokumentenbeziehung |
| Dokument.Anhang | DocumentReference.content | Dokument (Base64-kodierte Daten) oder Verweis (URL) mit relevanten Metadaten zum Anhang |
| Dokument.Anhang.Sprache | DocumentReference.attachment.language | Verwendete Sprache in dem Dokument |
| Dokument.Anhang.Erstellungsdatum | DocumentReference.attachment.creation | Datum der Erstellung des Dokumentes |
| Dokument.Anhang.Daten | DocumentReference.attachment.data | Dokument als Binärdaten |
| Dokument.Anhang.DokumentenUrl | DocumentReference.attachment.url | Verweis auf den (lokalen) Ablageort des Dokuments |
| Dokument.Anhang.Dokumentenformat | DocumentReference.attachment.contentType | MIME-Typ des Dokumenteninhalts |
| Dokument.Kontext | DocumentReference.context | Klinischer Kontext, in welchem das Dokument erzeugt wurde |
| Dokument.Kontext.Gesundheitseinrichtungskontakt | DocumentReference.context.encounter | Kontakt zur Gesundheitseinrichtung oder die Art der Versorgung, die mit dem Dokumenteninhalt assoziiert ist |
| Dokument.Kontext.Vorgang | DocumentReference.context.event | Handlungen oder Prozeduren, die im Kontext dokumentiert wurden |
| Dokument.Kontext.Fachgebiet | DocumentReference.context.practiceSetting | Klinisches Fachgebiet, in dem Dokumenteninhalt erstellt wurde |
| Dokument.Kontext.Dokumentationszeitraum | DocumentReference.context.period | Zeitraum, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde |
| Dokument.Kontext.Einrichtungsart | DocumentReference.context.facilityType | Art der Einrichtung, in der die Handlung oder Prozedur am Patienten erfolgte |

