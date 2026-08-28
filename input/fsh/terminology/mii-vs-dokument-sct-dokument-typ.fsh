ValueSet: MII_VS_Dokument_SCT_Dokument_Typ
Id: mii-vs-dokument-sct-dokument-typ
Title: "MII VS Dokument SCT Dokument Typ"
Description: "SNOMED CT ValueSet zum Typ eines Dokuments"
* insert VS_Header($mii-vs-dokument-sct-dokument-typ)
* include codes from system $SCT|http://snomed.info/sct/900000000000207008/version/20260701 where concept descendant-of #229059009 // Report (record artifact), Document type code