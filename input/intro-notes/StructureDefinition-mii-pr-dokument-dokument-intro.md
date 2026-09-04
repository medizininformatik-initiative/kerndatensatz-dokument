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

<!-- DERIVED:bridge source=MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md gate=B -->
> **Bei der Migration verfasst — vor dem Release prüfen.**
> Die folgende Tabelle stellt die Datenelemente des logischen Modells
> [MII LM Dokument](StructureDefinition-mii-lm-dokument.html) den Elementen dieses
> DocumentReference-Profils gegenüber.
{: .ig-highlight .ig-highlight-blue}

<!-- GENERATED TABLE - mechanisch erzeugt aus
     fsh-generated/resources/StructureDefinition-mii-lm-dokument.json,
     Felder differential.element.short (Spalte "Datensatz"), differential.element.definition
     (Spalte "Erklaerung") und differential.element.mapping[0].map (Spalte "FHIR"),
     gefiltert auf mapping.identity = 'mii-map-dokument' und mapping.map beginnend mit
     'DocumentReference.'. Ersetzt die FQL-Abfrage der Simplifier-Quellseite; der
     IG-Publisher rendert die Element-Mappings eines Logical Model an keiner Stelle.
     Nach jeder Aenderung am logischen Modell oder an den Mappings NEU ERZEUGEN. -->

| Datensatz | Erklärung | FHIR |
| --- | --- | --- |
| Versionsspezifische Kennung | Versionsspezifische eindeutige Kennung, die dem Dokument durch die Dokumentenquelle zugewiesen wurde | `DocumentReference.masterIdentifier` |
| Versionsunabhängige Kennung | Andere versionsunabhängige Kennung, die dem Dokument (z.B. durch weitere dokumentenverarbeitende Systeme) zugewiesen wurde | `DocumentReference.identifier` |
| Status der Dokumentenreferenz | Status dieser Dokumentenreferenz (aktuell, überholt oder irrtümlich eingegeben) | `DocumentReference.status` |
| Status des Dokuments | Status des zugrunde liegenden Dokuments (vorläufig, final, geändert oder irrtümlich eingegeben) | `DocumentReference.docStatus` |
| Art des Dokuments | Art des Dokuments auf das verwiesen wird (z.B. Anamnese und Untersuchung, Entlassungsbericht, Verlaufsbericht) | `DocumentReference.type` |
| Kategorien des Dokuments | Übergeordnete Kategorie des Dokuments auf das verwiesen wird (z.B. Arztberichte oder Arztdokumentation) | `DocumentReference.category` |
| Verweis auf Patient | Patient auf den sich das verwiesene Dokument bezieht | `DocumentReference.subject` |
| Beschreibung des Dokuments | Menschenlesbare Beschreibung zum verwiesenen Dokuments | `DocumentReference.description` |
| Vertraulichkeit des Dokuments | Grad der Vertraulichkeit/Sicherheit des verwiesenen Dokuments (z. B. uneingeschränkt, gering, mittel, normal oder eingeschränkt) | `DocumentReference.securityLabel` |
| Beziehung des Dokuments | Beziehungen des verwiesenen Dokuments zu anderen Dokumenten | `DocumentReference.relatesTo` |
| Art der Beziehung | Beziehung zu anderen Dokumenten | `DocumentReference.relatesTo.code` |
| Verweis auf Dokument | Ziel der Dokumentenbeziehung | `DocumentReference.relatesTo.target` |
| Inhalt des Dokuments | Dokument (Base64-kodierte Daten) oder Verweis (URL) mit relevanten Metadaten zum Anhang | `DocumentReference.content` |
| Verfassungssprache des Inhalts | Verwendete Sprache in dem Dokument | `DocumentReference.attachment.language` |
| Erstellungsdatum des Inhalts | Datum der Erstellung des Dokumentes | `DocumentReference.attachment.creation` |
| Binärdaten zum Inhalt | Dokument als Binärdaten | `DocumentReference.attachment.data` |
| URL zum Inhalt | Verweis auf den (lokalen) Ablageort des Dokuments | `DocumentReference.attachment.url` |
| MIME-Typ zum Inhalt | MIME-Typ des Dokumenteninhalts | `DocumentReference.attachment.contentType` |
| Erzeugungskontext des Dokuments | Klinischer Kontext, in welchem das Dokument erzeugt wurde | `DocumentReference.context` |
| Verweis auf Einrichtungskontakt | Kontakt zur Gesundheitseinrichtung oder die Art der Versorgung, die mit dem Dokumenteninhalt assoziiert ist | `DocumentReference.context.encounter` |
| Dokumentierter Vorgang | Handlungen oder Prozeduren, die im Kontext dokumentiert wurden | `DocumentReference.context.event` |
| Klinisches Fachgebiet zum Vorgang | Klinisches Fachgebiet, in dem Dokumenteninhalt erstellt wurde | `DocumentReference.context.practiceSetting` |
| Durchführungszeitraum zum Vorgang | Zeitraum, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde | `DocumentReference.context.period` |
| Art der Einrichtung zum Vorgang | Art der Einrichtung, in der die Handlung oder Prozedur am Patienten erfolgte | `DocumentReference.context.facilityType` |

### Suchparameter

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

<!-- DERIVED:bridge source=MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md gate=B -->
> **Bei der Migration verfasst — vor dem Release prüfen.**
> Die maschinenlesbare Festlegung derselben Suchparameter steht im
> [CapabilityStatement des Moduls](CapabilityStatement-mii-cps-dokument-capabilitystatement.html);
> die folgende Liste ergänzt sie um Beispielaufrufe und Verweise in die FHIR-Basisspezifikation.
{: .ig-highlight .ig-highlight-blue}

<!-- TODO:REVIEW Diese Liste und das CapabilityStatement mii-cps-dokument-capabilitystatement
     deklarieren dieselben 24 Suchparameter. Soll die erlaeuternde Liste (Beispiele +
     Spezifikationsverweise) hier auf der Profil-Intro-Note bleiben, oder gehoert sie nach
     capability-statements.html, damit es nur eine Pflegestelle gibt? -->

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
<!-- DERIVED:bridge source=MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md gate=B -->
> **Bei der Migration verfasst — vor dem Release prüfen.**
> Eine Übersicht aller Beispielinstanzen des Moduls steht auf der Seite
> [Beispiele](examples.html).
{: .ig-highlight .ig-highlight-blue}
