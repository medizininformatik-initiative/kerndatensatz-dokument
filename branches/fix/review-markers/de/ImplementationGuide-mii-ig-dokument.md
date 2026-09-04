# MII-ImplementationGuide-Ressource - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **MII-ImplementationGuide-Ressource**

## MII-ImplementationGuide-Ressource

Diese ImplementationGuide-Ressource definiert die technischen Details dieser Publikation, einschließlich Abhängigkeiten und Veröffentlichungsparametern.

* [XML](../ImplementationGuide-mii-ig-dokument.xml)
* [JSON](../ImplementationGuide-mii-ig-dokument.json)

### Versionsübergreifende Analyse

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (de.medizininformatikinitiative.kerndatensatz.dokument.r4)](../package.r4.tgz) and [R4B (de.medizininformatikinitiative.kerndatensatz.dokument.r4b)](../package.r4b.tgz) are available.

### IG-Abhängigkeiten

Dieser IG enthält die folgenden Abhängigkeiten von anderen IGs.






















> **Woher die Versionen kommen.** Jedes Paket der Tabelle ist direkt in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/blob/main/sushi-config.yaml) (`dependencies:`) gepinnt — auch `hl7.terminology.r4` (THO) und `hl7.fhir.uv.extensions.r4`, und diese beiden mit Bedacht: Die [Automatik des IG Publishers](https://build.fhir.org/ig/FHIR/ig-guidance/versions.html#automatic-packages) liest ausschließlich die **eigene** Abhängigkeitsliste dieses Leitfadens; ohne direkten Pin würde jeder Build stillschweigend das jeweils aktuellste THO-/Extensions-Release injizieren — eine allein im MII-Meta-Paket gepinnte Version kann den Build nicht steuern (verifiziert im Publisher-Quellcode des gepinnten Release). Eine wöchentliche Prüfung warnt, wenn diese beiden Pins von den Vorgaben des gepinnten Meta-Pakets abweichen; die von einem konkreten Build verwendeten Versionen stehen in dessen `qa-versions.json`.

### Globale Profile

Dieser IG deklariert die folgenden globalen Profile — Profile, die für jede unter diesem Leitfaden ausgetauschte Instanz ihres Ressourcentyps gelten. Eine leere Tabelle bedeutet: Dieses Modul deklariert keine.

*There are no Global profiles defined*

### Urheberrechte

This publication includes IP covered under the following statements.

* 2025 DVMD e.V.

* [CodeSystem Klinische Dokumentenklassen-Liste (Version 2025)](https://simplifier.net/resolve?scope=de.gematik.isik@6.0.0&canonical=http://dvmd.de/fhir/CodeSystem/kdl): [DocumentReference/AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md), [DocumentReference/AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md), [DocumentReference/AmandaAlzheimerKlartextDokument](DocumentReference-AmandaAlzheimerKlartextDokument.md), [DocumentReference/AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md) and [MII_PR_Dokument_Dokument](StructureDefinition-mii-pr-dokument-dokument.md)


* HL7 Deutschland e.V.

* [Fachabteilungsschluessel](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel): [Encounter/AmandaAlzheimerAbteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.md)


* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [MII_CPS_Dokument_CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.md), [MII_CS_Dokument_NLP_Processing_Status](CodeSystem-mii-cs-dokument-nlp-processing-status.md)... Show 10 more, [MII_EX_Dokument_NLP_Processing_Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md), [MII_IG_Dokument](index.md), [MII_LM_Dokument](StructureDefinition-mii-lm-dokument.md), [MII_PR_Dokument_Dokument](StructureDefinition-mii-pr-dokument-dokument.md), [MII_VS_Dokument_Einrichtungsart](ValueSet-mii-vs-dokument-einrichtungsart.md), [MII_VS_Dokument_Fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.md), [MII_VS_Dokument_Format_Code](ValueSet-mii-vs-dokument-format-code.md), [MII_VS_Dokument_NLP_Processing_Status](ValueSet-mii-vs-dokument-nlp-processing-status.md), [MII_VS_Dokument_SCT_Dokument_Kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.md) and [MII_VS_Dokument_SCT_Dokument_Typ](ValueSet-mii-vs-dokument-sct-dokument-typ.md)


* Some content from IHE® Copyright © 2015 [IHE International, Inc](http://www.ihe.net/Governance/#Intellectual_Property) .

* [IHE Format Code set for use with Document Sharing](https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/CodeSystem-formatcode.html): [DocumentReference/AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md), [DocumentReference/AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md), [DocumentReference/AmandaAlzheimerKlartextDokument](DocumentReference-AmandaAlzheimerKlartextDokument.md), [DocumentReference/AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md) and [MII_PR_Dokument_Dokument](StructureDefinition-mii-pr-dokument-dokument.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [MII_PR_Dokument_Dokument](StructureDefinition-mii-pr-dokument-dokument.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [MII_PR_Dokument_Dokument](StructureDefinition-mii-pr-dokument-dokument.md), [MII_VS_Dokument_Einrichtungsart](ValueSet-mii-vs-dokument-einrichtungsart.md), [MII_VS_Dokument_Fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.md), [MII_VS_Dokument_SCT_Dokument_Kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.md) and [MII_VS_Dokument_SCT_Dokument_Typ](ValueSet-mii-vs-dokument-sct-dokument-typ.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [identifierType](http://terminology.hl7.org/7.2.0/CodeSystem-v2-0203.html): [Encounter/AmandaAlzheimerAbteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.md), [Encounter/AmandaAlzheimerEinrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.md), [Encounter/AmandaAlzheimerVersorgungsstellenKontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.md) and [Patient/AmandaAlzheimer](Patient-AmandaAlzheimer.md)
* [ActCode](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html): [Encounter/AmandaAlzheimerAbteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.md), [Encounter/AmandaAlzheimerEinrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.md) and [Encounter/AmandaAlzheimerVersorgungsstellenKontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.md)
* [Confidentiality](http://terminology.hl7.org/7.2.0/CodeSystem-v3-Confidentiality.html): [DocumentReference/AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md), [DocumentReference/AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md), [DocumentReference/AmandaAlzheimerKlartextDokument](DocumentReference-AmandaAlzheimerKlartextDokument.md) and [DocumentReference/AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md)


### IG-Parametereinstellungen und Expansionsparameter

Expansionsparameter sind Query-Parameter, die an eine `ValueSet`- `$expand`-Operation übergeben werden können, um zu steuern, wie das ValueSet expandiert wird — also wie die vollständige Liste der Codes aus der ValueSet-Definition erzeugt wird. Die für diesen IG verwendeten [IG-Parameter](https://hl7.org/fhir/tools/en/CodeSystem-ig-parameters.html) sind in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/blob/main/sushi-config.yaml) (`parameters:`) deklariert. Ein Modul, das seine Expansionsparameter über ein CRMI-Manifest pinnt, verlinkt hier zusätzlich die generierte `Parameters`-Ressource (siehe die auskommentierten Manifest-Blöcke in `sushi-config.yaml` und die Seite Metadata Overview, sofern das Modul sie behält).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "mii-ig-dokument",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-implementationguide"]
  },
  "language" : "de",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-09-01"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "version" : "3.0.0",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "packageId",
      "valueId" : "de.medizininformatikinitiative.kerndatensatz.dokument"
    },
    {
      "url" : "version",
      "valueString" : "2027.0.0-ballot.rc1"
    },
    {
      "url" : "uri",
      "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument"
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "office@medizininformatik-initiative.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-expansionParameters",
    "valueReference" : {
      "reference" : "Parameters/mii-param-dokument-manifest"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this ImplementationGuide resource as a computable definition of all the parts of the corresponding module of the Medical Informatics Initiative core data set."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-purpose",
    "valueMarkdown" : "Provide the computable publication unit for the MII Core Dataset Dokument module, enabling implementers to discover, validate, version, and apply the specification consistently."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C19498"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ImplementationGuide/mii-ig-dokument",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_IG_Dokument",
  "title" : "MII IG Dokument",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-01",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Medizininformatik Initiative - KDS-Modul Dokument",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "packageId" : "de.medizininformatikinitiative.kerndatensatz.dokument",
  "license" : "CC-BY-4.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "de_basisprofil_r4",
    "uri" : "http://fhir.org/packages/de.basisprofil.r4/ImplementationGuide/de.basisprofil.r4",
    "packageId" : "de.basisprofil.r4",
    "version" : "1.6.0"
  },
  {
    "id" : "de_gematik_isik",
    "uri" : "http://fhir.org/packages/de.gematik.isik/ImplementationGuide/de.gematik.isik",
    "packageId" : "de.gematik.isik",
    "version" : "6.0.0"
  },
  {
    "id" : "de_ihe_d_terminology",
    "uri" : "http://fhir.de/packages/de.ihe-d.terminology",
    "packageId" : "de.ihe-d.terminology",
    "version" : "3.0.1"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_base",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-base/ImplementationGuide/mii-ig-base",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.base",
    "version" : "2026.0.1"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_meta",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/ImplementationGuide/mii-ig-meta",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.meta",
    "version" : "2026.0.0"
  },
  {
    "id" : "dvmd_kdl_r4",
    "uri" : "http://fhir.org/packages/dvmd.kdl.r4/ImplementationGuide/dvmd.kdl.r4",
    "packageId" : "dvmd.kdl.r4",
    "version" : "2025.0.1"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r4",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.2.0"
  },
  {
    "id" : "hl7_terminology_r4",
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "ihe_formatcode_fhir",
    "uri" : "https://profiles.ihe.net/fhir/ihe.formatcode.fhir/ImplementationGuide/ihe.formatcode.fhir",
    "packageId" : "ihe.formatcode.fhir",
    "version" : "1.4.0"
  },
  {
    "id" : "hl7_fhir_uv_crmi",
    "uri" : "http://hl7.org/fhir/uv/crmi/ImplementationGuide/hl7.fhir.uv.crmi",
    "packageId" : "hl7.fhir.uv.crmi",
    "version" : "2.0.0"
  },
  {
    "id" : "hl7_fhir_uv_xver_r5_r4",
    "uri" : "http://hl7.org/fhir/uv/xver/ImplementationGuide/hl7.fhir.uv.xver-r5.r4",
    "packageId" : "hl7.fhir.uv.xver-r5.r4",
    "version" : "0.1.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ballot"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-dokument-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
      "valueReference" : {
        "reference" : "Parameters/expansion-parameters"
      }
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ballot"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-dokument-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-AmandaAlzheimer.html"
      }],
      "reference" : {
        "reference" : "Patient/AmandaAlzheimer"
      },
      "name" : "AmandaAlzheimer",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-AmandaAlzheimerAbteilungskontakt.html"
      }],
      "reference" : {
        "reference" : "Encounter/AmandaAlzheimerAbteilungskontakt"
      },
      "name" : "AmandaAlzheimerAbteilungskontakt",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-AmandaAlzheimerAnnotiertesDokument.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/AmandaAlzheimerAnnotiertesDokument"
      },
      "name" : "AmandaAlzheimerAnnotiertesDokument",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/AmandaAlzheimerDeIdentifiziertesDokument"
      },
      "name" : "AmandaAlzheimerDeIdentifiziertesDokument",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-AmandaAlzheimerEinrichtungskontakt.html"
      }],
      "reference" : {
        "reference" : "Encounter/AmandaAlzheimerEinrichtungskontakt"
      },
      "name" : "AmandaAlzheimerEinrichtungskontakt",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-AmandaAlzheimerKlartextDokument.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/AmandaAlzheimerKlartextDokument"
      },
      "name" : "AmandaAlzheimerKlartextDokument",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-AmandaAlzheimerOriginalDokument.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/AmandaAlzheimerOriginalDokument"
      },
      "name" : "AmandaAlzheimerOriginalDokument",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html"
      }],
      "reference" : {
        "reference" : "Encounter/AmandaAlzheimerVersorgungsstellenKontakt"
      },
      "name" : "AmandaAlzheimerVersorgungsstellenKontakt",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-mii-cps-dokument-capabilitystatement.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/mii-cps-dokument-capabilitystatement"
      },
      "name" : "MII CPS Dokument CapabilityStatement",
      "description" : "\n    Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss,\n    um das Modul Dokument der Medizininformatik Initiative zu implementieren.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-dokument-nlp-processing-status.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-dokument-nlp-processing-status"
      },
      "name" : "MII CS Dokument NLP Processing Status",
      "description" : "Status der NLP-Verarbeitung des referenzierten Dokuments",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-dokument-nlp-processing-status.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-dokument-nlp-processing-status"
      },
      "name" : "MII EX Dokument NLP Processing Status",
      "description" : "Status der NLP-Verarbeitung des referenzierten Dokuments",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-lm-dokument.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-lm-dokument"
      },
      "name" : "MII LM Dokument",
      "description" : "MII Logical Model KDS-Modul Dokument",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-dokument-dokument.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-dokument-dokument"
      },
      "name" : "MII PR Dokument Dokument",
      "description" : "Klinisches Dokument mit zugehörigen Metadaten",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-dokument-einrichtungsart.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-dokument-einrichtungsart"
      },
      "name" : "MII VS Dokument Einrichtungart",
      "description" : "ValueSet zur Art der erzeugenden Einrichtung eines Dokuments",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-dokument-fachgebiet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-dokument-fachgebiet"
      },
      "name" : "MII VS Dokument Fachgebiet",
      "description" : "ValueSet zum erzeugenden Fachgebiet eines Dokuments",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-dokument-format-code.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-dokument-format-code"
      },
      "name" : "MII VS Dokument Format Code",
      "description" : "ValueSet zum (komplexen) Format Code eines Dokuments",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-dokument-nlp-processing-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-dokument-nlp-processing-status"
      },
      "name" : "MII VS Dokument NLP Processing Status",
      "description" : "ValueSet zum Status der NLP-Verarbeitung des referenzierten Dokuments",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-dokument-sct-dokument-kategorie.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-dokument-sct-dokument-kategorie"
      },
      "name" : "MII VS Dokument SCT Dokument Kategorie",
      "description" : "SNOMED CT ValueSet zur Kategorie (oder Klasse) eines Dokuments",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-dokument-sct-dokument-typ.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-dokument-sct-dokument-typ"
      },
      "name" : "MII VS Dokument SCT Dokument Typ",
      "description" : "SNOMED CT ValueSet zum Typ eines Dokuments",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-mii-param-dokument-manifest.html"
      }],
      "reference" : {
        "reference" : "Parameters/mii-param-dokument-manifest"
      },
      "name" : "mii-param-dokument-manifest",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "_title" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Table of Contents"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Startseite",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Home"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "Anleitung",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Guidance"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "implementer-guidance.html"
          }],
          "nameUrl" : "implementer-guidance.html",
          "title" : "Anleitung für Implementierende",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "en"
              },
              {
                "url" : "content",
                "valueString" : "Guidance for Implementers"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown",
          "page" : [{
            "extension" : [{
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "kompatibilitaet.html"
            }],
            "nameUrl" : "kompatibilitaet.html",
            "title" : "Kompatibilität zu anderen Spezifikationen",
            "_title" : {
              "extension" : [{
                "extension" : [{
                  "url" : "lang",
                  "valueCode" : "en"
                },
                {
                  "url" : "content",
                  "valueString" : "Compatibility with Other Specifications"
                }],
                "url" : "http://hl7.org/fhir/StructureDefinition/translation"
              }]
            },
            "generation" : "markdown"
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "uml-diagrams.html"
          }],
          "nameUrl" : "uml-diagrams.html",
          "title" : "UML-Diagramme",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "en"
              },
              {
                "url" : "content",
                "valueString" : "UML Diagrams"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "security-and-privacy.html"
        }],
        "nameUrl" : "security-and-privacy.html",
        "title" : "Sicherheit und Datenschutz",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Security and Privacy"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "profiles.html"
        }],
        "nameUrl" : "profiles.html",
        "title" : "Profile",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Profiles"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "extensions.html"
        }],
        "nameUrl" : "extensions.html",
        "title" : "Extensions",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Extensions"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "capability-statements.html"
        }],
        "nameUrl" : "capability-statements.html",
        "title" : "CapabilityStatements",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Capability Statements"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "logical-models.html"
        }],
        "nameUrl" : "logical-models.html",
        "title" : "Logische Modelle",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Logical Models"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "value-sets.html"
        }],
        "nameUrl" : "value-sets.html",
        "title" : "ValueSets",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Value Sets"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "code-systems.html"
        }],
        "nameUrl" : "code-systems.html",
        "title" : "CodeSystems",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Code Systems"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "examples.html"
        }],
        "nameUrl" : "examples.html",
        "title" : "Beispiele",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Examples"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Downloads"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Änderungshistorie",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Changelog"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "metadata.html"
        }],
        "nameUrl" : "metadata.html",
        "title" : "Metadaten-Übersicht",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Metadata Overview"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "version-history.html"
        }],
        "nameUrl" : "version-history.html",
        "title" : "Versionierung",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Versioning"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ImplementationGuide-mii-ig-dokument.html"
        }],
        "nameUrl" : "ImplementationGuide-mii-ig-dokument.html",
        "title" : "MII-ImplementationGuide-Ressource",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "MII ImplementationGuide Resource"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "translationinfo.html"
        }],
        "nameUrl" : "translationinfo.html",
        "title" : "Übersetzungsinformationen",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Translation Information"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/predefined-resources"
    },
    {
      "code" : "path-pages",
      "value" : "input/intro-notes"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
