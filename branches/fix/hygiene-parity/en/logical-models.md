# Logical Models - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Logical Models**

## Logical Models

 This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.html). 

### Logical Models

The logical data models of the **Dokument** module describe the domain dataset independently of its concrete FHIR representation.

#### Dataset description

The officially adopted version of the information model is located on [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01). To unify the representation, the information model was additionally mapped as a FHIR Logical Model:

[MII LM Dokument](StructureDefinition-mii-lm-dokument.md)

#### Element dictionary

> **Written during migration — review before release.** The following dictionary lists every element of the logical model with its path and description.

Guidance on how to interpret the contents of this table can be found[here](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

**Note that the Logical Model targets solely the representation of the data elements and their descriptions. The data types and cardinalities used are not to be regarded as mandatory. These are ultimately defined by the FHIR profiles. For every element within the Logical Model there is a 1:1 mapping onto an element of a concrete FHIR resource.**

#### Mapping to the FHIR resource

> **Written during migration — review before release.** The IG Publisher does not render this element-to-resource mapping on the Logical Model's artefact page (the "Mappings" tab stays empty there). The following table therefore lists it here.

| | | |
| :--- | :--- | :--- |
| Dokument | DocumentReference | Clinical document including metadata, content, creation context and relationships |
| Dokument.Masteridentifikator | DocumentReference.masterIdentifier | Version-specific unique identifier assigned to the document by the document source |
| Dokument.Businessidentifikator | DocumentReference.identifier | Other version-independent identifier assigned to the document (e.g. by further document-processing systems) |
| Dokument.Dokumentenreferenzstatus | DocumentReference.status | Status of this document reference (current, superseded, or entered in error) |
| Dokument.Dokumentenstatus | DocumentReference.docStatus | Status of the underlying document (preliminary, final, amended, or entered in error) |
| Dokument.Dokumententyp | DocumentReference.type | Type of the referenced document (e.g. history and examination, discharge letter, progress report) |
| Dokument.Dokumentenkategorie | DocumentReference.category | Higher-level category of the referenced document (e.g. physician letters or physician documentation) |
| Dokument.Patient | DocumentReference.subject | Patient to whom the referenced document relates |
| Dokument.Beschreibung | DocumentReference.description | Human-readable description of the referenced document |
| Dokument.Sicherheitsstufe | DocumentReference.securityLabel | Degree of confidentiality/security of the referenced document (e.g. unrestricted, low, moderate, normal, or restricted) |
| Dokument.Dokumentenbeziehung | DocumentReference.relatesTo | Relationships of the referenced document to other documents |
| Dokument.Dokumentenbeziehung.Beziehungstyp | DocumentReference.relatesTo.code | Relationship to other documents |
| Dokument.Dokumentenbeziehung.Beziehungsreferenz | DocumentReference.relatesTo.target | Target of the document relationship |
| Dokument.Anhang | DocumentReference.content | Document (base64-encoded data) or reference (URL) with relevant metadata for the attachment |
| Dokument.Anhang.Sprache | DocumentReference.attachment.language | Language used in the document |
| Dokument.Anhang.Erstellungsdatum | DocumentReference.attachment.creation | Date the document was created |
| Dokument.Anhang.Daten | DocumentReference.attachment.data | Document as binary data |
| Dokument.Anhang.DokumentenUrl | DocumentReference.attachment.url | Reference to the (local) storage location of the document |
| Dokument.Anhang.Dokumentenformat | DocumentReference.attachment.contentType | MIME type of the document content |
| Dokument.Kontext | DocumentReference.context | Clinical context in which the document was created |
| Dokument.Kontext.Gesundheitseinrichtungskontakt | DocumentReference.context.encounter | Contact with the healthcare facility, or the type of care associated with the document content |
| Dokument.Kontext.Vorgang | DocumentReference.context.event | Actions or procedures documented in the context |
| Dokument.Kontext.Fachgebiet | DocumentReference.context.practiceSetting | Clinical specialty in which the document content was created |
| Dokument.Kontext.Dokumentationszeitraum | DocumentReference.context.period | Period during which the action or procedure described in the document was performed |
| Dokument.Kontext.Einrichtungsart | DocumentReference.context.facilityType | Type of facility in which the action or procedure was performed on the patient |

