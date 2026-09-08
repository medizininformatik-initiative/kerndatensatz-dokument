<!-- markdownlint-disable MD041 -->
<!-- English translation of the German default page input/pagecontent/examples.md (DE-first). -->
<!-- Source: kerndatensatz-basis input/pagecontent/examples.md. -->
This page lists the example instances of the **Dokument** module.

> **Synthetic data only** — never use real or realistic-looking patient data in
> examples.
{: .ig-highlight .ig-highlight-orange}

### Example scenario: "Amanda Alzheimer" NLP pipeline

The following example illustrates the processing of a *physician's discharge letter* of the patient *Amanda Alzheimer* by an NLP pipeline (see figure). After the ingestion (`Ingestion`) of the original document `Amanda_Alzheimer.docx`, a document reference with the NLP processing status `unprocessed` is created. The document is then converted by a preprocessing step (`Preprocessing`) into the plain-text format `Amanda_Alzheimer.txt`. The corresponding document reference marks the NLP processing status `preprocessed, format-change` and points to the original document by means of `transforms`. Afterwards a de-identification (`De-Identification`) of the contents is carried out so that the resulting document `De-ID.txt` can be reused for research purposes in a data-protection-compliant way. A corresponding document reference marks the NLP processing status `preprocessed, format-change, surrogated` and points to the plain-text document by means of `transforms`. Finally the clinical contents are annotated, which may produce several result files that can be combined into the archive `Annotat.zip`. The corresponding document reference marks the NLP processing status through the accumulated codes of the preceding stages as `[annotated, semantic], surrogated, [preprocessed, format-change]` and, by means of `appends`, extends the document reference of the previous NLP processing step.

[![Flow diagram of the NLP pipeline: ingestion, preprocessing, de-identification and annotation with the document references created at each step](NLP-Pipeline.svg)](NLP-Pipeline.svg)

_Please note_: with the element `relatesTo`, relationships between the different references of a document can be established. The code designations `transforms` and `appends` denote the kind of relationship:

- `transforms`: this document originates from the related original but has been changed in content or structure. For example, when an original document in CDA format has been converted into a text format.
- `appends`: this document is based on the related document but contains additional information, for example annotations in the form of metadata.

#### Example instances

The following FHIR DocumentReference resources used the document profile ([MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)) to represent the result documents and the associated document references of each processing step of the NLP pipeline.

| Example | Resource | Pipeline step | Result document |
| --- | --- | --- | --- |
| [Original document](DocumentReference-AmandaAlzheimerOriginalDokument.html) | DocumentReference | Ingestion (original) | `Amanda_Alzheimer.docx` |
| [Plain-text document](DocumentReference-AmandaAlzheimerKlartextDokument.html) | DocumentReference | Preprocessing (plain-text extraction) | `Amanda_Alzheimer.txt` |
| [De-identified document](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html) | DocumentReference | De-identification | `De-ID.txt` |
| [Annotated document](DocumentReference-AmandaAlzheimerAnnotiertesDokument.html) | DocumentReference | Annotation | `Annotat.zip` |
| [Patient](Patient-AmandaAlzheimer.html) | Patient | Context | – |
| [Facility encounter](Encounter-AmandaAlzheimerEinrichtungskontakt.html) | Encounter | Context | – |
| [Department encounter](Encounter-AmandaAlzheimerAbteilungskontakt.html) | Encounter | Context | – |
| [Care-unit encounter](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html) | Encounter | Context | – |

#### The pipeline as an ExampleScenario

<!-- The publisher's sequence diagram links its payloads to anchors i_<instance> that no generated fragment provides (publisher 2.3.2); the anchors below make those links resolve on this page. -->
<a id="i_AmandaAlzheimerOriginalDokument"></a><a id="i_AmandaAlzheimerKlartextDokument"></a><a id="i_AmandaAlzheimerDeIdentifiziertesDokument"></a><a id="i_AmandaAlzheimerAnnotiertesDokument"></a>

The pipeline is also modelled as a FHIR resource, [ExampleScenario "NLP pipeline Amanda Alzheimer"](ExampleScenario-NlpPipelineAmandaAlzheimer.html): actors (document source, NLP pipeline with reviewers in the loop, document repository), the pipeline's processing steps and the filing of their results as document references in the repository, and the participating instances, which link to the example resources above. The repository transforms nothing; the document references document the results and link them. The IG Publisher generates the sequence diagram and the process table below from it.

{% capture exs_diagram %}{% include ExampleScenario-NlpPipelineAmandaAlzheimer-process-diagram-en.xhtml %}{% endcapture %}
{% comment %} PlantUML writes XML processing instructions (<?plantuml …?>, <?plantuml-src …?>) before the <svg>; browsers show them as text — keep only the SVG {% endcomment %}
{{ exs_diagram | split: '<svg' | last | prepend: '<svg' | split: '</svg>' | first | append: '</svg>' }}

{% include ExampleScenario-NlpPipelineAmandaAlzheimer-actor-table-en.xhtml %}

{% include ExampleScenario-NlpPipelineAmandaAlzheimer-processes-en.xhtml %}

{% include ExampleScenario-NlpPipelineAmandaAlzheimer-instance-table-en.xhtml %}

#### DocumentReference resources of the pipeline

Each tab shows the JSON representation of one processing step's document reference; the artifact page is linked in each.

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
      {% include DocumentReference-AmandaAlzheimerOriginalDokument-json-html-en.xhtml %}
    </div>
    <div class="tab-pane" id="ex-doc-1" role="tabpanel">
      <p><a href="DocumentReference-AmandaAlzheimerKlartextDokument.html">AmandaAlzheimerKlartextDokument</a> (DocumentReference)</p>
      {% include DocumentReference-AmandaAlzheimerKlartextDokument-json-html-en.xhtml %}
    </div>
    <div class="tab-pane" id="ex-doc-2" role="tabpanel">
      <p><a href="DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html">AmandaAlzheimerDeIdentifiziertesDokument</a> (DocumentReference)</p>
      {% include DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument-json-html-en.xhtml %}
    </div>
    <div class="tab-pane" id="ex-doc-3" role="tabpanel">
      <p><a href="DocumentReference-AmandaAlzheimerAnnotiertesDokument.html">AmandaAlzheimerAnnotiertesDokument</a> (DocumentReference)</p>
      {% include DocumentReference-AmandaAlzheimerAnnotiertesDokument-json-html-en.xhtml %}
    </div>
  </div>
</div>

#### Patient and Encounter resources

The patient and encounter resources belonging to the example are used exclusively by the
original document `Amanda_Alzheimer.docx` and its associated document reference.

<div class="structure-tabs">
  <ul class="nav nav-tabs" role="tablist">
    <li class="active" role="presentation"><a href="#ex-ctx-0" data-toggle="tab" role="tab">Amanda Alzheimer</a></li>
    <li role="presentation"><a href="#ex-ctx-1" data-toggle="tab" role="tab">Facility encounter</a></li>
    <li role="presentation"><a href="#ex-ctx-2" data-toggle="tab" role="tab">Department encounter</a></li>
    <li role="presentation"><a href="#ex-ctx-3" data-toggle="tab" role="tab">Care-unit encounter</a></li>
  </ul>
  <div class="tab-content">
    <div class="tab-pane active" id="ex-ctx-0" role="tabpanel">
      <p><a href="Patient-AmandaAlzheimer.html">AmandaAlzheimer</a> (Patient)</p>
      {% include Patient-AmandaAlzheimer-json-html-en.xhtml %}
    </div>
    <div class="tab-pane" id="ex-ctx-1" role="tabpanel">
      <p><a href="Encounter-AmandaAlzheimerEinrichtungskontakt.html">AmandaAlzheimerEinrichtungskontakt</a> (Encounter)</p>
      {% include Encounter-AmandaAlzheimerEinrichtungskontakt-json-html-en.xhtml %}
    </div>
    <div class="tab-pane" id="ex-ctx-2" role="tabpanel">
      <p><a href="Encounter-AmandaAlzheimerAbteilungskontakt.html">AmandaAlzheimerAbteilungskontakt</a> (Encounter)</p>
      {% include Encounter-AmandaAlzheimerAbteilungskontakt-json-html-en.xhtml %}
    </div>
    <div class="tab-pane" id="ex-ctx-3" role="tabpanel">
      <p><a href="Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html">AmandaAlzheimerVersorgungsstellenKontakt</a> (Encounter)</p>
      {% include Encounter-AmandaAlzheimerVersorgungsstellenKontakt-json-html-en.xhtml %}
    </div>
  </div>
</div>

All examples are fully synthetic.

Source: [GraSCCo dataset, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)
