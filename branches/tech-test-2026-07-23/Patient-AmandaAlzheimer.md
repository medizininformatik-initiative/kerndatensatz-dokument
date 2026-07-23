# AmandaAlzheimer - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AmandaAlzheimer**

## Example Patient: AmandaAlzheimer

Profile: [MII PR Person Patient](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)

Alzheimer Amanda (official) Female, DoB Unknown ( Krankenaktennummer (use: usual, ))

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "AmandaAlzheimer",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient"]
  },
  "identifier" : [{
    "use" : "usual",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR"
      }]
    },
    "system" : "https://uk-musterstadt.de/pid",
    "value" : "123456"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Amanda",
    "given" : ["Alzheimer"]
  }],
  "gender" : "female"
}

```
