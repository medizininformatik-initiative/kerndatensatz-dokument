RuleSet: Meta
* meta MS
* meta.profile MS

RuleSet: CS_VS_Meta(url)
* insert Status
* ^url = {url}
* ^experimental = false
* ^language = #de

RuleSet: CS_Meta(url)
* insert CS_VS_Meta({url})
* ^caseSensitive = true
* ^content = #complete
* ^meta.profile = $shared-cs

RuleSet: VS_Meta(url)
* insert CS_VS_Meta({url})
* ^meta.profile = $shared-vs

RuleSet: EX_Meta(url)
* ^url = {url}

RuleSet: LM_Meta(url)
* ^url = {url}