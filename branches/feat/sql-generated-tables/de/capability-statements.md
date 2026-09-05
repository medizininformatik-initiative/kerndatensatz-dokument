# CapabilityStatements - MII IG Dokument v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **CapabilityStatements**

## CapabilityStatements

Um eine dezentrale Datenauswertung mittels des Deutschen Forschungsdatenportals für Gesundheit der Medizininformatik-Initiative zu ermöglichen MUSS die [Capabilities-Interaktion](https://www.hl7.org/fhir/R4/http.html#capabilities) unterstützt werden, sodass durch den FHIR-Server unter `[BASE_URL]/metadata` ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatement MUSS angegeben werden welche Profile inkl. Version, sowie welche Suchparameter unterstützt werden.

Nachfolgend wird aufgelistet welche Inhalte verpflichtend im CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen CapabilityStatement Instanz unter [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates) angegeben werden.

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement`

Artefakt-Seite: [MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.md)

### Unterstützte Suchparameter

Die folgende Tabelle liest Namen und Typen der Suchparameter beim Build aus dem CapabilityStatement, der normativen Quelle; Beispielaufrufe stehen in den [Hinweisen zum Profil](StructureDefinition-mii-pr-dokument-dokument.md#suchparameter).

| | |
| :--- | :--- |
| Suchparameter | Typ |
| _id | token |
| _profile | uri |
| identifier | token |
| status | token |
| doc-status | token |
| type | token |
| category | token |
| patient | reference |
| relation | token |
| relatesto | reference |
| relationship | composite |
| description | string |
| security-label | token |
| contenttype | token |
| language | token |
| location | uri |
| creation | date |
| format | token |
| encounter | reference |
| event | token |
| period | date |
| facility | token |
| setting | token |
| nlp-processing-status | token |

