# MII EX Dokument NLP Processing Status - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Dokument NLP Processing Status**

## Extension: MII EX Dokument NLP Processing Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_EX_Dokument_NLP_Processing_Status |

Status der NLP-Verarbeitung des referenzierten Dokuments

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md)
* Examples for this Extension: [DocumentReference/AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md), [DocumentReference/AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md) and [DocumentReference/AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.dokument|current/StructureDefinition/StructureDefinition-mii-ex-dokument-nlp-processing-status.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-ex-dokument-nlp-processing-status.csv), [Excel](StructureDefinition-mii-ex-dokument-nlp-processing-status.xlsx), [Schematron](StructureDefinition-mii-ex-dokument-nlp-processing-status.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-dokument-nlp-processing-status",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status",
  "version" : "2026.0.1",
  "name" : "MII_EX_Dokument_NLP_Processing_Status",
  "title" : "MII EX Dokument NLP Processing Status",
  "status" : "active",
  "date" : "2026-07-23T12:41:25+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    },
    {
      "system" : "email",
      "value" : "office@medizininformatik-initiative.de"
    }]
  }],
  "description" : "Status der NLP-Verarbeitung des referenzierten Dokuments",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "DocumentReference"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Dokument NLP Processing Status",
      "definition" : "Status der NLP-Verarbeitung des referenzierten Dokuments"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "NLP Processing Status",
      "definition" : "Status der NLP-Verarbeitung des referenzierten Dokuments",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-nlp-processing-status"
      }
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
