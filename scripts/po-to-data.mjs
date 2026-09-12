#!/usr/bin/env node
// po-to-data.mjs — turn the resource translations under input/translations/<lang>/*.po
// into Jekyll data files (input/data/translations_<lang>.json) so that pages which
// build tables with the publisher's sql / sqlToData directives can look up the
// translated text of a resource string via Liquid:
//
//   {{ site.data.translations_en['StructureDefinition-mii-lm-dokument'][row.Definition] | default: row.Definition }}
//
// Why: package.db, which the sql directives query, holds every resource in its
// source language; the publisher applies the .po files only when it renders the
// artifact pages and fragments. This file closes that gap without a second
// translation source — the .po stays the single source, the JSON is derived.
//
//   node scripts/po-to-data.mjs            # (re)write input/data/translations_<lang>.json
//   node scripts/po-to-data.mjs --check    # exit 1 when a committed file is stale
//
// convention-check M14 runs the --check semantics on every build.
import { readdirSync, readFileSync, writeFileSync, mkdirSync, existsSync } from "node:fs";
import { join } from "node:path";
import { fileURLToPath } from "node:url";

const unescape = (s) => s.replace(/\\(["\\nt])/g, (_, c) => ({ '"': '"', "\\": "\\", n: "\n", t: "\t" })[c]);

/** Parse a publisher-style .po file into { msgid: msgstr } (only filled msgstr). */
export function parsePo(text) {
  const out = {};
  const lines = text.split("\n");
  let key = null, field = null, buf = { msgid: null, msgstr: null };
  const flush = () => {
    if (buf.msgid !== null && buf.msgstr) out[buf.msgid] = buf.msgstr;
    buf = { msgid: null, msgstr: null };
  };
  for (const raw of lines) {
    const line = raw.trim();
    let m;
    if ((m = line.match(/^msgid "(.*)"$/))) { flush(); field = "msgid"; buf.msgid = unescape(m[1]); }
    else if ((m = line.match(/^msgstr "(.*)"$/))) { field = "msgstr"; buf.msgstr = unescape(m[1]); }
    else if ((m = line.match(/^"(.*)"$/)) && field) { buf[field] = (buf[field] || "") + unescape(m[1]); }
    else if (line === "" || line.startsWith("#")) { /* comment / separator */ }
    else { field = null; }
    key = line;
  }
  flush();
  return out;
}

/** { lang: { "<resource file stem>": { msgid: msgstr } } } for every language dir. */
export function buildTranslationData(root) {
  const base = join(root, "input", "translations");
  const result = {};
  if (!existsSync(base)) return result;
  for (const lang of readdirSync(base, { withFileTypes: true }).filter((d) => d.isDirectory()).map((d) => d.name).sort()) {
    const dir = join(base, lang);
    const files = readdirSync(dir).filter((f) => f.endsWith(".po")).sort();
    if (files.length === 0) continue;
    result[lang] = {};
    for (const f of files) result[lang][f.replace(/\.po$/, "")] = parsePo(readFileSync(join(dir, f), "utf8"));
  }
  return result;
}

export const dataPath = (root, lang) => join(root, "input", "data", `translations_${lang}.json`);
export const serialize = (obj) => JSON.stringify(obj, null, 1) + "\n";

if (process.argv[1] && fileURLToPath(import.meta.url) === process.argv[1]) {
  const root = process.cwd();
  const check = process.argv.includes("--check");
  const data = buildTranslationData(root);
  let stale = 0;
  for (const [lang, perResource] of Object.entries(data)) {
    const p = dataPath(root, lang); const want = serialize(perResource);
    const have = existsSync(p) ? readFileSync(p, "utf8") : null;
    if (have === want) { console.log(`up to date: ${p}`); continue; }
    if (check) { console.error(`STALE: ${p} — run: node scripts/po-to-data.mjs`); stale++; continue; }
    mkdirSync(join(root, "input", "data"), { recursive: true }); writeFileSync(p, want); console.log(`written: ${p}`);
  }
  process.exit(stale ? 1 : 0);
}
