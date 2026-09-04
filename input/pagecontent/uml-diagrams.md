<!-- markdownlint-disable MD041 -->

Zur Veranschaulichung des Informationsmodells wurde das nachfolgende Diagramm in der Unified Modeling Language (UML) erstellt. Dadurch lassen sich die Fachkonzepte, deren Zusammenhänge sowie der Bezug zu weiteren MII KDS-Modulen besser darstellen.

Mit einem *Dokument* lassen sich die Metadaten zu einem klinischen Dokument, einer Bild-, Audio- oder Videodatei beschreiben. Ein *Dokument* wird in der Regel in einem klinischen *Kontext* (`context`) erzeugt. Darüber hinaus kann ein *Dokument* auf eine bestimmte Art und Weise in Beziehung (`relatesTo`) zu einem oder mehreren anderen *Dokumenten* stehen, abhängig vom jeweiligen Szenario. Über einen oder mehrere *Anhänge* (`attachment`) lassen sich Details zum Speicherort und -format des klinischen Dokuments, der Bild-, Audio- oder Videodatei festlegen.

Ein *Dokument* kann in Abhängigkeit vom Szenario einen Patientenbezug (`subject`) ([MII KDS-Modul Person]) aufweisen. Der Patientenbezug kann anhand identifizierender Eigenschaften, pseudonym oder anonym erfolgen. Analog lässt sich über einen klinischen *Kontext* der Bezug zum konkreten Fall (`encounter`) ([MII KDS-Modul Fall]) herstellen.

Die Module Person und Fall sind seit dem KDS-Release 2026 im Basismodul
(Package `de.medizininformatikinitiative.kerndatensatz.base`) aufgegangen; die
Canonical-URLs der referenzierten Profile sind unverändert. Das Diagramm zeigt
den von der NSG freigegebenen Stand.

[![UML-Diagramm des Informationsmodells zum Modul Dokument](Informationsmodell.svg)](Informationsmodell.svg)

[MII KDS-Modul Person]: https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base
[MII KDS-Modul Fall]: https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base
