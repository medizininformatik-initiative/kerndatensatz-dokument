# Provenance — `kompatibilitaet.md`, deactivated source section "Zusammenfassung"

Adjudication: **REV-14 / K-3 — DROP, never reactivate.**

The Simplifier source page `MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md`
carried a commented-out (invisible) section "Zusammenfassung". During the migration it was
carried over verbatim as an HTML-comment block in `input/pagecontent/kompatibilitaet.md`
(DE lines 27-67) and its English twin (EN lines 26-67), together with three review notes.

The review of 2026-09-04 removed that block from both published page sources because

1. an **active** `## Zusammenfassung` already exists at the end of the page (with the
   compatibility overview table) — the quoted block is redundant;
2. the repo's own `PRUEFHINWEIS` notes refute the quoted text in three places
   (binding strength "nicht required" holds only for `type`/`category`/`securityLabel`;
   the KBV MIO Basis 1.7.0 binding claim does not hold; IHE MHD is more restrictive,
   not "ähnlich flexibel");
3. the whole block shipped verbatim into the published `kompatibilitaet.html` as HTML
   comments.

The text is preserved here so the C4 "no content lost" claim stays auditable without
publishing refuted statements in the ballot artefact.

---

## German source (removed from `input/pagecontent/kompatibilitaet.md:27-67`)

```
<!-- Herkunftshinweis: der nachfolgend zitierte Abschnitt "Zusammenfassung" war
     in der Simplifier-Quellseite auskommentiert und damit nicht sichtbar. Er
     wird hier verbatim mitgefuehrt - unveraendert, ungekuerzt und ohne
     Neuumbruch -, damit der Inhalt bei der Migration nicht verlorengeht. Die
     aktive Zusammenfassung steht am Seitenende.
     Hinweis: die Aussage im Zitat, IHE MHD sei "aehnlich flexibel" und seine
     Felder "optional", ist durch den Profilvergleich gegen
     IHE.MHD.UnContained.Comprehensive.DocumentReference 4.2.3 widerlegt. Der
     Block darf nicht unveraendert reaktiviert werden. -->

<!-- QUELLZITAT BEGINN (Simplifier-Quellseite, auskommentierter Abschnitt
     "Zusammenfassung"; Wortlaut unveraendert uebernommen):

### Zusammenfassung

Das MII KDS Dokument-Profil ist im Hinblick auf die verwendbaren Terminologien und die Ausgestaltung der meisten Metadatenfelder bewusst flexibel gehalten. Für zentrale Felder wie `type` und `category` werden KDL- und XDS-Codes empfohlen, aber nicht verpflichtend gefordert. Stattdessen sind auch LOINC und SNOMED CT als Codesysteme explizit unterstützt und können gleichwertig verwendet werden. Die Bindungsstärke ist nicht required und mit einem Constraint hinsichtlich der Empfehlung versehen. Die Kardinalitäten für diese Felder sind 0..1 (`type`) bzw. 0..* (`category`), und MS ist gesetzt. Damit ist das MII KDS Dokument Profil grundsätzlich offen für lokale, nationale oder internationale Dokumentenklassifikationen und lässt sich mit unterschiedlich strukturierten Quellprofilen gut harmonisieren.

Im Gegensatz dazu ist das ISiK Dokumentenaustausch-Profil deutlich restriktiver. Hier sind KDL- und XDS-Codes für das Feld `type` verpflichtend. Die Bindung ist erforderlich, alternative Codesysteme sind nicht vorgesehen. Auch das Feld `securityLabel` ist im ISiK Dokumentenaustausch-Profil verpflichtend und muss eine der vorgegebenen Vertraulichkeitsstufen enthalten.

Das KBV MIO Basis- und das IHE MHD-Profil sind ähnlich wie das MII KDS Dokument-Profil flexibel. Beide Profile erlauben für `type` und `category` verschiedene Codesysteme, darunter LOINC und SNOMED CT, und setzen keine strikten Vorgaben. Die Felder sind optional, und die Bindungen extensible oder preferred. Damit sind diese Profile für eine breite Palette von Anwendungsfällen und internationale Interoperabilität geeignet.

QUELLZITAT ENDE -->

<!-- PRUEFHINWEIS (Validator-Vergleich ISiK 6.0.0): Die Aussage im obigen
     Quellzitat, die Bindungsstaerke im MII KDS Dokument-Profil sei "nicht
     required", trifft nur auf `type`, `category` und `securityLabel` zu.
     `content.format`, `context.facilityType`, `context.practiceSetting` und
     `context.event` sind required gebunden. Falls der Abschnitt reaktiviert
     wird, ist er entsprechend zu korrigieren. -->

<!-- HINWEIS zum Quellzitat (Validator-Vergleich KBV MIO Basis 1.7.0): Die
     Aussage "Die Bindungen extensible oder preferred" trifft fuer KBV MIO
     Basis 1.7.0 nicht durchgaengig zu; gemessen sind `type` preferred,
     `category` example, `securityLabel` extensible, `status`/`docStatus`
     required und die `context`-Felder example. Das Zitat bleibt
     unveraendert. -->

<!-- TODO:REVIEW Soll der oben zitierte, in der Quelle deaktivierte
     Zusammenfassungstext als sichtbarer Abschnitt reaktiviert werden, oder
     bleibt er (wie bisher) unveroeffentlicht? Eine Reaktivierung ist nur nach
     Korrektur der oben vermerkten Pruefhinweise moeglich. -->
```

---

## English twin (removed from `input/translations/en/pagecontent/kompatibilitaet.md:26-67`)

```
<!-- Provenance note: the section "Zusammenfassung" quoted below was commented
     out in the Simplifier source page and therefore invisible. It is carried
     over here verbatim (unchanged, unabridged and not re-wrapped) so the
     content is not lost in migration. The active summary is at the end of the
     page. The German default page carries the German source wording; the
     English rendering below is the translation of that quote.
     Note: the statement in the quote that IHE MHD is "similarly flexible" and
     its fields "optional" is refuted by the profile comparison against
     IHE.MHD.UnContained.Comprehensive.DocumentReference 4.2.3. The block must
     not be reactivated unchanged. -->

<!-- SOURCE QUOTATION BEGIN (Simplifier source page, commented-out section
     "Zusammenfassung"):

### Summary

With regard to the usable terminologies and the design of most metadata fields, the MII KDS Dokument profile is deliberately kept flexible. For central fields such as `type` and `category`, KDL and XDS codes are recommended but not mandated. Instead, LOINC and SNOMED CT are explicitly supported as code systems as well and can be used equivalently. The binding strength is not required and carries a constraint expressing the recommendation. The cardinalities of these fields are 0..1 (`type`) and 0..* (`category`) respectively, and MS is set. The MII KDS Dokument profile is therefore fundamentally open to local, national or international document classifications and harmonises well with source profiles of differing structure.

By contrast, the ISiK document exchange profile is considerably more restrictive. There, KDL and XDS codes are mandatory for the field `type`. The binding is required, alternative code systems are not foreseen. The field `securityLabel` is mandatory in the ISiK document exchange profile as well and must contain one of the prescribed confidentiality levels.

The KBV MIO Basis and the IHE MHD profile are flexible in a way similar to the MII KDS Dokument profile. Both profiles allow different code systems for `type` and `category`, among them LOINC and SNOMED CT, and impose no strict requirements. The fields are optional and the bindings extensible or preferred. These profiles are therefore suited to a broad range of use cases and to international interoperability.

SOURCE QUOTATION END -->

<!-- REVIEW NOTE (validator comparison ISiK 6.0.0): the statement in the
     quotation above that the binding strength in the MII KDS Dokument profile
     is "not required" holds only for `type`, `category` and `securityLabel`.
     `content.format`, `context.facilityType`, `context.practiceSetting` and
     `context.event` are bound required. Should the section be reactivated, it
     has to be corrected accordingly. -->

<!-- NOTE on the quotation (validator comparison KBV MIO Basis 1.7.0): the
     statement "the bindings extensible or preferred" does not hold
     throughout for KBV MIO Basis 1.7.0; measured are `type` preferred,
     `category` example, `securityLabel` extensible, `status`/`docStatus`
     required and the `context` fields example. The quotation remains
     unchanged. -->

<!-- TODO:REVIEW Should the summary text quoted above, deactivated in the
     source, be reactivated as a visible section, or does it remain
     unpublished as before? A reactivation is only possible after correcting
     the review notes recorded above. -->
```
