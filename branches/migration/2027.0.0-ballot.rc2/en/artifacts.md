# Artifacts Summary - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [ MII CPS Dokument CapabilityStatement  ](CapabilityStatement-mii-cps-dokument-capabilitystatement.md) | ```
Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss,
um das Modul Dokument der Medizininformatik Initiative zu implementieren.

```
 |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [ MII LM Dokument  ](StructureDefinition-mii-lm-dokument.md) | MII Logical Model KDS-Modul Dokument |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII PR Dokument Dokument  ](StructureDefinition-mii-pr-dokument-dokument.md) | Klinisches Dokument mit zugehörigen Metadaten |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII EX Dokument NLP Processing Status  ](StructureDefinition-mii-ex-dokument-nlp-processing-status.md) | Status der NLP-Verarbeitung des referenzierten Dokuments |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII VS Dokument Einrichtungsart  ](ValueSet-mii-vs-dokument-einrichtungsart.md) | ValueSet zur Art der erzeugenden Einrichtung eines Dokuments |
| [ MII VS Dokument Fachgebiet  ](ValueSet-mii-vs-dokument-fachgebiet.md) | ValueSet zum erzeugenden Fachgebiet eines Dokuments |
| [ MII VS Dokument Format Code  ](ValueSet-mii-vs-dokument-format-code.md) | ValueSet zum (komplexen) Format Code eines Dokuments |
| [ MII VS Dokument NLP Processing Status  ](ValueSet-mii-vs-dokument-nlp-processing-status.md) | ValueSet zum Status der NLP-Verarbeitung des referenzierten Dokuments |
| [ MII VS Dokument SCT Dokument Kategorie  ](ValueSet-mii-vs-dokument-sct-dokument-kategorie.md) | SNOMED CT ValueSet zur Kategorie (oder Klasse) eines Dokuments |
| [ MII VS Dokument SCT Dokument Typ  ](ValueSet-mii-vs-dokument-sct-dokument-typ.md) | SNOMED CT ValueSet zum Typ eines Dokuments |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ ISO 3166-1 (Build-Fragment)  ](CodeSystem-iso3166-1-fragment.md) | Build-Terminologie — ISO-3166-1-Fragment (Deutschland), damit der Publisher die Jurisdiktion auf jedem Terminologieserver auflösen kann. |
| [ ISO 3166-2 (Build-Fragment)  ](CodeSystem-iso3166-2-fragment.md) | Build-Terminologie — ISO-3166-2-Fragment, Mitglied des Jurisdiktions-ValueSets. |
| [ MII CS Dokument NLP Processing Status  ](CodeSystem-mii-cs-dokument-nlp-processing-status.md) | Status der NLP-Verarbeitung des referenzierten Dokuments |
| [ UN M49 (Build-Fragment)  ](CodeSystem-unsd-m49-fragment.md) | Build-Terminologie — UN-M49-Regionen-Fragment, Mitglied des Jurisdiktions-ValueSets. |

### Example: Example Scenarios 

These define groups of interrelated examples that demonstrate one or more of the workflows supported by this implementation guide.

| | |
| :--- | :--- |
| [ NLP-Pipeline „Amanda Alzheimer“  ](ExampleScenario-NlpPipelineAmandaAlzheimer.md) | Beispielszenario: Verarbeitung eines synthetischen ärztlichen Entlassbriefs durch eine NLP-Pipeline — Ingestion, Preprocessing, De-Identification und Annotation — mit den Dokumentreferenzen jedes Verarbeitungsschritts und ihren NLP-Verarbeitungsstatus. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ Abteilungskontakt  ](Encounter-AmandaAlzheimerAbteilungskontakt.md) | Synthetischer Abteilungskontakt (Kontaktebene) zum NLP-Pipeline-Beispiel. |
| [ Annotiertes Dokument  ](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md) | Beispiel der NLP-Pipeline, Schritt Annotation: Archiv `Annotat.zip`, Status `annotated, semantic, surrogated, preprocessed, format-change`, erweitert mit `appends` den vorherigen Schritt. |
| [ De-identifiziertes Dokument  ](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md) | Beispiel der NLP-Pipeline, Schritt De-Identification: `De-ID.txt`, Status `preprocessed, format-change, surrogated`, verweist mit `transforms` auf das Klartextdokument. |
| [ Einrichtungskontakt  ](Encounter-AmandaAlzheimerEinrichtungskontakt.md) | Synthetischer Einrichtungskontakt (Kontaktebene) zum NLP-Pipeline-Beispiel. |
| [ Klartext-Dokument  ](DocumentReference-AmandaAlzheimerKlartextDokument.md) | Beispiel der NLP-Pipeline, Schritt Preprocessing: Klartextfassung `Amanda_Alzheimer.txt`, Status `preprocessed, format-change`, verweist mit `transforms` auf das Original. |
| [ Original-Dokument (DOCX)  ](DocumentReference-AmandaAlzheimerOriginalDokument.md) | Beispiel der NLP-Pipeline „Amanda Alzheimer“, Schritt Ingestion: Dokumentreferenz auf den synthetischen Entlassbrief `Amanda_Alzheimer.docx`, NLP-Verarbeitungsstatus `unprocessed`. |
| [ Patientin Amanda Alzheimer  ](Patient-AmandaAlzheimer.md) | Synthetische Patientin des NLP-Pipeline-Beispiels; wird nur vom Original-Dokument und dessen Dokumentreferenz verwendet. |
| [ Versorgungsstellenkontakt  ](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.md) | Synthetischer Versorgungsstellenkontakt (Kontaktebene) zum NLP-Pipeline-Beispiel. |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [ Expansion-Manifest  ](Parameters-mii-param-dokument-manifest.md) | Expansions-Parameter des Moduls — pinnt die Editionen der verwendeten Codesysteme (SNOMED CT 20260701) für die ValueSet-Expansionen dieses Leitfadens. |

