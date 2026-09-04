<!-- markdownlint-disable MD041 -->
<!-- Migriert aus dem Simplifier-Guide mii-ig-dokument-de, Seite
     MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md.
     Diese Datei ist eine Intro-Note: der IG-Publisher rendert sie oberhalb der generierten
     Artefaktseite StructureDefinition-mii-pr-dokument-dokument.html. Die Abschnitte
     "Uebersicht", "Metadaten" und "Inhalt" der Quellseite entfallen, weil die Artefaktseite
     Kopfdaten (Canonical, Status, Version, Basis) sowie Struktur-, XML- und JSON-Ansicht
     selbst rendert.
     Englische Fassung: input/translations/en/intro-notes/StructureDefinition-mii-pr-dokument-dokument-intro.md -->

Dieses Profil beschreibt die Metadaten zu einem klinischen Dokument. Eine ausführliche
Beschreibung und Empfehlungen zur Verwendung des Profils befinden sich in der
[Beschreibung des Moduls](index.html).

### Mapping Datensatz zu FHIR

Die vollständige Gegenüberstellung der Datenelemente des logischen Modells
[MII LM Dokument](StructureDefinition-mii-lm-dokument.html) mit den Elementen dieses
DocumentReference-Profils wird an einer einzigen Stelle gepflegt und steht auf der Seite
[Logische Modelle](logical-models.html#mapping-auf-die-fhir-ressource).

### Suchparameter

Die maschinenlesbare Festlegung derselben 24 Suchparameter steht im
[CapabilityStatement des Moduls](CapabilityStatement-mii-cps-dokument-capabilitystatement.html)
(`input/fsh/definitions/mii-cps-dokument-capabilitystatement.fsh`) — dort ist sie normativ.
Die folgende Liste ergänzt sie um Beispielaufrufe und Verweise in die FHIR-Basisspezifikation
und ist bei jeder Änderung am CapabilityStatement mitzuführen.

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?_id=12345`

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument`

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "URI Search"](https://hl7.org/fhir/R4/search.html#uri).

3. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?identifier=urn:ietf:rfc:3986|urn:uuid:0c287d32-01e3-4d87-9953-9fcc9404eb21`

    Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?status=current`

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "doc-status" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?doc-status=final`

    Anwendungshinweise: Weitere Informationen zur Suche nach "doc-status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

6. Der Suchparameter "type" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?type=http://dvmd.de/fhir/CodeSystem/kdl|AD010110`

    Anwendungshinweise: Weitere Informationen zur Suche nach "type" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

7. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?category=http://ihe-d.de/CodeSystems/IHEXDSclassCode|BRI`

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

8. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?patient=Patient/AmandaAlzheimer`

    Anwendungshinweise: Weitere Informationen zur Suche nach "patient" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

9. Der Suchparameter "relation" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?relation=http://hl7.org/fhir/document-relationship-type|transforms`

    Anwendungshinweise: Weitere Informationen zur Suche nach "relation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

10. Der Suchparameter "relatesto" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?relatesto=DocumentReference/AmandaAlzheimerOriginalDokument`

    Anwendungshinweise: Weitere Informationen zur Suche nach "relatesto" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

11. Der Suchparameter "relationship" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?relationship=http://hl7.org/fhir/document-relationship-type|transforms$DocumentReference/AmandaAlzheimerOriginalDokument`

    Anwendungshinweise: Weitere Informationen zur Suche nach "relationship" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Composite Search"](https://hl7.org/fhir/R4/search.html#composite).

12. Der Suchparameter "description" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?description:contains=Bericht`

    Anwendungshinweise: Weitere Informationen zur Suche nach "description" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](https://hl7.org/fhir/R4/search.html#string).

13. Der Suchparameter "security-label" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?security-label=http://terminology.hl7.org/CodeSystem/v3-Confidentiality|L`

    Anwendungshinweise: Weitere Informationen zur Suche nach "security-label" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

14. Der Suchparameter "contenttype" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?contenttype=urn:ietf:bcp:13|text/plain`

    Anwendungshinweise: Weitere Informationen zur Suche nach "contenttype" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

15. Der Suchparameter "language" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?language=urn:ietf:bcp:47|de-AT`

    Anwendungshinweise: Weitere Informationen zur Suche nach "language" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

16. Der Suchparameter "location" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?location=below:http://uk-musterstadt.de/document-management-system`

    Anwendungshinweise: Weitere Informationen zur Suche nach "location" finden sich in der [FHIR-Basisspezifikation - Abschnitt "URI Search"](https://hl7.org/fhir/R4/search.html#uri).

17. Der Suchparameter "creation" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?creation=eq2025-06-23`

    Anwendungshinweise: Weitere Informationen zur Suche nach "creation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).

18. Der Suchparameter "format" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?format=http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode|urn:ihe:iti:xds:2017:mimeTypeSufficient`

    Anwendungshinweise: Weitere Informationen zur Suche nach "format" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

19. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?encounter=Encounter/AmandaAlzheimerEinrichtungskontakt`

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

20. Der Suchparameter "event" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?event=http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung|E234`

    Anwendungshinweise: Weitere Informationen zur Suche nach "event" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

21. Der Suchparameter "period" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?period=ge2028-01-24&period=le2028-02-06`

    Anwendungshinweise: Weitere Informationen zur Suche nach "period" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).

22. Der Suchparameter "facility" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?facility=http://ihe-d.de/CodeSystems/PatientBezogenenGesundheitsversorgung|KHS`

    Anwendungshinweise: Weitere Informationen zur Suche nach "facility" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

23. Der Suchparameter "setting" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?setting=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen|INTZ`

    Anwendungshinweise: Weitere Informationen zur Suche nach "setting" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

24. Der Suchparameter "nlp-processing-status" MUSS unterstützt werden:

    Beispiele:

    `GET [base]/DocumentReference?nlp-processing-status=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status|unprocessed`

    Anwendungshinweise: Weitere Informationen zur Suche nach "nlp-processing-status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

### Beispiele

Umfangreiche Beispiele, die das Profil und die Erweiterung gemeinsam veranschaulichen, sind auf
der Seite der Erweiterung zu finden
([MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)).

Eine Übersicht aller Beispielinstanzen des Moduls steht auf der Seite
[Beispiele](examples.html).
