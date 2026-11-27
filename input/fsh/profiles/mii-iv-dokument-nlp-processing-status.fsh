// Combination rules for the NLP processing status (issue #71). A document may carry several
// statuses, as several codings of one extension or as several repetitions of the extension,
// so the rules look at all codings of all repetitions and therefore sit on the profile root
// (DocumentReference), not on the extension.
//
// Every rule states its reason in `requirements` (ElementDefinition.constraint.requirements):
// - nlp-3 and nlp-4 restate a requirement of the extension's description (a Lvl 2 status needs
//   its Lvl 1 status);
// - nlp-1 follows from the definition of the code `unprocessed`;
// - nlp-2 and nlp-5 are recommendations for unambiguous, informative data.
// The intro note of the extension repeats rule, content and basis in a table (EN and DE).
//
// Severity warning plus elementdefinition-bestpractice: validators report a violation as a
// best-practice warning and do not reject the resource, so data produced following the
// examples stays valid. The HL7 validator option -best-practice hint|warning|error|ignore sets how
// strictly they are reported.

Invariant: mii-iv-dokument-nlp-1
Description: "Der NLP-Verarbeitungsstatus `unprocessed` DARF NICHT zusammen mit einem anderen Status angegeben werden."
Severity: #warning
Expression: "(extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code contains 'unprocessed') implies extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code.where($this != 'unprocessed').empty()"
* requirements = "Das CodeSystem definiert `unprocessed` als Dokument im Original. Jeder andere Status gibt eine erfolgte Verarbeitung an; beide Angaben zusammen widersprechen sich."
* insert Translation(human, en, The NLP processing status `unprocessed` SHALL NOT be given together with any other status.)
* insert Translation(requirements, en, The code system defines `unprocessed` as the document in its original form. Every other status states processing that has taken place; the two statements contradict each other.)
* insert BestPractice

Invariant: mii-iv-dokument-nlp-2
Description: "Jeder NLP-Verarbeitungsstatus SOLLTE nur einmal angegeben werden."
Severity: #warning
Expression: "extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code.isDistinct()"
* requirements = "Alle Codings aller Wiederholungen beschreiben zusammen den erreichten Verarbeitungsstand; Reihenfolge und Anzahl tragen keine Bedeutung. Eine doppelte Angabe fügt nichts hinzu und entsteht leicht, wenn Status auf mehrere Codings und Wiederholungen verteilt werden."
* insert Translation(human, en, Each NLP processing status SHOULD be given only once.)
* insert Translation(requirements, en, All codings of all repetitions together describe the processing state reached; their order and number carry no meaning. A repeated status adds nothing and easily arises when statuses are spread over several codings and repetitions.)
* insert BestPractice

Invariant: mii-iv-dokument-nlp-3
Description: "Die Status `format-change` und `content-change` MÜSSEN zusammen mit dem übergeordneten Status `preprocessed` angegeben werden."
Severity: #warning
Expression: "extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code.where($this in ('format-change' | 'content-change')).exists() implies (extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code contains 'preprocessed')"
* requirements = "Die Beschreibung der Extension verlangt zu einer Lvl-2-Angabe den zugehörigen Lvl-1-Status. Die Suche vergleicht Codes wörtlich, ohne die Hierarchie des CodeSystems: Ohne `preprocessed` findet eine Suche nach `preprocessed` das Dokument nicht."
* insert Translation(human, en, The statuses `format-change` and `content-change` SHALL be given together with their parent status `preprocessed`.)
* insert Translation(requirements, en, The description of the extension requires the corresponding Lvl 1 status for every Lvl 2 status. The search compares codes literally\, without the hierarchy of the code system: without `preprocessed`\, a search for `preprocessed` does not find the document.)
* insert BestPractice

Invariant: mii-iv-dokument-nlp-4
Description: "Die Status `preanno`, `deid` und `semantic` MÜSSEN zusammen mit dem übergeordneten Status `annotated` angegeben werden."
Severity: #warning
Expression: "extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code.where($this in ('preanno' | 'deid' | 'semantic')).exists() implies (extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code contains 'annotated')"
* requirements = "Die Beschreibung der Extension verlangt zu einer Lvl-2-Angabe den zugehörigen Lvl-1-Status: Ohne `annotated` könnte `deid` als vollständig de-identifiziertes Dokument missverstanden werden. Die Suche vergleicht Codes wörtlich, ohne die Hierarchie des CodeSystems: Ohne `annotated` findet eine Suche nach `annotated` das Dokument nicht."
* insert Translation(human, en, The statuses `preanno`\, `deid` and `semantic` SHALL be given together with their parent status `annotated`.)
* insert Translation(requirements, en, The description of the extension requires the corresponding Lvl 1 status for every Lvl 2 status: without `annotated`\, `deid` could be misunderstood as a fully de-identified document. The search compares codes literally\, without the hierarchy of the code system: without `annotated`\, a search for `annotated` does not find the document.)
* insert BestPractice

Invariant: mii-iv-dokument-nlp-5
Description: "Empfehlung: Der Status `preanno` SOLLTE zusammen mit `deid` oder `semantic` angegeben werden."
Severity: #warning
Expression: "(extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code contains 'preanno') implies extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status').value.coding.code.where($this in ('deid' | 'semantic')).exists()"
* requirements = "`preanno` gibt an, dass die Annotationen maschinell entstanden sind; `deid` und `semantic` geben an, worauf sie sich beziehen. Erst beides zusammen sagt Empfängern, was vorannotiert wurde. `annotated` mit `preanno` allein bleibt nach dem CodeSystem eine zulässige Angabe."
* insert Translation(human, en, Recommendation: the status `preanno` SHOULD be given together with `deid` or `semantic`.)
* insert Translation(requirements, en, `preanno` states that the annotations were made by machine; `deid` and `semantic` state what they refer to. Only both together tell receivers what was pre-annotated. `annotated` with `preanno` alone remains a permitted statement according to the code system.)
* insert BestPractice

// Marks an invariant as a best-practice rule (reported as a warning, never rejects data).
RuleSet: BestPractice
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice"
* extension[=].valueBoolean = true
