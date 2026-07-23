# Artifacts Summary - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.md) | ```
Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss,
um das Modul Dokument der Medizininformatik Initiative zu implementieren.

```
 |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [MII LM Dokument](StructureDefinition-mii-lm-dokument.md) | MII Logical Model KDS-Modul Dokument |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md) | Klinisches Dokument mit zugehörigen Metadaten |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md) | Status der NLP-Verarbeitung des referenzierten Dokuments |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MII VS Dokument Einrichtungart](ValueSet-mii-vs-dokument-einrichtungsart.md) | ValueSet zur Art der erzeugenden Einrichtung eines Dokuments |
| [MII VS Dokument Fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.md) | ValueSet zum erzeugenden Fachgebiet eines Dokuments |
| [MII VS Dokument Format Code](ValueSet-mii-vs-dokument-format-code.md) | ValueSet zum (komplexen) Format Code eines Dokuments |
| [MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.md) | ValueSet zum Status der NLP-Verarbeitung des referenzierten Dokuments |
| [MII VS Dokument SCT Dokument Kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.md) | SNOMED CT ValueSet zur Kategorie (oder Klasse) eines Dokuments |
| [MII VS Dokument SCT Dokument Typ](ValueSet-mii-vs-dokument-sct-dokument-typ.md) | SNOMED CT ValueSet zum Typ eines Dokuments |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MII VS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.md) | Status der NLP-Verarbeitung des referenzierten Dokuments |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [AmandaAlzheimer](Patient-AmandaAlzheimer.md) |
| [AmandaAlzheimerAbteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.md) |
| [AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md) |
| [AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md) |
| [AmandaAlzheimerEinrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.md) |
| [AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md) |
| [AmandaAlzheimerVersorgungsstellenKontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.md) |

