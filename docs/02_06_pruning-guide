# Cal Preserving – RSA Pruning Guide

This guide explains how to safely remove or adjust lines from `rsa_inventory.csv` without breaking the overall structure.

## 1. General Principles

1. **Do not delete entire surfaces** (Deck, Siding, Exterior Wood + Furniture, Pressure Washing).
2. **Try to keep at least 3–4 headlines and 2–3 descriptions** per Ad Group.
3. Preserve a mix of:
   - Professional regime
   - Premium regime
   - Outcome regime
4. Keep the CTA intact:
   - `Request a Free Estimate`

## 2. How to Prune in the Spreadsheet

1. Open `rsa_inventory.csv` in Excel, Numbers or Google Sheets.
2. Filter by `tab_name` to work on one surface at a time (e.g., Deck).
3. Within that surface, filter by:
   - `species`
   - `intent`
   - `regime`
4. Review `asset_text` (headline or description).
5. If you don’t like a line, set:
   - `keep = N`
   - Optionally add a short reason in `notes`.

When you’re done pruning:
- Create a filtered view where `keep != N` (or `keep` is blank / set to `Y`).
- Export that filtered set as a new CSV for import.

## 3. What Not to Remove

Avoid removing all of:

- All species-specific headlines.
- All outcome-focused headlines.
- All Professional or all Premium headlines.
- All Repair & Maintenance headlines or all Stain & Seal headlines for a surface.

Try to leave:
- At least 1–2 species headlines for each important species (Redwood, Cedar, IPE, Teak).
- At least 1 Professional, 1 Premium and 1 Outcome headline per major Ad Group, if possible.

## 4. Persona Considerations

Some lines will lean more Residential, others more PM/HOA. You can lightly adjust text, but avoid pruning all PM/HOA-friendly lines if you want to grow that segment.

Examples of PM/HOA-flavored lines:
- “single-family homes, multi-unit properties and managed communities”
- “multi-unit buildings and managed communities”

If you decide to focus more heavily on Residential in Phase 1, you can:
- Mark PM/HOA-heavy lines with `keep = N`.
- Reintroduce them later in Phase 2.

## 5. After Pruning – Next Steps

Once you’ve pruned:

1. Save a new copy, e.g., `rsa_inventory_pruned.csv`.
2. From that:
   - Generate a Google Ads Editor–friendly CSV.
   - Or paste into your existing import templates.

If needed, you can:
- Duplicate patterns to create more headlines and descriptions using the same structure.
- Make slight wording changes for brand tone, while keeping the same taxonomy fields.
