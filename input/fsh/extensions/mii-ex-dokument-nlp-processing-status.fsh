Extension: MII_EX_Dokument_NLP_Processing_Status
Id: mii-ex-dokument-nlp-processing-status
Context: DocumentReference
Title: "MII EX Dokument NLP Processing Status"
Description: "Status der NLP-Verarbeitung des referenzierten Dokuments. Je erreichtem Verarbeitungsstatus wird eine Instanz dieser Extension angegeben."
* insert EX_Header($mii-ex-dokument-nlp-processing-status)

* value[x] 1..1 MS
* value[x] only Coding
* valueCoding ^short = "NLP Processing Status"
* valueCoding ^definition = "Ein erreichter Status der NLP-Verarbeitung des referenzierten Dokuments. Mehrere erreichte Status werden als mehrere Instanzen dieser Extension angegeben; die Reihenfolge der Instanzen trägt keine Bedeutung, die Abfolge der Verarbeitung bildet DocumentReference.relatesTo ab."

* valueCoding.system 1..1 MS
* valueCoding.code 1..1 MS
* valueCoding.system = $mii-cs-dokument-nlp-processing-status (exactly)
* valueCoding from MII_VS_Dokument_NLP_Processing_Status
