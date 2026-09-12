<!-- markdownlint-disable MD041 -->
<!-- Deutsche Standardsprachfassung. Der frühere Abschnitt "Namenskonventionen"
     (Simplifier-Seite TechnischeImplementierung/FHIRProfile, Index) wurde am
     2026-09-07 entfernt — Wortlaut in migration-log/source-quotes/, die Seite
     verweist auf das Meta-Modul-Wiki. Die Seite selbst ist aus der früheren
     Kombi-Seite profiles-and-extensions.md aufgeteilt (TF-KDS-abgestimmte
     Menüstruktur — eine Seite je Artefakt-Typ). Die Artefakt-Detailseiten
     erzeugt der IG-Publisher automatisch. -->

Diese Seite listet die FHIR-Profile des Moduls **Dokument**. Die Extensions
des Moduls stehen auf der Seite [Extensions](extensions.html).

Das Modul definiert ein Profil:
[MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)
(`MII_PR_Dokument_Dokument`) auf Basis der Ressource `DocumentReference`. Die
technischen Detailansichten — Struktur, Differential, XML und JSON — erzeugt der
IG-Publisher auf der Artefakt-Seite; den zugrunde liegenden fachlichen Datensatz
beschreibt die Seite [Logische Modelle](logical-models.html).

### Profil MII PR Dokument Dokument

Das Modul definiert ein Profil: [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html) auf `DocumentReference` — „Klinisches Dokument mit zugehörigen Metadaten“. Die fachlichen Hinweise, das Mapping auf den logischen Datensatz und die Beispiele stehen auf der Artefaktseite; die Struktur wird hier direkt gerendert (XML und JSON des Profils sind wegen ihrer Größe nur auf der Artefaktseite eingebunden).

<div class="structure-tabs">
  <ul class="nav nav-tabs" role="tablist">
    <li class="active" role="presentation"><a href="#pr-diff" data-toggle="tab" role="tab">Differential</a></li>
    <li role="presentation"><a href="#pr-snap" data-toggle="tab" role="tab">Struktur (Snapshot)</a></li>
  </ul>
  <div class="tab-content">
    <div class="tab-pane active" id="pr-diff" role="tabpanel">
      {% include StructureDefinition-mii-pr-dokument-dokument-diff-de.xhtml %}
    </div>
    <div class="tab-pane" id="pr-snap" role="tabpanel">
      {% include StructureDefinition-mii-pr-dokument-dokument-snapshot-de.xhtml %}
    </div>
  </div>
</div>

