ValueSet: MII_VS_Dokument_Einrichtungsart
Id: mii-vs-dokument-einrichtungsart
Title: "MII VS Dokument Einrichtungsart"
Description: "ValueSet zur Art der erzeugenden Einrichtung eines Dokuments"
* insert VS_Header($mii-vs-dokument-einrichtungsart)
* insert SnomedLicense
* include codes from system $SCT|http://snomed.info/sct/900000000000207008/version/20260701 where concept descendant-of #440654001 // Inpatient environment (environment)
* include codes from system $SCT|http://snomed.info/sct/900000000000207008/version/20260701 where concept descendant-of #440655000 // Outpatient environment (environment)
* include codes from system $SCT|http://snomed.info/sct/900000000000207008/version/20260701 where concept descendant-of #43741000 // Site of care (environment)
* include codes from valueset $ihe-xds-healthcare-facility-type-code-vs