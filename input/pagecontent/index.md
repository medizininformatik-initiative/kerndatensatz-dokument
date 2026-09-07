<!-- markdownlint-disable MD041 -->

### Einleitung

Die vorliegende Spezifikation beschreibt die FHIR Repräsentation des
Kerndatensatz Moduls Dokument der Medizininformatik Initiative.
Im Folgenden werden die Use Cases des Moduls, sowie die dazugehörigen
FHIR Profile und Terminologie Ressourcen in ihrer verbindlichen Form
beschrieben.

Der Kerndatensatz der Medizininformatik-Initiative (MII) dient der
standardisierten Nutzung klinischer Routinedaten für die medizinische
Forschung.

> Mit dem MII KDS-Modul Dokument können Metadaten zu Dokumenten jeglicher
> Art mit klinischer Relevanz für beliebige Zwecke strukturiert erfasst
> werden. Dokumente sind in diesem Kontext beliebige Binärobjekte, also
> beispielsweise auch Bilder oder Videos.
{: .ig-highlight .ig-highlight-grey}

<!-- Generated at build time from the ImplementationGuide resource in package.db
     (publisher sql directive) — version, date and status can no longer drift from sushi-config.yaml. -->
{% sql {
 "query" : "select Version, Date, Status from Resources where Type='ImplementationGuide'",
 "class" : "grid sql-table",
 "columns" : [
  { "title" : "Version", "type" : "text", "source" : "Version" },
  { "title" : "Datum", "type" : "text", "source" : "Date" },
  { "title" : "Status", "type" : "text", "source" : "Status" }
 ]
} %}

Realm: DE (Jurisdiktion Deutschland). Versionierung nach CalVer `JJJJ.n.n`.

Die vollständige Versionshistorie des Leitfadens ist auf der Seite [Änderungen](changes.html) dokumentiert.

### Modulbeschreibung

Durch die Nutzung des Profils soll die interne und externe Nutzung von
Dokumenten erleichtert werden. Die zentralen Punkte der Charakterisierung
durch Metadaten: Dokumentenbeziehungen, Dokumentenstatus,
Dokumentenauffindbarkeit, Korpus-Navigation und Dokumentenarchivierung
werden von dem Modul aufgegriffen und nach standardisiertem Schema
koordiniert.

Das MII KDS-Modul ermöglicht die Erstellung von Dokumentenreferenzen mit den
Optionen Bezüge zu den im Basismodul aufgegangenen Modulen Fall und Person
herzustellen. Zudem enthält das Modul eine NLP-Extension, welche den
Bearbeitungsstatus mit Hinsicht auf NLP-Verfahren wie zum Beispiel
Annotationen abbildet (siehe hierfür [UML](uml-diagrams.html)).

Im Hinblick auf Dokumentenverarbeitungsprozesse, z.B. Format-Wandlungen,
Anonymisierung und NLP-Annotationen, bekommt der Relation zu anderen
Dokumenten (MII KDS-Modul Dokument) eine besondere Bedeutung zu, um
Verarbeitungsketten abzubilden (`relatesTo`).

Das Informationsmodell trennt Angaben zur Referenz selbst und den Metadaten
der referenzierten Dokumente (`content`). Auf den Körper des Dokuments wird
über eine lokal zu interpretierende URL (`content.attachment.url`)
verwiesen. Grundsätzlich kann der Dokumentkörper des referenzierten
Dokuments auch innerhalb der Referenz (`content.attachment.data`)
eingebettet werden. Das Modul gibt keine Vorgaben zur Semantik dieser
Auflösung.

Der Textkörper kann vielfältige identifizierende Daten und/oder Metadaten
(z.B. Namen, Patienten-ID) enthalten. Der Datenhalter kann eine erfolgte
De-Identifizierung dieser Daten durch geeignete `securityLevel` und/oder
Codes der Erweiterung NLP-Processing Status
([MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html))
ausdrücken.

### Zielgruppe

Dieser Implementierungsleitfaden richtet sich an:

<div class="ig-highlight ig-highlight-blue">
<p><b>Implementierende</b></p>
<p>Datenintegrationszentren (DIZ), Software-Entwickelnde und System-Architekt:innen, die FHIR-basierte Lösungen umsetzen.<br/>
→ siehe <a href="profiles.html">Profile</a> und <a href="logical-models.html">Logische Modelle</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<p><b>Forschende</b></p>
<p>Wissenschaftler:innen, die KDS-Daten für die medizinische Forschung nutzen.<br/>
→ siehe <a href="guidance.html">Anleitung für Forschende</a>.</p>
</div>

### Inhalt dieses Leitfadens

- **[Anleitung](guidance.html)** — Einstieg und fachliche Hinweise.
- **Konformität** — die KDS-weiten Konformitätsregeln (Anforderungssprache,
  Must-Support, Umgang mit fehlenden Daten) pflegt zentral das
  [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
  die modul-spezifischen Aspekte zu
  [Sicherheit und Datenschutz](security-and-privacy.html) sind Teil dieses
  Leitfadens.
- **[Profile](profiles.html)** und die weiteren
  **[Artefakt-Seiten](artifacts.html)** — die technischen Artefakte.
- **[Beispiele](examples.html)** — Beispielinstanzen.
- **[Abhängigkeiten](ImplementationGuide-mii-ig-dokument.html)** — die
  ImplementationGuide-Ressource mit Abhängigkeitstabelle, versionsübergreifender
  Analyse und Urheberrechtshinweisen.

### Verwandte Leitfäden

Dieses Modul ist Teil des MII-Kerndatensatzes; die weiteren KDS-Module und ihre
Abhängigkeiten sind unter
[medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/)
beschrieben.

Formale Abhängigkeiten dieses Moduls (siehe `dependencies` in
`sushi-config.yaml`): KDS Basismodul (`kerndatensatz.base`), KDS Meta
(`kerndatensatz.meta`), Deutsche Basisprofile (`de.basisprofil.r4`), ISiK
(`de.gematik.isik`), IHE-D-Terminologien (`de.ihe-d.terminology`), KDL
(`dvmd.kdl.r4`), IHE FormatCode (`ihe.formatcode.fhir`) sowie
HL7-Terminologie- und Extension-Pakete. Die Versionen liest die folgende
Tabelle beim Build aus der ImplementationGuide-Ressource; die vollständige
Tabelle mit Links rendert die Seite
[MII-ImplementationGuide-Ressource](ImplementationGuide-mii-ig-dokument.html).

{% sql {
 "query" : "select json_extract(d.value,'$.packageId') as Package, json_extract(d.value,'$.version') as Version from Resources r, json_each(r.Json,'$.dependsOn') d where r.Type='ImplementationGuide'",
 "class" : "grid sql-table",
 "columns" : [
  { "title" : "Paket", "type" : "text", "source" : "Package" },
  { "title" : "Version", "type" : "text", "source" : "Version" }
 ]
} %}

Weitere FHIR-Implementierungsleitfäden finden Sie im offiziellen
**[FHIR IG Registry](https://fhir.org/guides/registry/)** (Quelle:
[`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik Initiative erstellt wurden
und unterliegt per Governance Prozess dem Abstimmungsverfahren des
Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

### Ansprechpartner

Fragen zu der vorliegenden Publikation können jederzeit unter
[chat.fhir.org](https://chat.fhir.org) im Stream 'german/mi-initiative'
gestellt werden. Ergänzend steht das MII-Zulip
[mii.zulipchat.com](https://mii.zulipchat.com/) im Stream
`MII-Kerndatensatz` zur Verfügung.

Anmerkungen und Kritik wird in Form von 'Issues' im
[GitHub Projekt](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/issues)
stets gern entgegengenommen.

Fachliche Ansprechpartner:innen dieses Moduls:

* Frank Meineke, SMITH
* Jakob Faller, MIRACUM

### Autor:innen (in alphabetischer Reihenfolge)

* Frank Meineke, SMITH, Informationsmodellierung/Fachvertretung
* Jakob Faller, MIRACUM, Informationsmodellierung/Fachvertretung
* Katja Hoffmann, MIRACUM/DigiHub MiHUBx, Technische Umsetzung
* Marcel Susky, MIRACUM/DigiHub MiHUBx, Informationsmodellierung/Fachvertretung/Technische Umsetzung
* Martin Boeker, MIRACUM, Fachvertretung
* Noemi Deppenwiese, MIRACUM, Technische Umsetzung
* Thomas Ganslandt, MIRACUM, Fachvertretung

### Urheberrecht und Lizenz

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin.

Dieses Werk ist lizenziert unter der
[Creative Commons Namensnennung 4.0 International Lizenz](https://creativecommons.org/licenses/by/4.0/deed.de)
(CC BY 4.0).

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die
FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben
und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber
(Publisher).

### Haftungsausschluss

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses
Dokuments auf FHIR Version R4 beruhen, für die Copyright HL7 International
gilt.

Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die
Autor:innen keine Haftung für direkte oder indirekte Schäden übernehmen, die
aus dem Inhalt dieser Spezifikation entstehen könnten.
