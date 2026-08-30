<!-- markdownlint-disable MD041 -->
<!-- Standardsprachseite (Deutsch; DE-first). Englische Übersetzung:
     input/translations/en/pagecontent/code-systems.md (aufgeteilt aus
     der früheren Seite terminology.md gemäß der TF-KDS-abgestimmten Menüstruktur).
     Der IG-Publisher listet die CodeSystems auf den Artefakt-Seiten
     automatisch; hier stehen die MII-Hinweise dazu.
     Die Prosa der Simplifier-Seite "Terminologien" (MIIIGModulDokument/
     TechnischeImplementierung/Terminologien) ist hier wortgetreu übernommen;
     die render-Direktiven der Simplifier-Seite sind durch Verweise auf die vom
     IG-Publisher erzeugten Artefaktseiten ersetzt. -->


### CodeSystems

Diese Seite beschreibt die CodeSystems des Moduls **Dokument**
(Namenskonvention `MII_CS_<Modul>_<Name>`). Die darauf aufbauenden ValueSets
beschreibt die Seite [ValueSets](value-sets.html).

{:.bg-info}
**Wichtig:** CodeSystem-Ressourcen externer Terminologien (z. B. ICD-10-GM, OPS,
SNOMED CT) werden in diesem Modul **nicht** publiziert, sondern über den
zentralen KDS-Terminologieserver (SU-TermServ) bezogen:
[https://mii-termserv.de/](https://mii-termserv.de/).

Beschreibung von eigenen ValueSets, Verwendung internationaler Terminologien, Lizenzen:

---

#### Definierte CodeSystems

##### Klassifikation von NLP-Verarbeitungsergebnissen

Die Konzepte des CodeSystems zeigt die Artefaktseite
[MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html);
das zugehörige ValueSet ist
[MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.html)
(siehe auch die Extension
[NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)).

---

#### Definierte ValueSets

Die nachfolgenden ValueSets werden in diesem Modul selbst definiert; die
allgemeinen Hinweise zu ValueSets und Expansionen stehen auf der Seite
[ValueSets](value-sets.html).

##### Dokumententypen

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `229059009 | Document type code`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe [MII VS Dokument SCT Dokument Typ](ValueSet-mii-vs-dokument-sct-dokument-typ.html).

##### Dokumentenklassen

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `424545009 | Record composition (record artifact)`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe [MII VS Dokument SCT Dokument Kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.html).

##### Format Codes

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- IHE XDS Format Codes aus `http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode`
- IHE-D XDS Format Codes aus `http://ihe-d.de/ValueSets/IHEXDSformatCodeDE`

Siehe [MII VS Dokument Format Code](ValueSet-mii-vs-dokument-format-code.html).

##### Einrichtungsarten

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `440654001 | Inpatient environment (environment)`
- SNOMED CT Codes unterhalb (Nachfahren) des Codes `440655000 | Outpatient environment (environment)`
- SNOMED CT Codes unterhalb (Nachfahren) des Codes `43741000 | Site of care (environment)`
- IHE-D XDS Healthcare Facility Type Codes aus `http://ihe-d.de/ValueSets/IHEXDShealthcareFacilityTypeCode`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe [MII VS Dokument Einrichtungsart](ValueSet-mii-vs-dokument-einrichtungsart.html).

##### Klinische Fachgebiete

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `394733009 | Medical specialty (qualifier value)`
- IHE-D XDS Practice Setting Codes aus `http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe [MII VS Dokument Fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.html).

---

#### Verwendete ValueSets

##### Allgemeine Angaben

Die nachfolgenden Terminologien bilden den Kern der fachlichen Dokumentenzuordnung im Modul DOKUMENT:

  * [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl) - dies ist die Empfehlung
  * IHE XDS ValueSets (z.B. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode), [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode), [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode), [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))
  * Optional: SNOMED CT zur spezifischeren Zuordnung der klinischen Dokumente oder zugehörigen medizinischen Domäne

##### HL7 Basisprofil R4

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
