<!-- markdownlint-disable MD041 -->
<!-- Split from the former terminology.md per the TF-KDS-agreed menu structure (one
     page per artifact type). The IG Publisher lists the CodeSystems on the
     artifact pages automatically; this page carries the MII notes on them.
     The prose of the Simplifier page "Terminologien" (MIIIGModulDokument/
     TechnischeImplementierung/Terminologien) is carried over here; the
     Simplifier render directives are replaced by embedded fragments and by
     links to the artifact pages the IG Publisher generates. The sections on the
     defined and the used ValueSets live on the value-sets.md page. -->

This page describes the CodeSystems of the **Dokument** module. The ValueSets
built on them are described on the [Value Sets](value-sets.html) page.

> **Important:** CodeSystem resources of external terminologies (e.g. ICD-10-GM,
> OPS, SNOMED CT) are **not** published in this module; they are obtained from the
> central KDS terminology service (SU-TermServ):
> [https://mii-termserv.de/](https://mii-termserv.de/).
{: .ig-highlight .ig-highlight-blue}

The following section describes the module's own CodeSystem; license information on external terminologies is held by the respective publishers (see [Copyright and License](index.html#copyright-and-license)).

---

The module's own CodeSystems, read from the package at build time (description in the resource's source language):

{% sql {
 "query" : "select distinct c.Name, r.Web, c.Status, c.Description from CodeSystemList c join Resources r on r.Key = c.ResourceKey where c.ViewType = 1 and c.Url like 'https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/%' order by c.Name",
 "class" : "grid sql-table",
 "columns" : [
  { "title" : "CodeSystem", "type" : "link", "source" : "Name", "target" : "Web" },
  { "title" : "Status", "type" : "text", "source" : "Status" },
  { "title" : "Description", "type" : "markdown", "source" : "Description" }
 ]
} %}

### Classification of NLP processing results

The concepts of the CodeSystem
[MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html)
are shown below; the corresponding ValueSet is
[MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.html)
(see also the extension
[NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)).

{% include CodeSystem-mii-cs-dokument-nlp-processing-status-content-en.xhtml %}

The ValueSets defined in this module, and those used from other specifications,
are described on the [Value Sets](value-sets.html) page.
