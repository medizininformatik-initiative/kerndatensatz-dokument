<!-- markdownlint-disable MD041 -->
<!-- Split from the former terminology.md per the TF-KDS-agreed menu structure (one
     page per artifact type); SNOMED CT version policy from the meta wiki page
     "Terminology Version Policy". The IG Publisher lists the ValueSets on the
     artifact pages automatically; this page carries the MII notes on them plus
     the sections on the defined and the used ValueSets (moved here from
     code-systems.md). Only the two small module-owned ValueSets are rendered
     inline, and as a content logical definition (-cld) rather than as an
     expansion, because expansions depend on the build environment's
     terminology server. -->

This page describes the ValueSets of the **Dokument** module. For general
guidance on using codes, see
[FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html); the code systems
the sets draw from are described on the [Code Systems](code-systems.html) page.

> **Expansions:** ValueSet expansions in this guide are produced by a FHIR
> terminology server — SU-TermServ if the client certificate is configured,
> otherwise the public HL7 server `tx.fhir.org` (in which case some KDS-specific
> ValueSets may not expand completely).
{: .ig-highlight .ig-highlight-blue}

SNOMED CT content of this module uses the **International Edition, version
20260701** (`http://snomed.info/sct/900000000000207008/version/20260701`) per
the MII Terminology Version Policy; the pin is anchored in the expansion
manifest (`Parameters/mii-param-dokument-manifest`) and in the ValueSet
definitions themselves.

---

### Defined ValueSets

Overview of the module's own ValueSets, read from the package at build time (descriptions in the resources' source language):

{% sql {
 "query" : "select distinct v.Name, r.Web, v.Status, v.Description from ValueSetList v join Resources r on r.Key = v.ResourceKey where v.ViewType = 1 order by v.Name",
 "class" : "grid sql-table",
 "columns" : [
  { "title" : "ValueSet", "type" : "link", "source" : "Name", "target" : "Web" },
  { "title" : "Status", "type" : "text", "source" : "Status" },
  { "title" : "Description", "type" : "markdown", "source" : "Description" }
 ]
} %}

The following ValueSets are defined in this module itself.

#### Document types

To narrow down the possible codes, the following restriction was made with regard to the selection:

- SNOMED CT codes below (descendants of) the code `229059009 | Document type code`

The ValueSet created for this MII KDS module contains exclusively these codes.

See [MII VS Dokument SCT Dokument Typ](ValueSet-mii-vs-dokument-sct-dokument-typ.html).

#### Document classes

To narrow down the possible codes, the following restriction was made with regard to the selection:

- SNOMED CT codes below (descendants of) the code `424545009 | Record composition (record artifact)`

The ValueSet created for this MII KDS module contains exclusively these codes.

See [MII VS Dokument SCT Dokument Kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.html).

#### Format codes

To narrow down the possible codes, the following restriction was made with regard to the selection:

- IHE XDS format codes from `http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode`
- IHE-D XDS format codes from `http://ihe-d.de/ValueSets/IHEXDSformatCodeDE`

See [MII VS Dokument Format Code](ValueSet-mii-vs-dokument-format-code.html).

{% include ValueSet-mii-vs-dokument-format-code-cld-en.xhtml %}

#### Facility types

To narrow down the possible codes, the following restriction was made with regard to the selection:

- SNOMED CT codes below (descendants of) the code `440654001 | Inpatient environment (environment)`
- SNOMED CT codes below (descendants of) the code `440655000 | Outpatient environment (environment)`
- SNOMED CT codes below (descendants of) the code `43741000 | Site of care (environment)`
- IHE-D XDS healthcare facility type codes from `http://ihe-d.de/ValueSets/IHEXDShealthcareFacilityTypeCode`

The ValueSet created for this MII KDS module contains exclusively these codes.

See [MII VS Dokument Einrichtungsart](ValueSet-mii-vs-dokument-einrichtungsart.html).

#### Clinical specialties

To narrow down the possible codes, the following restriction was made with regard to the selection:

- SNOMED CT codes below (descendants of) the code `394733009 | Medical specialty (qualifier value)`
- IHE-D XDS practice setting codes from `http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode`

The ValueSet created for this MII KDS module contains exclusively these codes.

See [MII VS Dokument Fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.html).

#### NLP processing status

The ValueSet
[MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.html)
collects the concepts of the module's own CodeSystem
[MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html);
it is bound by the extension
[NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html).

{% include ValueSet-mii-vs-dokument-nlp-processing-status-cld-en.xhtml %}

---

### Used ValueSets

#### General information

The following terminologies form the core of the clinical document classification in the DOKUMENT module:

  * [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl) - this is the recommendation
  * IHE XDS ValueSets (e.g. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode), [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode), [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode), [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))
  * Optional: SNOMED CT for a more specific classification of the clinical documents or of the associated medical domain

#### HL7 base profile R4

For the ValueSets declared in the FHIR R4 base profile, the following recommendations apply in addition:

| ValueSet | Description & example |
| -- | -- |
| [document-reference-status](https://www.hl7.org/fhir/R4/valueset-document-reference-status.html) | HL7 base profile, usually: `current` |
| [composition-status](https://www.hl7.org/fhir/R4/valueset-composition-status.html) | HL7 base profile, usually `final` |
| [document.relationship-type](https://www.hl7.org/fhir/R4/valueset-document-relationship-type.html) | HL7 base profile, usually: `transforms` or `appends` |
| [security-labels](https://www.hl7.org/fhir/R4/valueset-security-labels.html) | We recommend, also for ISiK compatibility, at least the use of the HL7 base profile subset from http://terminology.hl7.org/CodeSystem/v3-Confidentiality, e.g. `N` (normal) for patient-related documents; `R` (restricted) and `V` (very restricted) for particularly sensitive content |
| [mimetypes](https://www.hl7.org/fhir/R4/valueset-mimetypes.html) | HL7 base profile, e.g. `text/plain` |
| [languages](https://www.hl7.org/fhir/R4/valueset-languages.html) | HL7 base profile, e.g. `de` or `de-DE` |
| content.format | No separate recommendation, but ISiK possible |
| context.event | No separate recommendation, but ISiK possible |
| context.facilityType | Recommendation per the [German base profiles](https://simplifier.net/packages/de.basisprofil.r4/1.6.0), usually `KHS` |
| context.practiceSetting | No separate recommendation, but ISiK possible |
