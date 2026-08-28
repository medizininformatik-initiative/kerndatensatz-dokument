# {{page-title}}

Diese Seite enthält einen Changelog mit Beschreibung der Änderungen zwischen Versionen.

## Version: 2027.0.0-ballot.rc1

Datum 28.08.2026

- **NLP-Pipeline-Beispiele überarbeitet** (die Extension `MII_EX_Dokument_NLP_Processing_Status` selbst ist bereits seit 2026.0.1 enthalten und inhaltlich unverändert): neues Beispiel `AmandaAlzheimerKlartextDokument` als Klartext-Extraktionsschritt; Original-Dokument nun als DOCX (`application/vnd.…wordprocessingml.document`) statt `text/plain`; Verarbeitungsstatus-Codes entlang der Pipeline korrigiert (`annotated`/`preprocessed`/`surrogated` gemäß Illustration statt pauschal `deid`); `transforms`-Verkettung der Pipeline-Schritte aktualisiert
- **CodeSystem NLP Processing Status**: Definition des Konzepts `surrogated` präzisiert; Titel des CodeSystems korrigiert („MII CS Dokument …" statt fälschlich „MII VS Dokument …")
- **Logisches Modell `MII_LM_Dokument`** wird nun mit dem Package ausgeliefert (Status `draft` → `active`; war bislang durch den Package-Build-Filter ausgeschlossen)
- **Neue Abhängigkeit ISiK Stufe 6** (`de.gematik.isik 6.0.0`); aktualisierte Abhängigkeiten `de.basisprofil.r4 1.6.0`, `hl7.terminology.r4 7.1.0`; `hl7.fhir.uv.extensions.r4 5.2.0` jetzt explizit deklariert
- **SNOMED-CT-Versions-Pinning** gemäß MII Terminology Version Policy: alle SNOMED-CT-Includes (ValueSets Typ, Kategorie, Einrichtungsart, Fachgebiet) referenzieren die International Edition `http://snomed.info/sct/900000000000207008/version/20260701`
- Profil `MII_PR_Dokument_Dokument`, Extension und CapabilityStatement sind gegenüber 2026.0.1 inhaltlich unverändert
- Werkzeug-/Qualitätssicherung: `advisor.json` für die Validator-Pipeline ergänzt, Quality-Control-Regeln aktualisiert
- **Known Issue**: 2 Validierungsfehler bei Beispielen mit `context.event` (eventCodeList-Expansion, Upstream-Bug in `de.ihe-d.terminology 3.0.1`) — siehe [Issue #33](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/issues/33)

## Version: 2026.0.1

Datum 11.03.2026

- Ändert Abhängigkeiten von MII KDS Fall/Person zu MII KDS Basis
- Update Abhängigkeiten und Beschreibungen auf MII KDS Modulversion 2026
- Korrigiert falschen Display-Name bei Beispielen für Einrichtungskontakt

## Version: 2026.0.0

Datum 10.12.2025

- Initiales Release des MII KDS-Moduls Dokument
