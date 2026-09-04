<!-- markdownlint-disable MD041 -->

Die logischen Datenmodelle des Moduls **Dokument** beschreiben den fachlichen Datensatz unabhängig von der konkreten FHIR-Repräsentation.

Die offiziell beschlossene Version des Informationsmodells befinden sich auf [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet:

[MII LM Dokument](StructureDefinition-mii-lm-dokument.html)

### Elementverzeichnis

Das folgende Verzeichnis listet jedes Element des logischen Modells mit Pfad und Beschreibung.

{% include StructureDefinition-mii-lm-dokument-dict-de.xhtml %}

*Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.*

### Mapping auf die FHIR-Ressource

Der IG-Publisher rendert dieses Element-zu-Ressource-Mapping auf der Artefaktseite des Logical Models nicht (der Reiter „Mappings“ bleibt dort leer). Die folgende Tabelle listet es deshalb hier auf.

<!-- GENERATED TABLE: mechanisch extrahiert zum Migrationszeitpunkt aus dem
     gebauten fsh-generated/resources/StructureDefinition-mii-lm-dokument.json
     (differential.element[].path, .definition,
     .mapping[identity=mii-map-dokument].map). Quelle der Wahrheit:
     input/fsh/logical-model/mii-lm-dokument.fsh und
     input/fsh/logical-model/mii-map-dokument.fsh — diese Tabelle nach jeder
     Änderung an einer der beiden Dateien neu erzeugen. -->

| Logischer Datensatz | FHIR-Mapping | Beschreibung |
| --- | --- | --- |
| Dokument | DocumentReference | Klinisches Dokument inkl. Metadaten, Inhalt, Erzeugungskontext und Beziehungen |
| Dokument.<br>Masteridentifikator | DocumentReference.<br>masterIdentifier | Versionsspezifische eindeutige Kennung, die dem Dokument durch die Dokumentenquelle zugewiesen wurde |
| Dokument.<br>Businessidentifikator | DocumentReference.<br>identifier | Andere versionsunabhängige Kennung, die dem Dokument (z.B. durch weitere dokumentenverarbeitende Systeme) zugewiesen wurde |
| Dokument.<br>Dokumentenreferenzstatus | DocumentReference.<br>status | Status dieser Dokumentenreferenz (aktuell, überholt oder irrtümlich eingegeben) |
| Dokument.<br>Dokumentenstatus | DocumentReference.<br>docStatus | Status des zugrunde liegenden Dokuments (vorläufig, final, geändert oder irrtümlich eingegeben) |
| Dokument.<br>Dokumententyp | DocumentReference.<br>type | Art des Dokuments auf das verwiesen wird (z.B. Anamnese und Untersuchung, Entlassungsbericht, Verlaufsbericht) |
| Dokument.<br>Dokumentenkategorie | DocumentReference.<br>category | Übergeordnete Kategorie des Dokuments auf das verwiesen wird (z.B. Arztberichte oder Arztdokumentation) |
| Dokument.<br>Patient | DocumentReference.<br>subject | Patient auf den sich das verwiesene Dokument bezieht |
| Dokument.<br>Beschreibung | DocumentReference.<br>description | Menschenlesbare Beschreibung zum verwiesenen Dokuments |
| Dokument.<br>Sicherheitsstufe | DocumentReference.<br>securityLabel | Grad der Vertraulichkeit/Sicherheit des verwiesenen Dokuments (z. B. uneingeschränkt, gering, mittel, normal oder eingeschränkt) |
| Dokument.<br>Dokumentenbeziehung | DocumentReference.<br>relatesTo | Beziehungen des verwiesenen Dokuments zu anderen Dokumenten |
| Dokument.<br>Dokumentenbeziehung.<br>Beziehungstyp | DocumentReference.<br>relatesTo.<br>code | Beziehung zu anderen Dokumenten |
| Dokument.<br>Dokumentenbeziehung.<br>Beziehungsreferenz | DocumentReference.<br>relatesTo.<br>target | Ziel der Dokumentenbeziehung |
| Dokument.<br>Anhang | DocumentReference.<br>content | Dokument (Base64-kodierte Daten) oder Verweis (URL) mit relevanten Metadaten zum Anhang |
| Dokument.<br>Anhang.<br>Sprache | DocumentReference.<br>attachment.<br>language | Verwendete Sprache in dem Dokument |
| Dokument.<br>Anhang.<br>Erstellungsdatum | DocumentReference.<br>attachment.<br>creation | Datum der Erstellung des Dokumentes |
| Dokument.<br>Anhang.<br>Daten | DocumentReference.<br>attachment.<br>data | Dokument als Binärdaten |
| Dokument.<br>Anhang.<br>DokumentenUrl | DocumentReference.<br>attachment.<br>url | Verweis auf den (lokalen) Ablageort des Dokuments |
| Dokument.<br>Anhang.<br>Dokumentenformat | DocumentReference.<br>attachment.<br>contentType | MIME-Typ des Dokumenteninhalts |
| Dokument.<br>Kontext | DocumentReference.<br>context | Klinischer Kontext, in welchem das Dokument erzeugt wurde |
| Dokument.<br>Kontext.<br>Gesundheitseinrichtungskontakt | DocumentReference.<br>context.<br>encounter | Kontakt zur Gesundheitseinrichtung oder die Art der Versorgung, die mit dem Dokumenteninhalt assoziiert ist |
| Dokument.<br>Kontext.<br>Vorgang | DocumentReference.<br>context.<br>event | Handlungen oder Prozeduren, die im Kontext dokumentiert wurden |
| Dokument.<br>Kontext.<br>Fachgebiet | DocumentReference.<br>context.<br>practiceSetting | Klinisches Fachgebiet, in dem Dokumenteninhalt erstellt wurde |
| Dokument.<br>Kontext.<br>Dokumentationszeitraum | DocumentReference.<br>context.<br>period | Zeitraum, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde |
| Dokument.<br>Kontext.<br>Einrichtungsart | DocumentReference.<br>context.<br>facilityType | Art der Einrichtung, in der die Handlung oder Prozedur am Patienten erfolgte |
