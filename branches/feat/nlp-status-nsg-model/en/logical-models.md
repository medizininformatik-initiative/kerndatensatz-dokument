# Logical Models - MII IG Dokument v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* **Logical Models**

## Logical Models

The logical data models of the **Dokument** module describe the domain dataset independently of its concrete FHIR representation.

The information model decided by the MII National Steering Committee (NSG) is shown on the [UML Diagrams](uml-diagrams.md) page; it is binding for this module. The logical model represents it as a FHIR Logical Model, and the FHIR profile implements it:

[MII LM Dokument](StructureDefinition-mii-lm-dokument.md)

### Element dictionary

The following dictionary lists every element of the logical model with its path and description.

Guidance on how to interpret the contents of this table can be found[here](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

The logical model takes over the data elements of the information model with their data types and cardinalities. The abstract **Anhang** (attachment) of the information model is either **Binärdaten** (binary data) or **Verweis** (reference); the logical model represents this as exactly one of `Daten` and `DokumentenUrl` (constraint `mii-iv-dokument-anhang`). For every element of the logical model there is a 1:1 mapping onto an element of the FHIR resource (see below). The dataset of the module is also recorded in [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01); where it differs from the information model, the information model applies.

### Mapping to the FHIR resource

The IG Publisher does not render this element-to-resource mapping on the Logical Model's artifact page (the "Mappings" tab stays empty there). The following table therefore lists it here.

| | | |
| :--- | :--- | :--- |
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

### Where the FHIR profile differs from the information model

The FHIR profile is currently more open than the information model at the following elements (see also the [Compatibility](kompatibilitaet.md) page):

| | |
| :--- | :--- |
| **Businessidentifikator**0..1 | `identifier`0..* |
| **Patient**refers to Patient or PatientPseudonymisiert of the Person module (base module) | `subject`also allows any`Patient` |
| **Gesundheitseinrichtungskontakt**refers to an encounter of the Fall module (base module) | `context.encounter`also allows any`Encounter` |
| **Beziehungsreferenz**refers to a**Dokument** | `relatesTo.target`allows any`DocumentReference` |
| no counterpart;**Dokumentenformat**is the MIME type | `content.format`is an additional Must Support element |
| **NLP Processing Status**0..**, one *Status**each | several statuses may also be given as several codings of one`nlp-processing-status`extension (see[Several statuses](StructureDefinition-mii-ex-dokument-nlp-processing-status.md#several-statuses)) |

