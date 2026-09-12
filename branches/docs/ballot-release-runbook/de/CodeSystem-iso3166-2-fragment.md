# ISO 3166-2 (Build-Fragment) - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **ISO 3166-2 (Build-Fragment)**

## CodeSystem: ISO 3166-2 (Build-Fragment) (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:urn:iso:std:iso:3166:-2 | *Version*:2027.0.0-ballot.rc2 |
| Active Stand: 2026-09-08 | *Maschinenlesbarer Name*:ISO3166Part2Fragment |

 
Build-Terminologie: Fragment des Codesystems, das dieser Leitfaden mitliefert, damit der IG Publisher die Jurisdiktion `urn:iso:std:iso:3166#DE` auf jedem Terminologieserver validieren kann (SU-TermServ und Ontoserver führen ISO 3166 nur als Stub ohne Inhalt). Kein Bestandteil der fachlichen Festlegungen des Moduls; die normativen Codes stehen beim jeweiligen Herausgeber. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "iso3166-2-fragment",
  "url" : "urn:iso:std:iso:3166:-2",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "ISO3166Part2Fragment",
  "title" : "ISO 3166-2 Subdivisionscodes (Fragment: Sachsen)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-08",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Build-Terminologie: Fragment des Codesystems, das dieser Leitfaden mitliefert, damit der IG Publisher die Jurisdiktion `urn:iso:std:iso:3166#DE` auf jedem Terminologieserver validieren kann (SU-TermServ und Ontoserver führen ISO 3166 nur als Stub ohne Inhalt). Kein Bestandteil der fachlichen Festlegungen des Moduls; die normativen Codes stehen beim jeweiligen Herausgeber.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "fragment",
  "concept" : [{
    "code" : "DE-SN",
    "display" : "Sachsen"
  }]
}

```
