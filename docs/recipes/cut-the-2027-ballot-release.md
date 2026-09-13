# Recipe: cut the 2027 ballot release (`2027.0.0-ballot.rc2`)

Every step and every command, in order, mapped onto the MII
[Module Release Workflow](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Module-Release-Workflow).
Read [`../release.md`](../release.md) once for the model; follow this page to
cut the release.

> **This module is IG-Publisher-native.** Wiki step 6 assumes the Simplifier
> bake pipeline builds the package. Here the **IG Publisher** builds it, and the
> only Simplifier action left is **uploading the finished `.tgz`** so consumers
> resolving `de.medizininformatikinitiative.kerndatensatz.dokument` keep finding
> the module where release candidate 1 already lives. Nothing else about the
> project's Simplifier state matters any more.
{: .ig-highlight .ig-highlight-grey}

Shell variables used throughout:

```bash
VERSION=2027.0.0-ballot.rc2
TAG=v${VERSION}
REPO=medizininformatik-initiative/kerndatensatz-dokument
PKG=de.medizininformatikinitiative.kerndatensatz.dokument
```

---

## 0. Preconditions

```bash
gh repo view $REPO --json defaultBranchRef -q .defaultBranchRef.name   # master
gh pr list -R $REPO --state open                                       # expect none blocking
gh run list -R $REPO -b master -L 3                                    # last run green
```

The version must already be identical in every carrier. Check before anything
else, because a mismatch surfaces only at publication time:

```bash
grep -E '^version:' sushi-config.yaml
jq -r .version package.json
jq -r '.version, .path, .first, .sequence, .status' publication-request.json
grep -rn "$VERSION" input/fsh/common/Version.fsh input/fsh/rulesets/meta-profile.fsh
node scripts/convention-check.mjs          # M6 + M12 assert exactly this
```

`publication-request.json` must read `"first": false`, `"status": "ballot"`,
`"sequence": "2027"` and a `path` ending in the version.

---

## 1. Release branch — *human* (wiki step 1)

```bash
git checkout master && git pull origin master
git checkout -b release/${TAG}
```

The `release/**` name is what puts the convention check into strict mode: an
unresolved placeholder, an undecided optional page or a leftover review marker
fails there rather than on a feature branch.

## 2. Version and dates — *human* (wiki step 2)

Already done for this candidate. If you are cutting a later one, bump in all of:
`sushi-config.yaml` (`version`, `date`, the sequence year, every
`insert CRMIApprovalDate(...)` call site), `package.json`,
`publication-request.json` (`version`, `path`, `desc`),
`input/fsh/common/Version.fsh`, `input/fsh/rulesets/meta-profile.fsh`,
`qc/custom.rules.yaml`, and the changelog plus its English mirror. Then:

```bash
grep -rn '\[TODO' input/pagecontent input/translations   # must be empty
node scripts/convention-check.mjs
```

## 3. Release notes — *human* (wiki step 3)

Add the version's section to `input/pagecontent/changes.md` (English, the
default language) **and**
`input/translations/de/pagecontent/changes.md`, in the Keep-a-Changelog
structure the page's own preamble mandates.

## 4. Pull request — *human* (wiki step 4)

```bash
git add -A && git commit -m "Prepare release ${TAG}"
git push -u origin release/${TAG}
gh pr create -R $REPO --base master --head release/${TAG} --title "Release ${TAG}"
gh pr checks $(gh pr list -R $REPO --head release/${TAG} --json number -q '.[0].number') -R $REPO --watch
```

Both reusable validation jobs must pass: `dotnet-validation / validate` and
`java-validation / validate`. They are the MII organisation's error gate.

```bash
gh pr merge <number> -R $REPO --merge      # no --delete-branch: it closes stacked children
```

## 5. Tag — *human* (wiki step 5)

```bash
git checkout master && git pull origin master
git tag ${TAG}
git push origin ${TAG}
```

Pushing the tag fires `module-release.yml`, which builds the IG from the tagged
commit and creates a **draft** GitHub release with `package.tgz` attached.

```bash
gh run list -R $REPO --workflow module-release.yml -L 1
gh release view ${TAG} -R $REPO            # draft
```

> **This workflow's package is NOT the one to publish.** `module-release.yml`
> runs the IG Publisher without `-publish`, so its `package.tgz` is a preview
> build: it carries `notForPublication: true` and a `file://` url. It exists to
> prove the tagged commit builds, and it is what gets attached to the GitHub
> release. The archive for the **registry** comes from `go-publish` in step 8.
{: .ig-highlight .ig-highlight-orange}

Sanity-check it before it goes anywhere:

```bash
tar -xzOf ./release-artifact/package.tgz package/package.json | jq '{name,version,canonical,license,notForPublication,url}'
```

`notForPublication` must be **absent** and `url` must **not** be a `file://`
path. A preview build carries both; a publication-mode build carries neither.

## 6. Simplifier package registry — *human* (wiki step 6, adapted)

The wiki's bake-pipeline sub-steps do not apply. Two ways to upload; the result
is identical.

First fetch the publication-mode archive that step 8's dry run produced:

```bash
gh run download -R $REPO -n publication-review -D ./publication
f=./publication/site/${VERSION}/package.tgz
tar -xzOf "$f" package/package.json | jq '{name,version,url,notForPublication}'
```

`notForPublication` must be **absent** and `url` must be the publication base.
If either check fails, stop: the archive is a preview build.

**Firely Terminal.** Install once (`dotnet tool install -g firely.terminal`),
then:

```bash
fhir --version
fhir login                                  # Simplifier credentials
fhir push "$f"                              # uploads the package to the registry
```

If your Firely Terminal build does not expose `push`, use the web upload below.
Check the exact verb with `fhir --help` rather than guessing — the CLI has
renamed publishing commands between major versions.

**Simplifier web.** Project → **Packages** → upload the `.tgz`, entering
`${VERSION}` as the version and pasting the changelog section as the release
notes.

Either way, verify from outside:

```bash
curl -s https://packages.simplifier.net/$PKG | jq -r '.versions | keys[]'
curl -sI https://packages.simplifier.net/$PKG/${VERSION} | head -1   # 200
```

> **The registry rejects a version that already exists.** Upload once. If the
> package is wrong, cut `rc3` — never try to replace a published version.
{: .ig-highlight .ig-highlight-orange}

## 7. Finalize the GitHub release — *human* (wiki step 7)

```bash
gh release edit ${TAG} -R $REPO --notes-file release-notes.md
# the preview package is already attached by module-release.yml
gh release edit ${TAG} -R $REPO --draft=false
```

Publishing fires the Zulip announcement (stream `MII-Kerndatensatz`, topic
`Releases`) when `ZULIP_API_KEY` is set; without it the job skips with a notice
and never fails the release.

## 8. Formal publication and the stable ballot URL — *human*

This is the step that produces the **frozen URL for balloting**. Dry run first:

```bash
gh workflow run go-publish.yml -R $REPO \
  -f release_ref=${TAG} -f publication_date=2026-09-09 -f publish=false
gh run watch -R $REPO $(gh run list -R $REPO --workflow go-publish.yml -L 1 --json databaseId -q '.[0].databaseId')
```

Review the dry-run output and the exported `ig-registry.patch`, then publish:

```bash
gh workflow run go-publish.yml -R $REPO \
  -f release_ref=${TAG} -f publication_date=2026-09-09 -f publish=true
```

It writes the rendered guide to the **versioned** webroot declared in
`publication-request.json`:

```
https://medizininformatik-initiative.github.io/kerndatensatz-dokument/2027.0.0-ballot.rc2/
```

> **Why this is the URL to ballot against.** Branch previews live under
> `branches/<branch>/` and move every time the branch moves; the stale-preview
> sweeper may remove them. The versioned path is written once from an immutable
> tag, the sweeper never touches it, and `branches/` is excluded from the
> publication webroot. Circulate the versioned URL, never a branch preview.
{: .ig-highlight .ig-highlight-grey}

Finally, open the FHIR IG registry pull request from the exported patch:

```bash
gh run download -R $REPO -n go-publish-dry-run -D ./publication
git -C /path/to/your/fork/ig-registry apply /path/to/publication/ig-registry.patch
```

## 9. Wiki step 8 and the post-release checklist

Export the guide for the TMF SharePoint, notify TMF, and add the version to the
[module version overview](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/%C3%9Cbersicht-%C3%BCber-Versionen-der-Kerndatensatz%E2%80%90Module).

```bash
curl -sI https://medizininformatik-initiative.github.io/kerndatensatz-dokument/${VERSION}/index.html | head -1
curl -s  https://medizininformatik-initiative.github.io/kerndatensatz-dokument/${VERSION}/qa.txt | head -4
```

## Expected result

A `v2027.0.0-ballot.rc2` tag, a published GitHub release with the package
attached, the package resolvable from the Simplifier registry, and a frozen
guide at the versioned URL that will not move while the ballot runs.
