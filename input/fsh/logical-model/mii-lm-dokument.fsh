Logical: MII_LM_Dokument
Parent: Element
Id: mii-lm-dokument
Title: "MII LM Dokument"
Description: "MII Logical Model KDS-Modul Dokument"
* insert LM_Header($mii-lm-dokument)
* Dokument                              1..1    BackboneElement     "Dokument"                          "Klinisches Dokument inkl. Metadaten, Inhalt, Erzeugungskontext und Beziehungen"
  * Erweiterung                         0..*    Extension           "Erweiterungen des Dokuments"       "Zusätzliche Angaben zum Dokument, die über die Basisressource hinausgehen, z. B. der NLP-Verarbeitungsstatus"
  * Masteridentifikator                 0..1    Identifier          "Versionsspezifische Kennung"       "Versionsspezifische eindeutige Kennung, die dem Dokument durch die Dokumentenquelle zugewiesen wurde"
  * Businessidentifikator               0..1    Identifier          "Versionsunabhängige Kennung"       "Andere versionsunabhängige Kennung, die dem Dokument (z.B. durch weitere dokumentenverarbeitende Systeme) zugewiesen wurde"
  * Dokumentenreferenzstatus            1..1    code                "Status der Dokumentenreferenz"     "Status dieser Dokumentenreferenz (aktuell, überholt oder irrtümlich eingegeben)"
  * Dokumentenstatus                    0..1    code                "Status des Dokuments"              "Status des zugrunde liegenden Dokuments (vorläufig, final, geändert oder irrtümlich eingegeben)"
  * Dokumententyp                       0..1    code                "Art des Dokuments"                 "Art des Dokuments auf das verwiesen wird (z.B. Anamnese und Untersuchung, Entlassungsbericht, Verlaufsbericht)"
  * Dokumentenkategorie                 0..*    code                "Kategorien des Dokuments"          "Übergeordnete Kategorie des Dokuments auf das verwiesen wird (z.B. Arztberichte oder Arztdokumentation)"
  * Patient                             0..1    Identifier          "Verweis auf Patient"               "Patient auf den sich das verwiesene Dokument bezieht"
  * Beschreibung                        0..1    string              "Beschreibung des Dokuments"        "Menschenlesbare Beschreibung zum verwiesenen Dokuments"
  * Sicherheitsstufe                    0..*    code                "Vertraulichkeit des Dokuments"     "Grad der Vertraulichkeit/Sicherheit des verwiesenen Dokuments (z. B. uneingeschränkt, gering, mittel, normal oder eingeschränkt)"
  * Dokumentenbeziehungen               0..*    BackboneElement     "Beziehungen des Dokuments"         "Beziehungen des verwiesenen Dokuments zu anderen Dokumenten"
    * Beziehungstyp                     1..1    code                "Art der Beziehung"                 "Beziehung zu anderen Dokumenten"
    * Beziehungsreferenz                1..1    Identifier          "Verweis auf Dokument"              "Ziel der Dokumentenbeziehung"
  * Anhang                              1..*    BackboneElement     "Inhalt des Dokuments"              "Inhalt des Dokuments mit relevanten Metadaten zum Anhang: entweder Binärdaten (Base64-kodierte Daten) oder Verweis (URL); genau eines von Daten und DokumentenUrl ist anzugeben"
    * Sprache                           0..1    code                "Verfassungssprache des Inhalts"    "Verwendete Sprache in dem Dokument"
    * Erstellungsdatum                  0..1    dateTime            "Erstellungsdatum des Inhalts"      "Datum der Erstellung des Dokumentes"
    * Daten                             0..1    base64Binary        "Binärdaten zum Inhalt"             "Dokument als Binärdaten (Anhang vom Typ Binärdaten)"
    * DokumentenUrl                     0..1    string              "URL zum Inhalt"                    "Verweis auf den (lokalen) Ablageort des Dokuments (Anhang vom Typ Verweis)"
    * Dokumentenformat                  0..1    code                "MIME-Typ zum Inhalt"               "MIME-Typ des Dokumenteninhalts"
  * Kontext                             0..1    BackboneElement     "Erzeugungskontext des Dokuments"   "Klinischer Kontext, in welchem das Dokument erzeugt wurde"
    * Gesundheitseinrichtungskontakt    0..*    Identifier          "Verweis auf Kontakt (Modul Fall)"  "Kontakt zur Gesundheitseinrichtung (Einrichtungs-, Abteilungs- oder Versorgungsstellenkontakt des Moduls Fall), der mit dem Dokumenteninhalt assoziiert ist"
    * Vorgang                           0..*    code                "Dokumentierter Vorgang"            "Handlungen oder Prozeduren, die im Kontext dokumentiert wurden"
    * Fachgebiet                        0..1    code                "Klinisches Fachgebiet zum Vorgang" "Klinisches Fachgebiet, in dem Dokumenteninhalt erstellt wurde"
    * Dokumentationszeitraum            0..1    Period              "Durchführungszeitraum zum Vorgang" "Zeitraum, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde"
    * Einrichtungsart                   0..1    code                "Art der Einrichtung zum Vorgang"   "Art der Einrichtung, in der die Handlung oder Prozedur am Patienten erfolgte"
  * NlpProcessingStatus                 0..*    BackboneElement     "NLP-Verarbeitungsstatus"           "Erreichter Verarbeitungsstatus des Dokuments in einer NLP-Pipeline; mehrere Angaben beschreiben zusammen den erreichten Verarbeitungsstand"
    * Status                            1..1    CodeableConcept     "Verarbeitungsstatus"               "Erreichter Verarbeitungsstatus aus dem CodeSystem MII CS Dokument NLP Processing Status"

// Information model: Anhang is abstract; each Anhang is either Binärdaten (Daten 1..1) or
// Verweis (DokumentenUrl 1..1).
* Dokument.Anhang obeys mii-iv-dokument-anhang

Invariant: mii-iv-dokument-anhang
Description: "Ein Anhang ist entweder Binärdaten oder Verweis: genau eines von Daten und DokumentenUrl MUSS angegeben sein."
Severity: #error
Expression: "$this.Daten.exists() xor $this.DokumentenUrl.exists()"
* insert Translation(human, en, An attachment is either binary data or a reference: exactly one of Daten and DokumentenUrl SHALL be present.)
