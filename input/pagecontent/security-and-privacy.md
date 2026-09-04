<!-- markdownlint-disable MD041 -->
<!-- Standardsprachseite (Deutsch; DE-first). Englische Übersetzung:
     input/translations/en/pagecontent/security-and-privacy.md.
     Aufgebaut in den abgestimmten DREI Stufen: (1) das übergreifende
     übergreifende Datenschutzkonzept, (2) DIMP im Datenportal, (3) die
     modul-spezifischen Aspekte. Stufen 1 und 2 sind statischer übergreifender
     Inhalt — behalten; Stufe 3 füllt Ihr Modul aus. Beide Sprachfassungen
     müssen dasselbe aussagen. -->


Dieser Abschnitt richtet sich an Sicherheits- und Datenschutz-Fachleute.
Allgemeine Anforderungen stehen in der FHIR-Kernspezifikation —
[Security & Privacy Module](https://build.fhir.org/secpriv-module.html) und die
[Security-Checkliste](https://build.fhir.org/security.html). Diese Seite
wiederholt sie nicht; sie verlinkt den übergreifenden Datenschutzrahmen und nennt,
was **für dieses Modul spezifisch** ist.

### Das übergreifende Datenschutzkonzept

Das
[übergreifende Datenschutzkonzept der Medizininformatik-Initiative](https://www.medizininformatik-initiative.de/de/datenschutzkonzept)
regelt, wie Patientendaten über das Netz der Datenintegrationszentren hinweg
für die Forschung verarbeitet werden
dürfen: die Rechtsgrundlage (der Broad Consent der MII), die Rollen der
Datenintegrationszentren und der Use-&-Access-Committees sowie die
standortübergreifenden Anwendungsszenarien (Machbarkeitsanfragen, verteilte
Analysen, Daten- und Bioproben-Bereitstellung). Alles, was dieses Modul
spezifiziert, bewegt sich innerhalb dieses Rahmens — dieser Leitfaden fügt
keinen eigenen Verarbeitungszweck hinzu.

### De-Identifikation, Minimierung und Pseudonymisierung (DIMP)

Wie Daten, die ein Datenintegrationszentrum verlassen, praktisch
de-identifiziert werden, spezifiziert
[DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html)
in der Dokumentation des Datenportals: direkte Identifikatoren werden
entfernt, vom genehmigten Projekt nicht benötigte Datenelemente entfallen, und
identifizierende Werte werden durch projektspezifische Pseudonyme ersetzt
(FHIR-Pseudonymizer-Konfiguration). Die Profile dieses Moduls beschreiben die
Daten *vor* Anwendung von DIMP; welche Elemente eine konkrete
Datenbereitstellung erreicht, entscheidet je Projekt die DIMP-Konfiguration,
nicht dieser Leitfaden.

### Modul-spezifische Aspekte

Dies ist der eigene Beitrag des Moduls: die Sicherheits- und
Datenschutz-Eigenschaften, die aus der *Art der Daten dieses Moduls* folgen.

<!-- DERIVED:bridge source=none gate=B -->
> **Bei der Migration verfasst — vor dem Release prüfen.**
> Die folgenden modulspezifischen Aspekte wurden aus dem Profil und den
> Modulbeschreibungen abgeleitet (Slices `Binaerdaten`/`Verweis`,
> NLP-Processing-Status, `relatesTo`-Verarbeitungsketten).
{: .ig-highlight .ig-highlight-blue}

Dieses Modul transportiert — anders als rein strukturierte KDS-Module — über
`content.attachment` auch den **Dokumentkörper selbst**. Daraus folgen eigene
Aspekte:

**Freitext ist die sensibelste Datenkategorie dieses Moduls.** Der Textkörper
eines Dokuments kann vielfältige identifizierende Daten und/oder Metadaten
(z.B. Namen, Patienten-ID) enthalten, die eine strukturierte
Pseudonymisierung nicht erfasst. Werkzeuge der DIMP-Kette arbeiten auf
strukturierten Elementen; der Inhalt eines Anhangs bleibt davon unberührt.

**Einbettung vs. Verweis.** Das Profil erlaubt beide Transportwege für den
Dokumentkörper: eingebettet als Base64 (`content.attachment.data`, Slice
`Binaerdaten`) oder als lokal aufzulösender Verweis (`content.attachment.url`,
Slice `Verweis`). Soweit das Dokument **medizinische oder identifizierende
Daten zu Patient:innen oder Behandlung** enthält, SOLLTE der Dokumentkörper
bei einer Datenbereitstellung über das Forschungsdatenportal für Gesundheit
(FDPG) bzw. in UAC-geprüften Projekten NICHT eingebettet werden: eingebettete
Inhalte durchlaufen jede Verarbeitungs- und Weitergabestufe mit und entziehen
sich der Zugriffskontrolle des Dokumentenspeichers. Der Verweis (`Verweis`)
belässt die Auflösung dagegen unter der Kontrolle der datenhaltenden Stelle
(DIZ) und kann dort DIMP-konform gefiltert und protokolliert werden. Für
Dokumente ohne solche Inhalte — etwa vollständig surrogierte Fassungen —
gilt diese Einschränkung nicht.

**De-Identifikationsstatus explizit kennzeichnen.** Eine erfolgte
De-Identifizierung wird über geeignete `securityLabel` und/oder die
[NLP-Processing-Status-Extension](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)
(Codes `unprocessed`, `preprocessed`, `annotated`, `surrogated`)
ausgedrückt. Die datenhaltende Stelle ist verantwortlich, für
Forschungszwecke ausschließlich auf anonymisierte bzw. pseudonymisierte
Varianten zu verweisen (`subject`, `context.encounter` → pseudonymisierte
Profile des Basismoduls).

**Verarbeitungsketten können Re-Identifizierungspfade öffnen.** Die
NLP-Pipeline verknüpft Original-, Klartext-, de-identifizierte und annotierte
Fassungen über `relatesTo` (`transforms`/`appends`). Bei einer
Datenbereitstellung dürfen de-identifizierte bzw. surrogierte Dokumente nicht
zusammen mit auflösbaren Verweisen auf ihre Originalfassungen ausgeliefert
werden — die Kette hebt die De-Identifizierung sonst auf.

**Auch Metadaten können quasi-identifizierend sein.** Einrichtungsart,
Fachgebiet, Zeitstempel und Kontaktbezüge erlauben in Kombination
Rückschlüsse; welche Metadatenelemente eine konkrete Datenbereitstellung
erreicht, entscheidet die projektspezifische DIMP-Konfiguration.


