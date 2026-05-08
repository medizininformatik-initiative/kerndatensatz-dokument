---
parent: 
topic: NlpProcessingStatusExtension
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status
---

<style>
.cool-tabs {
    width: 800px;
    overflow: y-scroll;
}
</style>

# {{page-title}}

## Übersicht

- [Beschreibung]
- [Metadaten]
- [Inhalt]
- [Beispiele]

---

## Beschreibung

Diese Erweiterung dient der strukturierten Beschreibung des Bearbeitungsstatus eines Dokuments innerhalb eines NLP-Projekts. Die Verarbeitung von Dokumenten mit unstrukturierter Information erfolgt typischerweise in einer Vielzahl aufeinanderfolgender Verarbeitungsschritte. Im Verlauf dieser Prozessketten entstehen unterschiedliche Transformationen des Originaldokuments sowie Relationen zwischen dem Ursprungsdokument und daraus abgeleiteten Zwischenprodukten.

Die NLP Extension stellt hierfür ein Codesystem bereit, mit dem die verschiedenen Bearbeitungszustände und Zwischenprodukte eines NLP-Workflows konsistent beschrieben und archiviert werden können.

Das Codesystem der NLP Extension ist hierarchisch aufgebaut und umfasst zwei Ebenen: Level 1 (Lvl 1) und Level 2 (Lvl 2).
Lvl 1 beschreibt einen übergeordneten Prozessstatus, beispielsweise annotated. Lvl 2 dient der Spezifikation dieses Status. Ein Beispiel ist die Kombination Lvl 1: annotated, Lvl 2: deid, die anzeigt, dass ein Dokument mit de-identifizierenden Annotationen versehen wurde.

Die Nutzung beider Hierarchieebenen ist nicht verpflichtend. Abhängig vom jeweiligen Anwendungsszenario kann frei entschieden werden, ob nur der übergeordnete Status (Lvl 1) oder zusätzlich eine spezifische Ausdifferenzierung über Lvl 2 verwendet wird.

Ein exemplarischer Anwendungsfall ist ein Dokument innerhalb eines Annotationsprojekts, das bereits aus einem Quellsystem extrahiert und anonymisiert wurde. Bis zum aktuellen Bearbeitungsstand können mehrere Verarbeitungsschritte erfolgt sein, beispielsweise:

- Transformation des Dateiformats von `.pdf` zu `.txt` (`preprocessed` – `format-change`)
- Entfernung von Dokumentheadern (`preprocessed` – `content-change`)
- maschinelle Vorannotation identifizierender Strukturen (`annotated` – `preanno` `deid`)
- anschließende manuelle Annotation dieser Strukturen (`annotated` – `deid`)
- irreversible Ersetzung aller identifizierenden Annotationen durch Surrogate (`surrogated`)

Die NLP Extension lässt bewusst Freiheitsgrade bei der Dokumentation solcher Prozessketten. Es ist möglich, sämtliche Verarbeitungsschritte eines Dokuments abzubilden. Alternativ kann sich die Beschreibung auf ausgewählte, für den jeweiligen Anwendungsfall wesentliche Bearbeitungszustände beschränken, beispielsweise ausschließlich auf den finalen Status surrogated.

## Metadaten

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-ex-dokument-nlp-processing-status')  
select 
    Name: name,
    Status: status,
    Version: version,
    Canonical: url,
    Basis: baseDefinition
```

## Inhalt

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url.endsWith('mii-ex-dokument-nlp-processing-status') 
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-ex-dokument-nlp-processing-status') 
        for 
            differential.element 
            where 
                mustSupport = true 
            select
                Feldname: id,
                Kurzbeschreibung: short,
                Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

{{render:mii-cs-dokument-nlp-processing-status}}

---

## Beispiele

Das folgende Beispiel illustriert die Verarbeitung eines *ärztlichen Entlassbriefes* der Patientin *Amanda Alzheimer* durch eine NLP-Pipeline (siehe Abbildung). Nach der Erschließung (`Ingestion`) des Originaldokuments `Amanda_Alzheimer.txt` wird eine Dokumentreferenz mit dem NLP-Verarbeitungsstatus `unprocessed` angelegt. Anschließend wird eine De-Identifikation (`De-Identification`) der Inhalte durchgeführt, um das Ergebnisdokument `De-ID.txt` datenschutzkonform für Forschungszwecke weiterverwenden zu können. Eine zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus `preprocessed, format-change, surrogated` und verweist auf Originaldokument mittels `transforms`. Abschließend werden die klinischen Inhalte annotiert, was unter Umständen mehrere Ergebnisdateien produziert und sich als Archiv `Annotat.zip` zusammenfassen lassen. Die zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus als `annotated, semantic` und erweitert `appends` die Dokumentreferenz des vorherigen NLP-Verarbeitungsschritts.

<div style="text-align: center; margin-top: 2em; margin-bottom: 2em; width: 700px">
<a target="_blank" href="https://github.com/medizininformatik-initiative/kerndatensatz-dokument/raw/refs/heads/dev/input/plantuml/NLP-Pipeline.svg">{{render:implementation-guides/images/NLP-Pipeline.png}}
</a>
</div>

_Bitte beachten_: Mit dem Element `relates to` können Beziehungen zwischen den unterschiedlichen Referenzen eines Dokumentes hergestellt werden. Die Codebezeichnungen `transforms` und `appends` bezeichnen hierbei die Art der Beziehung:

- `transforms`: Dieses Dokument hat seinen Ursprung im relationierten Original aber wurde inhaltlich oder strukturell verändert. Zum Beispiel wenn ein Original Dokument im CDA-Format in ein Textformat übertragen wurde. 
- `appends`: Dieses Dokument basiert auf dem relationierten Dokument, enthält aber zusätzliche Informationen wie z.B. Annotation in Form von Metadaten erhalten.

Die folgenden FHIR DocumentReference-Ressourcen verwendeten das Dokument-Profil ({{pagelink:MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md}}), um die Ergebnisdokumente und die zugehörigen Dokumentreferenzen jedes Verarbeitungsschrittes der NLP-Pipeline darzustellen.

<tabs>
    <tab title="Amanda_Alzheimer.txt"> 
        {{json:AmandaAlzheimerOriginalDokument}}
    </tab>
    <tab title="De-ID.txt"> 
        {{json:AmandaAlzheimerDeIdentifiziertesDokument}}
    </tab>
    <tab title="Annotat.zip"> 
        {{json:AmandaAlzheimerAnnotiertesDokument}}
    </tab>
</tabs>

Die folgenden FHIR-Ressourcen stellen die zum Beispiel zugehörigen FHIR Patienten- und Fall-Ressourcen dar. Diese FHIR-Ressourcen werden ausschließlich vom Originaldokument `Amanda_Alzheimer.txt` und der zugehörigen Dokumentreferenz verwendet.

<tabs>
    <tab title="Amanda Alzheimer"> 
        {{json:AmandaAlzheimer}}
    </tab>
    <tab title="Einrichtungskontakt"> 
        {{json:AmandaAlzheimerEinrichtungskontakt}}
    </tab>
    <tab title="Abteilungskontakt"> 
        {{json:AmandaAlzheimerAbteilungskontakt}}
    </tab>
    <tab title="Versorgungsstellenkontakt"> 
        {{json:AmandaAlzheimerVersorgungsstellenkontakt}}
    </tab>
</tabs>

Quelle: <a href="https://doi.org/10.5281/zenodo.6539130">GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130</a>

---