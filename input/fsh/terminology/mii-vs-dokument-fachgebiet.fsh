ValueSet: MII_VS_Dokument_Fachgebiet
Id: mii-vs-dokument-fachgebiet
Title: "MII VS Dokument Fachgebiet"
Description: "ValueSet zum erzeugenden Fachgebiet eines Dokuments"
* insert VS_Header($mii-vs-dokument-fachgebiet)
* include codes from system $SCT|http://snomed.info/sct/900000000000207008/version/20260701 where concept descendant-of #394733009 // Medical specialty (qualifier value)
* include codes from valueset $ihe-xds-practice-setting-code-vs