CodeSystem: MII_CS_Dokument_Projekt
Id: mii-cs-dokument-projekt
Title: "MII CS Dokument Projekt"
Description: "Projekte der Medizininformatik-Initiative zur Kennzeichnung von Ressourcen über Resource.meta.tag"
* insert CS_Header($mii-cs-dokument-projekt)
* ^property[+].code = #foerderer
* ^property[=].description = "Fördermittelgeber des Projekts als ROR-ID"
* ^property[=].type = #string
* ^property[+].code = #fkz
* ^property[=].description = "Förderkennzeichen eines Teilvorhabens laut Förderkatalog des Bundes; je Teilvorhaben eine Angabe"
* ^property[=].type = #string
* ^property[+].code = #beginn
* ^property[=].description = "Beginn der Projektlaufzeit"
* ^property[=].type = #dateTime
* ^property[+].code = #ende
* ^property[=].description = "Ende der Projektlaufzeit"
* ^property[=].type = #dateTime
* #GEMTEX "GeMTeX" "Ressource wurde im Rahmen der MII-Methodenplattform GeMTeX (German Medical Text Corpus) erzeugt oder aufbereitet."
* #GEMTEX ^designation[+].language = #en
* #GEMTEX ^designation[=].value = "GeMTeX"
* #GEMTEX ^property[+].code = #foerderer
* #GEMTEX ^property[=].valueString = "https://ror.org/04pz7b180"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314A"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314B"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314D"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314E"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314F"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314G"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314H"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314I"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314J"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314K"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314L"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314M"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314N"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314O"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314P"
* #GEMTEX ^property[+].code = #fkz
* #GEMTEX ^property[=].valueString = "01ZZ2314Q"
* #GEMTEX ^property[+].code = #beginn
* #GEMTEX ^property[=].valueDateTime = "2023-06-01"
* #GEMTEX ^property[+].code = #ende
* #GEMTEX ^property[=].valueDateTime = "2026-12-31"
