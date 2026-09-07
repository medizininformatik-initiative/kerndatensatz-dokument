# Abteilungskontakt - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Abteilungskontakt**

## Beispiel Encounter: Abteilungskontakt

-------

**German**

-------

Profile: [MII PR Fall Kontakt mit einer Gesundheitseinrichtung](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-fall-kontakt-gesundheitseinrichtung.html)

**identifier**: Fallnummer/123456

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**type**: Abteilungskontakt

**serviceType**: Rheumatologie

**subject**: [Alzheimer Amanda (official) Female, DoB Unknown ( Krankenaktennummer (use: usual, ))](Patient-AmandaAlzheimer.md)

**period**: 2028-01-24 00:00:00+0100 --> 2028-02-06 00:00:00+0100

**partOf**: [Encounter: identifier = Fallnummer; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt; period = 2028-01-24 00:00:00+0100 --> 2028-02-06 00:00:00+0100](Encounter-AmandaAlzheimerEinrichtungskontakt.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "AmandaAlzheimerAbteilungskontakt",
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
      "system" : "http://fhir.de/CodeSystem/Kontaktebene",
      "code" : "abteilungskontakt",
      "display" : "Abteilungskontakt"
    }]
  }],
  "serviceType" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel",
      "code" : "0900",
      "display" : "Rheumatologie"
    }]
  },
  "subject" : {
    "reference" : "Patient/AmandaAlzheimer"
  },
  "period" : {
    "start" : "2028-01-24T00:00:00+01:00",
    "end" : "2028-02-06T00:00:00+01:00"
  },
  "partOf" : {
    "reference" : "Encounter/AmandaAlzheimerEinrichtungskontakt"
  }
}

```
