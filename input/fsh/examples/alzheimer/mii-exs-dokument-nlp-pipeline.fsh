// ExampleScenario of the NLP pipeline "Amanda Alzheimer" — the four DocumentReference
// stages and their context resources as a first-class rendered artifact (actors,
// process steps, instance table, sequence diagram). R4 ExampleScenario; the
// instances link the real example resources through the R5 cross-version
// extension ExampleScenario.instance.content (rendered as links by the publisher).
Instance: NlpPipelineAmandaAlzheimer
InstanceOf: ExampleScenario
Title: "NLP-Pipeline „Amanda Alzheimer“"
Description: "Beispielszenario: Verarbeitung eines synthetischen ärztlichen Entlassbriefs durch eine NLP-Pipeline — Ingestion, Preprocessing, De-Identification und Annotation — mit den Dokumentreferenzen jedes Verarbeitungsschritts und ihren NLP-Verarbeitungsstatus."
Usage: #definition
* insert Version
* insert SP_Publisher
* status = #draft
* name = "NlpPipelineAmandaAlzheimer"
* purpose = "Zeigt, wie das Dokument-Profil und die Extension MII_EX_Dokument_NLP_Processing_Status die Ergebnisdokumente einer NLP-Verarbeitungskette und ihre Beziehungen (relatesTo: transforms, appends) abbilden."
// actors
* actor[+]
  * actorId = "source"
  * type = #entity
  * name = "Dokumentenquelle"
  * description = "System oder Bestand, aus dem die zu verarbeitenden Dokumente stammen — im Beispiel der synthetische Korpus GraSCCo (Graz Synthetic Clinical text Corpus, DOI 10.5281/zenodo.6539130), aus dem der Entlassbrief `Amanda_Alzheimer.docx` stammt; in der Praxis etwa ein Dokumentenarchiv oder Dokumentenmanagementsystem, ein Krankenhausinformationssystem, eine Forschungsdatenbank oder ein Dateispeicher."
* actor[+]
  * actorId = "nlp"
  * type = #entity
  * name = "NLP-Pipeline"
  * description = "Verarbeitungskette aus Ingestion, Preprocessing, De-Identification und Annotation; jede Stufe erzeugt ein Ergebnisdokument und eine Dokumentreferenz."
* actor[+]
  * actorId = "repo"
  * type = #entity
  * name = "Dokumentenrepository (FHIR)"
  * description = "FHIR-Server, in dem die Dokumentreferenzen aller Stufen mit ihren NLP-Verarbeitungsstatus abgelegt werden."
// instances — each one links the real example resource
* instance[+]
  * resourceId = "AmandaAlzheimerOriginalDokument"
  * resourceType = #DocumentReference
  * name = "Original-Dokument (Amanda_Alzheimer.docx)"
  * description = "Dokumentreferenz auf das Originaldokument; NLP-Verarbeitungsstatus `unprocessed`."
  * extension[$exs-instance-content].valueReference = Reference(AmandaAlzheimerOriginalDokument)
* instance[+]
  * resourceId = "AmandaAlzheimerKlartextDokument"
  * resourceType = #DocumentReference
  * name = "Klartext-Dokument (Amanda_Alzheimer.txt)"
  * description = "Status `preprocessed, format-change`; `relatesTo.transforms` → Original-Dokument."
  * extension[$exs-instance-content].valueReference = Reference(AmandaAlzheimerKlartextDokument)
* instance[+]
  * resourceId = "AmandaAlzheimerDeIdentifiziertesDokument"
  * resourceType = #DocumentReference
  * name = "De-identifiziertes Dokument (De-ID.txt)"
  * description = "Status `preprocessed, format-change, surrogated`; `relatesTo.transforms` → Klartext-Dokument."
  * extension[$exs-instance-content].valueReference = Reference(AmandaAlzheimerDeIdentifiziertesDokument)
* instance[+]
  * resourceId = "AmandaAlzheimerAnnotiertesDokument"
  * resourceType = #DocumentReference
  * name = "Annotiertes Dokument (Annotat.zip)"
  * description = "Status `annotated, semantic, surrogated, preprocessed, format-change`; `relatesTo.appends` → De-identifiziertes Dokument."
  * extension[$exs-instance-content].valueReference = Reference(AmandaAlzheimerAnnotiertesDokument)
* instance[+]
  * resourceId = "AmandaAlzheimer"
  * resourceType = #Patient
  * name = "Patientin Amanda Alzheimer"
  * description = "Synthetische Patientin; nur vom Original-Dokument referenziert (`subject`)."
  * extension[$exs-instance-content].valueReference = Reference(AmandaAlzheimer)
* instance[+]
  * resourceId = "AmandaAlzheimerEinrichtungskontakt"
  * resourceType = #Encounter
  * name = "Einrichtungskontakt"
  * description = "Kontext des Original-Dokuments (`context.encounter`)."
  * extension[$exs-instance-content].valueReference = Reference(AmandaAlzheimerEinrichtungskontakt)
// process
* process[+]
  * title = "NLP-Verarbeitung eines Entlassbriefs"
  * description = "Vier aufeinanderfolgende Verarbeitungsschritte; jeder Schritt legt eine neue Dokumentreferenz an, die den Verarbeitungsstatus kumuliert und auf die Referenz des vorherigen Schritts verweist."
  * preConditions = "Der Entlassbrief `Amanda_Alzheimer.docx` liegt in der Dokumentenquelle vor; Patientin und Einrichtungskontakt sind als FHIR-Ressourcen vorhanden."
  * postConditions = "Vier Dokumentreferenzen (Original, Klartext, de-identifiziert, annotiert) mit `relatesTo`-Kette und NLP-Verarbeitungsstatus liegen im Repository."
  * step[+].operation
    * number = "1"
    * type = "Ingestion"
    * name = "Erschließung des Originaldokuments"
    * initiator = "source"
    * receiver = "nlp"
    * description = "Das Originaldokument wird übernommen; die Dokumentreferenz erhält den Status `unprocessed`."
    * request.resourceId = "AmandaAlzheimerOriginalDokument"
  * step[+].operation
    * number = "2"
    * type = "Preprocessing"
    * name = "Klartext-Extraktion"
    * initiator = "nlp"
    * receiver = "repo"
    * description = "Umwandlung in Klartext (`Amanda_Alzheimer.txt`); neue Dokumentreferenz mit `preprocessed, format-change`, verweist mit `transforms` auf das Original."
    * request.resourceId = "AmandaAlzheimerOriginalDokument"
    * response.resourceId = "AmandaAlzheimerKlartextDokument"
  * step[+].operation
    * number = "3"
    * type = "De-Identification"
    * name = "De-Identifikation"
    * initiator = "nlp"
    * receiver = "repo"
    * description = "Identifizierende Inhalte werden durch Surrogate ersetzt (`De-ID.txt`); Status `preprocessed, format-change, surrogated`, verweist mit `transforms` auf das Klartextdokument."
    * request.resourceId = "AmandaAlzheimerKlartextDokument"
    * response.resourceId = "AmandaAlzheimerDeIdentifiziertesDokument"
  * step[+].operation
    * number = "4"
    * type = "Annotation"
    * name = "Semantische Annotation"
    * initiator = "nlp"
    * receiver = "repo"
    * description = "Annotation der klinischen Inhalte (`Annotat.zip`); Status `annotated, semantic, surrogated, preprocessed, format-change`, erweitert mit `appends` die vorherige Dokumentreferenz."
    * request.resourceId = "AmandaAlzheimerDeIdentifiziertesDokument"
    * response.resourceId = "AmandaAlzheimerAnnotiertesDokument"
