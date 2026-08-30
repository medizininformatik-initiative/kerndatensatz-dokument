<!-- markdownlint-disable MD041 -->

### Einleitung

Diese Spezifikation beschreibt die FHIR-Repräsentation des
Kerndatensatz-(KDS-)Moduls **Dokument** der Medizininformatik-Initiative
(MII). Sie beschreibt die Anwendungsfälle des Moduls sowie die zugehörigen
FHIR-Profile, Extensions und Terminologie-Ressourcen in ihrer verbindlichen
Form. Der MII-Kerndatensatz dient der standardisierten Nutzung klinischer
Routinedaten für die medizinische Forschung.

> Mit dem MII-KDS-Modul Dokument können Metadaten zu Dokumenten jeglicher
> Art mit klinischer Relevanz für beliebige Zwecke strukturiert erfasst
> werden. Dokumente sind in diesem Kontext beliebige Binärobjekte, also
> beispielsweise auch Bilder oder Videos.
{: .ig-highlight .ig-highlight-grey}

| Veröffentlichung |               |
|------------------|---------------|
| Datum            | 2026-08-28 |
| Version          | 2027.0.0-ballot.rc1 (CalVer `JJJJ.n.n`) |
| Status           | Ballot        |
| Realm            | DE            |

<!-- DERIVED:bridge source=MIIIGModulDokument/Index.page.md gate=B -->
> **Bei der Migration verfasst — vor dem Release prüfen.**
> Die vollständige Versionshistorie des Leitfadens ist auf der Seite [Änderungen](changes.html) dokumentiert.
{: .ig-highlight .ig-highlight-blue}

### Modulbeschreibung

Durch die Nutzung des Profils soll die interne und externe Nutzung von
Dokumenten erleichtert werden. Die zentralen Punkte der Charakterisierung
durch Metadaten — Dokumentenbeziehungen, Dokumentenstatus,
Dokumentenauffindbarkeit, Korpus-Navigation und Dokumentenarchivierung —
werden von dem Modul aufgegriffen und nach standardisiertem Schema
koordiniert.

Das MII-KDS-Modul ermöglicht die Erstellung von Dokumentenreferenzen mit den
Optionen, Bezüge zu dem Modul Fall und Person herzustellen. Zudem enthält
das Modul eine NLP-Extension, welche den Bearbeitungsstatus mit Hinsicht auf
NLP-Verfahren wie zum Beispiel Annotationen abbildet (siehe hierfür die Seite [UML-Diagramme](uml-diagrams.html)).

Im Hinblick auf Dokumentenverarbeitungsprozesse, z. B. Format-Wandlungen,
Anonymisierung und NLP-Annotationen, kommt der Relation zu anderen
Dokumenten (MII-KDS-Modul Dokument) eine besondere Bedeutung zu, um
Verarbeitungsketten abzubilden (`relatesTo`).

Das Informationsmodell trennt Angaben zur Referenz selbst und den Metadaten
der referenzierten Dokumente (`content`). Auf den Körper des Dokuments wird
über eine lokal zu interpretierende URL (`content.attachment.url`)
verwiesen. Grundsätzlich kann der Dokumentkörper des referenzierten
Dokuments auch innerhalb der Referenz (`content.attachment.data`)
eingebettet werden. Das Modul gibt keine Vorgaben zur Semantik dieser
Auflösung.

Der Textkörper kann vielfältige identifizierende Daten und/oder Metadaten
(z. B. Namen, Patienten-ID) enthalten. Der Datenhalter kann eine erfolgte
De-Identifizierung dieser Daten durch geeignete `securityLevel` und/oder
Codes der Erweiterung NLP-Processing-Status-Extension
<!-- TODO:REVIEW exact StructureDefinition id of the NLP-Processing-Status-Extension artifact is unknown; link as [NLP-Processing-Status-Extension](StructureDefinition-<id>.html) once the id is confirmed -->
ausdrücken.

### Zielgruppe

Dieser Implementierungsleitfaden richtet sich an:

<div class="ig-highlight ig-highlight-blue">
<h5>Implementierende</h5>
<p>Datenintegrationszentren (DIZ), Software-Entwickelnde und System-Architekt:innen, die FHIR-basierte Lösungen umsetzen.<br/>
→ siehe <a href="profiles.html">Profile</a> und <a href="logical-models.html">Logische Modelle</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Forschende</h5>
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

<!-- DERIVED:bridge source=none gate=B -->
> **Bei der Migration verfasst — vor dem Release prüfen.**
> Formale Abhängigkeiten dieses Moduls (siehe `dependencies` in
> `sushi-config.yaml`): KDS Basismodul (`kerndatensatz.base` 2026.0.0),
> KDS Meta (`kerndatensatz.meta` 2026.0.0), Deutsche Basisprofile
> (`de.basisprofil.r4` 1.6.0), ISiK Stufe 6 (`de.gematik.isik` 6.0.0),
> IHE-D-Terminologien (`de.ihe-d.terminology` 3.0.1), KDL (`dvmd.kdl.r4`
> 2025.0.1), IHE FormatCode (`ihe.formatcode.fhir` 1.4.0) sowie
> HL7-Terminologie- und Extension-Pakete. Die vollständige, versionierte
> Tabelle rendert die Seite
> [MII-ImplementationGuide-Ressource](ImplementationGuide-mii-ig-dokument.html).
{: .ig-highlight .ig-highlight-blue}

Weitere FHIR-Implementierungsleitfäden finden Sie im offiziellen
**[FHIR IG Registry](https://fhir.org/guides/registry/)** (Quelle:
[`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik-Initiative erstellt worden
und unterliegt per Governance-Prozess dem Abstimmungsverfahren des
Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

### Ansprechpartner

Fragen zu dieser Publikation können im HL7-FHIR-Zulip
[chat.fhir.org](https://chat.fhir.org) im Stream `german/mi-initiative` oder im
MII-Zulip [mii.zulipchat.com](https://mii.zulipchat.com/) im Stream
`MII-Kerndatensatz` gestellt werden.
Anmerkungen und Kritik werden als *Issues* auf
[GitHub](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/issues) entgegengenommen.

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

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin

Dieses Werk ist lizenziert unter der
[Creative Commons Namensnennung 4.0 International Lizenz (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/deed.de).

Für die Nutzungsrechte der zugrunde liegenden FHIR-Technologie siehe die
FHIR-Basisspezifikation.

Einige der verwendeten Codesysteme werden von anderen Organisationen
veröffentlicht und gepflegt; es gilt das Urheberrecht der jeweiligen Herausgeber.

### Haftungsausschluss

Der Inhalt dieses Dokuments ist öffentlich. Bitte beachten Sie, dass Teile
dieses Dokuments auf FHIR Version R4 basieren, dessen Urheberrecht bei
HL7 International liegt.

Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die
Autor:innen keine Haftung für direkte oder indirekte Schäden übernehmen, die
aus dem Inhalt dieser Spezifikation entstehen könnten.
