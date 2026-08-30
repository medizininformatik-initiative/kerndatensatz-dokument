<!-- TODO:REVIEW machine-translated from the German default page -->
<!-- markdownlint-disable MD041 -->
### Logical Models

The logical data models of the **Dokument** module describe the domain dataset independently of its concrete FHIR representation.

#### Dataset description

The officially adopted version of the information model is located on [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01). To unify the representation, the information model was additionally mapped as a FHIR Logical Model:

[MII LM Dokument](StructureDefinition-mii-lm-dokument.html)

#### Element dictionary

<!-- DERIVED:bridge source=MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze.page.md gate=B -->
> **Written during migration — review before release.**
> The following dictionary lists every element of the logical model with its path and description.
{: .ig-highlight .ig-highlight-blue}

{% include StructureDefinition-mii-lm-dokument-dict.xhtml %}

*Note that the Logical Model targets solely the representation of the data elements and their descriptions. The data types and cardinalities used are not to be regarded as mandatory. These are ultimately defined by the FHIR profiles. For every element within the Logical Model there is a 1:1 mapping onto an element of a concrete FHIR resource.*

#### Mapping to the FHIR resource

<!-- DERIVED:bridge source=MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze.page.md gate=B -->
> **Written during migration — review before release.**
> The IG Publisher does not render this element-to-resource mapping on the Logical Model's artefact page (the "Mappings" tab stays empty there). The following table therefore lists it here.
{: .ig-highlight .ig-highlight-blue}

<!-- TODO:REVIEW: In the Simplifier source, this mapping table was disabled
     as a comment (two alternative FQL variants). The FQL crosswalk names
     exactly this case — a logical model's dataset-to-FHIR mapping — as the
     canonical reason for a generated static table. This page reactivates
     the content accordingly as a generated table; please confirm that
     including it is intended. -->

<!-- GENERATED TABLE: mechanically extracted at migration time from the built
     fsh-generated/resources/StructureDefinition-mii-lm-dokument.json
     (differential.element[].path, .definition,
     .mapping[identity=mii-map-dokument].map). Source of truth:
     input/fsh/logical-model/mii-lm-dokument.fsh and
     input/fsh/logical-model/mii-map-dokument.fsh — regenerate this table
     whenever either file changes. -->

| Logical dataset element | FHIR mapping | Description |
| --- | --- | --- |
| Dokument | DocumentReference | Clinical document including metadata, content, creation context and relationships |
| Dokument.<br>Masteridentifikator | DocumentReference.<br>masterIdentifier | Version-specific unique identifier assigned to the document by the document source |
| Dokument.<br>Businessidentifikator | DocumentReference.<br>identifier | Other version-independent identifier assigned to the document (e.g. by further document-processing systems) |
| Dokument.<br>Dokumentenreferenzstatus | DocumentReference.<br>status | Status of this document reference (current, superseded, or entered in error) |
| Dokument.<br>Dokumentenstatus | DocumentReference.<br>docStatus | Status of the underlying document (preliminary, final, amended, or entered in error) |
| Dokument.<br>Dokumententyp | DocumentReference.<br>type | Type of the referenced document (e.g. history and examination, discharge letter, progress report) |
| Dokument.<br>Dokumentenkategorie | DocumentReference.<br>category | Higher-level category of the referenced document (e.g. physician letters or physician documentation) |
| Dokument.<br>Patient | DocumentReference.<br>subject | Patient to whom the referenced document relates |
| Dokument.<br>Beschreibung | DocumentReference.<br>description | Human-readable description of the referenced document |
| Dokument.<br>Sicherheitsstufe | DocumentReference.<br>securityLabel | Degree of confidentiality/security of the referenced document (e.g. unrestricted, low, moderate, normal, or restricted) |
| Dokument.<br>Dokumentenbeziehung | DocumentReference.<br>relatesTo | Relationships of the referenced document to other documents |
| Dokument.<br>Dokumentenbeziehung.<br>Beziehungstyp | DocumentReference.<br>relatesTo.<br>code | Relationship to other documents |
| Dokument.<br>Dokumentenbeziehung.<br>Beziehungsreferenz | DocumentReference.<br>relatesTo.<br>target | Target of the document relationship |
| Dokument.<br>Anhang | DocumentReference.<br>content | Document (base64-encoded data) or reference (URL) with relevant metadata for the attachment |
| Dokument.<br>Anhang.<br>Sprache | DocumentReference.<br>attachment.<br>language | Language used in the document |
| Dokument.<br>Anhang.<br>Erstellungsdatum | DocumentReference.<br>attachment.<br>creation | Date the document was created |
| Dokument.<br>Anhang.<br>Daten | DocumentReference.<br>attachment.<br>data | Document as binary data |
| Dokument.<br>Anhang.<br>DokumentenUrl | DocumentReference.<br>attachment.<br>url | Reference to the (local) storage location of the document |
| Dokument.<br>Anhang.<br>Dokumentenformat | DocumentReference.<br>attachment.<br>contentType | MIME type of the document content |
| Dokument.<br>Kontext | DocumentReference.<br>context | Clinical context in which the document was created |
| Dokument.<br>Kontext.<br>Gesundheitseinrichtungskontakt | DocumentReference.<br>context.<br>encounter | Contact with the healthcare facility, or the type of care associated with the document content |
| Dokument.<br>Kontext.<br>Vorgang | DocumentReference.<br>context.<br>event | Actions or procedures documented in the context |
| Dokument.<br>Kontext.<br>Fachgebiet | DocumentReference.<br>context.<br>practiceSetting | Clinical specialty in which the document content was created |
| Dokument.<br>Kontext.<br>Dokumentationszeitraum | DocumentReference.<br>context.<br>period | Period during which the action or procedure described in the document was performed |
| Dokument.<br>Kontext.<br>Einrichtungsart | DocumentReference.<br>context.<br>facilityType | Type of facility in which the action or procedure was performed on the patient |
