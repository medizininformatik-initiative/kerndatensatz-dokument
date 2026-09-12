// ISiK canonical url: https://gematik.de/fhir/isik/StructureDefinition/ISiKDokumentenMetadaten|6.0.0
// KBV MIO canonical url: https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_DocumentReference|1.7.0
// IHE MHD canonical url: https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference|4.2.3

Profile: MII_PR_Dokument_Dokument
Parent: DocumentReference
Id: mii-pr-dokument-dokument
Title: "MII PR Dokument Dokument"
Description: "Klinisches Dokument mit zugehörigen Metadaten"
* insert PR_Header

// ISiK: 1..1, MS | MIO: 0..1 (R4 default) | IHE MHD: 1..1
* masterIdentifier 0..1 MS
* insert Description(masterIdentifier, Versionsspezifische OID des Dokuments, Versionsspezifische OID des Dokuments. Die Angabe ist dringend empfohlen [SHALL].)
* insert DescriptionIntl(masterIdentifier, en, Specific Identifier for this version of the document, Specific Identifier for this version of the document [SHALL].)

// ISiK: 0..*, MS | MIO: 0..* (R4 default) | IHE MHD: 0..*, MS, Slicing entryUUID
* identifier 0..* MS
* insert CommentedDescription(identifier, Weitere Dokumente assoziierte Identifikatoren, Weitere Dokumente assoziierte Identifikatoren. Die Angabe ist optional [MAY]., Z.B. Hausinterne Dokumenten-ID)
* insert CommentedDescriptionIntl(identifier, en, Further document associated Identifiers, Further document associated Identifiers [MAY]., E.g. internal document ID)

// ISiK: 1..1, MS, DocumentReferenceStatus (required) | MIO: 1..1, DocumentReferenceStatus (required) (R4 default) | IHE MHD: 1..1, MHD DocumentReference status codes (required)
* status 1..1 MS
* insert CommentedDescription(status, Zustand des Dokumentenmetadatensatzes, Zustand des Dokumentenmetadatensatzes. Die Angabe ist dringend empfohlen [SHALL]., Typisch: `current`)
* insert CommentedDescriptionIntl(status, en, Status about the condition of the document reference, Status about the condition of the document reference [SHALL]., Typically: `current`)

// ISiK: 0..1, MS, CompositionStatus (required) | MIO: 0..1, CompositionStatus (required) (R4 default) | IHE MHD: 0..0
* docStatus 0..1 MS
* insert CommentedDescription(docStatus, Bearbeitungsstatus des Dokumentes, Bearbeitungsstatus des Dokumentes. Die Angabe ist dringend empfohlen [SHALL]., Typisch: `final`)
* insert CommentedDescriptionIntl(docStatus, en, Status about the referenced document itself, Status about the referenced document itself [SHALL]., Typically: `final`)

// ISiK: 1..1, MS, Slicing KDL/XDS | MIO: 0..1 (R4 default), Slicing XDS | IHE MHD: 1..1, MS, DocumentTypeValueSet (preferred)
* type 0..1 MS
* insert CommentedDescription(type, Charakterisierung der Dokumentart im Detail, Charakterisierung der Dokumentart im Detail. Die Angabe ist dringend empfohlen [SHALL]., Empfohlen: KDL und aus KDL abgeleiteter XDS-Type-Code)
* insert CommentedDescriptionIntl(type, en, Precise description of the document type, Precise description of the document type [SHALL]., Recommended: KDL and from KDL derived XDS-Type-Code)

// Invariante für Existenz eines KDS- oder XDS-Codes
* type obeys mii-iv-dokument-dokument-type

// Require at least one coding as well as a specific system and code
* type.coding 1..*
* type.coding.system 1..1 MS
* type.coding.code 1..1 MS

* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = "Slice für Art des verwiesenen Dokument"
* type.coding ^slicing.ordered = false

// ISiK: 1..1, MS, DVMD KDL (required) | MIO: n.v. | IHE MHD: n.v.
* type.coding contains KDL 0..1 MS
* type.coding[KDL].system = $dvmd-kdl (exactly)
* type.coding[KDL] from $dvmd-kdl-vs (required)

// ISiK: n.v. | MIO: n.v. | IHE MHD: DocumentTypeValueSet (preferred)
* type.coding contains LNC 0..1 MS
* type.coding[LNC].system = $LNC (exactly)
* type.coding[LNC] from $lnc-doc-type-code-vs (required)

// ISiK: n.v. | MIO: n.v. | IHE MHD: n.v.
* type.coding contains SCT 0..1 MS
* type.coding[SCT].system = $SCT (exactly)
* type.coding[SCT] from $mii-vs-dokument-sct-dokument-typ (required)

// ISiK: 0..1, MS, IHEXDStypeCode (required) | MIO: 0..1, IHEXDStypeCode (required) | IHE MHD: n.v.
* type.coding contains XDS 0..1 MS
* type.coding[XDS].system = $ihe-xds-type-code (exactly)
* type.coding[XDS] from $ihe-xds-type-code-vs (required)

// ISiK: 0..1, MS, Slicing XDS | MIO: 0..* (R4 default), Slicing XDS | IHE MHD: 1..1, MS, DocumentClassValueSet (example)
* category 0..* MS
* insert CommentedDescription(category, Charakterisierung der Dokumentenart in Übersicht, Charakterisierung der Dokumentenart in Übersicht. Die Angabe ist dringend empfohlen [SHALL]., Empfohlen: Aus KDL abgeleiteter XDS-Category-Code)
* insert CommentedDescriptionIntl(category, en, General description of the document type, General description of the document type [SHALL]., Recommended: From KDL derived XDS-Category-Code)

// Invariante für Existenz eines KDS- oder XDS-Codes
* category obeys mii-iv-dokument-dokument-category

// Require at least one coding as well as a specific system and code
* category.coding 1..*
* category.coding.system 1..1 MS
* category.coding.code 1..1 MS

* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.description = "Slice für Kategorie des verwiesenen Dokuments"
* category.coding ^slicing.ordered = false

// ISiK: n.v. | MIO: n.v. | IHE MHD: DocumentClassValueSet (example)
* category.coding contains LNC 0..1 MS
* category.coding[LNC].system = $LNC (exactly)
* category.coding[LNC] from $lnc-doc-class-code-vs (required)

// ISiK: n.v. | MIO: n.v. | IHE MHD: n.v.
* category.coding contains SCT 0..1 MS
* category.coding[SCT].system = $SCT (exactly)
* category.coding[SCT] from $mii-vs-dokument-sct-dokument-kategorie (required)

// ISiK: 1..1, MS, IHEXDSclassCode (required) | MIO: 0..1, IHEXDSclassCode (required) | IHE MHD: 
* category.coding contains XDS 0..1 MS
* category.coding[XDS].system = $ihe-xds-class-code (exactly)
* category.coding[XDS] from $ihe-xds-class-code-vs (required)

// ISiK: 1..1, MS | MIO: 0..1 (R4 default), Extended Custom Profiles | IHE MHD: 1..1, MS Restricted Patient
* subject 0..1 MS
* subject only Reference(Patient or MII_PR_Person_Patient or MII_PR_Person_PatientPseudonymisiert)
* insert Description(subject, Referenz auf den Patient des Dokumentes, Referenz auf den Patient des Dokumentes. Die Angabe ist verpflichtend [MUST].)
* insert DescriptionIntl(subject, en, Patient reference to the document, Patient reference to the document [MUST].)

// ISiK: 0..1 (R4 default), MS | MIO: 0..1 (R4 default) | IHE MHD: 0..1 (R4 default), MS
// * date 0..1

// ISiK: 0..* (R4 default), MS | MIO: 0..* (R4 default) | IHE MHD: 0..*, MS
// * author 0..*

// ISiK: 0..* (R4 default), MS | MIO: 0..* (R4 default) | IHE MHD: 0..*, MS
* relatesTo 0..* MS
* insert Description(relatesTo, Beziehung des Dokuments, Beziehungen des verwiesenen Dokuments zu anderen Dokumenten.)
* insert DescriptionIntl(relatesTo, en, Document relationships, Document relationships)

* relatesTo.code 1..1 MS
* insert CommentedDescription(relatesTo.code, Beziehung zu anderem Dokument, Beziehung zu anderem Dokument. Die Angabe ist optional [MAY]., Typisch: `appends`\, z.B. ergänzende Annotation\, oder `transforms`\, z.B. Formatwandlung. CAVE: `transforms` meint Dokument wurde transformiert)
* insert CommentedDescriptionIntl(relatesTo.code, en, Relationship to other document, Relationship to other document [MAY]., Typically: `appends`\\, e.g. additional annotation\\, or `transforms`\\, e.g. format conversion. CAVE: `transforms` means the document was transformed)

* relatesTo.target 1..1 MS
* insert Description(relatesTo.target, Referenz auf DocumentReference, Referenz auf DocumentReference. Die Angabe ist verpflichtend [MUST]\, wenn Beziehungstyp angegeben.)
* insert DescriptionIntl(relatesTo.target, en, Target of document relations, Target of document relations [MUST]\\, when relationship type is present.)

// ISiK: 0..1 (R4 default) | MIO: 0..1 (R4 default) | IHE MHD: 0..1 (R4 default)
* description 0..1 MS
* insert Description(description, Beschreibung des Inhalts des Dokumentes, Beschreibung des Inhalts des Dokumentes. Die Angabe ist optional [MAY].)
* insert DescriptionIntl(description, en, Description of the documents content, Description of the documents content [MAY].)

// ISiK: 1..*, MS, ISiKConfidentialityCode (required) | MIO: 0..* (R4 default) | IHE MHD: 1..*, MS
* securityLabel 0..* MS
* insert CommentedDescription(securityLabel, Status über den Sicherheitsbedarf des Dokuments, Status über den Sicherheitsbedarf des Dokuments. Die Angabe wird dringend empfohlen [SHALL]., Siehe IG Terminologien)
* insert CommentedDescriptionIntl(securityLabel, en, Security level of the document, Security level of the document [SHALL]., See IG Terminology)

// ISiK: 1..1, MS | MIO: 1..* (R4 default), Slicing Anhang/ Verweis | IHE MHD: 1..1
* content 1..* MS
* insert Description(content, Inhalt des Dokuments, Dokument\, als Base64-kodierte Daten\, oder Verweis\, als URL\, mit relevanten Metadaten zum Anhang.)
* insert DescriptionIntl(content, en, Document content, Embedded Base64 encoded document content or URL reference to document.)

// Slices for documents, embedded as encoded binary data
* content ^slicing.discriminator.type = #exists
* content ^slicing.discriminator.path = "attachment.data"
* content ^slicing.rules = #open
* content ^slicing.description = "Slice für ein Dokument, das als Binärdaten eingebettet ist"
* content ^slicing.ordered = false

* content contains Binaerdaten 0..* MS
* content[Binaerdaten].attachment.data 1..1
* content[Binaerdaten].attachment.url 0..0

// ISiK: 0..1, MS | MIO 1.7.0 Verweis: 0..1 (R4 default) | MIO 1.7.0 Anhang: 1..1 | IHE MHD: 0..0
//* content.attachment.data 0..1
* insert CommentedDescription(content.attachment.data, Dokument als Binärdaten, Dokument als Binärdaten [Base64]. Die Angabe ist verpflichtend [MUST] für Textausleitungen extern und falls URL nicht angegeben wurde; ansonsten optional [MAY]., Typisch: Nutzung bei Datentransfer)
* insert CommentedDescriptionIntl(content.attachment.data, en, Document as binary data [Base64], Document as binary data [Base64] [MUST] for external transfer and when URL not present; otherwise optional [MAY]., Typically: Use for data transfer)

// Slices for documents, referenced by document location
* content ^slicing.discriminator.type = #exists
* content ^slicing.discriminator.path = "attachment.url"
* content ^slicing.rules = #open
* content ^slicing.description = "Slice für ein Dokument, dessen Lokalisation verlinkt ist"
* content ^slicing.ordered = false

* content contains Verweis 0..* MS
* content[Verweis].attachment.data 0..0
* content[Verweis].attachment.url 1..1

// ISiK: 0..1, MS | MIO 1.7.0 Verweis: 1..1 | MIO 1.7.0 Anhang: 0..0 | IHE MHD: 1..1
//* content.attachment.url 0..1 MS
* insert CommentedDescription(content.attachment.url, Verweis auf den lokalen Ablageort des Dokumentes, Verweis auf den lokalen Ablageort des Dokumentes. Die Angabe ist verpflichtend [MUST]\, wenn `data` nicht angegeben wurde; ansonsten optional [MAY]., Typisch: Lokal auflösbare URL)
* insert CommentedDescriptionIntl(content.attachment.url, en, Link to the local location where the document is kept, Link to the local location where the document is kept [MUST]\\, when `data` not present; otherwise optional [MAY]., Typically: Local resolvable URL)

// ISiK: 1..1, MS | MIO: 1..1 (R4 default) | IHE MHD: 1..1 (R4 default)
* content.attachment 1..1 MS
* insert Description(content.attachment, Zugang zum Dokument, Zugang zum Dokument.)
* insert DescriptionIntl(content.attachment, en, Access to the document, Access to the document)

// ISiK: 1..1, MS, MimeTypes (required) | MIO 1.7.0 Verweis: 0..1 (R4 default) | MIO 1.7.0 Anhang: 1..1 | IHE MHD: 1..1
* content.attachment.contentType 0..1 MS
* insert CommentedDescription(content.attachment.contentType, MIME-Typ des Dokumenteninhalts, MIME-Typ des Dokumenteninhalts. Die Angabe ist dringend empfohlen [SHALL]., Typisch: `text/plain`)
* insert CommentedDescriptionIntl(content.attachment.contentType, en, MIME type of the document content, MIME type of the document content [SHALL]., Typically: `text/plain`)

// ISiK: 1..1, MS, CommonLanguages (required) | MIO: 0..1 (R4 default) | IHE MHD: 1..1, MS
* content.attachment.language 0..1 MS
* insert CommentedDescription(content.attachment.language, Verwendete Sprache in dem Dokument, Verwendete Sprache in dem Dokument. Die Angabe ist dringend empfohlen [SHALL]., Empfohlen: 5-stellige Angabe. Typisch: `de-DE`)
* insert CommentedDescriptionIntl(content.attachment.language, en, Used language in the document, Used language in the document [SHALL]., Recommended: 5-digit entry Typically: `de-DE`)

// ISiK: 1..1, MS | MIO: 1..1 | IHE MHD: 0..1 (R4 default)
// * content.attachment.title 0..1

// ISiK: 1..1, MS | MIO: 0..1 (R4 default) | IHE MHD: 1..1, MS
* content.attachment.creation 0..1 MS
* insert CommentedDescription(content.attachment.creation, Datum der Erstellung des Dokumentes, Datum der Erstellung des Dokumentes. Die Angabe ist dringend empfohlen [SHALL]., Bezogen auf letzte Änderung gemäß MII_EX_Dokument_NLP_Processing_Status)
* insert CommentedDescriptionIntl(content.attachment.creation, en, Date of the creation of the document, Date of the creation of the document [SHALL]., Related to the last change regarding MII_EX_Dokument_NLP_Processing_Status)

// ISiK: 1..1, MS, IHEXDSformatCodeDE (required) | MIO: 0..1, DocumentReferenceFormatCodeSet (preferred) (R4 default) | IHE MHD: 1..1, MS, IHE_FormatCode_vs (preferred)
* content.format 0..1 MS
* content.format from MII_VS_Dokument_Format_Code (preferred)
* insert CommentedDescription(content.format, Komplexe Formatangabe, Formatangabe\, die über den MIME-Typ hinausgehen, Beinhaltet ValueSets von IHE Deutschland und International)
* insert CommentedDescriptionIntl(content.format, en, Complex format specification, More complex format specification than the MIME type, Contains ValueSets of IHE Germany and International)

// ISiK: 1..1, MS | MIO: 0..1 (R4 default) | IHE MHD: 1..1
* context 0..1 MS
* insert Description(context, Erzeugungskontext des Dokumentes, Klinischer Kontext\, in welchem das Dokument erzeugt wurde)
* insert DescriptionIntl(context, en, Document creation context, Clinical context in which the document was created)

// ISiK: 0..1, MS | MIO: 0..* (R4 default) | IHE MHD: 0..* (R4 default)
* context.encounter 0..* MS
* context.encounter only Reference(Encounter or MII_PR_Fall_KontaktGesundheitseinrichtung)
* insert Description(context.encounter, Referenz zum FALL, Referenz zur semantisch geeignetsten Ebene des Moduls FALL. Die Angabe ist dringend empfohlen [SHALL].)
* insert DescriptionIntl(context.encounter, en, Reference to FALL, Reference to the semantically most suitable level of the module FALL [SHALL].)

// ISiK: 0..*, IHEXDSeventCodeList (required) | MIO: 0..* (R4 default) | IHE MHD: 0..* (R4 default)
* context.event 0..* MS
* insert Description(context.event, Handlungen oder Prozeduren, Handlungen oder Prozeduren\, die im Kontext dokumentiert wurden. Die Angabe ist optional [MAY].)
* insert DescriptionIntl(context.event, en, Acts or procedures, Acts or procedures that were documented in context [MAY].)

// Binds to value set containing IHE codes
* context.event.coding 1..*
* context.event.coding.system 1..1 MS
* context.event.coding.code 1..1 MS
* context.event from $ihe-xds-event-code-vs (required)

// ISiK: 0..1 (R4 default) | MIO: 0..1 (R4 default) | IHE MHD: 0..1, MS
* context.period 0..1 MS
* insert Description(context.period, Durchführungszeitraum, Zeitraum\, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde. Die Angabe ist optional [MAY].)
* insert DescriptionIntl(context.period, en, Performance period, Period during which the act or procedure described in the document was performed [MAY].)

// ISiK: 1..1, MS, IHEXDShealthcareFacilityTypeCode (required) | MIO: 0..1, FacilityTypeCodeValueSet (example) (R4 default) | IHE MHD: 1..1, FacilityTypeCodeValueSet (example)
* context.facilityType 0..1 MS
* insert CommentedDescription(context.facilityType, Art der Einrichtung, Art der Einrichtung\, in der die Handlung oder Prozedur am Patienten erfolgte. Die Angabe ist optional [MAY]., Typisch: `KHS` für Krankenhaus)
* insert CommentedDescriptionIntl(context.facilityType, en, Type of facility, Type of facility where the act or procedure was performed on the patient [MAY]., Typically: `KHS` for hospital)

// Binds to value set containing SCT and IHE codes
* context.facilityType.coding 1..*
* context.facilityType.coding.system 1..1 MS
* context.facilityType.coding.code 1..1 MS
* context.facilityType from $mii-vs-dokument-einrichtungsart (required)

// ISiK: 1..1, MS, IHEXDSpracticeSettingCode (required) | MIO: 0..1, PracticeSettingCodeValueSet (example) (R4 default) | IHE MHD: 1..1, MS, PracticeSettingCodeValueSet (example)
* context.practiceSetting 0..1 MS
* insert CommentedDescription(context.practiceSetting, Klinisches Fachgebiet, Klinisches Fachgebiet\, in dem Dokumenteninhalt erstellt wurde. Die Angabe ist optional [MAY]., CAVE: Diese Angabe entspricht nicht dem `serviceType` im Modul FALL)
* insert CommentedDescriptionIntl(context.practiceSetting, en, Clinical specialty, Clinical specialty in which document content was created [MAY]., CAVE: This specification does not correspond to the `serviceType` in the FALL module)

// Binds to value set containing SCT and IHE codes
* context.practiceSetting.coding 1..*
* context.practiceSetting.coding.system 1..1 MS
* context.practiceSetting.coding.code 1..1 MS
* context.practiceSetting from $mii-vs-dokument-fachgebiet (required)

// Extension to classify a NLP processing status
* extension contains MII_EX_Dokument_NLP_Processing_Status named nlp-processing-status 0..1 MS
* extension[nlp-processing-status] ^short = "NLP Processing Status"
* extension[nlp-processing-status] ^definition = "Status der NLP-Verarbeitung des referenzierten Dokuments"