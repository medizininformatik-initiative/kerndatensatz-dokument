// Invariants for the NLP processing status (issue #71, HDB-1054). Each reached state is one
// repetition of the extension MII_EX_Dokument_NLP_Processing_Status, so the rules have to look
// across repetitions and therefore sit on the profile (DocumentReference), not on the extension.

Invariant: mii-iv-dokument-nlp-1
Description: "`unprocessed` DARF NICHT zusammen mit einem anderen NLP-Verarbeitungsstatus angegeben werden"
Severity: #error
Expression: "extension.where(url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.ofType(Coding).code.where($this = 'unprocessed').exists() implies extension.where(url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').count() = 1"

Invariant: mii-iv-dokument-nlp-2
Description: "Jeder NLP-Verarbeitungsstatus DARF höchstens einmal angegeben werden"
Severity: #error
Expression: "extension.where(url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.ofType(Coding).code.isDistinct()"

Invariant: mii-iv-dokument-nlp-3
Description: "`format-change` und `content-change` MÜSSEN zusammen mit `preprocessed` angegeben werden"
Severity: #error
Expression: "extension.where(url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.ofType(Coding).code.where($this = 'format-change' or $this = 'content-change').exists() implies extension.where(url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.ofType(Coding).code.where($this = 'preprocessed').exists()"

Invariant: mii-iv-dokument-nlp-4
Description: "`preanno`, `deid` und `semantic` MÜSSEN zusammen mit `annotated` angegeben werden"
Severity: #error
Expression: "extension.where(url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.ofType(Coding).code.where($this = 'preanno' or $this = 'deid' or $this = 'semantic').exists() implies extension.where(url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.ofType(Coding).code.where($this = 'annotated').exists()"

Invariant: mii-iv-dokument-nlp-5
Description: "Empfehlung: `preanno` SOLLTE zusammen mit `deid` oder `semantic` angegeben werden"
Severity: #warning
Expression: "extension.where(url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.ofType(Coding).code.where($this = 'preanno').exists() implies extension.where(url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.ofType(Coding).code.where($this = 'deid' or $this = 'semantic').exists()"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice"
* extension[0].valueBoolean = true
