# ValueSets - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* **ValueSets**

## ValueSets

Diese Seite beschreibt die ValueSets des Moduls **Dokument** (Namenskonvention `MII_VS_<Modul>_<Name>`). Allgemeine Hinweise zur Verwendung von Codes: siehe [FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html); die zugrunde liegenden CodeSystems beschreibt die Seite [CodeSystems](code-systems.md).

> **Expansionen:** ValueSet-Expansionen dieses Leitfadens werden über einen FHIR-Terminologieserver erzeugt — über SU-TermServ, sofern das Client-Zertifikat konfiguriert ist, sonst über den öffentlichen HL7-Server `tx.fhir.org` (dann expandieren einige KDS-spezifische ValueSets ggf. nicht vollständig).

SNOMED-CT-Inhalte dieses Moduls verwenden die **International Edition, Version 20260701** (`http://snomed.info/sct/900000000000207008/version/20260701`) gemäß der MII Terminology Version Policy; die Festlegung ist im Expansion-Manifest (`Parameters/mii-param-dokument-manifest`) sowie in den ValueSet-Definitionen selbst verankert.

-------

### Definierte ValueSets

Übersicht der modul-eigenen ValueSets, beim Build aus dem Paket gelesen (Beschreibungen in der Quellsprache der Ressourcen):

| | | |
| :--- | :--- | :--- |
| ValueSet | Status | Beschreibung |
| [MII_VS_Dokument_Einrichtungsart](ValueSet-mii-vs-dokument-einrichtungsart.md) | active | ValueSet zur Art der erzeugenden Einrichtung eines Dokuments |
| [MII_VS_Dokument_Fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.md) | active | ValueSet zum erzeugenden Fachgebiet eines Dokuments |
| [MII_VS_Dokument_Format_Code](ValueSet-mii-vs-dokument-format-code.md) | active | ValueSet zum (komplexen) Format Code eines Dokuments |
| [MII_VS_Dokument_NLP_Processing_Status](ValueSet-mii-vs-dokument-nlp-processing-status.md) | active | ValueSet zum Status der NLP-Verarbeitung des referenzierten Dokuments |
| [MII_VS_Dokument_SCT_Dokument_Kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.md) | active | SNOMED CT ValueSet zur Kategorie (oder Klasse) eines Dokuments |
| [MII_VS_Dokument_SCT_Dokument_Typ](ValueSet-mii-vs-dokument-sct-dokument-typ.md) | active | SNOMED CT ValueSet zum Typ eines Dokuments |

Die nachfolgenden ValueSets werden in diesem Modul selbst definiert.

#### Dokumententypen

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

* SNOMED CT Codes unterhalb (Nachfahren) des Codes `229059009 | Document type code`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe [MII VS Dokument SCT Dokument Typ](ValueSet-mii-vs-dokument-sct-dokument-typ.md).

#### Dokumentenklassen

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

* SNOMED CT Codes unterhalb (Nachfahren) des Codes `424545009 | Record composition (record artifact)`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe [MII VS Dokument SCT Dokument Kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.md).

#### Format Codes

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

* IHE XDS Format Codes aus `http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode`
* IHE-D XDS Format Codes aus `http://ihe-d.de/ValueSets/IHEXDSformatCodeDE`

Siehe [MII VS Dokument Format Code](ValueSet-mii-vs-dokument-format-code.md).

### Logical Definition (CLD)

#### Einrichtungsarten

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

* SNOMED CT Codes unterhalb (Nachfahren) des Codes `440654001 | Inpatient environment (environment)`
* SNOMED CT Codes unterhalb (Nachfahren) des Codes `440655000 | Outpatient environment (environment)`
* SNOMED CT Codes unterhalb (Nachfahren) des Codes `43741000 | Site of care (environment)`
* IHE-D XDS Healthcare Facility Type Codes aus `http://ihe-d.de/ValueSets/IHEXDShealthcareFacilityTypeCode`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe [MII VS Dokument Einrichtungsart](ValueSet-mii-vs-dokument-einrichtungsart.md).

#### Klinische Fachgebiete

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

* SNOMED CT Codes unterhalb (Nachfahren) des Codes `394733009 | Medical specialty (qualifier value)`
* IHE-D XDS Practice Setting Codes aus `http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe [MII VS Dokument Fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.md).

#### NLP-Verarbeitungsstatus

Das ValueSet [MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.md) fasst die Konzepte des modul-eigenen CodeSystems [MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.md) zusammen; es wird von der Extension [NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md) gebunden.

### Logical Definition (CLD)

-------

### Verwendete ValueSets

#### Allgemeine Angaben

Die nachfolgenden Terminologien bilden den Kern der fachlichen Dokumentenzuordnung im Modul DOKUMENT:

* [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl) - dies ist die Empfehlung
* IHE XDS ValueSets (z.B. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode), [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode), [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode), [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))
* Optional: SNOMED CT zur spezifischeren Zuordnung der klinischen Dokumente oder zugehörigen medizinischen Domäne

#### HL7 Basisprofil R4

Für die im Basisprofil FHIR R4 deklarierten ValueSets gelten im weiteren folgende Empfehlungen:

| | |
| :--- | :--- |
| [document-reference-status](https://www.hl7.org/fhir/R4/valueset-document-reference-status.html) | HL7 Basisprofil, meist:`current` |
| [composition-status](https://www.hl7.org/fhir/R4/valueset-composition-status.html) | HL7 Basisprofil, meist`final` |
| [document.relationship-type](https://www.hl7.org/fhir/R4/valueset-document-relationship-type.html) | HL7 Basisprofil, meist:`transforms`oder`appends` |
| [security-labels](https://www.hl7.org/fhir/R4/valueset-security-labels.html) | Wir empfehlen, auch für die ISiK Kompatibilität, zumindest die Nutzung des HL7 Basisprofil Subsets aus http://terminology.hl7.org/CodeSystem/v3-Confidentiality, z. B.`N`(normal) für patientenbezogene Dokumente;`R`(restricted) und`V`(very restricted) für besonders schutzbedürftige Inhalte |
| [mimetypes](https://www.hl7.org/fhir/R4/valueset-mimetypes.html) | HL7 Basisprofil, z.B.`text/plain` |
| [languages](https://www.hl7.org/fhir/R4/valueset-languages.html) | HL7 Basisprofil, z.B.`de`oder`de-DE` |
| content.format | Keine gesonderte Empfehlung, aber ISiK möglich |
| context.event | Keine gesonderte Empfehlung, aber ISiK möglich |
| context.facilityType | Empfehlung nach den[Deutschen Basisprofilen](https://simplifier.net/packages/de.basisprofil.r4/1.6.0), meist`KHS` |
| context.practiceSetting | Keine gesonderte Empfehlung, aber ISiK möglich |

