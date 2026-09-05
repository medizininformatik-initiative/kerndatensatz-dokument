# Capability Statements - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Capability Statements**

## Capability Statements

To enable decentralized data analysis via the German Research Data Portal for Health of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities) MUST be supported, so that the FHIR server exposes a CapabilityStatement under `[BASE_URL]/metadata`. Within this CapabilityStatement it MUST be stated which profiles, including their version, as well as which search parameters are supported.

The following lists which content MUST be stated in the CapabilityStatement. In addition, conformance to the following CapabilityStatement MUST be declared in the respective CapabilityStatement instance under [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement`

Artifact page: [MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.md)

### Supported search parameters

The following table reads the search parameters' names and types from the CapabilityStatement, the normative source, at build time; example calls are in the [profile notes](StructureDefinition-mii-pr-dokument-dokument.md#search-parameters).

| | |
| :--- | :--- |
| Search parameter | Type |
| _id | token |
| _profile | uri |
| identifier | token |
| status | token |
| doc-status | token |
| type | token |
| category | token |
| patient | reference |
| relation | token |
| relatesto | reference |
| relationship | composite |
| description | string |
| security-label | token |
| contenttype | token |
| language | token |
| location | uri |
| creation | date |
| format | token |
| encounter | reference |
| event | token |
| period | date |
| facility | token |
| setting | token |
| nlp-processing-status | token |

