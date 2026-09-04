
<!-- TODO:REVIEW machine-translated from the German default page -->
<!-- markdownlint-disable MD041 -->
<!-- English translation of the German default page
     input/pagecontent/capability-statements.md — keep both files in step.
     Migrated from the Simplifier guide "MII IG Modul Dokument":
     MIIIGModulDokument/TechnischeImplementierung/CapabilityStatement.page.md. -->

To enable decentralized data analysis via the German Research Data Portal for Health of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities) MUST be supported, so that the FHIR server exposes a CapabilityStatement under `[BASE_URL]/metadata`. Within this CapabilityStatement it MUST be stated which profiles, including their version, as well as which search parameters are supported.

The following lists which content MUST be stated in the CapabilityStatement. In addition, conformance to the following CapabilityStatement MUST be declared in the respective CapabilityStatement instance under [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement`

Artifact page: [MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.html)

{% include CapabilityStatement-mii-cps-dokument-capabilitystatement-html-en.xhtml %}
