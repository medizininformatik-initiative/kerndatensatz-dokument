# Patientin Amanda Alzheimer - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patientin Amanda Alzheimer**

## Example Patient: Patientin Amanda Alzheimer

-------

**English**

-------

Profile: [MII PR Person Patient](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-person-patient.html)

Alzheimer Amanda (official) Female, DoB Unknown ( Medical record number (use: usual, ))

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
