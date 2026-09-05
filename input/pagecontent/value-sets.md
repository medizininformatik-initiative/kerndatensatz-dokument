<!-- markdownlint-disable MD041 -->
<!-- Standardsprachseite (Deutsch; DE-first). Englische Übersetzung:
     input/translations/en/pagecontent/value-sets.md (aufgeteilt aus
     der früheren Seite terminology.md gemäß der TF-KDS-abgestimmten Menüstruktur).
     Der IG-Publisher listet die ValueSets auf den Artefakt-Seiten automatisch;
     hier stehen die MII-Hinweise dazu sowie die Abschnitte zu den definierten
     und den verwendeten ValueSets (von code-systems.md hierher verschoben).
     Inline gerendert werden nur die beiden kleinen modul-eigenen ValueSets,
     und zwar als Content Logical Definition (-cld) statt als Expansion, weil
     Expansionen vom Terminologieserver der Build-Umgebung abhängen. -->

Diese Seite beschreibt die ValueSets des Moduls **Dokument**
(Namenskonvention `MII_VS_<Modul>_<Name>`). Allgemeine Hinweise zur Verwendung
von Codes: siehe
[FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html); die
zugrunde liegenden CodeSystems beschreibt die Seite
[CodeSystems](code-systems.html).

> **Expansionen:** ValueSet-Expansionen dieses Leitfadens werden über einen
> FHIR-Terminologieserver erzeugt — über SU-TermServ, sofern das
> Client-Zertifikat konfiguriert ist, sonst über den öffentlichen HL7-Server
> `tx.fhir.org` (dann expandieren einige KDS-spezifische ValueSets ggf. nicht
> vollständig).
{: .ig-highlight .ig-highlight-blue}

SNOMED-CT-Inhalte dieses Moduls verwenden die **International Edition,
Version 20260701** (`http://snomed.info/sct/900000000000207008/version/20260701`)
gemäß der MII Terminology Version Policy; die Festlegung ist im
Expansion-Manifest (`Parameters/mii-param-dokument-manifest`) sowie in den
ValueSet-Definitionen selbst verankert.

---

### Definierte ValueSets

Die nachfolgenden ValueSets werden in diesem Modul selbst definiert.

#### Dokumententypen

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `229059009 | Document type code`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe [MII VS Dokument SCT Dokument Typ](ValueSet-mii-vs-dokument-sct-dokument-typ.html).

#### Dokumentenklassen

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `424545009 | Record composition (record artifact)`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe [MII VS Dokument SCT Dokument Kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.html).

#### Format Codes

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- IHE XDS Format Codes aus `http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode`
- IHE-D XDS Format Codes aus `http://ihe-d.de/ValueSets/IHEXDSformatCodeDE`

Siehe [MII VS Dokument Format Code](ValueSet-mii-vs-dokument-format-code.html).

{% include ValueSet-mii-vs-dokument-format-code-cld-de.xhtml %}

#### Einrichtungsarten

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `440654001 | Inpatient environment (environment)`
- SNOMED CT Codes unterhalb (Nachfahren) des Codes `440655000 | Outpatient environment (environment)`
- SNOMED CT Codes unterhalb (Nachfahren) des Codes `43741000 | Site of care (environment)`
- IHE-D XDS Healthcare Facility Type Codes aus `http://ihe-d.de/ValueSets/IHEXDShealthcareFacilityTypeCode`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe [MII VS Dokument Einrichtungsart](ValueSet-mii-vs-dokument-einrichtungsart.html).

#### Klinische Fachgebiete

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `394733009 | Medical specialty (qualifier value)`
- IHE-D XDS Practice Setting Codes aus `http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe [MII VS Dokument Fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.html).

#### NLP-Verarbeitungsstatus

Das ValueSet
[MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.html)
fasst die Konzepte des modul-eigenen CodeSystems
[MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html)
zusammen; es wird von der Extension
[NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)
gebunden.

{% include ValueSet-mii-vs-dokument-nlp-processing-status-cld-de.xhtml %}

---

### Verwendete ValueSets

#### Allgemeine Angaben

Die nachfolgenden Terminologien bilden den Kern der fachlichen Dokumentenzuordnung im Modul DOKUMENT:

  * [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl) - dies ist die Empfehlung
  * IHE XDS ValueSets (z.B. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode), [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode), [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode), [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))
  * Optional: SNOMED CT zur spezifischeren Zuordnung der klinischen Dokumente oder zugehörigen medizinischen Domäne

#### HL7 Basisprofil R4

Für die im Basisprofil FHIR R4 deklarierten ValueSets gelten im weiteren folgende Empfehlungen:

| ValueSet | Beschreibung & Beispiel |
| -- | -- |
| [document-reference-status](https://www.hl7.org/fhir/R4/valueset-document-reference-status.html) | HL7 Basisprofil, meist: `current` |
| [composition-status](https://www.hl7.org/fhir/R4/valueset-composition-status.html) | HL7 Basisprofil, meist `final` |
| [document.relationship-type](https://www.hl7.org/fhir/R4/valueset-document-relationship-type.html) | HL7 Basisprofil, meist: `transforms` oder `appends`|
| [security-labels](https://www.hl7.org/fhir/R4/valueset-security-labels.html) | Wir empfehlen, auch für die ISIK Kompatibilität, zumindest die Nutzung des HL7 Basisprofil Subsets aus http://terminology.hl7.org/CodeSystem/v3-Confidentiality, z.B. `N` für restricted / patientenbezogene Dokumente |
|  [mimetypes](https://www.hl7.org/fhir/R4/valueset-mimetypes.html) | HL7 Basisprofil, z.B. `text/plain` |
|  [languages](https://www.hl7.org/fhir/R4/valueset-languages.html) | HL7 Basisprofil, z.B. `de` oder `de-DE` |
| content.format | Keine gesonderte Empfehlung, aber ISiK möglich|
| context.event | Keine gesonderte Empfehlung, aber ISiK möglich |
| context.facilityType | Empfehlung nach [ISIK](https://simplifier.net/packages/de.basisprofil.r4/1.4.0/files/656621), meist `KHS` |
| context.practiceSetting | Keine gesonderte Empfehlung, aber ISiK möglich |
