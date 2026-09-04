<!-- markdownlint-disable MD041 -->
<!-- Standardsprachseite (Deutsch; DE-first). Englische Übersetzung:
     input/translations/en/pagecontent/value-sets.md (aufgeteilt aus
     der früheren Seite terminology.md gemäß der TF-KDS-abgestimmten Menüstruktur).
     Der IG-Publisher listet die ValueSets auf den Artefakt-Seiten automatisch;
     hier stehen die MII-Hinweise dazu. -->

Diese Seite beschreibt die ValueSets des Moduls **Dokument**
(Namenskonvention `MII_VS_<Modul>_<Name>`). Allgemeine Hinweise zur Verwendung
von Codes: siehe
[FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html); die
zugrunde liegenden CodeSystems beschreibt die Seite
[CodeSystems](code-systems.html).

{:.bg-info}
**Expansionen:** ValueSet-Expansionen dieses Leitfadens werden über einen
FHIR-Terminologieserver erzeugt — über SU-TermServ, sofern das
Client-Zertifikat konfiguriert ist, sonst über den öffentlichen HL7-Server
`tx.fhir.org` (dann expandieren einige KDS-spezifische ValueSets ggf. nicht
vollständig).

<!-- DERIVED:bridge source=none gate=B -->
> **Bei der Migration verfasst — vor dem Release prüfen.**
> SNOMED-CT-Inhalte dieses Moduls verwenden die **International Edition,
> Version 20260701** (`http://snomed.info/sct/900000000000207008/version/20260701`)
> gemäß der MII Terminology Version Policy; die Festlegung ist im
> Expansion-Manifest (`Parameters/mii-param-dokument-manifest`) sowie in den
> ValueSet-Definitionen selbst verankert. Die modul-eigenen ValueSets listet die
> Artefakt-Übersicht; Hintergründe zu den Terminologien beschreibt die Seite
> [CodeSystems](code-systems.html).
{: .ig-highlight .ig-highlight-blue}
