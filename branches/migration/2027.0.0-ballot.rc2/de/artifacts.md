# Artefaktübersicht - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Artefaktübersicht**

## Artefaktübersicht

Diese Seite bietet eine Liste der FHIR-Artefakte, die in diesem Implementierungsleitfaden definiert sind.

### Verhalten: CapabilityStatements 

Die folgenden Artefakte definieren die spezifischen Fähigkeiten, die verschiedene Systemtypen haben müssen, um diesem Implementierungsleitfaden zu entsprechen. Von Systemen, die mit dem Implementierungsleitfaden konform sind, wird erwartet, dass sie die Konformität mit einem oder mehreren der folgenden Capability Statements deklarieren.

| | |
| :--- | :--- |
| [ MII CPS Dokument CapabilityStatement  ](CapabilityStatement-mii-cps-dokument-capabilitystatement.md) | ```
Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss,
um das Modul Dokument der Medizininformatik Initiative zu implementieren.

```
 |

### Strukturen: Logische Modelle 

Diese definieren Datenmodelle, die den von diesem Implementierungsleitfaden abgedeckten Bereich in geschäftsfreundlicheren Begriffen darstellen als die zugrunde liegenden FHIR-Ressourcen.

| | |
| :--- | :--- |
| [ MII LM Dokument  ](StructureDefinition-mii-lm-dokument.md) | MII Logical Model KDS-Modul Dokument |

### Strukturen: Ressourcenprofile 

Diese definieren Einschränkungen für FHIR-Ressourcen für Systeme, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII PR Dokument Dokument  ](StructureDefinition-mii-pr-dokument-dokument.md) | Klinisches Dokument mit zugehörigen Metadaten |

### Strukturen: Extension-Definitionen 

Diese definieren Einschränkungen für FHIR-Datentypen für Systeme, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII EX Dokument NLP Processing Status  ](StructureDefinition-mii-ex-dokument-nlp-processing-status.md) | Status der NLP-Verarbeitung des referenzierten Dokuments |

### Terminologie: ValueSets 

Diese definieren Wertemengen, die von Systemen verwendet werden, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII VS Dokument Einrichtungart  ](ValueSet-mii-vs-dokument-einrichtungsart.md) | ValueSet zur Art der erzeugenden Einrichtung eines Dokuments |
| [ MII VS Dokument Fachgebiet  ](ValueSet-mii-vs-dokument-fachgebiet.md) | ValueSet zum erzeugenden Fachgebiet eines Dokuments |
| [ MII VS Dokument Format Code  ](ValueSet-mii-vs-dokument-format-code.md) | ValueSet zum (komplexen) Format Code eines Dokuments |
| [ MII VS Dokument NLP Processing Status  ](ValueSet-mii-vs-dokument-nlp-processing-status.md) | ValueSet zum Status der NLP-Verarbeitung des referenzierten Dokuments |
| [ MII VS Dokument SCT Dokument Kategorie  ](ValueSet-mii-vs-dokument-sct-dokument-kategorie.md) | SNOMED CT ValueSet zur Kategorie (oder Klasse) eines Dokuments |
| [ MII VS Dokument SCT Dokument Typ  ](ValueSet-mii-vs-dokument-sct-dokument-typ.md) | SNOMED CT ValueSet zum Typ eines Dokuments |

### Terminologie: CodeSysteme 

Diese definieren neue CodeSysteme, die von Systemen verwendet werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII CS Dokument NLP Processing Status  ](CodeSystem-mii-cs-dokument-nlp-processing-status.md) | Status der NLP-Verarbeitung des referenzierten Dokuments |

### Beispiel: Beispielinstanzen 

Dies sind Beispielinstanzen, die zeigen, wie Daten aussehen könnten, die von Systemen produziert und konsumiert werden, die mit diesem Implementierungsleitfaden konform sind.

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

### Sonstige 

Dies sind Ressourcen, die in diesem Implementierungsleitfaden verwendet werden, die in keine der anderen Kategorien passen.

| | |
| :--- | :--- |
| [ Expansion-Manifest  ](Parameters-mii-param-dokument-manifest.md) | Expansions-Parameter des Moduls — pinnt die Editionen der verwendeten Codesysteme (SNOMED CT 20260701) für die ValueSet-Expansionen dieses Leitfadens. |

