# Code Systems - MII IG Dokument v2027.0.0-ballot.2

* [**Table of Contents**](toc.md)
* **Code Systems**

## Code Systems

This page describes the CodeSystems of the **Dokument** module. The ValueSets built on them are described on the [Value Sets](value-sets.md) page.

> **Important:** CodeSystem resources of external terminologies (e.g. ICD-10-GM, OPS, SNOMED CT) are **not** published in this module; they are obtained from the central KDS terminology service (SU-TermServ): [https://mii-termserv.de/](https://mii-termserv.de/).

The following sections describe the module's own CodeSystems; license information on external terminologies is held by the respective publishers (see [Copyright and License](index.md#copyright-and-license)).

-------

The module's own CodeSystems, read from the package at build time (description in the resource's source language):

| | | |
| :--- | :--- | :--- |
| CodeSystem | Status | Description |
| [MII_CS_Dokument_NLP_Processing_Status](CodeSystem-mii-cs-dokument-nlp-processing-status.md) | active | Status der NLP-Verarbeitung des referenzierten Dokuments |
| [MII_CS_Dokument_Projekt](CodeSystem-mii-cs-dokument-projekt.md) | active | Projekte der Medizininformatik-Initiative zur Kennzeichnung von Ressourcen über Resource.meta.tag |

### Classification of NLP processing results

The concepts of the CodeSystem [MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.md) are shown below; the corresponding ValueSet is [MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.md) (see also the extension [NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md)).

### Project marking

The CodeSystem [MII CS Dokument Projekt](CodeSystem-mii-cs-dokument-projekt.md) lists the projects whose documents can be marked via `meta.tag`; the corresponding ValueSet is [MII VS Dokument Projekt](ValueSet-mii-vs-dokument-projekt.md). Funder, grant numbers and duration of a project are recorded as properties of its code.

The ValueSets defined in this module, and those used from other specifications, are described on the [Value Sets](value-sets.md) page.

