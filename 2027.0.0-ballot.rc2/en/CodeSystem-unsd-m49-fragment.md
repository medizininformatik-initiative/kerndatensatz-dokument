# UN M49 (Build-Fragment) - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UN M49 (Build-Fragment)**

## CodeSystem: UN M49 (Build-Fragment) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://unstats.un.org/unsd/methods/m49/m49.htm | *Version*:2027.0.0-ballot.rc2 |
| Active as of 2026-09-08 | *Computable Name*:UNSDM49Fragment |

 
Build-Terminologie: Fragment des Codesystems, das dieser Leitfaden mitliefert, damit der IG Publisher die Jurisdiktion `urn:iso:std:iso:3166#DE` auf jedem Terminologieserver validieren kann (SU-TermServ und Ontoserver führen ISO 3166 nur als Stub ohne Inhalt). Kein Bestandteil der fachlichen Festlegungen des Moduls; die normativen Codes stehen beim jeweiligen Herausgeber. 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "unsd-m49-fragment",
  "url" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "UNSDM49Fragment",
  "title" : "UN M49 Regionen (Fragment: Welt, Europa)",
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
  "property" : [{
    "code" : "class",
    "description" : "region | country",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "001",
    "display" : "World",
    "property" : [{
      "code" : "class",
      "valueString" : "region"
    }]
  },
  {
    "code" : "150",
    "display" : "Europe",
    "property" : [{
      "code" : "class",
      "valueString" : "region"
    }]
  },
  {
    "code" : "155",
    "display" : "Western Europe",
    "property" : [{
      "code" : "class",
      "valueString" : "region"
    }]
  }]
}

```
