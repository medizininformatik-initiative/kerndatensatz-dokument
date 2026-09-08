ValueSet: MII_VS_Dokument_SCT_Dokument_Kategorie
Id: mii-vs-dokument-sct-dokument-kategorie
Title: "MII VS Dokument SCT Dokument Kategorie"
Description: "SNOMED CT ValueSet zur Kategorie (oder Klasse) eines Dokuments"
* insert VS_Header($mii-vs-dokument-sct-dokument-kategorie)
* insert SnomedLicense
* include codes from system $SCT|http://snomed.info/sct/900000000000207008/version/20260701 where concept descendant-of #424545009 // Record composition (record artifact)