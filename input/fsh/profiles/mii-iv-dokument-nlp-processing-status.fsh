// Combination rules for the NLP processing status (issue #71). A document may carry several
// statuses, as several codings of one extension or as several repetitions of the extension,
// so the rules look at all codings of all repetitions and therefore sit on the profile root
// (DocumentReference), not on the extension.
//
// Severity warning plus elementdefinition-bestpractice: validators report a violation as a
// best-practice warning and do not reject the resource, so data produced following the
// examples stays valid. The HL7 validator option -best-practice hint|warning|error|ignore sets how
// strictly they are reported.

Invariant: mii-iv-dokument-nlp-1
Description: "Der NLP-Verarbeitungsstatus `unprocessed` DARF NICHT zusammen mit einem anderen Status angegeben werden."
Severity: #warning
Expression: "(extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code contains 'unprocessed') implies extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code.where($this != 'unprocessed').empty()"
* insert Translation(human, en, The NLP processing status `unprocessed` SHALL NOT be given together with any other status.)
* insert BestPractice

Invariant: mii-iv-dokument-nlp-2
Description: "Jeder NLP-Verarbeitungsstatus SOLLTE nur einmal angegeben werden."
Severity: #warning
Expression: "extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code.isDistinct()"
* insert Translation(human, en, Each NLP processing status SHOULD be given only once.)
* insert BestPractice

Invariant: mii-iv-dokument-nlp-3
Description: "Die Status `format-change` und `content-change` MÜSSEN zusammen mit dem übergeordneten Status `preprocessed` angegeben werden."
Severity: #warning
Expression: "extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code.where($this in ('format-change' | 'content-change')).exists() implies (extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code contains 'preprocessed')"
* insert Translation(human, en, The statuses `format-change` and `content-change` SHALL be given together with their parent status `preprocessed`.)
* insert BestPractice

Invariant: mii-iv-dokument-nlp-4
Description: "Die Status `preanno`, `deid` und `semantic` MÜSSEN zusammen mit dem übergeordneten Status `annotated` angegeben werden."
Severity: #warning
Expression: "extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code.where($this in ('preanno' | 'deid' | 'semantic')).exists() implies (extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code contains 'annotated')"
* insert Translation(human, en, The statuses `preanno`\, `deid` and `semantic` SHALL be given together with their parent status `annotated`.)
* insert BestPractice

Invariant: mii-iv-dokument-nlp-5
Description: "Empfehlung: Der Status `preanno` SOLLTE zusammen mit `deid` oder `semantic` angegeben werden."
Severity: #warning
Expression: "(extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code contains 'preanno') implies extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code.where($this in ('deid' | 'semantic')).exists()"
* insert Translation(human, en, Recommendation: the status `preanno` SHOULD be given together with `deid` or `semantic`.)
* insert BestPractice

// Marks an invariant as a best-practice rule (reported as a warning, never rejects data).
RuleSet: BestPractice
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice"
* extension[=].valueBoolean = true
