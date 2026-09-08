<!-- markdownlint-disable MD041 -->
Diese Seite führt die Beispielinstanzen des Moduls **Dokument** auf.

> **Nur synthetische Daten** — niemals echte oder realistisch wirkende
> Patientendaten in Beispielen verwenden.
{: .ig-highlight .ig-highlight-orange}

### Beispielszenario: NLP-Pipeline „Amanda Alzheimer“

Das folgende Beispiel illustriert die Verarbeitung eines *ärztlichen Entlassbriefes* der Patientin *Amanda Alzheimer* durch eine NLP-Pipeline (siehe Abbildung). Nach der Erschließung (`Ingestion`) des Originaldokuments `Amanda_Alzheimer.docx` wird eine Dokumentreferenz mit dem NLP-Verarbeitungsstatus `unprocessed` angelegt. Anschließend wird das Dokument durch eine Vorverarbeitung (`Preprocessing`) in das Klartextformat `Amanda_Alzheimer.txt` überführt. Die zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus `preprocessed, format-change` und verweist mittels `transforms` auf das Originaldokument. Anschließend wird eine De-Identifikation (`De-Identification`) der Inhalte durchgeführt, um das Ergebnisdokument `De-ID.txt` datenschutzkonform für Forschungszwecke weiterverwenden zu können. Eine zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus `preprocessed, format-change, surrogated` und verweist mittels `transforms` auf das Klartextdokument. Abschließend werden die klinischen Inhalte annotiert, was unter Umständen mehrere Ergebnisdateien produziert und sich als Archiv `Annotat.zip` zusammenfassen lassen. Die zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus durch die akkumulierten Codes der vorangegangenen Stufen als `[annotated, semantic], surrogated, [preprocessed, format-change]` und erweitert mittels `appends` die Dokumentreferenz des vorherigen NLP-Verarbeitungsschritts.

[![Ablaufdiagramm der NLP-Pipeline: Ingestion, Preprocessing, De-Identification und Annotation mit den jeweils entstehenden Dokumentreferenzen](NLP-Pipeline.svg)](NLP-Pipeline.svg)

_Bitte beachten_: Mit dem Element `relatesTo` können Beziehungen zwischen den unterschiedlichen Referenzen eines Dokumentes hergestellt werden. Die Codebezeichnungen `transforms` und `appends` bezeichnen hierbei die Art der Beziehung:

- `transforms`: Dieses Dokument hat seinen Ursprung im relationierten Original aber wurde inhaltlich oder strukturell verändert. Zum Beispiel wenn ein Original Dokument im CDA-Format in ein Textformat übertragen wurde.
- `appends`: Dieses Dokument basiert auf dem relationierten Dokument, enthält aber zusätzliche Informationen wie z.B. Annotation in Form von Metadaten erhalten.

#### Beispielinstanzen

Die folgenden FHIR DocumentReference-Ressourcen verwendeten das Dokument-Profil ([MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)), um die Ergebnisdokumente und die zugehörigen Dokumentreferenzen jedes Verarbeitungsschrittes der NLP-Pipeline darzustellen.

| Beispiel | Ressource | Pipeline-Schritt | Ergebnisdokument |
| --- | --- | --- | --- |
| [Original-Dokument](DocumentReference-AmandaAlzheimerOriginalDokument.html) | DocumentReference | Ingestion (Original) | `Amanda_Alzheimer.docx` |
| [Klartext-Dokument](DocumentReference-AmandaAlzheimerKlartextDokument.html) | DocumentReference | Preprocessing (Klartext-Extraktion) | `Amanda_Alzheimer.txt` |
| [De-identifiziertes Dokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html) | DocumentReference | De-Identification | `De-ID.txt` |
| [Annotiertes Dokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.html) | DocumentReference | Annotation | `Annotat.zip` |
| [Patientin](Patient-AmandaAlzheimer.html) | Patient | Kontext | – |
| [Einrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.html) | Encounter | Kontext | – |
| [Abteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.html) | Encounter | Kontext | – |
| [Versorgungsstellenkontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html) | Encounter | Kontext | – |

#### Ablauf als ExampleScenario

Die Pipeline ist zusätzlich als FHIR-Ressource [ExampleScenario „NLP-Pipeline Amanda Alzheimer“](ExampleScenario-NlpPipelineAmandaAlzheimer.html) modelliert: Akteure, die vier Verarbeitungsschritte als Prozess und die beteiligten Instanzen, die auf die Beispielressourcen oben verweisen. Der IG Publisher erzeugt daraus das folgende Sequenzdiagramm und die Prozesstabelle.

{% include ExampleScenario-NlpPipelineAmandaAlzheimer-process-diagram-de.xhtml %}

{% include ExampleScenario-NlpPipelineAmandaAlzheimer-actor-table-de.xhtml %}

{% include ExampleScenario-NlpPipelineAmandaAlzheimer-processes-de.xhtml %}

{% include ExampleScenario-NlpPipelineAmandaAlzheimer-instance-table-de.xhtml %}

#### DocumentReference-Ressourcen der Pipeline

Jede Registerkarte zeigt die JSON-Darstellung der Dokumentreferenz eines Verarbeitungsschritts; die Artefaktseite ist jeweils verlinkt.

<div class="structure-tabs">
  <ul class="nav nav-tabs" role="tablist">
    <li class="active" role="presentation"><a href="#ex-doc-0" data-toggle="tab" role="tab">Amanda_Alzheimer.docx</a></li>
    <li role="presentation"><a href="#ex-doc-1" data-toggle="tab" role="tab">Amanda_Alzheimer.txt</a></li>
    <li role="presentation"><a href="#ex-doc-2" data-toggle="tab" role="tab">De-ID.txt</a></li>
    <li role="presentation"><a href="#ex-doc-3" data-toggle="tab" role="tab">Annotat.zip</a></li>
  </ul>
  <div class="tab-content">
    <div class="tab-pane active" id="ex-doc-0" role="tabpanel">
      <p><a href="DocumentReference-AmandaAlzheimerOriginalDokument.html">AmandaAlzheimerOriginalDokument</a> (DocumentReference)</p>
      {% include DocumentReference-AmandaAlzheimerOriginalDokument-json-html-de.xhtml %}
    </div>
    <div class="tab-pane" id="ex-doc-1" role="tabpanel">
      <p><a href="DocumentReference-AmandaAlzheimerKlartextDokument.html">AmandaAlzheimerKlartextDokument</a> (DocumentReference)</p>
      {% include DocumentReference-AmandaAlzheimerKlartextDokument-json-html-de.xhtml %}
    </div>
    <div class="tab-pane" id="ex-doc-2" role="tabpanel">
      <p><a href="DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html">AmandaAlzheimerDeIdentifiziertesDokument</a> (DocumentReference)</p>
      {% include DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument-json-html-de.xhtml %}
    </div>
    <div class="tab-pane" id="ex-doc-3" role="tabpanel">
      <p><a href="DocumentReference-AmandaAlzheimerAnnotiertesDokument.html">AmandaAlzheimerAnnotiertesDokument</a> (DocumentReference)</p>
      {% include DocumentReference-AmandaAlzheimerAnnotiertesDokument-json-html-de.xhtml %}
    </div>
  </div>
</div>

#### Patient- und Encounter-Ressourcen

Die zum Beispiel gehörenden FHIR Patienten- und Fall-Ressourcen werden ausschließlich vom
Originaldokument `Amanda_Alzheimer.docx` und der zugehörigen Dokumentreferenz verwendet.

<div class="structure-tabs">
  <ul class="nav nav-tabs" role="tablist">
    <li class="active" role="presentation"><a href="#ex-ctx-0" data-toggle="tab" role="tab">Amanda Alzheimer</a></li>
    <li role="presentation"><a href="#ex-ctx-1" data-toggle="tab" role="tab">Einrichtungskontakt</a></li>
    <li role="presentation"><a href="#ex-ctx-2" data-toggle="tab" role="tab">Abteilungskontakt</a></li>
    <li role="presentation"><a href="#ex-ctx-3" data-toggle="tab" role="tab">Versorgungsstellenkontakt</a></li>
  </ul>
  <div class="tab-content">
    <div class="tab-pane active" id="ex-ctx-0" role="tabpanel">
      <p><a href="Patient-AmandaAlzheimer.html">AmandaAlzheimer</a> (Patient)</p>
      {% include Patient-AmandaAlzheimer-json-html-de.xhtml %}
    </div>
    <div class="tab-pane" id="ex-ctx-1" role="tabpanel">
      <p><a href="Encounter-AmandaAlzheimerEinrichtungskontakt.html">AmandaAlzheimerEinrichtungskontakt</a> (Encounter)</p>
      {% include Encounter-AmandaAlzheimerEinrichtungskontakt-json-html-de.xhtml %}
    </div>
    <div class="tab-pane" id="ex-ctx-2" role="tabpanel">
      <p><a href="Encounter-AmandaAlzheimerAbteilungskontakt.html">AmandaAlzheimerAbteilungskontakt</a> (Encounter)</p>
      {% include Encounter-AmandaAlzheimerAbteilungskontakt-json-html-de.xhtml %}
    </div>
    <div class="tab-pane" id="ex-ctx-3" role="tabpanel">
      <p><a href="Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html">AmandaAlzheimerVersorgungsstellenKontakt</a> (Encounter)</p>
      {% include Encounter-AmandaAlzheimerVersorgungsstellenKontakt-json-html-de.xhtml %}
    </div>
  </div>
</div>

Alle Beispiele sind vollständig synthetisch.

Quelle: [GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)
