<!-- markdownlint-disable MD041 -->
<!-- English translation of the German default page input/pagecontent/search-parameters.md. -->
<!-- TODO:REVIEW machine-translated from the German default page -->

This page lists the search parameters of the **Dokument** module. The module
defines no module-specific SearchParameter artifacts (naming convention
`MII_SP_<Module>_<Name>`); cross-module search parameters are defined by the
Meta module. The normative definition of the supported search parameters is the
[module's CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.html).

### Supported search parameters

The following table reads names and types from the CapabilityStatement at build time:

{% sql {
 "query" : "select json_extract(s.value,'$.name') as Param, json_extract(s.value,'$.type') as Type from Resources r, json_each(r.Json,'$.rest[0].resource[0].searchParam') s where r.Type='CapabilityStatement'",
 "columns" : [
  { "title" : "Search parameter", "type" : "text", "source" : "Param" },
  { "title" : "Type", "type" : "text", "source" : "Type" }
 ]
} %}

### Example calls

The machine-readable declaration of the same 24 search parameters is in the
[module's CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.html)
(`input/fsh/definitions/mii-cps-dokument-capabilitystatement.fsh`) — that is where it is normative.
The list below adds example invocations and pointers into the FHIR base specification
and must be kept in sync with every change to the CapabilityStatement.

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?_id=12345`

    Usage notes: further information on searching by "_id" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

2. The search parameter "_profile" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument`

    Usage notes: further information on searching by "_profile" can be found in the [FHIR base specification - section "URI Search"](https://hl7.org/fhir/R4/search.html#uri).

3. The search parameter "identifier" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?identifier=urn:ietf:rfc:3986|urn:uuid:0c287d32-01e3-4d87-9953-9fcc9404eb21`

    Usage notes: further information on searching by "identifier" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "status" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?status=current`

    Usage notes: further information on searching by "status" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "doc-status" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?doc-status=final`

    Usage notes: further information on searching by "doc-status" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

6. The search parameter "type" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?type=http://dvmd.de/fhir/CodeSystem/kdl|AD010110`

    Usage notes: further information on searching by "type" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

7. The search parameter "category" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?category=http://ihe-d.de/CodeSystems/IHEXDSclassCode|BRI`

    Usage notes: further information on searching by "category" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

8. The search parameter "patient" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?patient=Patient/AmandaAlzheimer`

    Usage notes: further information on searching by "patient" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

9. The search parameter "relation" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?relation=http://hl7.org/fhir/document-relationship-type|transforms`

    Usage notes: further information on searching by "relation" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

10. The search parameter "relatesto" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?relatesto=DocumentReference/AmandaAlzheimerOriginalDokument`

    Usage notes: further information on searching by "relatesto" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

11. The search parameter "relationship" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?relationship=http://hl7.org/fhir/document-relationship-type|transforms$DocumentReference/AmandaAlzheimerOriginalDokument`

    Usage notes: further information on searching by "relationship" can be found in the [FHIR base specification - section "Composite Search"](https://hl7.org/fhir/R4/search.html#composite).

12. The search parameter "description" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?description:contains=Bericht`

    Usage notes: further information on searching by "description" can be found in the [FHIR base specification - section "String Search"](https://hl7.org/fhir/R4/search.html#string).

13. The search parameter "security-label" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?security-label=http://terminology.hl7.org/CodeSystem/v3-Confidentiality|L`

    Usage notes: further information on searching by "security-label" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

14. The search parameter "contenttype" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?contenttype=urn:ietf:bcp:13|text/plain`

    Usage notes: further information on searching by "contenttype" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

15. The search parameter "language" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?language=urn:ietf:bcp:47|de-AT`

    Usage notes: further information on searching by "language" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

16. The search parameter "location" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?location=below:http://uk-musterstadt.de/document-management-system`

    Usage notes: further information on searching by "location" can be found in the [FHIR base specification - section "URI Search"](https://hl7.org/fhir/R4/search.html#uri).

17. The search parameter "creation" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?creation=eq2025-06-23`

    Usage notes: further information on searching by "creation" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).

18. The search parameter "format" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?format=http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode|urn:ihe:iti:xds:2017:mimeTypeSufficient`

    Usage notes: further information on searching by "format" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

19. The search parameter "encounter" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?encounter=Encounter/AmandaAlzheimerEinrichtungskontakt`

    Usage notes: further information on searching by "encounter" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

20. The search parameter "event" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?event=http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung|E234`

    Usage notes: further information on searching by "event" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

21. The search parameter "period" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?period=ge2028-01-24&period=le2028-02-06`

    Usage notes: further information on searching by "period" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).

22. The search parameter "facility" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?facility=http://ihe-d.de/CodeSystems/PatientBezogenenGesundheitsversorgung|KHS`

    Usage notes: further information on searching by "facility" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

23. The search parameter "setting" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?setting=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen|INTZ`

    Usage notes: further information on searching by "setting" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

24. The search parameter "nlp-processing-status" MUST be supported:

    Examples:

    `GET [base]/DocumentReference?nlp-processing-status=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status|unprocessed`

    Usage notes: further information on searching by "nlp-processing-status" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
