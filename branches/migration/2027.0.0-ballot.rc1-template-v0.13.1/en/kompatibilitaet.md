# Compatibility with Other Specifications - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* [**Guidance for Implementers**](implementer-guidance.md)
* **Compatibility with Other Specifications**

## Compatibility with Other Specifications

The compatibility of the FHIR DocumentReference profiles of MII KDS Dokument with the profiles from Gematik ISiK document exchange, KBV MIO Basis and IHE MHD was assessed on the basis of the [FHIR Validator reports](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/) and the technical profile properties. The focus is on cardinalities, Must Support (MS) flags and terminology bindings, because these are decisive for automated transformation and integration, e.g. in data integration centres.

-------

## Detailed Compatibility Assessment

### Cardinalities and Must Support

In the MII KDS Dokument profile most metadata fields are optional, including the central fields `type` and `category`. The cardinality of `type` is 0..1, that of `category` 0..*, and MS is set. This means that instances originating from less restrictive profiles such as KBV MIO Basis or IHE MHD can usually be taken over without adaptation, provided the metadata required for the respective application is present.

In the ISiK document exchange profile, by contrast, metadata fields such as `type`, `subject`, `securityLabel`, `content` and `context` are mandatory (cardinality 1..1) and flagged with MS. For a transformation from ISiK document exchange to MII KDS Dokument this is unproblematic, because all required information is available. In the opposite direction – for instance in a possible transformation from MII KDS Dokument to ISiK document exchange – missing mandatory fields would have to be supplied.

### Terminology Bindings

For the field `type` the MII KDS Dokument profile recommends the use of KDL and XDS type codes, but expressly supports LOINC and SNOMED CT as well. The binding is extensible, so other code systems are permitted too. The same applies to the field `category` - here as well XDS codes are recommended, but LOINC and SNOMED CT are supported equivalently. The binding strength is deliberately kept low in order to achieve maximum flexibility.

In the ISiK document exchange profile this is specified differently: there, KDL and XDS codes are required for `type`, and the category is derived from the KDL code. Other code systems are not foreseen. The field `securityLabel` is required as well and must contain one of the prescribed codes.

In the KBV MIO Basis and IHE MHD profiles, various code systems can be used, among them LOINC, SNOMED CT and XDS. The profiles are therefore suited to international and cross-sector applications.

### Further Differences and Commonalities

Another important difference concerns the handling of context fields such as `context.facilityType` and `context.practiceSetting`. In the MII KDS Dokument profile these fields are optional, whereas in the ISiK document exchange profile they are mandatory. For the transformation from ISiK document exchange to MII KDS Dokument this is unproblematic, because all information is present. In transformations from KBV MIO Basis or IHE MHD to MII KDS Dokument these metadata fields may be missing, which is however permissible given the flexibility of the target profile.

There are also differences in cardinality and MS flagging for the metadata fields governing document access (`content.attachment.data` and `content.attachment.url`). The MII KDS Dokument profile permits both variants and is therefore compatible with the differing approaches of the source profiles.

## Conclusion and Recommendations

The MII KDS Dokument profile is designed to offer a high degree of compatibility with the common German and international FHIR profiles for document metadata. The most important metadata fields are optional and support various code systems, among them KDL, XDS, LOINC and SNOMED CT. For the transformation from ISiK document exchange to MII KDS Dokument no adaptation of the terminologies is necessary, because the ISiK requirements are stricter. In transformations from KBV MIO Basis or IHE MHD to MII KDS Dokument the existing codes can be taken over, provided they come from supported code systems. Missing mandatory fields are usually not a problem in the target profile, because they are optional there.

In practice this means that an automated extract-transform-load (ETL) pipeline from ISiK document exchange, KBV MIO Basis or IHE MHD to MII KDS Dokument is technically well feasible. The greatest challenge consists in harmonising the terminologies where necessary and in ensuring that all metadata relevant to the respective application is present. The flexibility of the MII KDS Dokument profile eases integration and promotes interoperability in the German and the international context.

-------

## Technical Overview

This section provides a structured overview of the compatibility of the MII KDS Dokument profile with the profiles ISiK document exchange, KBV MIO Basis and IHE MHD. For each comparison profile, motivation, compatibility and limitations are presented in detail.

### ISiK Document Exchange

#### Motivation

Compatibility with ISiK document exchange is essential in order to ensure cross-sector interoperability in the German healthcare system. ISiK defines binding metadata standards for documents in hospitals. Harmonisation enables the smooth integration of ISiK-conformant documents into MII data integration centres and supports the implementation of national interoperability goals.

#### Compatibility

The MII KDS Dokument profile is designed as a superset of the ISiK profile and covers all ISiK requirements. The most important points of comparison are:

| | | | |
| :--- | :--- | :--- | :--- |
| `status` | 1..1, Must Support | 1..1, Must Support | ✓ Fully compatible |
| `type` | 0..1, Must Support, extensible (KDL/XDS, LOINC, SNOMED CT) | 1..1, Must Support, required (KDL/XDS) | ✓ MII KDS Dokument supports the ISiK codes |
| `category` | 0..*, Must Support, extensible | 1..1, Must Support, derived from KDL | ✓ MII KDS Dokument supports the ISiK derivation |
| `subject` | 1..1, Must Support | 1..1, Must Support | ✓ Fully compatible |
| `content` | 1..*, Must Support | 1..1, Must Support | ✓ MII KDS Dokument allows several contents |
| `securityLabel` | 0..*, extensible | 1..*, required | ⚠️ MII KDS Dokument makes security labels optional |
| `context` | 0..1 | 1..1, Must Support | ⚠️ MII KDS Dokument makes context optional |

Notes:

* **Must Support:** All ISiK Must Support fields are flagged as Must Support in the MII KDS Dokument profile as well.
* **Terminology:** MII supports all codes mandated by ISiK and extends them with international code systems.

#### Limitations

* **Security labels:** Optional in MII KDS Dokument, mandatory in ISiK. When transforming from MII to ISiK, security labels may have to be supplied.
* **Context:** ISiK requires context information, MII KDS Dokument leaves it optional. For ISiK compatibility, context data has to be supplied.
* **Category:** The ISiK-specific derivation of the category from KDL has to be observed in transformations.

### KBV MIO Basis

#### Motivation

Compatibility with the KBV MIO Basis profile is decisive for integrating documents from ambulatory care and Medical Information Objects (MIOs) into the MII infrastructure. Harmonisation enables cross-sector exchange between ambulatory and inpatient care.

#### Compatibility

Both profiles are designed for flexibility and interoperability:

| | | | |
| :--- | :--- | :--- | :--- |
| `status` | 1..1, Must Support | 1..1 | ✓ Fully compatible |
| `type` | 0..1, Must Support, extensible | 0..1, preferred (LOINC, SNOMED CT, XDS) | ✓ Both support the same codes |
| `category` | 0..*, Must Support, extensible | 0..*, example binding | ✓ Fully compatible |
| `subject` | 1..1, Must Support | 0..1 | ✓ MII KDS Dokument specifies a mandatory field |
| `content` | 1..*, Must Support | 1..* | ✓ Fully compatible |
| `author` | 0..*, Must Support | 0..* | ✓ Fully compatible |
| `custodian` | 0..1 | 0..1 | ✓ Fully compatible |

Notes:

* **Terminology:** Both profiles support LOINC, SNOMED CT and XDS.
* **Cardinalities:** Largely compatible; the MII KDS Dokument profile is more restrictive for `subject`.

#### Limitations

* **Subject:** MII KDS Dokument requires a patient reference, KBV MIO Basis leaves it optional. When transforming from KBV MIO Basis to MII KDS Dokument, a reference may have to be supplied.
* **Must Support:** MII KDS Dokument flags more fields as Must Support.
* **Further limitations:** No noteworthy incompatibilities.

### IHE MHD

#### Motivation

Compatibility with IHE MHD enables international interoperability and connection to globally established standards for document exchange. IHE MHD is the reference for FHIR-based document exchange in many countries.

#### Compatibility

The MII KDS Dokument profile is largely compatible with the IHE MHD Comprehensive profile, with differences in restrictiveness:

| | | | |
| :--- | :--- | :--- | :--- |
| `masterIdentifier` | 0..1 | 1..1 | ⚠️ IHE MHD requires a master identifier |
| `status` | 1..1, Must Support | 1..1 | ✓ Fully compatible |
| `type` | 0..1, Must Support, extensible | 1..1, preferred (LOINC) | ⚠️ IHE MHD requires a document type |
| `category` | 0..*, Must Support, extensible | 1..1, example binding | ⚠️ IHE MHD requires a category |
| `subject` | 1..1, Must Support | 1..1 | ✓ Fully compatible |
| `securityLabel` | 0..*, extensible | 1..*, extensible | ⚠️ IHE MHD requires security labels |
| `content.attachment` | 1..1, Must Support | 1..1 | ✓ Fully compatible |
| `context` | 0..1 | 1..1 | ⚠️ IHE MHD requires context |
| `content.format` | 0..1 | 1..1, preferred (IHE format codes) | ⚠️ IHE MHD requires a format code |

Notes:

* **Terminology:** Both profiles support LOINC and international code systems.
* **Metadata:** IHE MHD requires more extensive metadata than MII KDS Dokument.

#### Limitations

* **Mandatory fields:** IHE MHD requires several fields as mandatory that are optional in MII KDS Dokument (`masterIdentifier`, `type`, `category`, `securityLabel`, `context`, `content.format`).
* **Master identifier:** For IHE MHD a unique master identifier has to be assigned.
* **Format codes:** IHE MHD requires format codes, which may have to be supplied.
* **Context:** Context information has to be provided for IHE MHD.
* **Security label:** At least one security label is required for IHE MHD.
* **Transformation note:** For the transformation from MII KDS Dokument to IHE MHD, missing mandatory fields should be supplied. The reverse transformation is possible without loss of information.

## Summary

The MII KDS Dokument profile is designed as a flexible superset and enables the harmonisation of document metadata from various sources. Compatibility with ISiK and KBV MIO Basis is very high; with IHE MHD there is a need for adaptation regarding mandatory fields and metadata. Cross-sector and international interoperability is thereby ensured.

**Compatibility overview:**

| | | |
| :--- | :--- | :--- |
| ISiK document exchange | Very high | Security label, context, category |
| KBV MIO Basis | Almost complete | Subject reference, Must Support differences |
| IHE MHD | High, with adaptations | Mandatory fields (e.g. masterIdentifier, context) |

-------

> **Written during migration — review before release.** The element definitions compared here are laid down normatively in the [Dokument profile](StructureDefinition-mii-pr-dokument-dokument.md); an overview of all profiles of the module is available under [Profiles](profiles.md). The domain context of this comparison and the list of external standards taken into account are given on the [Implementer guidance](implementer-guidance.md) page.

