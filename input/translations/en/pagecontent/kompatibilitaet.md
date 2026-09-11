<!-- markdownlint-disable MD041 -->
<!-- English translation of the German default page
     input/pagecontent/kompatibilitaet.md — keep both files in step.
     Migrated from the Simplifier guide "MII IG Modul Dokument":
     MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md.
     This page is nested under "implementer-guidance" in the page tree and
     deliberately has no menu entry of its own. -->

This page compares the FHIR DocumentReference profiles from gematik ISiK
document exchange (`ISiKDokumentenMetadaten`), KBV MIO Basis
(`KBV_PR_Base_DocumentReference`) and IHE MHD
(`IHE.MHD.UnContained.Comprehensive.DocumentReference`) with this module's
profile.

> **How to read this:** the MII KDS Dokument profile is throughout the **target**
> of the comparison. Every table puts the source profile on the left and the MII
> profile on the right, and answers one question: what does it take to carry a
> DocumentReference from ISiK, KBV MIO Basis or IHE MHD **into** MII KDS
> Dokument? Statements about the opposite direction are marked as such where
> they occur.
{: .ig-highlight .ig-highlight-grey}

The basis is the [quality-assurance reports of this guide](../qa.html), the
profile comparisons of the HL7 FHIR Validator (`compare` mode) against the three
profiles, and the technical profile properties. The focus is on cardinalities,
Must Support (MS) flags and terminology bindings, because these are decisive for
automated transformation and integration, for example in data integration
centres.

Package versions are deliberately not repeated in the prose, so that this page
does not need re-checking by hand on every dependency update. The authoritative
list is the
[dependency overview of this guide](ImplementationGuide-mii-ig-dokument.html#ig-dependencies);
it names every package with the version this build was made against.

---

### Technical Overview

This section provides a structured overview of the compatibility of the MII KDS Dokument profile with the profiles ISiK document exchange, KBV MIO Basis and IHE MHD. For each comparison profile, motivation, compatibility and limitations are presented in detail.

#### ISiK Document Exchange

##### Motivation

Compatibility with ISiK document exchange is essential in order to ensure cross-sector interoperability in the German healthcare system. ISiK defines binding metadata standards for documents in hospitals. Harmonisation enables the smooth integration of ISiK-conformant documents into MII data integration centers and supports the implementation of national interoperability goals.

> **Version basis:** the comparison below was measured against the profile `ISiKDokumentenMetadaten` in version **6.0.0**. From ISiK stage 5 onwards the human-readable designation of the document is to be carried in `content.attachment.title`; `DocumentReference.description` is dropped for this purpose in favour of an alignment with IHE MHD and the ePA specification.
{: .ig-highlight .ig-highlight-blue}

##### Compatibility

The MII KDS Dokument profile is designed as a superset of the ISiK profile and covers all ISiK requirements. The most important points of comparison are:

| FHIR element      | ISiK document exchange (`ISiKDokumentenMetadaten`) | MII KDS Dokument (`mii-pr-dokument-dokument`) | Compatibility                         |
|-------------------|-----------------------------------------|----------------------------------------------------|---------------------------------------|
| `status`          | 1..1, Must Support                      | 1..1, Must Support                                 | ✓ Fully compatible                    |
| `type`            | 1..1, Must Support (KDL *and* XDS required via slices) | 0..1, Must Support (KDL/XDS recommended, slices on `type.coding`) | ✓ MII KDS Dokument supports the ISiK codes |
| `category`        | 0..1, Must Support, derived from KDL    | 0..*, Must Support                                  | ✓ MII KDS Dokument allows several categories      |
| `subject`         | 1..1, Must Support                      | 0..1, Must Support                                 | ⚠️ ISiK requires the patient reference |
| `content`         | 1..1, Must Support                      | 1..*, Must Support                                 | ✓ MII KDS Dokument allows several contents        |
| `securityLabel`   | 1..*, required (`ISiKConfidentialityCodes`: N \| 0..*, Must Support, extensible (`security-labels`) | R \| V) | ⚠️ MII KDS Dokument makes security labels optional |
| `context`         | 1..1, Must Support                      | 0..1, Must Support                                 | ⚠️ MII KDS Dokument makes context optional         |
| `masterIdentifier`| 1..1, Must Support                      | 0..1, Must Support                                 | ⚠️ ISiK requires a master identifier   |
| `content.attachment.contentType` | 1..1, Must Support                      | 0..1, Must Support                | ⚠️ ISiK requires the MIME type         |
| `content.attachment.language`    | 1..1, Must Support                      | 0..1, Must Support                | ⚠️ ISiK requires the language          |
| `content.attachment.title`       | 1..1, Must Support                      | 0..1                              | ⚠️ ISiK requires the document title    |
| `content.attachment.creation`    | 1..1, Must Support                      | 0..1, Must Support                | ⚠️ ISiK requires the document date     |
| `content.format`  | 1..1, Must Support, required            | 0..1, Must Support, preferred (`MII_VS_Dokument_Format_Code`) | ⚠️ ISiK requires a format code         |
| `context.facilityType`  | 1..1, Must Support, required            | 0..1, Must Support, required                 | ⚠️ ISiK requires the facility type     |
| `context.practiceSetting` | 1..1, Must Support, required            | 0..1, Must Support, required               | ⚠️ ISiK requires the practice setting  |
| `context.encounter` | 0..1, Must Support                      | 0..*, Must Support                               | ✓ MII KDS Dokument allows several encounter references |
| `implicitRules`   | 0..0 (excluded)                         | 0..1                                               | ⚠️ ISiK excludes the element           |

Notes:

- **Must Support:** the Must Support flags largely, but not entirely, coincide. Five elements flagged Must Support in ISiK are not flagged so in the MII KDS Dokument profile: `DocumentReference.id`, `author`, `content.attachment.data`, `content.attachment.url` and `content.attachment.title`. Conversely, the MII KDS Dokument profile flags nine elements as Must Support that ISiK does not: `meta`, `meta.profile`, `relatesTo.code`, `relatesTo.target`, `description`, `context.event` (including `coding.system` and `coding.code`) and `context.period`.
- **Terminology:** the value sets bound by the MII KDS Dokument profile include the value sets bound by ISiK by reference in each case and extend them: `mii-vs-dokument-format-code` contains `IHEXDSformatCodeDE` and, in addition, the international IHE format code value set; `mii-vs-dokument-einrichtungsart` contains `IHEXDShealthcareFacilityTypeCode` and, in addition, SNOMED CT hierarchies; `mii-vs-dokument-fachgebiet` contains `IHEXDSpracticeSettingCode` and, in addition, one SNOMED CT hierarchy. ISiK-conformant codes are therefore valid without mapping.

##### Limitations

- **Mandatory fields MII → ISiK:** twelve elements are mandatory in ISiK but optional in the MII KDS Dokument profile (see table). In a transformation to ISiK they have to be supplied; `implicitRules` has to be removed, and `category`, `content` and `context.encounter` have to be reduced to at most one entry each.
- **Security labels:** optional in MII KDS Dokument, mandatory in ISiK. When transforming from MII to ISiK, security labels may have to be supplied.
- **Context:** ISiK requires context information, MII KDS Dokument leaves it optional. For ISiK compatibility, context data has to be supplied.
- **Category:** ISiK limits `category` to at most one entry (0..1), the MII KDS Dokument profile allows several (0..*). In a transformation to ISiK it has to be reduced to one category; the ISiK-specific derivation of the category from the KDL code has to be observed in doing so.

> **Note on reading Validator comparison reports:** the FHIR Validator's value set comparisons operate on the `compose` definition, not on the expansion. For the four compared value sets (`securityLabel`, `content.format`, `context.facilityType`, `context.practiceSetting`) the report therefore states an *empty* intersection in each case, although the code sets do overlap in substance: ISiK enumerates the codes or sub-value-sets directly, whereas the MII KDS Dokument profile includes the respective ihe-d value set by reference. An empty intersection in these reports is therefore not evidence of terminology incompatibility.
{: .ig-highlight .ig-highlight-blue}

#### KBV MIO Basis

##### Motivation

Compatibility with the KBV MIO Basis profile is decisive for integrating documents from ambulatory care and Medical Information Objects (MIOs) into the MII infrastructure. Harmonisation enables cross-sector exchange between ambulatory and inpatient care.

##### Compatibility

Both profiles are designed for flexibility and interoperability:

| FHIR element      | KBV MIO Basis (`KBV_PR_Base_DocumentReference`) | MII KDS Dokument (`mii-pr-dokument-dokument`) | Compatibility                         |
|-------------------|-----------------------------------------|----------------------------------------------------|---------------------------------------|
| `status`          | 1..1                                    | 1..1, Must Support                                 | ✓ Fully compatible                    |
| `type`            | 0..1, preferred (`c80-doc-typecodes`) | 0..1, Must Support, preferred (binding identical to KBV), `type.coding` 1..*, invariant `mii-iv-dokument-dokument-type` (warning) | ⚠️ Binding identical; MII, however, requires at least one `coding` with `system` and `code` |
| `category`        | 0..*, example (`document-classcodes`) | 0..*, Must Support, example (binding identical to KBV), `category.coding` 1..*, invariant `mii-iv-dokument-dokument-category` (warning) | ⚠️ Binding identical; MII, however, requires at least one `coding` with `system` and `code` |
| `subject`         | MII Patient \| 0..1, Must Support, only Reference(Patient \| MII PatientPseudonymisiert) | 0..1, Reference(Patient \| Practitioner \| Group \| Device \| KBV_PR_Base_*) | ⚠️ Same cardinality, but MII restricts the permitted reference targets |
| `content`         | 1..*                                    | 1..*, Must Support                                 | ✓ Fully compatible                    |
| `author`          | 0..*, restricted to KBV_PR_Base_* profiles | 0..* (no Must Support)                             | ✓ Fully compatible (MII is wider here) |
| `custodian`       | 0..1                                    | 0..1                                               | ✓ Fully compatible                    |
| `securityLabel`   | 0..*, extensible                        | 0..*, Must Support, extensible                     | ✓ Fully compatible                    |
| `content.format`  | 0..1, preferred (IHE `formatcodes`)     | 0..1, Must Support, preferred (`MII_VS_Dokument_Format_Code`) | ⚠️ Different value sets at the same binding strength |
| `context.event`   | 0..*, example (`v3-ActCode`)            | 0..*, Must Support, required (`IHEXDSeventCodeList`), `coding` 1..* | ⚠️ Binding strength tightened from example to required |
| `context.facilityType` | 0..1, example (`c80-facilitycodes`) | 0..1, Must Support, required (`mii-vs-dokument-einrichtungsart`), `coding` 1..* | ⚠️ Binding strength tightened from example to required |
| `context.practiceSetting` | 0..1, example (`c80-practice-codes`) | 0..1, Must Support, required (`mii-vs-dokument-fachgebiet`), `coding` 1..* | ⚠️ example → required; 117 codes of the KBV example value set are not contained in the MII value set |
| `context.encounter` | MII KontaktGesundheitseinrichtung) | 0..*, Must Support, Reference(Encounter \| 0..*, Reference(Encounter \| EpisodeOfCare) | ⚠️ MII does not permit `EpisodeOfCare` |

Notes:

- **Terminology:** both profiles support LOINC, SNOMED CT and XDS.
- **Cardinalities:** identical at element level; the only tightenings concern `type.coding` and `category.coding` (0..* → 1..* each) as well as `coding` 1..* at `context.event`, `context.facilityType` and `context.practiceSetting`. For `subject` it is not the cardinality but the set of permitted reference targets that is restricted.

##### Limitations

- **Subject:** `subject` is 0..1 in both profiles; a reference therefore does not have to be supplied. MII does, however, restrict the permitted reference targets to `Patient` (or the MII profiles `Patient` and `PatientPseudonymisiert`), whereas KBV MIO Basis also permits `Practitioner`, `Group` and `Device` as well as the profiles `KBV_PR_Base_Patient|1.7.0`, `KBV_PR_Base_Practitioner|1.7.0` and `KBV_PR_Base_Device|1.7.0`. Instances with a non-patient-related `subject` are not valid against the MII profile.
- **Must Support:** KBV MIO Basis 1.7.0 flags not a single element in `DocumentReference` as Must Support. The MII KDS Dokument profile sets Must Support on 22 shared elements as well as on four further ones that KBV does not constrain (`meta.profile`, `content.attachment.contentType`, `content.attachment.language`, `content.attachment.creation`).
- **Terminology bindings:** MII tightens three bindings from `example` to `required`: `context.event` (`IHEXDSeventCodeList`), `context.facilityType` (`mii-vs-dokument-einrichtungsart`) and `context.practiceSetting` (`mii-vs-dokument-fachgebiet`). For the practice setting the Validator comparison reports 117 codes of the KBV-side example value set (`c80-practice-codes`) that are not contained in the MII value set. Context codes present in KBV instances can therefore not be taken over unchecked.
- **Reference targets:** `context.encounter` no longer permits `EpisodeOfCare` in MII.
- **Codings:** `type` and `category` require at least one `coding` with `system` and `code` in MII; instances carrying only `text` are not valid.

#### IHE MHD

##### Motivation

Compatibility with IHE MHD enables international interoperability and connection to globally established standards for document exchange. IHE MHD is the reference for FHIR-based document exchange in many countries.

##### Compatibility

The comparison below refers to the profile `IHE.MHD.UnContained.Comprehensive.DocumentReference` (IHE ITI MHD, package `ihe.iti.mhd`, version 4.2.3; derived from `IHE.MHD.Minimal.DocumentReference`). Different requirements apply to the *contained* variant of MHD Comprehensive. In this variant IHE MHD is consistently **more restrictive** than the MII KDS Dokument profile: fourteen elements are mandatory there that are optional in the MII profile, and four elements are prohibited or bound more narrowly in MHD.

| FHIR element      | IHE MHD (`IHE.MHD.UnContained.Comprehensive.DocumentReference`) | MII KDS Dokument (`mii-pr-dokument-dokument`) | Compatibility                         |
|-------------------|-----------------------------------------|----------------------------------------------------|---------------------------------------|
| `masterIdentifier`| 1..1                                    | 0..1                                               | ⚠️ IHE MHD requires a master identifier    |
| `status`          | superseded \| 1..1, Must Support, required (`document-reference-status`: current \| entered-in-error) | 1..1, required (`DocumentReferenceStats`: only current \| superseded) | ⚠️ `entered-in-error` is not permitted in IHE MHD |
| `docStatus`       | **0..0 (prohibited)**                   | 0..1, Must Support                                 | ❌ `docStatus` has to be dropped for IHE MHD (loss of information) |
| `type`            | 1..1, preferred (`c80-doc-typecodes`) | 0..1, Must Support, preferred (`c80-doc-typecodes`), constraint `mii-iv-dokument-dokument-type` | ⚠️ IHE MHD requires a document type; terminology binding identical |
| `category`        | 1..1, example (`document-classcodes`) | 0..*, Must Support, example (`document-classcodes`), constraint `mii-iv-dokument-dokument-category` | ⚠️ IHE MHD requires exactly **one** category; multiple `category` entries are MHD-invalid |
| `subject`         | MII Patient \| 0..1, Must Support, Reference(Patient \| MII PatientPseudonymisiert) | 1..1, Reference(Patient) | ⚠️ IHE MHD requires the patient reference |
| `securityLabel`   | 1..*, Must Support, extensible (`security-labels`) | 0..*, Must Support, extensible (`security-labels`) | ⚠️ IHE MHD requires at least one security label |
| `content`         | 1..1                              | 1..*, Must Support, slicing by `exists:attachment.url` | ⚠️ Multiple `content` entries are MHD-invalid |
| `content.attachment` | 1..1                                    | 1..1, Must Support                              | ✓ Cardinality identical (MS only in the MII profile) |
| `content.attachment.data` | **0..0 (prohibited)**                   | 0..1                                       | ❌ Inline base64 is excluded in this MHD variant |
| `content.attachment.url` | 1..1                                    | 0..1                                        | ❌ MHD requires the URL; a document delivered purely via `data` cannot be represented in MHD |
| `content.attachment.contentType` | 1..1                                    | 0..1, Must Support                | ⚠️ IHE MHD requires the MIME type |
| `content.attachment.language` | 1..1                                    | 0..1, Must Support                     | ⚠️ IHE MHD requires the language |
| `content.attachment.creation` | 1..1                                    | 0..1, Must Support                     | ⚠️ IHE MHD requires the creation date |
| `content.format`  | 1..1, Must Support, preferred (`ihe.formatcode.fhir/ValueSet/formatcode`) | 0..1, Must Support, preferred (`mii-vs-dokument-format-code`) | ⚠️ IHE MHD requires a format code; the (preferred) value sets differ |
| `context`         | 1..1                                    | 0..1, Must Support                                 | ⚠️ IHE MHD requires context                |
| `context.facilityType` | 1..1, example (`c80-facilitycodes`) | 0..1, **required** (`mii-vs-dokument-einrichtungsart`) | ⚠️ Cardinality: MHD stricter — terminology: **MII stricter** |
| `context.practiceSetting` | 1..1, example (`c80-practice-codes`) | 0..1, **required** (`mii-vs-dokument-fachgebiet`) | ⚠️ Cardinality: MHD stricter — terminology: **MII stricter** |
| `context.event`   | 0..*, example (`v3-ActCode`)      | 0..*, Must Support, **required** (`IHEXDSeventCodeList`) | ⚠️ Terminology: **MII stricter** |
| `context.sourcePatientInfo` | 1..1, Must Support                      | 0..1                                     | ⚠️ IHE MHD requires the source patient information |

Notes:

- **Terminology:** for `type`, `category` and `securityLabel` both profiles use **the same** binding (preferred `c80-doc-typecodes`, example `document-classcodes`, extensible `security-labels`). Differences exist for `status` (MHD narrower), `content.format` (differing preferred value sets) as well as for `context.facilityType`, `context.practiceSetting` and `context.event` — there the **MII profile binds required**, IHE MHD only example.
- **Metadata:** IHE MHD requires more extensive metadata than MII KDS Dokument (fourteen additional mandatory elements).
- **Must Support:** the MII profile sets MS on 14 elements that carry no MS in MHD (among others `meta`, `masterIdentifier`, `status`, `content`, `context`); conversely, IHE MHD carries MS on `date`, `author` and `context.sourcePatientInfo`, where the MII profile sets no MS.

##### Limitations

- **Mandatory fields:** IHE MHD requires the following fields as mandatory that are optional in MII KDS Dokument: `masterIdentifier` (additionally typed as `IHE.MHD.UniqueIdIdentifier`), `type`, `category`, `subject`, `securityLabel`, `context`, `context.facilityType`, `context.practiceSetting`, `context.sourcePatientInfo`, `content.format`, `content.attachment.contentType`, `content.attachment.language`, `content.attachment.creation` and `content.attachment.url`.
- **Elements excluded by IHE MHD:** `docStatus` (0..0), `content.attachment.data` (0..0), `modifierExtension` (0..0) as well as more than one `content` entry (max. 1). These items are lost in a transformation MII → IHE MHD or render the instance MHD-invalid.
- **Document access:** because IHE MHD prohibits `content.attachment.data` and requires `content.attachment.url`, a document embedded exclusively as base64 cannot be transferred to IHE MHD; it has to be made available as a retrievable URL beforehand.
- **Status:** IHE MHD permits only `current` and `superseded`; `status = entered-in-error` cannot be represented.
- **Master identifier:** for IHE MHD a unique master identifier has to be assigned.
- **Format codes:** IHE MHD requires format codes, which may have to be supplied.
- **Context:** context information has to be provided for IHE MHD.
- **Security label:** at least one security label is required for IHE MHD.
- **Transformation note:** for the transformation MII KDS Dokument → IHE MHD, missing mandatory fields have to be supplied and the elements excluded in MHD (`docStatus`, `content.attachment.data`, `modifierExtension`, additional `content` entries) have to be removed. The reverse transformation IHE MHD → MII KDS Dokument is loss-free in terms of cardinality, but **not automatically valid in terms of terminology**: `context.facilityType`, `context.practiceSetting` and `context.event` are bound required in the MII profile, so MHD codes outside the MII value sets have to be mapped; in addition, `EpisodeOfCare` is dropped as a permitted target of `context.encounter`.

### Detailed Compatibility Assessment

#### Cardinalities and Must Support

In the MII KDS Dokument profile most metadata fields are optional, including the central fields `type` and `category`. The cardinality of `type` is 0..1, that of `category` 0..*, and MS is set. This means that instances originating from less restrictive profiles such as KBV MIO Basis can usually be taken over without adaptation. IHE MHD (UnContained Comprehensive), by contrast, is **more restrictive** than the MII profile: there, among others, `masterIdentifier`, `type`, `category`, `subject`, `securityLabel`, `context` and `content.attachment.url` are mandatory. An MHD instance therefore always satisfies the MII cardinalities; the need for adaptation lies in the opposite direction and in the required-bound MII context terminologies.

In the ISiK document exchange profile, by contrast, a considerably larger number of metadata fields is mandatory: `masterIdentifier` (1..1, including `system` and `value`), `type` (1..1), `subject` (1..1), `securityLabel` (1..*), `content` (1..1), `content.attachment.contentType`, `.language`, `.title` and `.creation` (1..1 each), `content.format` (1..1), `context` (1..1) as well as `context.facilityType` and `context.practiceSetting` (1..1 each). In addition, ISiK excludes `implicitRules` (0..0). For a transformation from ISiK document exchange to MII KDS Dokument this is unproblematic, because all required information is available. In the opposite direction – for instance in a possible transformation from MII KDS Dokument to ISiK document exchange – these mandatory fields would have to be supplied.

#### Terminology Bindings

For the field `type` the MII KDS Dokument profile recommends the use of KDL and XDS type codes. At the level of the element `DocumentReference.type` the FHIR R4 base binding remains unchanged: the binding is **preferred** (value set `c80-doc-typecodes`) — the same binding at the same strength as in KBV MIO Basis and IHE MHD — and is supplemented by the constraint `mii-iv-dokument-dokument-type` (severity `warning`) carrying the KDL/XDS recommendation, so that other code systems are permitted too. Requirements on concrete code systems are expressed additionally through slices on `type.coding`. For `category` the binding is **example** (`document-classcodes`), supplemented by the constraint `mii-iv-dokument-dokument-category`; here as well XDS codes are recommended, and LOINC and SNOMED CT are supported equivalently. The binding strength is deliberately kept low for `type`, `category` and `securityLabel`, as it is for `content.format` (bound **preferred** to `MII_VS_Dokument_Format_Code`); bound as `required` in the MII KDS Dokument profile, by contrast, are `context.facilityType`, `context.practiceSetting` and `context.event`.

In the ISiK document exchange profile this is specified differently: there, ISiK requires KDL *and* XDS type codes via slices on `type.coding`, and the category is derived from the KDL code. Further typings (e.g. by SNOMED CT or LOINC) are expressly permitted according to ISiK. The field `securityLabel` is bound required to `ISiKConfidentialityCodes` and must contain one of the three confidentiality levels `N` | `R` | `V`.

In the KBV MIO Basis and IHE MHD profiles, various code systems can be used, among them LOINC, SNOMED CT and XDS. The profiles are therefore suited to international and cross-sector applications.

#### Further Differences and Commonalities

Another important difference concerns the handling of context fields such as `context.facilityType` and `context.practiceSetting`. In the MII KDS Dokument profile these fields are optional, whereas in the ISiK document exchange profile they are mandatory. For the transformation from ISiK document exchange to MII KDS Dokument this is unproblematic, because all information is present. In IHE MHD, by contrast, `context.facilityType` and `context.practiceSetting` are mandatory with 1..1 and are therefore always present. When taking them over into MII KDS Dokument, the hurdle is not the cardinality but the **terminology**: the MII profile binds both fields required to `mii-vs-dokument-einrichtungsart` and `mii-vs-dokument-fachgebiet` respectively, whereas IHE MHD only prescribes example bindings (`c80-facilitycodes`, `c80-practice-codes`). Codes outside the MII value sets have to be mapped. In transformations from KBV MIO Basis to MII KDS Dokument these fields may on the other hand be missing, which is permissible given the flexibility of the target profile; values that are present must, however, likewise be mapped onto the value sets bound required in the MII profile.

For the metadata fields governing document access (`content.attachment.data` and `content.attachment.url`) the cardinalities are identical in ISiK document exchange, KBV MIO Basis and MII KDS Dokument (0..1 each); differences there exist exclusively in the Must Support flagging: ISiK flags both elements as Must Support, the MII KDS Dokument profile does not. The distinction between an embedded document and a reference is made in both the MII KDS Dokument and the KBV MIO Basis profile via slices of `content` (discriminator `exists:attachment.url`). The MII KDS Dokument profile permits both variants (`data` 0..1, `url` 0..1) and is therefore compatible with the differing approaches of these source profiles. IHE MHD (UnContained Comprehensive), by contrast, permits the URL reference only: `content.attachment.url` is 1..1, `content.attachment.data` is 0..0. In the direction MII → IHE MHD a purely embedded document is therefore not representable; for ISiK and KBV MIO Basis this limitation does not apply. Note: the Validator's profile comparison does not compare named slices; statements at slice level are therefore not machine-verified.

### Conclusion and Summary

The MII KDS Dokument profile is designed to offer a high degree of compatibility with the common German and international FHIR profiles for document metadata. The most important metadata fields are optional and support various code systems, among them KDL, XDS, LOINC and SNOMED CT. For the transformation from ISiK document exchange to MII KDS Dokument no adaptation of the terminologies is necessary, because the value sets bound by the MII KDS Dokument profile include the value sets bound on the ISiK side — and not because the MII bindings were uniformly weaker: `context.facilityType` and `context.practiceSetting` are bound `required` in the MII KDS Dokument profile as well (`content.format`, by contrast, is bound only `preferred` in the MII profile). In transformations from KBV MIO Basis or IHE MHD to MII KDS Dokument the existing codes can be taken over, provided they come from supported code systems. Missing fields are usually not a problem in the target profile, because they are optional there. Values present in `context.event`, `context.facilityType` and `context.practiceSetting`, by contrast, have to be mapped onto the value sets bound required there, and `type`/`category` require at least one `coding`.

In practice this means that an automated extract-transform-load (ETL) pipeline from ISiK document exchange, KBV MIO Basis or IHE MHD to MII KDS Dokument is technically well feasible. The greatest challenge consists in harmonising the terminologies where necessary and in ensuring that all metadata relevant to the respective application is present. The flexibility of the MII KDS Dokument profile eases integration and promotes interoperability in the German and the international context.

---

The MII KDS Dokument profile is designed as a flexible superset and enables the harmonisation of document metadata from various sources. Compatibility with ISiK is very high and with KBV MIO Basis high; with IHE MHD there is a need for adaptation in both directions: MII → IHE MHD requires supplying numerous mandatory fields and removing the elements excluded in MHD; IHE MHD → MII requires a terminology mapping for the context fields bound required. Cross-sector and international interoperability is thereby ensured.

**Compatibility overview:**

| Source profile          | Compatibility            | Main limitations                                |
|-------------------------|--------------------------|-------------------------------------------------|
| ISiK document exchange | Very high         | Security label, context, mandatory fields (MII→ISiK) |
| KBV MIO Basis   | High                     | Reference targets (`subject`, `context.encounter`), required bindings in `context`, `coding` 1..* at `type`/`category`, Must Support differences |
| IHE MHD (UnContained Comprehensive) | Medium, with adaptations in both directions | 14 mandatory fields (among others masterIdentifier, subject, context, attachment.url); elements prohibited in MHD (docStatus, attachment.data, multiple content); status without `entered-in-error`; required MII bindings at facilityType/practiceSetting/event; masterIdentifier is required by ISiK as well from 6.0.0 |

---

The element definitions compared here are laid down normatively in the
[Dokument profile](StructureDefinition-mii-pr-dokument-dokument.html); an
overview of all profiles of the module is available under
[Profiles](profiles.html). The domain context of this comparison and the list
of external standards taken into account are given on the
[Guidance for Implementers](implementer-guidance.html) page.
