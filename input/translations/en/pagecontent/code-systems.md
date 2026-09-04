<!-- markdownlint-disable MD041 -->
<!-- English translation of the German default page input/pagecontent/code-systems.md (DE-first). -->
<!-- Split from the former terminology.md per the TF-KDS-agreed menu structure (one
     page per artifact type). The IG Publisher lists the CodeSystems on the
     artifact pages automatically; this page carries the MII notes on them.
     The prose of the Simplifier page "Terminologien" (MIIIGModulDokument/
     TechnischeImplementierung/Terminologien) is carried over here; the
     Simplifier render directives are replaced by links to the artifact pages
     the IG Publisher generates.
     German mirror: input/translations/de/pagecontent/code-systems.md. -->

This page describes the CodeSystems of the **Dokument** module (naming
convention `MII_CS_<Module>_<Name>`). The ValueSets built on them are described
on the [Value Sets](value-sets.html) page.

{:.bg-info}
**Important:** CodeSystem resources of external terminologies (e.g. ICD-10-GM,
OPS, SNOMED CT) are **not** published in this module; they are obtained from the
central KDS terminology service (SU-TermServ):
[https://mii-termserv.de/](https://mii-termserv.de/).

<!-- TODO:REVIEW machine-translated -->
Description of the module's own ValueSets, use of international terminologies, licences:

---

### Classification of NLP processing results

The concepts of the CodeSystem are shown on the artifact page
[MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html);
the corresponding ValueSet is
[MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.html)
(see also the extension
[NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)).

---

### Defined ValueSets

The following ValueSets are defined in this module itself; the general notes on
ValueSets and expansions are on the [Value Sets](value-sets.html) page.

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
| [security-labels](https://www.hl7.org/fhir/R4/valueset-security-labels.html) | We recommend, also for ISiK compatibility, at least the use of the HL7 base profile subset from http://terminology.hl7.org/CodeSystem/v3-Confidentiality, e.g. `N` for restricted / patient-related documents |
| [mimetypes](https://www.hl7.org/fhir/R4/valueset-mimetypes.html) | HL7 base profile, e.g. `text/plain` |
| [languages](https://www.hl7.org/fhir/R4/valueset-languages.html) | HL7 base profile, e.g. `de` or `de-DE` |
| content.format | No separate recommendation, but ISiK possible |
| context.event | No separate recommendation, but ISiK possible |
| context.facilityType | Recommendation per [ISiK](https://simplifier.net/packages/de.basisprofil.r4/1.4.0/files/656621), usually `KHS` |
| context.practiceSetting | No separate recommendation, but ISiK possible |
