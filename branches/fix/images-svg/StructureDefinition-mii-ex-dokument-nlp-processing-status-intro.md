<!-- markdownlint-disable MD041 -->
<!-- Intro-Note zur Extension MII_EX_Dokument_NLP_Processing_Status. Migriert aus
     MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md
     des Simplifier-Leitfadens mii-ig-dokument-de. Der IG-Publisher rendert diesen
     Text oberhalb der generierten Tabellen der Artefakt-Seite; englische
     Übersetzung: input/translations/en/intro-notes/ (gleicher Dateiname). -->

### Beschreibung

Diese Erweiterung dient der strukturierten Beschreibung des Bearbeitungsstatus eines Dokuments innerhalb eines NLP-Projekts. Die Verarbeitung von Dokumenten mit unstrukturierter Information erfolgt typischerweise in einer Vielzahl aufeinanderfolgender Verarbeitungsschritte. Im Verlauf dieser Prozessketten entstehen unterschiedliche Transformationen des Originaldokuments sowie Relationen zwischen dem Ursprungsdokument und daraus abgeleiteten Zwischenprodukten.

Die NLP Extension stellt hierfür ein Codesystem bereit, mit dem die verschiedenen Bearbeitungszustände und Zwischenprodukte eines NLP-Workflows konsistent beschrieben und archiviert werden können.

Das Codesystem der NLP Extension ist hierarchisch aufgebaut und umfasst zwei Ebenen: Level 1 (Lvl 1) und Level 2 (Lvl 2). Lvl 1 beschreibt einen übergeordneten Prozessstatus, beispielsweise annotated. Lvl 2 dient der Spezifikation dieses Status. Ein Beispiel ist die Kombination Lvl 1: `annotated`, Lvl 2: `deid`, die anzeigt, dass ein Dokument mit de-identifizierenden Annotationen versehen wurde.

Die Nutzung beider Hierarchieebenen ist nicht verpflichtend. Abhängig vom jeweiligen Anwendungsszenario kann frei entschieden werden, ob nur der übergeordnete Status (Lvl 1) oder zusätzlich eine spezifische Ausdifferenzierung über Lvl 2 verwendet wird.
Bitte beachten: wird eine Lvl 2 Spezifikation genutzt wie z.B. `deid` muss auch zwingend das dazugehörige Lvl 1 `annotated` verwendet werden. Andernfalls könnte `deid` als vollständig de-identifiziertes Dokument missverstanden werden.

Ein exemplarischer Anwendungsfall ist ein Dokument innerhalb eines Annotationsprojekts, das bereits aus einem Quellsystem extrahiert und anonymisiert wurde. Bis zum aktuellen Bearbeitungsstand können mehrere Verarbeitungsschritte erfolgt sein, beispielsweise:

- Transformation des Dateiformats von `.pdf` zu `.txt` (`preprocessed` – `format-change`)
- Entfernung von Dokumentheadern (`preprocessed` – `content-change`)
- maschinelle Vorannotation identifizierender Strukturen (`annotated` – `preanno` `deid`)
- anschließende manuelle Annotation dieser Strukturen (`annotated` – `deid`)
- irreversible Ersetzung aller identifizierenden Annotationen durch Surrogate (`surrogated`)

Die NLP Extension lässt bewusst Freiheitsgrade bei der Dokumentation solcher Prozessketten. Es ist möglich, sämtliche Verarbeitungsschritte eines Dokuments abzubilden. Alternativ kann sich die Beschreibung auf ausgewählte, für den jeweiligen Anwendungsfall wesentliche Bearbeitungszustände beschränken, beispielsweise ausschließlich auf den finalen Status surrogated.

### Inhalt

<!-- DERIVED:bridge source=MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md gate=B -->
> **Bei der Migration verfasst — vor dem Release prüfen.**
> Die technische Struktur dieser Extension — Differential, Key Elements, Snapshot
> sowie die XML- und JSON-Serialisierung — rendert der IG-Publisher unmittelbar
> unterhalb dieses Abschnitts auf dieser Artefakt-Seite. Dort stehen auch die
> Must-Support-Elemente mit ihren Kurzbeschreibungen und Hinweisen; Kanonische
> URL, Status, Version und Basisdefinition führt der Kopfbereich der Seite.
>
> Die Codes des NLP-Verarbeitungsstatus definiert das CodeSystem
> [MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html)
> mit seiner zweistufigen Hierarchie; gebunden wird die Extension über das ValueSet
> [MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.html).
{: .ig-highlight .ig-highlight-blue}

### Beispiele

Das folgende Beispiel illustriert die Verarbeitung eines *ärztlichen Entlassbriefes* der Patientin *Amanda Alzheimer* durch eine NLP-Pipeline (siehe Abbildung). Nach der Erschließung (`Ingestion`) des Originaldokuments `Amanda_Alzheimer.docx` wird eine Dokumentreferenz mit dem NLP-Verarbeitungsstatus `unprocessed` angelegt. Anschließend wird das Dokument durch eine Vorverarbeitung (`Preprocessing`) in das Klartextformat `Amanda_Alzheimer.txt` überführt. Die zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus `preprocessed, format-change` und verweist mittels `transforms` auf das Originaldokument. Anschließend wird eine De-Identifikation (`De-Identification`) der Inhalte durchgeführt, um das Ergebnisdokument `De-ID.txt` datenschutzkonform für Forschungszwecke weiterverwenden zu können. Eine zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus `preprocessed, format-change, surrogated` und verweist mittels `transforms` auf das Klartextdokument. Abschließend werden die klinischen Inhalte annotiert, was unter Umständen mehrere Ergebnisdateien produziert und sich als Archiv `Annotat.zip` zusammenfassen lassen. Die zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus durch die akkumulierten Codes der vorangegangenen Stufen als `[annotated, semantic], surrogated, [preprocessed, format-change]` und erweitert mittels `appends` die Dokumentreferenz des vorherigen NLP-Verarbeitungsschritts.

[![Ablaufdiagramm der NLP-Pipeline: Ingestion, Preprocessing, De-Identification und Annotation mit den jeweils entstehenden Dokumentreferenzen](NLP-Pipeline.svg)](NLP-Pipeline.svg)

<!-- TODO:REVIEW Die Quelle schreibt das FHIR-Element als `relates to`; im FHIR-Datenmodell heißt es `relatesTo` (so auch auf der Seite UML-Diagramme). Schreibweise vor der Veröffentlichung fachlich bestätigen. -->
_Bitte beachten_: Mit dem Element `relates to` können Beziehungen zwischen den unterschiedlichen Referenzen eines Dokumentes hergestellt werden. Die Codebezeichnungen `transforms` und `appends` bezeichnen hierbei die Art der Beziehung:

- `transforms`: Dieses Dokument hat seinen Ursprung im relationierten Original aber wurde inhaltlich oder strukturell verändert. Zum Beispiel wenn ein Original Dokument im CDA-Format in ein Textformat übertragen wurde.
- `appends`: Dieses Dokument basiert auf dem relationierten Dokument, enthält aber zusätzliche Informationen wie z.B. Annotation in Form von Metadaten erhalten.

Die folgenden FHIR DocumentReference-Ressourcen verwendeten das Dokument-Profil ([MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)), um die Ergebnisdokumente und die zugehörigen Dokumentreferenzen jedes Verarbeitungsschrittes der NLP-Pipeline darzustellen.

| Ergebnisdokument | Beispiel-Ressource |
| --- | --- |
| `Amanda_Alzheimer.docx` | [Original-Dokument](DocumentReference-AmandaAlzheimerOriginalDokument.html) |
| `Amanda_Alzheimer.txt` | [Klartext-Dokument](DocumentReference-AmandaAlzheimerKlartextDokument.html) |
| `De-ID.txt` | [De-identifiziertes Dokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html) |
| `Annotat.zip` | [Annotiertes Dokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.html) |

Die folgenden FHIR-Ressourcen stellen die zum Beispiel zugehörigen FHIR Patienten- und Fall-Ressourcen dar. Diese FHIR-Ressourcen werden ausschließlich vom Originaldokument `Amanda_Alzheimer.docx` und der zugehörigen Dokumentreferenz verwendet.

| Kontext | Beispiel-Ressource |
| --- | --- |
| Amanda Alzheimer | [Patientin](Patient-AmandaAlzheimer.html) |
| Einrichtungskontakt | [Encounter Einrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.html) |
| Abteilungskontakt | [Encounter Abteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.html) |
| Versorgungsstellenkontakt | [Encounter Versorgungsstellenkontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html) |

<!-- DERIVED:bridge source=MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md gate=B -->
> **Bei der Migration verfasst — vor dem Release prüfen.**
> Alle Beispiele sind vollständig synthetisch; die Gesamtübersicht der
> Beispielinstanzen des Moduls steht auf der Seite [Beispiele](examples.html).
{: .ig-highlight .ig-highlight-blue}

Quelle: [GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)
