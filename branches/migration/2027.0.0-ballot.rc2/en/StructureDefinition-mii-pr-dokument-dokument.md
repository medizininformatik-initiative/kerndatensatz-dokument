# MII PR Dokument Dokument - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Dokument Dokument**

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-dokument-dokument.csv), [Excel](../StructureDefinition-mii-pr-dokument-dokument.xlsx), [Schematron](../StructureDefinition-mii-pr-dokument-dokument.sch) 

## Resource Profile: MII PR Dokument Dokument 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument | *Version*:2027.0.0-ballot.rc2 |
| Active as of 2026-09-08 | *Computable Name*:MII_PR_Dokument_Dokument |

 
Klinisches Dokument mit zugehörigen Metadaten 

This profile describes the metadata of a clinical document. A detailed description and recommendations for using the profile can be found in the [module description](index.md).

### Mapping of the dataset to FHIR

The complete mapping of the data elements of the logical model [MII LM Dokument](StructureDefinition-mii-lm-dokument.md) onto the elements of this DocumentReference profile is maintained in a single place and is shown on the [Logical Models](logical-models.md#mapping-to-the-fhir-resource) page.

### Search parameters

The supported search parameters with example calls are on the [Search Parameters](search-parameters.md) page; the [module's CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.md) defines them normatively.

### Examples

Extensive examples that illustrate the profile and the extension together can be found on the extension's page ([MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md)).

An overview of all example instances of the module is on the [Examples](examples.md) page.

**Usages:**

* Examples for this Profile: [DocumentReference/AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md), [DocumentReference/AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md), [DocumentReference/AmandaAlzheimerKlartextDokument](DocumentReference-AmandaAlzheimerKlartextDokument.md) and [DocumentReference/AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md)
* CapabilityStatements using this Profile: [MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.dokument|current/StructureDefinition/StructureDefinition-mii-pr-dokument-dokument.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Key Elements Table](#tabs-key) 
*  [Differential Table](#tabs-diff) 
*  [Snapshot Table](#tabs-snap) 
*  [Statistics/References](#tabs-summ) 
*  [All](#tabs-all) 

#### Terminology Bindings

#### Constraints

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

** Summary **

Mandatory: 0 element(17 nested mandatory elements)
 Must-Support: 56 elements
 Fixed: 7 elements
 Prohibited: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Person Patient (https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-person-patient.html)
* [MII PR Person Patient (Pseudonymisiert) (https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert)](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-person-patient-pseudonymisiert.html)
* [MII PR Fall Kontakt mit einer Gesundheitseinrichtung (https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung)](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-fall-kontakt-gesundheitseinrichtung.html)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of DocumentReference.type.coding
* The element 1 is sliced based on the value of DocumentReference.category.coding
* The element 1 is sliced based on the value of DocumentReference.content

 **Key Elements View** 

#### Terminology Bindings

#### Constraints

 **Differential View** 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot ViewView** 

#### Terminology Bindings

#### Constraints

** Summary **

Mandatory: 0 element(17 nested mandatory elements)
 Must-Support: 56 elements
 Fixed: 7 elements
 Prohibited: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Person Patient (https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-person-patient.html)
* [MII PR Person Patient (Pseudonymisiert) (https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert)](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-person-patient-pseudonymisiert.html)
* [MII PR Fall Kontakt mit einer Gesundheitseinrichtung (https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung)](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-fall-kontakt-gesundheitseinrichtung.html)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of DocumentReference.type.coding
* The element 1 is sliced based on the value of DocumentReference.category.coding
* The element 1 is sliced based on the value of DocumentReference.content



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-dokument-dokument",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "MII_PR_Dokument_Dokument",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Dokument_Dokument"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Dokument Dokument",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Dokument Dokument"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-09-08T15:32:50+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Klinisches Dokument mit zugehörigen Metadaten",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.meta",
      "path" : "DocumentReference.meta",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.meta.profile",
      "path" : "DocumentReference.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.extension",
      "path" : "DocumentReference.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "DocumentReference.extension:nlp-processing-status",
      "path" : "DocumentReference.extension",
      "sliceName" : "nlp-processing-status",
      "short" : "NLP Processing Status",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "NLP Processing Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status der NLP-Verarbeitung des referenzierten Dokuments",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of the NLP processing of the referenced document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.masterIdentifier",
      "path" : "DocumentReference.masterIdentifier",
      "short" : "Versionsspezifische OID des Dokuments",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Specific Identifier for this version of the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Versionsspezifische OID des Dokuments. Die Angabe ist dringend empfohlen [SHALL].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Specific Identifier for this version of the document [SHALL]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.identifier",
      "path" : "DocumentReference.identifier",
      "short" : "Weitere Dokumente assoziierte Identifikatoren",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Further document associated Identifiers"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Weitere Dokumente assoziierte Identifikatoren. Die Angabe ist optional [MAY].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Further document associated Identifiers [MAY]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Z.B. Hausinterne Dokumenten-ID",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "E.g. internal document ID"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "short" : "Zustand des Dokumentenmetadatensatzes",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status about the condition of the document reference"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zustand des Dokumentenmetadatensatzes. Die Angabe ist dringend empfohlen [SHALL].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status about the condition of the document reference [SHALL]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Typisch: `current`",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Typically: `current`"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.docStatus",
      "path" : "DocumentReference.docStatus",
      "short" : "Bearbeitungsstatus des Dokumentes",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status about the referenced document itself"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Bearbeitungsstatus des Dokumentes. Die Angabe ist dringend empfohlen [SHALL].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status about the referenced document itself [SHALL]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Typisch: `final`",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Typically: `final`"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "short" : "Charakterisierung der Dokumentart im Detail",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Precise description of the document type"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Charakterisierung der Dokumentart im Detail. Die Angabe ist dringend empfohlen [SHALL].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Precise description of the document type [SHALL]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Empfohlen: KDL und aus KDL abgeleiteter XDS-Type-Code",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Recommended: KDL and from KDL derived XDS-Type-Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "constraint" : [{
        "key" : "mii-iv-dokument-dokument-type",
        "severity" : "warning",
        "human" : "Empfehlung: Mindestens eine Kodierungen aus KDL oder XDS SOLLTE in `type` vorhanden sein",
        "expression" : "coding.where(system = 'http://dvmd.de/fhir/CodeSystem/kdl').exists() or coding.where(system = 'http://ihe-d.de/CodeSystems/IHEXDStypeCode').exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument"
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type.coding",
      "path" : "DocumentReference.type.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice für Art des verwiesenen Dokument",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "DocumentReference.type.coding.system",
      "path" : "DocumentReference.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type.coding.code",
      "path" : "DocumentReference.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type.coding:KDL",
      "path" : "DocumentReference.type.coding",
      "sliceName" : "KDL",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://dvmd.de/fhir/ValueSet/kdl"
      }
    },
    {
      "id" : "DocumentReference.type.coding:KDL.system",
      "path" : "DocumentReference.type.coding.system",
      "fixedUri" : "http://dvmd.de/fhir/CodeSystem/kdl"
    },
    {
      "id" : "DocumentReference.type.coding:LNC",
      "path" : "DocumentReference.type.coding",
      "sliceName" : "LNC",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/c80-doc-typecodes"
      }
    },
    {
      "id" : "DocumentReference.type.coding:LNC.system",
      "path" : "DocumentReference.type.coding.system",
      "fixedUri" : "http://loinc.org"
    },
    {
      "id" : "DocumentReference.type.coding:SCT",
      "path" : "DocumentReference.type.coding",
      "sliceName" : "SCT",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-sct-dokument-typ"
      }
    },
    {
      "id" : "DocumentReference.type.coding:SCT.system",
      "path" : "DocumentReference.type.coding.system",
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "DocumentReference.type.coding:XDS",
      "path" : "DocumentReference.type.coding",
      "sliceName" : "XDS",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ihe-d.de/ValueSets/IHEXDStypeCode"
      }
    },
    {
      "id" : "DocumentReference.type.coding:XDS.system",
      "path" : "DocumentReference.type.coding.system",
      "fixedUri" : "http://ihe-d.de/CodeSystems/IHEXDStypeCode"
    },
    {
      "id" : "DocumentReference.category",
      "path" : "DocumentReference.category",
      "short" : "Charakterisierung der Dokumentenart in Übersicht",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "General description of the document type"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Charakterisierung der Dokumentenart in Übersicht. Die Angabe ist dringend empfohlen [SHALL].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "General description of the document type [SHALL]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Empfohlen: Aus KDL abgeleiteter XDS-Category-Code",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Recommended: From KDL derived XDS-Category-Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "constraint" : [{
        "key" : "mii-iv-dokument-dokument-category",
        "severity" : "warning",
        "human" : "Empfehlung: Eine Kodierungen aus XDS SOLLTE in `category` vorhanden sein",
        "expression" : "coding.where(system = 'http://ihe-d.de/CodeSystems/IHEXDSclassCode').exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument"
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.category.coding",
      "path" : "DocumentReference.category.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice für Kategorie des verwiesenen Dokuments",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "DocumentReference.category.coding.system",
      "path" : "DocumentReference.category.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.category.coding.code",
      "path" : "DocumentReference.category.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.category.coding:LNC",
      "path" : "DocumentReference.category.coding",
      "sliceName" : "LNC",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/document-classcodes"
      }
    },
    {
      "id" : "DocumentReference.category.coding:LNC.system",
      "path" : "DocumentReference.category.coding.system",
      "fixedUri" : "http://loinc.org"
    },
    {
      "id" : "DocumentReference.category.coding:SCT",
      "path" : "DocumentReference.category.coding",
      "sliceName" : "SCT",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-sct-dokument-kategorie"
      }
    },
    {
      "id" : "DocumentReference.category.coding:SCT.system",
      "path" : "DocumentReference.category.coding.system",
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "DocumentReference.category.coding:XDS",
      "path" : "DocumentReference.category.coding",
      "sliceName" : "XDS",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ihe-d.de/ValueSets/IHEXDSclassCode"
      }
    },
    {
      "id" : "DocumentReference.category.coding:XDS.system",
      "path" : "DocumentReference.category.coding.system",
      "fixedUri" : "http://ihe-d.de/CodeSystems/IHEXDSclassCode"
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "short" : "Referenz auf den Patient des Dokumentes",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Patient reference to the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Referenz auf den Patient des Dokumentes. Die Angabe ist verpflichtend [MUST].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Patient reference to the document [MUST]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient",
        "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient",
        "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.relatesTo",
      "path" : "DocumentReference.relatesTo",
      "short" : "Beziehung des Dokuments",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Document relationships"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Beziehungen des verwiesenen Dokuments zu anderen Dokumenten.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Document relationships"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.relatesTo.code",
      "path" : "DocumentReference.relatesTo.code",
      "short" : "Beziehung zu anderem Dokument",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Relationship to other document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Beziehung zu anderem Dokument. Die Angabe ist optional [MAY].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Relationship to other document [MAY]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Typisch: `appends`, z.B. ergänzende Annotation, oder `transforms`, z.B. Formatwandlung. CAVE: `transforms` meint Dokument wurde transformiert",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Typically: `appends`, e.g. additional annotation, or `transforms`, e.g. format conversion. CAVE: `transforms` means the document was transformed"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.relatesTo.target",
      "path" : "DocumentReference.relatesTo.target",
      "short" : "Referenz auf DocumentReference",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Target of document relations"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Referenz auf DocumentReference. Die Angabe ist verpflichtend [MUST], wenn Beziehungstyp angegeben.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Target of document relations [MUST], when relationship type is present."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.description",
      "path" : "DocumentReference.description",
      "short" : "Beschreibung des Inhalts des Dokumentes",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Description of the documents content"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Beschreibung des Inhalts des Dokumentes. Die Angabe ist optional [MAY].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Description of the documents content [MAY]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.securityLabel",
      "path" : "DocumentReference.securityLabel",
      "short" : "Status über den Sicherheitsbedarf des Dokuments",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Security level of the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status über den Sicherheitsbedarf des Dokuments. Die Angabe wird dringend empfohlen [SHALL].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Security level of the document [SHALL]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Siehe IG Terminologien",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "See IG Terminology"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "slicing" : {
        "discriminator" : [{
          "type" : "exists",
          "path" : "attachment.url"
        }],
        "description" : "Slice für ein Dokument, dessen Lokalisation verlinkt ist",
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Inhalt des Dokuments",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Document content"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Dokument, als Base64-kodierte Daten, oder Verweis, als URL, mit relevanten Metadaten zum Anhang.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Embedded Base64 encoded document content or URL reference to document."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment",
      "path" : "DocumentReference.content.attachment",
      "short" : "Zugang zum Dokument",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Access to the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zugang zum Dokument.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Access to the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "short" : "MIME-Typ des Dokumenteninhalts",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "MIME type of the document content"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "MIME-Typ des Dokumenteninhalts. Die Angabe ist dringend empfohlen [SHALL].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "MIME type of the document content [SHALL]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Typisch: `text/plain`",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Typically: `text/plain`"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.language",
      "path" : "DocumentReference.content.attachment.language",
      "short" : "Verwendete Sprache in dem Dokument",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Used language in the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verwendete Sprache in dem Dokument. Die Angabe ist dringend empfohlen [SHALL].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Used language in the document [SHALL]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Empfohlen: 5-stellige Angabe. Typisch: `de-DE`",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Recommended: 5-digit entry Typically: `de-DE`"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "short" : "Dokument als Binärdaten",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Document as binary data [Base64]"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Dokument als Binärdaten [Base64]. Die Angabe ist verpflichtend [MUST] für Textausleitungen extern und falls URL nicht angegeben wurde; ansonsten optional [MAY].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Document as binary data [Base64] [MUST] for external transfer and when URL not present; otherwise optional [MAY]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Typisch: Nutzung bei Datentransfer",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Typically: Use for data transfer"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "short" : "Verweis auf den lokalen Ablageort des Dokumentes",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Link to the local location where the document is kept"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf den lokalen Ablageort des Dokumentes. Die Angabe ist verpflichtend [MUST], wenn `data` nicht angegeben wurde; ansonsten optional [MAY].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Link to the local location where the document is kept [MUST], when `data` not present; otherwise optional [MAY]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Typisch: Lokal auflösbare URL",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Typically: Local resolvable URL"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "DocumentReference.content.attachment.creation",
      "path" : "DocumentReference.content.attachment.creation",
      "short" : "Datum der Erstellung des Dokumentes",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Date of the creation of the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der Erstellung des Dokumentes. Die Angabe ist dringend empfohlen [SHALL].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Date of the creation of the document [SHALL]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Bezogen auf letzte Änderung gemäß MII_EX_Dokument_NLP_Processing_Status",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Related to the last change regarding MII_EX_Dokument_NLP_Processing_Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.format",
      "path" : "DocumentReference.content.format",
      "short" : "Komplexe Formatangabe",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Complex format specification"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Formatangabe, die über den MIME-Typ hinausgehen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "More complex format specification than the MIME type"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Beinhaltet ValueSets von IHE Deutschland und International",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Contains ValueSets of IHE Germany and International"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-format-code"
      }
    },
    {
      "id" : "DocumentReference.content:Binaerdaten",
      "path" : "DocumentReference.content",
      "sliceName" : "Binaerdaten",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:Binaerdaten.attachment",
      "path" : "DocumentReference.content.attachment",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:Binaerdaten.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:Binaerdaten.attachment.language",
      "path" : "DocumentReference.content.attachment.language",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:Binaerdaten.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content:Binaerdaten.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content:Binaerdaten.attachment.creation",
      "path" : "DocumentReference.content.attachment.creation",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:Binaerdaten.format",
      "path" : "DocumentReference.content.format",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:Verweis",
      "path" : "DocumentReference.content",
      "sliceName" : "Verweis",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:Verweis.attachment",
      "path" : "DocumentReference.content.attachment",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:Verweis.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:Verweis.attachment.language",
      "path" : "DocumentReference.content.attachment.language",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:Verweis.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content:Verweis.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content:Verweis.attachment.creation",
      "path" : "DocumentReference.content.attachment.creation",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content:Verweis.format",
      "path" : "DocumentReference.content.format",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context",
      "path" : "DocumentReference.context",
      "short" : "Erzeugungskontext des Dokumentes",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Document creation context"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Klinischer Kontext, in welchem das Dokument erzeugt wurde",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Clinical context in which the document was created"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.encounter",
      "path" : "DocumentReference.context.encounter",
      "short" : "Referenz zum FALL",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to FALL"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Referenz zur semantisch geeignetsten Ebene des Moduls FALL. Die Angabe ist dringend empfohlen [SHALL].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to the semantically most suitable level of the module FALL [SHALL]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Encounter",
        "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.event",
      "path" : "DocumentReference.context.event",
      "short" : "Handlungen oder Prozeduren",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Acts or procedures"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Handlungen oder Prozeduren, die im Kontext dokumentiert wurden. Die Angabe ist optional [MAY].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Acts or procedures that were documented in context [MAY]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ihe-d.de/ValueSets/IHEXDSeventCodeList"
      }
    },
    {
      "id" : "DocumentReference.context.event.coding",
      "path" : "DocumentReference.context.event.coding",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.event.coding.system",
      "path" : "DocumentReference.context.event.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.event.coding.code",
      "path" : "DocumentReference.context.event.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.period",
      "path" : "DocumentReference.context.period",
      "short" : "Durchführungszeitraum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Performance period"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zeitraum, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde. Die Angabe ist optional [MAY].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Period during which the act or procedure described in the document was performed [MAY]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.facilityType",
      "path" : "DocumentReference.context.facilityType",
      "short" : "Art der Einrichtung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Type of facility"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Art der Einrichtung, in der die Handlung oder Prozedur am Patienten erfolgte. Die Angabe ist optional [MAY].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Type of facility where the act or procedure was performed on the patient [MAY]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Typisch: `KHS` für Krankenhaus",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Typically: `KHS` for hospital"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-einrichtungsart"
      }
    },
    {
      "id" : "DocumentReference.context.facilityType.coding",
      "path" : "DocumentReference.context.facilityType.coding",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.facilityType.coding.system",
      "path" : "DocumentReference.context.facilityType.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.facilityType.coding.code",
      "path" : "DocumentReference.context.facilityType.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.practiceSetting",
      "path" : "DocumentReference.context.practiceSetting",
      "short" : "Klinisches Fachgebiet",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Clinical specialty"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Klinisches Fachgebiet, in dem Dokumenteninhalt erstellt wurde. Die Angabe ist optional [MAY].",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Clinical specialty in which document content was created [MAY]."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "CAVE: Diese Angabe entspricht nicht dem `serviceType` im Modul FALL",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "CAVE: This specification does not correspond to the `serviceType` in the FALL module"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-fachgebiet"
      }
    },
    {
      "id" : "DocumentReference.context.practiceSetting.coding",
      "path" : "DocumentReference.context.practiceSetting.coding",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.practiceSetting.coding.system",
      "path" : "DocumentReference.context.practiceSetting.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.practiceSetting.coding.code",
      "path" : "DocumentReference.context.practiceSetting.coding.code",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
