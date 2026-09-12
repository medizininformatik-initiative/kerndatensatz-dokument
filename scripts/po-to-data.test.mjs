import { test } from "node:test";
import assert from "node:assert/strict";
import { parsePo } from "./po-to-data.mjs";

test("parsePo maps msgid to filled msgstr and skips empty translations", () => {
  const po = `# comment\n#: StructureDefinition.title\nmsgid "MII LM Dokument"\nmsgstr "MII LM Dokument"\n\nmsgid "Andere \\"Kennung\\""\nmsgstr "Other \\"identifier\\""\n\nmsgid "leer"\nmsgstr ""\n`;
  assert.deepEqual(parsePo(po), { "MII LM Dokument": "MII LM Dokument", 'Andere "Kennung"': 'Other "identifier"' });
});

test("parsePo joins continuation lines", () => {
  const po = `msgid ""\n"erste Zeile "\n"zweite Zeile"\nmsgstr ""\n"first line "\n"second line"\n`;
  assert.deepEqual(parsePo(po), { "erste Zeile zweite Zeile": "first line second line" });
});
