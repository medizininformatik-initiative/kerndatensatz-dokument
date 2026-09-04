<!-- markdownlint-disable MD041 -->
<!-- English translation of the German default page input/pagecontent/value-sets.md (DE-first). -->
<!-- Split from the former terminology.md per the TF-KDS-agreed menu structure (one
     page per artifact type); SNOMED CT version policy from the meta wiki page
     "Terminology Version Policy". The IG Publisher lists the ValueSets on the
     artifact pages automatically; this page carries the MII notes on them.
     German mirror: input/translations/de/pagecontent/value-sets.md. -->

This page describes the ValueSets of the **Dokument** module (naming
convention `MII_VS_<Module>_<Name>`). For general guidance on using codes, see
[FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html); the code systems
the sets draw from are described on the [Code Systems](code-systems.html) page.

{:.bg-info}
**Expansions:** ValueSet expansions in this guide are produced by a FHIR
terminology server — SU-TermServ if the client certificate is configured,
otherwise the public HL7 server `tx.fhir.org` (in which case some KDS-specific
ValueSets may not expand completely).

<!-- DERIVED:bridge source=none gate=B -->
> **Written during migration — review before release.**
> SNOMED CT content of this module uses the **International Edition, version
> 20260701** (`http://snomed.info/sct/900000000000207008/version/20260701`) per
> the MII Terminology Version Policy; the pin is anchored in the expansion
> manifest (`Parameters/mii-param-dokument-manifest`) and in the ValueSet
> definitions themselves. The module's ValueSets are listed in the artifact
> overview; background on the terminologies is on the
> [CodeSystems](code-systems.html) page.
{: .ig-highlight .ig-highlight-blue}
