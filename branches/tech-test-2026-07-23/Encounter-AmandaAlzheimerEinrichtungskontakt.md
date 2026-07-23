# AmandaAlzheimerEinrichtungskontakt - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AmandaAlzheimerEinrichtungskontakt**

## Example Encounter: AmandaAlzheimerEinrichtungskontakt

Profile: [MII PR Fall Kontakt mit einer Gesundheitseinrichtung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung)

**identifier**: Fallnummer/123456

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**type**: Einrichtungskontakt

**subject**: [Alzheimer Amanda (official) Female, DoB Unknown ( Krankenaktennummer (use: usual, ))](Patient-AmandaAlzheimer.md)

**period**: 2028-01-24 00:00:00+0100 --> 2028-02-06 00:00:00+0100



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "AmandaAlzheimerEinrichtungskontakt",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "VN"
      }]
    },
    "system" : "http://uk-musterstadt.de/fid",
    "value" : "123456"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP",
    "display" : "inpatient encounter"
  },
  "type" : [{
    "coding" : [{
      "code" : "einrichtungskontakt",
      "display" : "Einrichtungskontakt"
    }]
  }],
  "subject" : {
    "reference" : "Patient/AmandaAlzheimer"
  },
  "period" : {
    "start" : "2028-01-24T00:00:00+01:00",
    "end" : "2028-02-06T00:00:00+01:00"
  }
}

```
