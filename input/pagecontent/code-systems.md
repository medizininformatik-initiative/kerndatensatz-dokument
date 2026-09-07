<!-- markdownlint-disable MD041 -->
<!-- Standardsprachseite (Deutsch; DE-first). Englische Übersetzung:
     input/translations/en/pagecontent/code-systems.md (aufgeteilt aus
     der früheren Seite terminology.md gemäß der TF-KDS-abgestimmten Menüstruktur).
     Der IG-Publisher listet die CodeSystems auf den Artefakt-Seiten
     automatisch; hier stehen die MII-Hinweise dazu.
     Die Prosa der Simplifier-Seite "Terminologien" (MIIIGModulDokument/
     TechnischeImplementierung/Terminologien) ist hier wortgetreu übernommen;
     die render-Direktiven der Simplifier-Seite sind durch eingebettete
     Fragmente bzw. Verweise auf die vom IG-Publisher erzeugten Artefaktseiten
     ersetzt. Die Abschnitte zu den definierten und den verwendeten ValueSets
     stehen auf der Seite value-sets.md. -->

Diese Seite beschreibt die CodeSystems des Moduls **Dokument**
(Namenskonvention `MII_CS_<Modul>_<Name>`). Die darauf aufbauenden ValueSets
beschreibt die Seite [ValueSets](value-sets.html).

> **Wichtig:** CodeSystem-Ressourcen externer Terminologien (z. B. ICD-10-GM, OPS,
> SNOMED CT) werden in diesem Modul **nicht** publiziert, sondern über den
> zentralen KDS-Terminologieserver (SU-TermServ) bezogen:
> [https://mii-termserv.de/](https://mii-termserv.de/).
{: .ig-highlight .ig-highlight-blue}

Der folgende Abschnitt beschreibt das modul-eigene CodeSystem; Lizenzhinweise zu externen Terminologien stehen bei den jeweiligen Herausgebern (siehe [Impressum](index.html#urheberrecht-und-lizenz)).

---

Modul-eigene CodeSystems, beim Build aus dem Paket gelesen:

{% sql {
 "query" : "select distinct c.Name, r.Web, c.Status, c.Description from CodeSystemList c join Resources r on r.Key = c.ResourceKey where c.ViewType = 1 order by c.Name",
 "class" : "grid sql-table",
 "columns" : [
  { "title" : "CodeSystem", "type" : "link", "source" : "Name", "target" : "Web" },
  { "title" : "Status", "type" : "text", "source" : "Status" },
  { "title" : "Beschreibung", "type" : "markdown", "source" : "Description" }
 ]
} %}

### Klassifikation von NLP-Verarbeitungsergebnissen

Die Konzepte des CodeSystems
[MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html)
zeigt die folgende Übersicht; das zugehörige ValueSet ist
[MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.html)
(siehe auch die Extension
[NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)).

{% include CodeSystem-mii-cs-dokument-nlp-processing-status-content-de.xhtml %}

Die in diesem Modul definierten sowie die aus anderen Spezifikationen verwendeten
ValueSets beschreibt die Seite [ValueSets](value-sets.html).
