<!-- markdownlint-disable MD041 -->
<!-- English translation of the German default page input/pagecontent/examples.md (DE-first). -->
<!-- Source: kerndatensatz-basis input/pagecontent/examples.md.
     German mirror: input/translations/de/pagecontent/examples.md. -->
This page lists the example instances of the **Dokument** module. The
template ships the synthetic example


{:.bg-warning}
**Synthetic data only** — never use real or realistic-looking patient data in
examples.

<!-- DERIVED:bridge source=none gate=B -->
> **Written during migration — review before release.**
> ### Example scenario: "Amanda Alzheimer" NLP pipeline
>
> Together the examples model an NLP processing chain over a synthetic discharge
> letter (see [Guidance](guidance.html)):
>
> | Example | Resource | Pipeline step |
> | --- | --- | --- |
> | [Original document](DocumentReference-AmandaAlzheimerOriginalDokument.html) | DocumentReference | Original (DOCX) |
> | [Plain-text document](DocumentReference-AmandaAlzheimerKlartextDokument.html) | DocumentReference | Plain-text extraction |
> | [De-identified document](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html) | DocumentReference | De-identification |
> | [Annotated document](DocumentReference-AmandaAlzheimerAnnotiertesDokument.html) | DocumentReference | Annotation |
> | [Patient](Patient-AmandaAlzheimer.html) | Patient | Context |
> | [Facility encounter](Encounter-AmandaAlzheimerEinrichtungskontakt.html) | Encounter | Context |
> | [Department encounter](Encounter-AmandaAlzheimerAbteilungskontakt.html) | Encounter | Context |
> | [Care-unit encounter](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html) | Encounter | Context |
>
> All examples are fully synthetic.
{: .ig-highlight .ig-highlight-blue}
