<!-- markdownlint-disable MD041 -->
<!-- German translation of the English default page input/pagecontent/ImplementationGuide-mii-ig-dokument.md.
     Keep structure, headings and links 1:1 with the source; translate only the text. -->
<!-- Standardsprachseite (Deutsch). Die englische Übersetzung liegt unter
     input/translations/en/pagecontent/ImplementationGuide-mii-ig-dokument.md —
     beide Dateien müssen dasselbe aussagen. ALLE erzeugten Fragmente (auch die
     versionsübergreifende Analyse) werden mit ausdrücklichem Sprachsuffix
     eingebunden (das lang-Fragment-Schlüsselwort des Publishers löst auf jeder
     Seite zu -en auf, gemessen am 2026-09-04): Der gepinnte Publisher schreibt
     _includes/<name>-<lang>.xhtml plus einen Alias ohne Suffix für die
     Standardsprache, aber keine .html-Variante — die .html-Include-Namen aus
     kerndatensatz-basis gehören zu einer anderen Publisher-Version und dürfen
     hier nicht übernommen werden.
     DER DATEINAME TRÄGT DIE IG-ID — zusammen mit der englischen Seite und dem
     IG-weiten .po-Katalog umbenennen (bootstrap step, completed). -->
Diese ImplementationGuide-Ressource definiert die technischen Details dieser
Publikation, einschließlich Abhängigkeiten und Veröffentlichungsparametern.

- [XML](../ImplementationGuide-mii-ig-dokument.xml)
- [JSON](../ImplementationGuide-mii-ig-dokument.json)

### Versionsübergreifende Analyse

{% include cross-version-analysis-de.xhtml %}

### IG-Abhängigkeiten

Dieser IG enthält die folgenden Abhängigkeiten von anderen IGs.

{% include dependency-table-de.xhtml %}

> **Woher die Versionen kommen.** Jedes Paket der Tabelle ist direkt in
> [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/blob/master/sushi-config.yaml)
> (`dependencies:`) gepinnt — auch `hl7.terminology.r4` (THO) und
> `hl7.fhir.uv.extensions.r4`, und diese beiden mit Bedacht: Die
> [Automatik des IG Publishers](https://build.fhir.org/ig/FHIR/ig-guidance/versions.html#automatic-packages)
> liest ausschließlich die **eigene** Abhängigkeitsliste dieses Leitfadens;
> ohne direkten Pin würde jeder Build stillschweigend das jeweils aktuellste
> THO-/Extensions-Release injizieren — eine allein im MII-Meta-Paket gepinnte
> Version kann den Build nicht steuern (verifiziert im Publisher-Quellcode des
> gepinnten Release). Eine wöchentliche Prüfung warnt, wenn diese beiden Pins
> von den Vorgaben des gepinnten Meta-Pakets abweichen; die von einem
> konkreten Build verwendeten Versionen stehen in dessen `qa-versions.json`.
{: .ig-highlight .ig-highlight-grey}

### Globale Profile

Dieser IG deklariert die folgenden globalen Profile — Profile, die für jede
unter diesem Leitfaden ausgetauschte Instanz ihres Ressourcentyps gelten. Eine
leere Tabelle bedeutet: Dieses Modul deklariert keine.

{% include globals-table-de.xhtml %}

### Urheberrechte

{% include ip-statements-de.xhtml %}

### IG-Parametereinstellungen und Expansionsparameter

Expansionsparameter sind Query-Parameter, die an eine `ValueSet`-
`$expand`-Operation übergeben werden können, um zu steuern, wie das ValueSet
expandiert wird — also wie die vollständige Liste der Codes aus der
ValueSet-Definition erzeugt wird. Die für diesen IG verwendeten
[IG-Parameter](https://hl7.org/fhir/tools/en/CodeSystem-ig-parameters.html)
sind in
[`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/blob/master/sushi-config.yaml)
(`parameters:`) deklariert. Dieser Leitfaden pinnt seine Expansionsparameter
zusätzlich über ein CRMI-Manifest: die Ressource
[`Parameters/mii-param-dokument-manifest`](Parameters-mii-param-dokument-manifest.html)
(SNOMED CT International Edition `20260701`), verlinkt über
`cqf-expansionParameters` und dem Publisher über `path-expansion-params` /
`pin-manifest` bekannt gemacht. Einzelheiten beschreibt die Seite
[Metadaten-Übersicht](metadata.html).
