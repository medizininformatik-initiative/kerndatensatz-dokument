Instance: AmandaAlzheimerAbteilungskontakt
InstanceOf: MII_PR_Fall_KontaktGesundheitseinrichtung
Title: "Abteilungskontakt"
Description: "Synthetischer Abteilungskontakt (Kontaktebene) zum NLP-Pipeline-Beispiel."
Usage: #example
* identifier.system = "http://uk-musterstadt.de/fid"
* identifier.type = $v2-0203#VN
* identifier.value = "123456"
* status = #finished
* class = $v3-act-code#IMP "inpatient encounter"
* type = http://fhir.de/CodeSystem/Kontaktebene#abteilungskontakt "Abteilungskontakt"
* serviceType = $dkgev-fachabteilungsschluessel#0900 "Rheumatologie"
* subject = Reference(Patient/AmandaAlzheimer)
* period.start = "2028-01-24T00:00:00+01:00"
* period.end = "2028-02-06T00:00:00+01:00"
* partOf = Reference(Encounter/AmandaAlzheimerEinrichtungskontakt)