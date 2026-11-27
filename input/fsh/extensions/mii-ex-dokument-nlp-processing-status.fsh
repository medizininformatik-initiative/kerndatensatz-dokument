Extension: MII_EX_Dokument_NLP_Processing_Status
Id: mii-ex-dokument-nlp-processing-status
Context: DocumentReference
Title: "MII EX Dokument NLP Processing Status"
Description: "Status der NLP-Verarbeitung des referenzierten Dokuments"
* insert EX_Header($mii-ex-dokument-nlp-processing-status)

// Information model: NLP Processing Status, Status: CodeableConcept [1..1]
* value[x] 1..1 MS
* value[x] only CodeableConcept
* insert Description(valueCodeableConcept, NLP-Verarbeitungsstatus, Erreichter Status der NLP-Verarbeitung des referenzierten Dokuments. Die Angabe ist verpflichtend [MUST].)
* insert DescriptionIntl(valueCodeableConcept, en, NLP processing status, Status of the NLP processing the referenced document has reached [MUST].)

* valueCodeableConcept.coding 1..* MS
* insert CommentedDescription(valueCodeableConcept.coding, Erreichter Verarbeitungsstatus, Code eines erreichten Verarbeitungsstatus. Mindestens ein Code ist verpflichtend [MUST]., Mehrere Codings geben gemeinsam erreichte Status an\, z. B. `annotated` und `deid`; anders als sonst bei CodeableConcept sind sie keine alternativen Kodierungen desselben Konzepts. Jeder Status kann ebenso als eigene Wiederholung der Extension angegeben werden. Empfänger werten alle Codings aller Wiederholungen aus; die Reihenfolge trägt keine Bedeutung.)
* insert CommentedDescriptionIntl(valueCodeableConcept.coding, en, Reached processing status, Code of a reached processing status. At least one code is required [MUST]., Several codings state statuses reached together\\, e.g. `annotated` and `deid`; unlike other uses of CodeableConcept they are not alternative codings of the same concept. Each status may equally be given as its own repetition of the extension. Receivers evaluate all codings of all repetitions; their order carries no meaning.)
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.system = $mii-cs-dokument-nlp-processing-status (exactly)
* valueCodeableConcept.coding from MII_VS_Dokument_NLP_Processing_Status
