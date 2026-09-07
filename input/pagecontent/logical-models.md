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
