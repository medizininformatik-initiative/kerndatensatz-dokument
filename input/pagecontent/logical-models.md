<!-- markdownlint-disable MD041 -->

The logical data models of the **Dokument** module describe the domain dataset independently of its concrete FHIR representation.

The information model decided by the MII National Steering Committee (NSG) is shown on the [UML Diagrams](uml-diagrams.html) page; it is binding for this module. The logical model represents it as a FHIR Logical Model, and the FHIR profile implements it:

[MII LM Dokument](StructureDefinition-mii-lm-dokument.html)

### Element dictionary

The following dictionary lists every element of the logical model with its path and description.

{% include StructureDefinition-mii-lm-dokument-dict-en.xhtml %}

The logical model takes over the data elements of the information model with their data types and cardinalities. The abstract *Anhang* (attachment) of the information model is either *Binärdaten* (binary data) or *Verweis* (reference); the logical model represents this as exactly one of `Daten` and `DokumentenUrl` (constraint `mii-iv-dokument-anhang`). For every element of the logical model there is a 1:1 mapping onto an element of the FHIR resource (see below). The dataset of the module is also recorded in [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01); where it differs from the information model, the information model applies.

### Mapping to the FHIR resource

The IG Publisher does not render this element-to-resource mapping on the Logical Model's artifact page (the "Mappings" tab stays empty there). The following table therefore lists it here.

<!-- Generated at build time: the rows come from the logical model in package.db
     (publisher sqlToData directive); the English definitions are looked up in
     input/data/translations_en.json, which scripts/po-to-data.mjs derives from
     input/translations/de/StructureDefinition-mii-lm-dokument.po (convention-check M14
     keeps both in step). Source of truth: input/fsh/logical-model/*.fsh + the .po. -->
{% sqlToData lmmapping select replace(json_extract(e.value,'$.path'),'mii-lm-dokument.','') as Element, (select json_extract(m.value,'$.map') from json_each(e.value,'$.mapping') m where json_extract(m.value,'$.identity')='mii-map-dokument') as Mapping, json_extract(e.value,'$.definition') as Definition from Resources r, json_each(r.Json,'$.differential.element') e where r.Id='mii-lm-dokument' and json_extract(e.value,'$.path') <> 'mii-lm-dokument' %}
{% assign lmtx = site.data.translations_en['StructureDefinition-mii-lm-dokument'] %}

| Logical dataset element | FHIR mapping | Description |
| --- | --- | --- |
{% for row in lmmapping %}| {{ row.Element }} | {{ row.Mapping }} | {{ lmtx[row.Definition] | default: row.Definition }} |
{% endfor %}{: .grid .sql-table}

### Where the FHIR profile differs from the information model

The FHIR profile is currently more open than the information model at the following elements (see also the [Compatibility](kompatibilitaet.html) page):

| Information model | FHIR profile |
| --- | --- |
| *Businessidentifikator* 0..1 | `identifier` 0..* |
| *Patient* refers to Patient or PatientPseudonymisiert of the Person module (base module) | `subject` also allows any `Patient` |
| *Gesundheitseinrichtungskontakt* refers to an encounter of the Fall module (base module) | `context.encounter` also allows any `Encounter` |
| *Beziehungsreferenz* refers to a *Dokument* | `relatesTo.target` allows any `DocumentReference` |
| no counterpart; *Dokumentenformat* is the MIME type | `content.format` is an additional Must Support element |
| *NLP Processing Status* 0..*, one *Status* each | several statuses may also be given as several codings of one `nlp-processing-status` extension (see [Several statuses](StructureDefinition-mii-ex-dokument-nlp-processing-status.html#several-statuses)) |
{: .grid}
