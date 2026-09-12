<!-- markdownlint-disable MD041 -->
<!-- German translation of the English default page input/pagecontent/search-parameters.md.
     Keep structure, headings and links 1:1 with the source; translate only the text. -->
<!-- Optionale Seite des KDS-Modul-Templates, für dieses Modul BEHALTEN (2026-09-05):
     das Modul definiert keine eigenen SearchParameter-Artefakte; die drei
     modulspezifischen definiert das Meta-Modul, diese Seite verlinkt sie und
     hält die Beispielaufrufe.
     Englische Übersetzung: input/translations/en/pagecontent/search-parameters.md -->

Diese Seite führt Beispielaufrufe für die Suchparameter des Moduls **Dokument** auf. Normativ festgelegt sind die unterstützten Suchparameter im [CapabilityStatement des Moduls](CapabilityStatement-mii-cps-dokument-capabilitystatement.html); die Standard-Suchparameter definiert die [FHIR-Basisspezifikation (DocumentReference)](https://hl7.org/fhir/R4/documentreference.html#search). Modul-spezifische SearchParameter-Artefakte definiert das Modul Dokument nicht selbst — die drei modulspezifischen Suchparameter stellt das [Meta-Modul](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta/2027.0.0-ballot.rc3) bereit (Paket `kerndatensatz.meta` 2027.0.0-ballot.rc3):

- `doc-status` — SearchParameter `mii-sp-meta-dokument-documentreference-doc-status`
  (`https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-dokument-documentreference-doc-status`)
- `creation` — SearchParameter `mii-sp-meta-dokument-documentreference-attachment-creation`
  (`https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-dokument-documentreference-attachment-creation`)
- `nlp-processing-status` — SearchParameter `mii-sp-meta-dokument-documentreference-nlp-processing-status`
  (`https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-dokument-documentreference-nlp-processing-status`)

### Beispielaufrufe

Beispielaufrufe für die im CapabilityStatement geforderten Suchparameter (auch in Kombination anwendbar):

1. `_id`

    Beispiele:

    `GET [base]/DocumentReference?_id=12345`

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

2. `_profile`

    Beispiele:

    `GET [base]/DocumentReference?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument`

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "URI Search"](https://hl7.org/fhir/R4/search.html#uri).

3. `identifier`

    Beispiele:

    `GET [base]/DocumentReference?identifier=urn:ietf:rfc:3986|urn:uuid:0c287d32-01e3-4d87-9953-9fcc9404eb21`

    Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. `status`

    Beispiele:

    `GET [base]/DocumentReference?status=current`

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

5. `doc-status`

    Beispiele:

    `GET [base]/DocumentReference?doc-status=final`

    Anwendungshinweise: Weitere Informationen zur Suche nach "doc-status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

6. `type`

    Beispiele:

    `GET [base]/DocumentReference?type=http://dvmd.de/fhir/CodeSystem/kdl|AD010110`

    Anwendungshinweise: Weitere Informationen zur Suche nach "type" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

7. `category`

    Beispiele:

    `GET [base]/DocumentReference?category=http://ihe-d.de/CodeSystems/IHEXDSclassCode|BRI`

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

8. `patient`

    Beispiele:

    `GET [base]/DocumentReference?patient=Patient/AmandaAlzheimer`

    Anwendungshinweise: Weitere Informationen zur Suche nach "patient" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

9. `relation`

    Beispiele:

    `GET [base]/DocumentReference?relation=http://hl7.org/fhir/document-relationship-type|transforms`

    Anwendungshinweise: Weitere Informationen zur Suche nach "relation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

10. `relatesto`

    Beispiele:

    `GET [base]/DocumentReference?relatesto=DocumentReference/AmandaAlzheimerOriginalDokument`

    Anwendungshinweise: Weitere Informationen zur Suche nach "relatesto" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

11. `relationship`

    Beispiele:

    `GET [base]/DocumentReference?relationship=http://hl7.org/fhir/document-relationship-type|transforms$DocumentReference/AmandaAlzheimerOriginalDokument`

    Anwendungshinweise: Weitere Informationen zur Suche nach "relationship" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Composite Search"](https://hl7.org/fhir/R4/search.html#composite).

12. `description`

    Beispiele:

    `GET [base]/DocumentReference?description:contains=Bericht`

    Anwendungshinweise: Weitere Informationen zur Suche nach "description" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](https://hl7.org/fhir/R4/search.html#string).

13. `security-label`

    Beispiele:

    `GET [base]/DocumentReference?security-label=http://terminology.hl7.org/CodeSystem/v3-Confidentiality|L`

    Anwendungshinweise: Weitere Informationen zur Suche nach "security-label" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

14. `contenttype`

    Beispiele:

    `GET [base]/DocumentReference?contenttype=urn:ietf:bcp:13|text/plain`

    Anwendungshinweise: Weitere Informationen zur Suche nach "contenttype" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

15. `language`

    Beispiele:

    `GET [base]/DocumentReference?language=urn:ietf:bcp:47|de-AT`

    Anwendungshinweise: Weitere Informationen zur Suche nach "language" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

16. `location`

    Beispiele:

    `GET [base]/DocumentReference?location=below:http://uk-musterstadt.de/document-management-system`

    Anwendungshinweise: Weitere Informationen zur Suche nach "location" finden sich in der [FHIR-Basisspezifikation - Abschnitt "URI Search"](https://hl7.org/fhir/R4/search.html#uri).

17. `creation`

    Beispiele:

    `GET [base]/DocumentReference?creation=eq2025-06-23`

    Anwendungshinweise: Weitere Informationen zur Suche nach "creation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).

18. `format`

    Beispiele:

    `GET [base]/DocumentReference?format=http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode|urn:ihe:iti:xds:2017:mimeTypeSufficient`

    Anwendungshinweise: Weitere Informationen zur Suche nach "format" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

19. `encounter`

    Beispiele:

    `GET [base]/DocumentReference?encounter=Encounter/AmandaAlzheimerEinrichtungskontakt`

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

20. `event`

    Beispiele:

    `GET [base]/DocumentReference?event=http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung|E234`

    Anwendungshinweise: Weitere Informationen zur Suche nach "event" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

21. `period`

    Beispiele:

    `GET [base]/DocumentReference?period=ge2028-01-24&period=le2028-02-06`

    Anwendungshinweise: Weitere Informationen zur Suche nach "period" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).

22. `facility`

    Beispiele:

    `GET [base]/DocumentReference?facility=http://ihe-d.de/CodeSystems/PatientBezogenenGesundheitsversorgung|KHS`

    Anwendungshinweise: Weitere Informationen zur Suche nach "facility" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

23. `setting`

    Beispiele:

    `GET [base]/DocumentReference?setting=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen|INTZ`

    Anwendungshinweise: Weitere Informationen zur Suche nach "setting" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

24. `nlp-processing-status`

    Beispiele:

    `GET [base]/DocumentReference?nlp-processing-status=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status|unprocessed`

    Anwendungshinweise: Weitere Informationen zur Suche nach "nlp-processing-status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
