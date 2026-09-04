
<!-- markdownlint-disable MD041 -->
<!-- Migriert aus dem Simplifier-Leitfaden "MII IG Modul Dokument":
     MIIIGModulDokument/TechnischeImplementierung/CapabilityStatement.page.md.
     Englische Übersetzung: input/translations/en/pagecontent/capability-statements.md
     — beide Dateien inhaltlich synchron halten. -->

Um eine dezentrale Datenauswertung mittels des Deutschen Forschungsdatenportals für Gesundheit der Medizininformatik-Initiative zu ermöglichen MUSS die [Capabilities-Interaktion](https://www.hl7.org/fhir/R4/http.html#capabilities) unterstützt werden, sodass durch den FHIR-Server unter `[BASE_URL]/metadata` ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatement MUSS angegeben werden welche Profile inkl. Version, sowie welche Suchparameter unterstützt werden.

Nachfolgend wird aufgelistet welche Inhalte verpflichtend im CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen CapabilityStatement Instanz unter [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates) angegeben werden.

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement`

Artefakt-Seite: [MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.html)

{% include CapabilityStatement-mii-cps-dokument-capabilitystatement-html-de.xhtml %}
