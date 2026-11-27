<!-- markdownlint-disable MD041 -->
<!-- German translation of the English default page input/pagecontent/uml-diagrams.md.
     Keep structure, headings and links 1:1 with the source; translate only the text. -->

Das Informationsmodell des Moduls ist im nachfolgenden Diagramm in der Unified Modeling Language (UML) festgelegt. Es zeigt die Fachkonzepte, deren Zusammenhänge sowie den Bezug zu weiteren MII KDS-Modulen. Das Informationsmodell ist vom Nationalen Steuerungsgremium (NSG) der MII beschlossen; das [Logical Model](logical-models.html) und die FHIR-Profile setzen es um.

Mit einem *Dokument* lassen sich die Metadaten zu einem klinischen Dokument, einer Bild-, Audio- oder Videodatei beschreiben. Ein *Dokument* wird in der Regel in einem klinischen *Kontext* (`context`) erzeugt. Darüber hinaus kann ein *Dokument* auf eine bestimmte Art und Weise in Beziehung (`relatesTo`) zu einem oder mehreren anderen *Dokumenten* stehen, abhängig vom jeweiligen Szenario. Über einen oder mehrere *Anhänge* (`attachment`) lassen sich Details zum Speicherort und -format des klinischen Dokuments, der Bild-, Audio- oder Videodatei festlegen; jeder *Anhang* ist entweder *Binärdaten* oder ein *Verweis*. In einer NLP-Pipeline beschreiben ein oder mehrere *NLP Processing Status* (`nlp-processing-status`) den erreichten Verarbeitungsstand eines *Dokuments*.

Ein *Dokument* kann in Abhängigkeit vom Szenario einen Patientenbezug (`subject`) ([MII KDS-Modul Person]) aufweisen. Der Patientenbezug kann anhand identifizierender Eigenschaften, pseudonym oder anonym erfolgen. Analog lässt sich über einen klinischen *Kontext* der Bezug zum konkreten Fall (`encounter`) ([MII KDS-Modul Fall]) herstellen.

Die Module Person und Fall sind seit dem KDS-Release 2026 im Basismodul
(Package `de.medizininformatikinitiative.kerndatensatz.base`) aufgegangen; die
Canonical-URLs der referenzierten Profile sind unverändert. Das Diagramm zeigt
den vom NSG beschlossenen Stand.

[![UML-Diagramm des Informationsmodells zum Modul Dokument](Informationsmodell.svg)](Informationsmodell.svg)

[MII KDS-Modul Person]: https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base
[MII KDS-Modul Fall]: https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base
