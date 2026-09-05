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

Die technische Struktur dieser Extension — Differential, Key Elements, Snapshot
sowie die XML- und JSON-Serialisierung — rendert der IG-Publisher unmittelbar
unterhalb dieses Abschnitts auf dieser Artefakt-Seite. Dort stehen auch die
Must-Support-Elemente mit ihren Kurzbeschreibungen und Hinweisen; Kanonische
URL, Status, Version und Basisdefinition führt der Kopfbereich der Seite.

Die Codes des NLP-Verarbeitungsstatus definiert das CodeSystem
[MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html)
mit seiner zweistufigen Hierarchie; gebunden wird die Extension über das ValueSet
[MII VS Dokument NLP Processing Status](ValueSet-mii-vs-dokument-nlp-processing-status.html).

### Beispiele

Das Beispielszenario zur NLP-Pipeline — Ablaufdiagramm, die Verarbeitungsschritte mit ihren NLP-Verarbeitungsstatus und die zugehörigen DocumentReference-, Patient- und Encounter-Ressourcen — steht auf der Seite [Beispiele](examples.html#beispielszenario-nlp-pipeline-amanda-alzheimer).
