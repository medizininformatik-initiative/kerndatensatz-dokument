# Änderungshistorie - MII IG Dokument v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* **Änderungshistorie**

## Änderungshistorie

Diese Seite enthält einen Changelog mit Beschreibung der Änderungen zwischen Versionen.

Sie hält die Änderungen zwischen den veröffentlichten Versionen des Moduls **Dokument** fest, die neueste Version zuerst, und folgt [Keep a Changelog](https://keepachangelog.com/de/1.1.0/) und dem KDS-CalVer-Schema, das die Seite [Versionierung](version-history.md) beschreibt.

Jede Version erhält einen eigenen Abschnitt mit dem Release-Datum und den nach Kategorien gruppierten Änderungen:

* **Hinzugefügt** — neue Profile, Extensions, ValueSets, Suchparameter, Seiten.
* **Geändert** — geänderte Einschränkungen, Bindings, Hinweise oder Dokumentation.
* **Abgekündigt** — Artefakte, die noch existieren, aber nicht mehr genutzt werden sollen.
* **Entfernt** — zurückgezogene Artefakte.
* **Behoben** — Korrekturen von Fehlern.
* **Sicherheit** — Änderungen mit Auswirkung auf Sicherheit oder Datenschutz.

Kategorien ohne Inhalt werden weggelassen. Geht eine Änderung auf ein Issue oder einen Pull-Request zurück, wird darauf verlinkt.

**Breaking Changes MÜSSEN berichtet und erläutert werden**

Ein Versionsabschnitt mit einer Breaking Change ist erst vollständig, wenn er ausdrücklich und in diesem Changelog beantwortet:

* **Was genau sich geändert hat** zwischen den beiden Versionen — das Artefakt, das Element, die alte und die neue Einschränkung (nicht nur „Profil X wurde überarbeitet“).
* **Was das für bestehende Daten bedeutet:** Validieren Daten, die der Vorversion entsprachen, weiterhin gegen die neue Version? Falls nein: welche Ressourcen und Elemente sind betroffen, und wie zeigt sich der Fehler?
* **Was Implementierende tun sollten:** die Empfehlung der Autorinnen und Autoren zur Migration bestehender Daten auf die neue Version — Transformationsschritte, Standardwerte, Umkodierungs-Hinweise — oder die ausdrückliche Aussage, dass kein Migrationspfad bereitgestellt wird, und warum.

**Was als Breaking Change zählt** — behandeln Sie eine Änderung als Breaking Change, wenn sie eines der Folgenden tut, auch wenn sie klein wirkt: eine Kardinalität verschärft (`0..*` → `1..1`), eine Binding-Stärke erhöht (example → required), Codes aus einem required-ValueSet entfernt, ein Element oder einen Slice entfernt oder umbenennt, einen Typ einengt, eine Invariante oder eine Must-Support-Pflicht hinzufügt oder eine kanonische URL ändert. Im Zweifel: als Breaking Change berichten.

**Breaking für wen:** benennen Sie beide Perspektiven — *gespeicherte Daten* (Instanzen, die gegen die alte Version valide sind) und *Implementierungen* (Clients und Server, die dagegen gebaut wurden; ein entfernter Suchparameter bricht Implementierungen, während jede gespeicherte Instanz valide bleibt).

**Die Versionsnummer warnt niemanden.** Das KDS-Kalender-Versionsschema (`JJJJ.n.n`) trägt kein Major-Signal wie SemVer — dieser Changelog-Abschnitt ist die *einzige* Warnung, die Lesende bekommen.

**Verlinken Sie das technische Delta.** Ab der zweiten formalen Publikation aktivieren Sie den Versionsvergleich des IG Publishers (`version-comparison`, in `sushi-config.yaml` zu ergänzen — siehe die Seite [Versionierung](version-history.md) zur Einrichtung und ihren Voraussetzungen); er veröffentlicht einen maschinell erzeugten Vergleich unter `comparison-v<Vorversion>/index.html`. Verlinken Sie ihn aus dem Versionsabschnitt, damit die Erläuterung und der technische Diff nebeneinanderstehen.

Kennzeichnen Sie solche Einträge deutlich (zum Beispiel mit dem Präfix **BREAKING:**), damit sie beim Überfliegen des Abschnitts nicht übersehen werden können.

-------

### Version 2027.0.0-ballot.rc2

**Datum** 2026-09-08 · **Status** Ballot-Release-Kandidat 2 (Zyklus 2027)

Zweiter Kandidat der Ballot-Version 2027 — inhaltlich der Stand von rc1 nach der Migration des Leitfadens von Simplifier auf den HL7 IG Publisher (MII-KDS-Modul- Template v0.13.1, deutsch als Standardsprache, englische Übersetzung). Keine Änderungen an Profil, Extension, Terminologien oder logischem Modell; die Paketinhalte ändern sich durch Übersetzungs-Extensions (`.po`), die SNOMED-CT-Lizenzhinweise auf den vier SNOMED-ValueSets, das korrigierte `supportedProfile` und die Suchparameter-Verweise des CapabilityStatements auf das Meta-Modul.

* **Leitfaden neu gebaut mit dem IG Publisher** — Seitenstruktur des Templates, Artefakte inline gerendert (Profil, Extension, ValueSets, CodeSystem, Mapping), Tabellen aus dem Paket generiert, Beispielszenario der NLP-Pipeline auf der Beispielseite, Suchparameter mit Beispielaufrufen.
* **Abhängigkeiten** — `kerndatensatz.base` 2027.0.0-ballot.rc1, `kerndatensatz.meta` 2027.0.0-ballot.rc3.
* **CapabilityStatement** — `supportedProfile` verweist auf das Dokument-Profil (rc1: auf die eigene Metadaten-URL); die drei modulspezifischen Suchparameter verweisen auf die SearchParameter-Definitionen des Meta-Moduls.
* **Beispiele** — Kontaktebene der Encounter-Beispiele mit System `http://fhir.de/CodeSystem/Kontaktebene`; Titel und Beschreibungen für alle Beispielinstanzen; ExampleScenario der NLP-Pipeline.
* **Qualitätssicherung** — Fehler und Warnungen des Publishers bereinigt bzw. begründet unterdrückt (siehe `input/ignoreWarnings.txt`); bekannte, extern verursachte Fehler: siehe Known Issue unten.

### Version 2027.0.0-ballot.rc1

**Datum** 01.09.2026 (Veröffentlichungsdatum des Leitfadens; das RC-Paket wurde am 28.08.2026 in der Paket-Registry veröffentlicht)

#### Hinzugefügt

* **Neue Abhängigkeit ISiK Stufe 6** (`de.gematik.isik 6.0.0`); aktualisierte Abhängigkeiten `de.basisprofil.r4 1.6.0`, `hl7.terminology.r4 7.1.0`; `hl7.fhir.uv.extensions.r4 5.2.0` jetzt explizit deklariert
* Werkzeug-/Qualitätssicherung: `advisor.json` für die Validator-Pipeline ergänzt, Quality-Control-Regeln aktualisiert

#### Geändert

* **NLP-Pipeline-Beispiele überarbeitet** (die Extension `MII_EX_Dokument_NLP_Processing_Status` selbst ist bereits seit 2026.0.1 enthalten und inhaltlich unverändert): neues Beispiel `AmandaAlzheimerKlartextDokument` als Klartext-Extraktionsschritt; Original-Dokument nun als DOCX (`application/vnd.…wordprocessingml.document`) statt `text/plain`; Verarbeitungsstatus-Codes entlang der Pipeline korrigiert (`annotated`/`preprocessed`/`surrogated` gemäß Illustration statt pauschal `deid`); `transforms`-Verkettung der Pipeline-Schritte aktualisiert
* **SNOMED-CT-Versions-Pinning** gemäß MII Terminology Version Policy: alle SNOMED-CT-Includes (ValueSets Typ, Kategorie, Einrichtungsart, Fachgebiet) referenzieren die International Edition `http://snomed.info/sct/900000000000207008/version/20260701`

#### Behoben

* **CodeSystem NLP Processing Status**: Definition des Konzepts `surrogated` präzisiert; Titel des CodeSystems korrigiert („MII CS Dokument …" statt fälschlich „MII VS Dokument …")
* **Logisches Modell `MII_LM_Dokument`** wird nun mit dem Package ausgeliefert (Status `draft` → `active`; war bislang durch den Package-Build-Filter ausgeschlossen)

Profil `MII_PR_Dokument_Dokument`, Extension und CapabilityStatement sind gegenüber 2026.0.1 inhaltlich unverändert.

> **Known Issue**: 2 Validierungsfehler bei Beispielen mit `context.event` (eventCodeList-Expansion, Upstream-Bug in `de.ihe-d.terminology 3.0.1`) — siehe [Issue #33](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/issues/33)

-------

### Version 2026.0.1

**Datum** 11.03.2026

#### Geändert

* Ändert Abhängigkeiten von MII KDS Fall/Person zu MII KDS Basis
* Update Abhängigkeiten und Beschreibungen auf MII KDS Modulversion 2026

#### Behoben

* Korrigiert falschen Display-Name bei Beispielen für Einrichtungskontakt

-------

### Version 2026.0.0

**Datum** 10.12.2025

#### Hinzugefügt

* Initiales Release des MII KDS-Moduls Dokument

