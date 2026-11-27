<!-- markdownlint-disable MD041 -->
<!-- German translation of the English default page input/pagecontent/logical-models.md.
     Keep structure, headings and links 1:1 with the source; translate only the text. -->

Die logischen Datenmodelle des Moduls **Dokument** beschreiben den fachlichen Datensatz unabhängig von der konkreten FHIR-Repräsentation.

Das vom Nationalen Steuerungsgremium (NSG) der MII beschlossene Informationsmodell steht auf der Seite [UML-Diagramme](uml-diagrams.html); es ist für dieses Modul maßgeblich. Das Logical Model bildet es als FHIR Logical Model ab, das FHIR-Profil setzt es um:

[MII LM Dokument](StructureDefinition-mii-lm-dokument.html)

### Elementverzeichnis

Das folgende Verzeichnis listet jedes Element des logischen Modells mit Pfad und Beschreibung.

{% include StructureDefinition-mii-lm-dokument-dict-de.xhtml %}

Das Logical Model übernimmt die Datenelemente des Informationsmodells mit ihren Datentypen und Kardinalitäten. Der abstrakte *Anhang* des Informationsmodells ist entweder *Binärdaten* oder *Verweis*; das Logical Model bildet das als genau eines von `Daten` und `DokumentenUrl` ab (Constraint `mii-iv-dokument-anhang`). Für jedes Element des Logical Models existiert ein 1:1 Mapping auf ein Element der FHIR-Ressource (siehe unten). Der Datensatz des Moduls ist außerdem in [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01) hinterlegt; wo er vom Informationsmodell abweicht, gilt das Informationsmodell.

### Mapping auf die FHIR-Ressource

Der IG-Publisher rendert dieses Element-zu-Ressource-Mapping auf der Artefaktseite des Logical Models nicht (der Reiter „Mappings“ bleibt dort leer). Die folgende Tabelle listet es deshalb hier auf.

<!-- Generated at build time from the logical model in package.db (publisher sql
     directive over the differential and its mii-map-dokument mapping). Source of
     truth: input/fsh/logical-model/mii-lm-dokument.fsh + mii-map-dokument.fsh. -->
{% sql {
 "query" : "select replace(json_extract(e.value,'$.path'),'mii-lm-dokument.','') as Element, (select json_extract(m.value,'$.map') from json_each(e.value,'$.mapping') m where json_extract(m.value,'$.identity')='mii-map-dokument') as Mapping, json_extract(e.value,'$.definition') as Definition from Resources r, json_each(r.Json,'$.differential.element') e where r.Id='mii-lm-dokument' and json_extract(e.value,'$.path') <> 'mii-lm-dokument'",
 "class" : "grid sql-table",
 "columns" : [
  { "title" : "Logischer Datensatz", "type" : "text", "source" : "Element" },
  { "title" : "FHIR-Mapping", "type" : "text", "source" : "Mapping" },
  { "title" : "Beschreibung", "type" : "markdown", "source" : "Definition" }
 ]
} %}

### Abweichungen des FHIR-Profils vom Informationsmodell

Das FHIR-Profil ist derzeit an folgenden Elementen offener als das Informationsmodell (siehe auch die Seite [Kompatibilität](kompatibilitaet.html)):

| Informationsmodell | FHIR-Profil |
| --- | --- |
| *Businessidentifikator* 0..1 | `identifier` 0..* |
| *Patient* verweist auf Patient oder PatientPseudonymisiert des Moduls Person (Basismodul) | `subject` erlaubt auch jeden `Patient` |
| *Gesundheitseinrichtungskontakt* verweist auf einen Kontakt des Moduls Fall (Basismodul) | `context.encounter` erlaubt auch jeden `Encounter` |
| *Beziehungsreferenz* verweist auf ein *Dokument* | `relatesTo.target` erlaubt jede `DocumentReference` |
| keine Entsprechung; *Dokumentenformat* ist der MIME-Typ | `content.format` ist ein zusätzliches Must-Support-Element |
| *NLP Processing Status* 0..*, je ein *Status* | mehrere Status dürfen auch als mehrere Codings einer `nlp-processing-status`-Extension angegeben werden (siehe [Mehrere Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html#mehrere-status)) |
{: .grid}
