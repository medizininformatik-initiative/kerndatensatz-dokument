<!-- markdownlint-disable MD041 -->
<!-- Standardsprachseite (Deutsch; DE-first). Englische Übersetzung:
     input/translations/en/pagecontent/extensions.md (aufgeteilt aus
     der früheren Kombi-Seite profiles-and-extensions.md). -->

Diese Seite listet die FHIR-Extensions, die das Modul **Dokument**
definiert (Namenskonvention `MII_EX_<Modul>_<Name>`). Extensions transportieren
Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können; die
Profile, die sie verwenden, stehen auf der Seite [Profile](profiles.html).

Das Modul definiert eine Extension: die
[NLP Processing Status Extension](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)
(`MII_EX_Dokument_NLP_Processing_Status`) zum Verarbeitungsstatus eines
Dokuments in einer NLP-Pipeline. Die fachliche Beschreibung steht direkt auf
der Artefakt-Seite; die Beispiele der Pipeline auf der Seite
[Beispiele](examples.html).

### Struktur der Extension

{% include structure-tabs.html artifact="StructureDefinition-mii-ex-dokument-nlp-processing-status" lang="de" %}
