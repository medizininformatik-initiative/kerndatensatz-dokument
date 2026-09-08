# Capability Statements - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* **Capability Statements**

## Capability Statements

To enable decentralized data analysis via the German Portal for Medical Research Data (FDPG) of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities) MUST be supported, so that the FHIR server exposes a CapabilityStatement under `[BASE_URL]/metadata`. Within this CapabilityStatement it MUST be stated which profiles, including their version, as well as which search parameters are supported.

The following lists which content MUST be stated in the CapabilityStatement. In addition, conformance to the following CapabilityStatement MUST be declared in the respective CapabilityStatement instance under [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement`

Artifact page: [MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.md)

Example calls for the search parameters and the links to the Meta module's SearchParameter definitions are on the [Search Parameters](search-parameters.md) page.

