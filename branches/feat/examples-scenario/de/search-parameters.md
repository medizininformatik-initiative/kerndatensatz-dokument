# Suchparameter - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Suchparameter**

## Suchparameter

Diese Seite listet die Suchparameter des Moduls **Dokument**. Modul-spezifische SearchParameter-Artefakte (Namenskonvention `MII_SP_<Modul>_<Name>`) definiert das Modul nicht; modulübergreifende Suchparameter definiert das Meta-Modul. Die normative Festlegung der unterstützten Suchparameter ist das [CapabilityStatement des Moduls](CapabilityStatement-mii-cps-dokument-capabilitystatement.md).

### Unterstützte Suchparameter

Die folgende Tabelle liest Namen und Typen beim Build aus dem CapabilityStatement:

| | |
| :--- | :--- |
| Suchparameter | Typ |
| _id | token |
| _profile | uri |
| identifier | token |
| status | token |
| doc-status | token |
| type | token |
| category | token |
| patient | reference |
| relation | token |
| relatesto | reference |
| relationship | composite |
| description | string |
| security-label | token |
| contenttype | token |
| language | token |
| location | uri |
| creation | date |
| format | token |
| encounter | reference |
| event | token |
| period | date |
| facility | token |
| setting | token |
| nlp-processing-status | token |

### Beispielaufrufe

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "URI Search"](https://hl7.org/fhir/R4/search.html#uri).
1. Der Suchparameter "identifier" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?identifier=urn:ietf:rfc:3986|urn:uuid:0c287d32-01e3-4d87-9953-9fcc9404eb21`Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?status=current`Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "doc-status" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?doc-status=final`Anwendungshinweise: Weitere Informationen zur Suche nach "doc-status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "type" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?type=http://dvmd.de/fhir/CodeSystem/kdl|AD010110`Anwendungshinweise: Weitere Informationen zur Suche nach "type" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "category" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?category=http://ihe-d.de/CodeSystems/IHEXDSclassCode|BRI`Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "patient" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?patient=Patient/AmandaAlzheimer`Anwendungshinweise: Weitere Informationen zur Suche nach "patient" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "relation" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?relation=http://hl7.org/fhir/document-relationship-type|transforms`Anwendungshinweise: Weitere Informationen zur Suche nach "relation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "relatesto" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?relatesto=DocumentReference/AmandaAlzheimerOriginalDokument`Anwendungshinweise: Weitere Informationen zur Suche nach "relatesto" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "relationship" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?relationship=http://hl7.org/fhir/document-relationship-type|transforms$DocumentReference/AmandaAlzheimerOriginalDokument`Anwendungshinweise: Weitere Informationen zur Suche nach "relationship" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Composite Search"](https://hl7.org/fhir/R4/search.html#composite).
1. Der Suchparameter "description" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?description:contains=Bericht`Anwendungshinweise: Weitere Informationen zur Suche nach "description" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](https://hl7.org/fhir/R4/search.html#string).
1. Der Suchparameter "security-label" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?security-label=http://terminology.hl7.org/CodeSystem/v3-Confidentiality|L`Anwendungshinweise: Weitere Informationen zur Suche nach "security-label" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "contenttype" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?contenttype=urn:ietf:bcp:13|text/plain`Anwendungshinweise: Weitere Informationen zur Suche nach "contenttype" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "language" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?language=urn:ietf:bcp:47|de-AT`Anwendungshinweise: Weitere Informationen zur Suche nach "language" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "location" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?location=below:http://uk-musterstadt.de/document-management-system`Anwendungshinweise: Weitere Informationen zur Suche nach "location" finden sich in der [FHIR-Basisspezifikation - Abschnitt "URI Search"](https://hl7.org/fhir/R4/search.html#uri).
1. Der Suchparameter "creation" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?creation=eq2025-06-23`Anwendungshinweise: Weitere Informationen zur Suche nach "creation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "format" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?format=http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode|urn:ihe:iti:xds:2017:mimeTypeSufficient`Anwendungshinweise: Weitere Informationen zur Suche nach "format" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?encounter=Encounter/AmandaAlzheimerEinrichtungskontakt`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "event" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?event=http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung|E234`Anwendungshinweise: Weitere Informationen zur Suche nach "event" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "period" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?period=ge2028-01-24&period=le2028-02-06`Anwendungshinweise: Weitere Informationen zur Suche nach "period" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "facility" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?facility=http://ihe-d.de/CodeSystems/PatientBezogenenGesundheitsversorgung|KHS`Anwendungshinweise: Weitere Informationen zur Suche nach "facility" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "setting" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?setting=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen|INTZ`Anwendungshinweise: Weitere Informationen zur Suche nach "setting" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "nlp-processing-status" MUSS unterstützt werden:Beispiele:`GET [base]/DocumentReference?nlp-processing-status=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status|unprocessed`Anwendungshinweise: Weitere Informationen zur Suche nach "nlp-processing-status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

