# CodeSystems - MII IG Dokument v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* **CodeSystems**

## CodeSystems

Diese Seite beschreibt die CodeSystems des Moduls **Dokument**. Die darauf aufbauenden ValueSets beschreibt die Seite [ValueSets](value-sets.md).

> **Wichtig:** CodeSystem-Ressourcen externer Terminologien (z. B. ICD-10-GM, OPS, SNOMED CT) werden in diesem Modul **nicht** publiziert, sondern über den zentralen KDS-Terminologieserver (SU-TermServ) bezogen: [https://mii-termserv.de/](https://mii-termserv.de/).

Die folgenden Abschnitte beschreiben die modul-eigenen CodeSystems; Lizenzhinweise zu externen Terminologien stehen bei den jeweiligen Herausgebern (siehe [Urheberrecht und Lizenz](index.md#urheberrecht-und-lizenz)).

-------

Modul-eigene CodeSystems, beim Build aus dem Paket gelesen (Beschreibung in der Quellsprache der Ressource):

| | | |
| :--- | :--- | :--- |
| CodeSystem | Status | Beschreibung |
| [MII_CS_Dokument_NLP_Processing_Status](CodeSystem-mii-cs-dokument-nlp-processing-status.md) | active | Status der NLP-Verarbeitung des referenzierten Dokuments |
| [MII_CS_Dokument_Projekt](CodeSystem-mii-cs-dokument-projekt.md) | active | Projekte der Medizininformatik-Initiative zur Kennzeichnung von Ressourcen über Resource.meta.tag |

### Klassifikation von NLP-Verarbeitungsergebnissen

Die Konzepte des CodeSystems [MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.md) zeigt die folgende Übersicht; das zugehörige ValueSet ist [MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.md) (siehe auch die Extension [NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md)).

### Projektkennzeichnung

Das CodeSystem [MII CS Dokument Projekt](CodeSystem-mii-cs-dokument-projekt.md) führt die Projekte, deren Dokumente über `meta.tag` gekennzeichnet werden können; das zugehörige ValueSet ist [MII VS Dokument Projekt](ValueSet-mii-vs-dokument-projekt.md). Fördermittelgeber, Förderkennzeichen und Laufzeit eines Projekts stehen als Properties an seinem Code.

Die in diesem Modul definierten sowie die aus anderen Spezifikationen verwendeten ValueSets beschreibt die Seite [ValueSets](value-sets.md).

