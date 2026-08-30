# MII LM Dokument - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII LM Dokument**

## Logisches Modell: MII LM Dokument 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-lm-dokument | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-08-30 | *Maschinenlesbarer Name*:MII_LM_Dokument |

 
MII Logical Model KDS-Modul Dokument 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.dokument|current/StructureDefinition/StructureDefinition-mii-lm-dokument.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Constraints

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

#### Constraints

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

** Summary **

Mandatory: 0 element(5 nested mandatory elements)

 **Schlüsselelemente-Ansicht** 

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

 **Snapshot-AnsichtView** 

#### Constraints

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

** Summary **

Mandatory: 0 element(5 nested mandatory elements)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-lm-dokument.csv), [Excel](../StructureDefinition-mii-lm-dokument.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-lm-dokument",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-lm-dokument",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_LM_Dokument",
  "title" : "MII LM Dokument",
  "status" : "active",
  "date" : "2026-08-30T17:48:45+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "MII Logical Model KDS-Modul Dokument",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "mii-map-dokument",
    "name" : "MII MAP Dokument",
    "comment" : "MII Mappings KDS-Modul Dokument"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-lm-dokument",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "mii-lm-dokument",
      "path" : "mii-lm-dokument",
      "short" : "MII LM Dokument",
      "definition" : "MII Logical Model KDS-Modul Dokument"
    },
    {
      "id" : "mii-lm-dokument.Dokument",
      "path" : "mii-lm-dokument.Dokument",
      "short" : "Dokument",
      "definition" : "Klinisches Dokument inkl. Metadaten, Inhalt, Erzeugungskontext und Beziehungen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Masteridentifikator",
      "path" : "mii-lm-dokument.Dokument.Masteridentifikator",
      "short" : "Versionsspezifische Kennung",
      "definition" : "Versionsspezifische eindeutige Kennung, die dem Dokument durch die Dokumentenquelle zugewiesen wurde",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.masterIdentifier"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Businessidentifikator",
      "path" : "mii-lm-dokument.Dokument.Businessidentifikator",
      "short" : "Versionsunabhängige Kennung",
      "definition" : "Andere versionsunabhängige Kennung, die dem Dokument (z.B. durch weitere dokumentenverarbeitende Systeme) zugewiesen wurde",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.identifier"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumentenreferenzstatus",
      "path" : "mii-lm-dokument.Dokument.Dokumentenreferenzstatus",
      "short" : "Status der Dokumentenreferenz",
      "definition" : "Status dieser Dokumentenreferenz (aktuell, überholt oder irrtümlich eingegeben)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.status"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumentenstatus",
      "path" : "mii-lm-dokument.Dokument.Dokumentenstatus",
      "short" : "Status des Dokuments",
      "definition" : "Status des zugrunde liegenden Dokuments (vorläufig, final, geändert oder irrtümlich eingegeben)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.docStatus"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumententyp",
      "path" : "mii-lm-dokument.Dokument.Dokumententyp",
      "short" : "Art des Dokuments",
      "definition" : "Art des Dokuments auf das verwiesen wird (z.B. Anamnese und Untersuchung, Entlassungsbericht, Verlaufsbericht)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.type"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumentenkategorie",
      "path" : "mii-lm-dokument.Dokument.Dokumentenkategorie",
      "short" : "Kategorien des Dokuments",
      "definition" : "Übergeordnete Kategorie des Dokuments auf das verwiesen wird (z.B. Arztberichte oder Arztdokumentation)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.category"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Patient",
      "path" : "mii-lm-dokument.Dokument.Patient",
      "short" : "Verweis auf Patient",
      "definition" : "Patient auf den sich das verwiesene Dokument bezieht",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.subject"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Beschreibung",
      "path" : "mii-lm-dokument.Dokument.Beschreibung",
      "short" : "Beschreibung des Dokuments",
      "definition" : "Menschenlesbare Beschreibung zum verwiesenen Dokuments",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.description"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Sicherheitsstufe",
      "path" : "mii-lm-dokument.Dokument.Sicherheitsstufe",
      "short" : "Vertraulichkeit des Dokuments",
      "definition" : "Grad der Vertraulichkeit/Sicherheit des verwiesenen Dokuments (z. B. uneingeschränkt, gering, mittel, normal oder eingeschränkt)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.securityLabel"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumentenbeziehung",
      "path" : "mii-lm-dokument.Dokument.Dokumentenbeziehung",
      "short" : "Beziehung des Dokuments",
      "definition" : "Beziehungen des verwiesenen Dokuments zu anderen Dokumenten",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.relatesTo"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumentenbeziehung.Beziehungstyp",
      "path" : "mii-lm-dokument.Dokument.Dokumentenbeziehung.Beziehungstyp",
      "short" : "Art der Beziehung",
      "definition" : "Beziehung zu anderen Dokumenten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.relatesTo.code"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Dokumentenbeziehung.Beziehungsreferenz",
      "path" : "mii-lm-dokument.Dokument.Dokumentenbeziehung.Beziehungsreferenz",
      "short" : "Verweis auf Dokument",
      "definition" : "Ziel der Dokumentenbeziehung",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.relatesTo.target"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Anhang",
      "path" : "mii-lm-dokument.Dokument.Anhang",
      "short" : "Inhalt des Dokuments",
      "definition" : "Dokument (Base64-kodierte Daten) oder Verweis (URL) mit relevanten Metadaten zum Anhang",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.content"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Anhang.Sprache",
      "path" : "mii-lm-dokument.Dokument.Anhang.Sprache",
      "short" : "Verfassungssprache des Inhalts",
      "definition" : "Verwendete Sprache in dem Dokument",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.attachment.language"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Anhang.Erstellungsdatum",
      "path" : "mii-lm-dokument.Dokument.Anhang.Erstellungsdatum",
      "short" : "Erstellungsdatum des Inhalts",
      "definition" : "Datum der Erstellung des Dokumentes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.attachment.creation"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Anhang.Daten",
      "path" : "mii-lm-dokument.Dokument.Anhang.Daten",
      "short" : "Binärdaten zum Inhalt",
      "definition" : "Dokument als Binärdaten",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.attachment.data"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Anhang.DokumentenUrl",
      "path" : "mii-lm-dokument.Dokument.Anhang.DokumentenUrl",
      "short" : "URL zum Inhalt",
      "definition" : "Verweis auf den (lokalen) Ablageort des Dokuments",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.attachment.url"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Anhang.Dokumentenformat",
      "path" : "mii-lm-dokument.Dokument.Anhang.Dokumentenformat",
      "short" : "MIME-Typ zum Inhalt",
      "definition" : "MIME-Typ des Dokumenteninhalts",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.attachment.contentType"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Kontext",
      "path" : "mii-lm-dokument.Dokument.Kontext",
      "short" : "Erzeugungskontext des Dokuments",
      "definition" : "Klinischer Kontext, in welchem das Dokument erzeugt wurde",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.context"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Kontext.Gesundheitseinrichtungskontakt",
      "path" : "mii-lm-dokument.Dokument.Kontext.Gesundheitseinrichtungskontakt",
      "short" : "Verweis auf Einrichtungskontakt",
      "definition" : "Kontakt zur Gesundheitseinrichtung oder die Art der Versorgung, die mit dem Dokumenteninhalt assoziiert ist",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.context.encounter"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Kontext.Vorgang",
      "path" : "mii-lm-dokument.Dokument.Kontext.Vorgang",
      "short" : "Dokumentierter Vorgang",
      "definition" : "Handlungen oder Prozeduren, die im Kontext dokumentiert wurden",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.context.event"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Kontext.Fachgebiet",
      "path" : "mii-lm-dokument.Dokument.Kontext.Fachgebiet",
      "short" : "Klinisches Fachgebiet zum Vorgang",
      "definition" : "Klinisches Fachgebiet, in dem Dokumenteninhalt erstellt wurde",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.context.practiceSetting"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Kontext.Dokumentationszeitraum",
      "path" : "mii-lm-dokument.Dokument.Kontext.Dokumentationszeitraum",
      "short" : "Durchführungszeitraum zum Vorgang",
      "definition" : "Zeitraum, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.context.period"
      }]
    },
    {
      "id" : "mii-lm-dokument.Dokument.Kontext.Einrichtungsart",
      "path" : "mii-lm-dokument.Dokument.Kontext.Einrichtungsart",
      "short" : "Art der Einrichtung zum Vorgang",
      "definition" : "Art der Einrichtung, in der die Handlung oder Prozedur am Patienten erfolgte",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "mii-map-dokument",
        "map" : "DocumentReference.context.facilityType"
      }]
    }]
  }
}

```
