<!-- TODO:REVIEW machine-translated from the German default page -->
<!-- markdownlint-disable MD041 -->

The logical data models of the **Dokument** module describe the domain dataset independently of its concrete FHIR representation.

The officially adopted version of the information model is located on [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01). To unify the representation, the information model was additionally mapped as a FHIR Logical Model:

[MII LM Dokument](StructureDefinition-mii-lm-dokument.html)

### Element dictionary

The following dictionary lists every element of the logical model with its path and description.

{% include StructureDefinition-mii-lm-dokument-dict-en.xhtml %}

*Note that the Logical Model targets solely the representation of the data elements and their descriptions. The data types and cardinalities used are not to be regarded as mandatory. These are ultimately defined by the FHIR profiles. For every element within the Logical Model there is a 1:1 mapping onto an element of a concrete FHIR resource.*

### Mapping to the FHIR resource

The IG Publisher does not render this element-to-resource mapping on the Logical Model's artefact page (the "Mappings" tab stays empty there). The following table therefore lists it here.

<!-- Generated at build time: the rows come from the logical model in package.db
     (publisher sqlToData directive); the English definitions are looked up in
     input/data/translations_en.json, which scripts/po-to-data.mjs derives from
     input/translations/en/StructureDefinition-mii-lm-dokument.po (convention-check M14
     keeps both in step). Source of truth: input/fsh/logical-model/*.fsh + the .po. -->
{% sqlToData lmmapping select replace(json_extract(e.value,'$.path'),'mii-lm-dokument.','') as Element, (select json_extract(m.value,'$.map') from json_each(e.value,'$.mapping') m where json_extract(m.value,'$.identity')='mii-map-dokument') as Mapping, json_extract(e.value,'$.definition') as Definition from Resources r, json_each(r.Json,'$.differential.element') e where r.Id='mii-lm-dokument' and json_extract(e.value,'$.path') <> 'mii-lm-dokument' %}
{% assign lmtx = site.data.translations_en['StructureDefinition-mii-lm-dokument'] %}

| Logical dataset element | FHIR mapping | Description |
| --- | --- | --- |
{% for row in lmmapping %}| {{ row.Element }} | {{ row.Mapping }} | {{ lmtx[row.Definition] | default: row.Definition }} |
{% endfor %}{: .grid .sql-table}
